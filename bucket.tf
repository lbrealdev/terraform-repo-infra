# Create simple bucket s3
resource "aws_s3_bucket" "btest" {  # btest nome do recurso
  bucket = "space-terraform-lb-02s" # nome do bucket
  acl    = "private"                # acl pré-configurada

  tags = {
    Name = "lbgcmybucket002"        # tag
  }
}
