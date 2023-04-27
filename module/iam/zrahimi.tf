# add your code here

resource "aws_iam_user" "zrahimi" {
  name = "zrahimi"
  path = "/system/"

  tags = {
    name = "zrahimi"
  }
}

resource "aws_iam_access_key" "access_key_zaman" {
  user = aws_iam_user.zrahimi.name
}

data "aws_iam_policy_document" "policy_for_zrahimi" {
  statement {
    effect    = "Allow"
    actions   = ["*"]
    resources = ["*"]
  }
}

resource "aws_iam_user_policy" "policy_for_zrahimi" {
  name   = "policy_for_zrahimi"
  user   = aws_iam_user.zrahimi.name
  policy = data.aws_iam_policy_document.policy_for_zrahimi.json
}