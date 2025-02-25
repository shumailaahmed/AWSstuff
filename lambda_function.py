# API can be tested at 
# https://3pkqpfgv3j.execute-api.us-west-2.amazonaws.com/

import json
import datetime

def lambda_handler(event, context):
    return {
        "statusCode": 200,
        "body": json.dumps({"datetime": datetime.datetime.utcnow().isoformat()})
    }
