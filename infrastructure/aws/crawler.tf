resource "aws_glue_crawler" "glue_crawler" {
  database_name = "xp_du"
  name          = "xp_rais_processing_crawler"
  role          = aws_iam_role.glue_role.arn

  s3_target {
    path = "s3://xp-afelipe-rais-prod-processing-zone-127012818163/rais/"
  }

  tags = local.common_tags

}