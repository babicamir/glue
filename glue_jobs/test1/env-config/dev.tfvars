name                    = "test2"
env                     = "dev"
aws-region              = "us-east-1"
project-name            = "solution-1"
deployment-role         = "arn:aws:iam::647692764445:role/lambda-deployment"

glue-role               = "arn:aws:iam::647692764445:role/glue"
glue-version            = "4.0"
glue-worker-type        = "G.1X"
glue-command-name       = "glueetl"
glue-script_location    = "s3://solution-1-devops-us-east-1-647692764445/solution-1/glue/test1.py"


 
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


    