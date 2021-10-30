terraform {
    backend "s3" {
        bucket = "backend-terraform-juanb3r-1"
        key    = "dev-encrypt"
        region = "us-east-1"
        encrypt = true
        kms_key_id = "arn:aws:kms:us-east-1:885596881038:key/c161df87-56fe-4d73-bd64-af5dd598deed"
    }
}