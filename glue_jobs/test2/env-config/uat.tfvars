name                        = "test2"
env                         = "uat"
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
glue-script_location        = "s3://solution-1-devops-us-east-1-647692764445/solution-1/glue/test2.py"
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
  "--env-name" = "uat"
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