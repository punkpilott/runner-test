terraform {
  required_version = "~> 1.0"
  required_providers {
    http = {
      source  = "hashicorp/http"
      version = "~> 3.0"
    }
  }
}

data "http" "main" {
  url = "https://ifconfig.me"
  request_headers = {
    "Accept" = "application/json"
  }
}

output "main" {
  value = data.http.main.response_body
}