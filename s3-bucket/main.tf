# this is to create the S3 bucket so we can keep state between users

provider "aws" {
    region = "us-east-2"
}

#prevent accidental deletion of bucket
lifecycle {
    prevent-destroy = true
}

#Enable versioning so we can see the full history of our state
versioning {
    enabled = true
}

#Enable server-side encryption by default
server_side_encryption_configuration {
    rule {
        apply_server_side_encryption_by_default {
            sse_algorithm = "AES256"
        }
    }
}

