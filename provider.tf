# Провайдеры
terraform {
  required_providers {
    yandex = {
      source  = "yandex-cloud/yandex"
      version = ">= 0.35.0"
    }
    time = {
      source  = "hashicorp/time"
    }
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.70.0"
    }
  }
}

provider "aws" {
  skip_region_validation      = true
  skip_credentials_validation = true
  skip_requesting_account_id  = true
  access_key                  = "mock_access_key"
  secret_key                  = "mock_secret_key"
}