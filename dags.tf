#  This file ensure that the DAGs and requirements are uploaded

# TODO : To be truly scaleable need requirements to be independent for each DAG
# https://youtu.be/uA-8Lj1RNgw?si=LQgZ6EiYnRpcRWJY

# Upload DAGS
resource "aws_s3_object" "object1" {
  for_each = fileset("../airflow/dags/", "*")
  bucket   = aws_s3_bucket.this.id
  key      = "dags/${each.value}"
  source   = "../dags/dags/${each.value}"
  etag     = filemd5("../dags/dags/${each.value}")
}

# Upload plugins/requirements.txt
resource "aws_s3_object" "reqs" {
  for_each = fileset("../airflow/mwaa/", "*")
  bucket   = aws_s3_bucket.this.id
  key      = each.value
  source   = "../dags/mwaa/${each.value}"
  etag     = filemd5("../dags/mwaa/${each.value}")
}
