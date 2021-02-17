import json


def lambda_handler(event, context):
    print ("hello world")
    print(json.dumps(event))
    return {
        'statusCode': 200,
        'body': event
    }
