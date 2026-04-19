terraform {
  required_version = ">= 1.0.0"

  backend "s3" {
    bucket         = "YOUR_ACCOUNT_ID-terraform-states" # Use the actual bucket name created
    key            = "global/s3/terraform.tfstate"
    region         = "us-west-2"                        # Must match where bucket was created
    dynamodb_table = "terraform-lock"
    encrypt        = true
  }
}
