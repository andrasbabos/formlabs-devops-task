resource "aws_eks_cluster" "main" {
  name = var.eks_parameters.name

  role_arn = aws_iam_role.main.arn
  version  = var.eks_parameters.version

  vpc_config {
    subnet_ids = data.aws_subnets.main.ids
  }

  depends_on = [
    aws_iam_role_policy_attachment.main
  ]
}

resource "aws_iam_role" "main" {
  name = "eks-cluster-formlabs"
  assume_role_policy = jsonencode({
    Version = "2012-10-17"
    Statement = [
      {
        Action = [
          "sts:AssumeRole",
          "sts:TagSession"
        ]
        Effect = "Allow"
        Principal = {
          Service = "eks.amazonaws.com"
        }
      },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "main" {
  policy_arn = "arn:aws:iam::aws:policy/AmazonEKSClusterPolicy"
  role       = aws_iam_role.main.name
}
