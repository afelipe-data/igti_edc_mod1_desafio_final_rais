resource "aws_glue_crawler" "glue_crawler" {
  database_name = "xp_du"
  name          = "xp_rais_processing_crawler"
  role          = aws_iam_role.glue_role.arn

  s3_target {
    path = "xp-afelipe-rais2-staging-processing-zone-176031035982/rais/"
  }

  tags = local.common_tags

}