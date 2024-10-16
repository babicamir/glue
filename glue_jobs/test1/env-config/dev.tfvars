name                        = "test1"
env                         = "dev"
aws-region                  = "us-east-1"
project-name                = "solution-1"
deployment-role             = "arn:aws:iam::605391196819:role/cross-account-deployment-role"
devops-s3-bucket            = "solution-1-devops-dev-us-east-1-605391196819"
glue-description            = "Description"
glue-role                   = "arn:aws:iam::605391196819:role/glue"
glue-version                = "4.0"
glue-worker-type            = "G.1X"
glue-number-of-workers      = "2"
glue-max-retries            = "0"
glue-max-concurrent-runs    = "1" #default
glue-timeout                = "2880" #default
glue-command-name           = "glueetl"
glue-common-folder-location = "s3://solution-1-devops-dev-us-east-1-605391196819/solution-1/glue/common"
glue-script-location        = "s3://solution-1-devops-dev-us-east-1-605391196819/solution-1/glue/test1.py"
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