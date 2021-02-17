
const axios = require('axios');
var AWS = require("aws-sdk");
let response;

exports.lambdaHandler = async (event, context) => {
    try {
        // Calling blocks api
        const blocks = await axios("https://blockchain.info/rawblock/0000000000000bae09a7a393a8acded75aa67e46cb81f7acaa5ad94f9eacd103");
        console.log(blocks);

        //Sending to SNS
        var sns = new AWS.SNS();
        var params = {
            Message: JSON.stringify(blocks.data),
            Subject: "Achyutha Block api response",
            TopicArn: "arn:aws:sns:us-east-1:133465603355:blocks"
        };
        await sns.publish(params).promise();

        response = {
            'statusCode': 200,
            'body': JSON.stringify({
                message: 'hello world !!',
                blocks: blocks.data
                // location: ret.data.trim()
            })
        }
    } catch (err) {
        console.log(err);
        return err;
    }

    return response
}