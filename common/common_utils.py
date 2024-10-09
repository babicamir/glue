# ########################################################################################################################
# #  Common utils python script.                                                                                         #
# ########################################################################################################################
# from pyspark import SparkConf
# from pyspark.sql import SparkSession
# from pyspark.sql import *
# from pyspark.sql.window import *
# import pyspark.sql.functions as F
# from pyspark.sql.types import *
# from functools import reduce
# from pyspark.sql.dataframe import DataFrame
# from pyspark.context import SparkContext
# from awsglue.context import GlueContext
# import uuid
# import botocore
# from pyspark.sql.functions import col, when, array
# import ast
# import urllib3
# import concurrent
# from concurrent.futures import ThreadPoolExecutor
# import base64
# from botocore.exceptions import ClientError
# import time
# import re
# import datetime
# import boto3
# import json


# def get_secret(secret_name: str, region: str) -> dict:
#     session = boto3.session.Session()
#     client = session.client(service_name="secretsmanager", region_name=region)
#     response = client.get_secret_value(SecretId=secret_name)
#     return json.loads(response["SecretString"])
