variable "region" {
  default = {
    dev = "us-central1"
    stg = "us-central1"
    prod = "us-central1"
    }
}

variable "project_id" {
  default = {
    dev = "teck-sandbox-sunil-pillai"
    stg = "teck-stage-pipeline-mon-tfe"
    prod = "teck-dev-ingestion"
  }
}