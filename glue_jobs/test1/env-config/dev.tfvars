name                        = "test2"
env                         = "dev"
aws-region                  = "us-east-1"
project-name                = "solution-1"
deployment-role             = "arn:aws:iam::647692764445:role/lambda-deployment"
glue-description            = "Description"
glue-role                   = "arn:aws:iam::647692764445:role/glue"
glue-version                = "4.0"
glue-worker-type            = "G.1X"
glue-number-of-workers      = "2"
glue-max-retries            = "0"
glue-max-concurrent-runs    = "1" #default
glue-timeout                = "2880" #default
glue-command-name           = "glueetl"
glue-script_location        = "s3://solution-1-devops-us-east-1-647692764445/solution-1/glue/test1.py"
glue-security-configuration = "default"
glue-default-arguments = {
  "--job-language" = "python"
  "--enable-glue-datacatalog "= "true"
  "--enable-continuous-cloudwatch-log" = "true"
  "--enable-job-insights" = "true"
  "--enable-continuous-log-filter" = "true"
  "--job-bookmark-option" = "job-bookmark-disable"
  "--enable-spark-ui" = "true"
  "--enable-metrics" = "true"
  "--enable-observability-metrics" = "true"
  "--region-name" = "us-east-1"
  "--env-name" = "dev"
  "--account-id" = "647692764445"
}
glue-tags = {
  AccountId = "647692764445"
  CostCategory = "glue"
}


glue-triggers = {
  trigger1 = {
    Type = "SCHEDULED"
    Schedule = "cron(15 05 25 * ? *)"
    StartOnCreation = "false"
    Actions = {
        Timeout = "2880"
        Arguments = {
            "--FORMAT" = "CSV"
        } 
    }
  }
  trigge2 = {
    Type = "SCHEDULED"
    Schedule = "cron(15 05 25 * ? *)"
    StartOnCreation = "false"
    Actions = {
        Timeout = "2880"
        Arguments = {
            "--FORMAT" = "CSV"
        } 
    }
  }
}



# variable "example_map" {
#   type = map(object({
#     name = string
#     enemies_destroyed = number
#     badguy = bool
#   }))
#   default = {
#     key1 = {
#       name = "luke"
#       enemies_destroyed = 4252
#       badguy = false
#     }
#     key2 = {
#       name = "yoda"
#       enemies_destroyed = 900
#       badguy = false
#     }
#     key3 = {
#       name = "darth"
#       enemies_destroyed=  20000056894
#       badguy = true
#     }
#   }
# }










#             {
#                 "Name": "trigger02",
#                 "Type": "SCHEDULED",
#                 "Schedule": "cron(15 05 25 * ? *)",
#                 "StartOnCreation": "false",
#                 "Actions": {
#                     "Timeout": "2880",
#                     "Arguments": 
#                         {
#                         "--env_name": "${Ref} EnvironmentStage",
#                         "--account_id": "${Ref} AWS::AccountId",
#                         "--S3_TEMP_PATH": "application_support/snowflake_fx_pull/temp",
#                         "--S3_QUERY_PATH": "application_support/snowflake_fx_pull/query/query.sql",
#                         "--S3_BUCKET": "${Sub} mra-esg-bronze-${EnvironmentStage}-${AWS::Region}",
#                         "--class": "GlueApp",
#                         "--OUTPUT_FILE_NAME": "SF_REF_FX_RATE",
#                         "--S3_ARCHIVE_PATH": "application_support/snowflake_fx_pull/archive",
#                         "--FORMAT": "CSV",
#                         "--S3_OUTPUT_BUCKET": "${Sub} mra-esg-landing-${EnvironmentStage}-${AWS::Region}",
#                         "--region_name": "${Ref} AWS::Region",
#                         "--CONNECTION_NAME": "${Sub} mra-esg-sf-fx-devmsgc-factset-connection-${EnvironmentStage}",
#                         "--JOB_NAME": "${Sub} mra_esg_sf_pull_${EnvironmentStage}"
#                     } 
#                 }
#             }



# subnet-ids              = ["subnet-08d33102bc2b457f4", "subnet-006281111003cc8ba", "subnet-0a2bb90b489c870f2"]
# security-group-ids      = ["sg-0b95e3f66ee5a1189"]
# architectures           = ["x86_64"]
# handler                 = "lambda_function.lambda_handler"
# runtime                 = "python3.8"
# memory-size             = "512"
# timeout                 = "180"
# ephemeral-storage-size  = "512"
# log-retention-days      = "30"
# tracing-mode            = "Active"
# environment-variables   = {
#     "ENV" = "test"
#     "ENV1" = "test"
#     "ENV2" = "test"
# }
# lambda-layers = ["test-layer1", "test-layer1"]
# aws-lambda-event-source-dynamodb-stream-enabled = "true"
# aws-lambda-event-source-dynamodb-name = "rokolabs-terraform-state-locks-environments-config"


    