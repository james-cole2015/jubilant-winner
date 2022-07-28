resource "aws_resourcegroups_group" "function_jenkins_rg" {
  name = "function_jenkins-rg"

  resource_query {
    query = <<JSON
{
  "ResourceTypeFilters": [
    "AWS::AllSupported"
  ],
  "TagFilters": [
    {
      "Key": "function",
      "Values": ["jenkins"]
    }
  ]
}
JSON
  }
}

resource "aws_resourcegroups_group" "user_averyclark-rg" {
  name = "user_averyclark-rg"

  resource_query {
    query = <<JSON
{
  "ResourceTypeFilters": [
    "AWS::AllSupported"
  ],
  "TagFilters": [
    {
      "Key": "user",
      "Values": ["AveryClark"]
    }
  ]
}
JSON
  }
}

resource "aws_resourcegroups_group" "platform_terraform-rg" {
  name = "platform_terraform-rg"

  resource_query {
    query = <<JSON
{
  "ResourceTypeFilters": [
    "AWS::AllSupported"
  ],
  "TagFilters": [
    {
      "Key": "platform",
      "Values": ["terraform"]
    }
  ]
}
JSON
  }
}

resource "aws_resourcegroups_group" "repo-name_jubliant-winner-rg" {
  name = "repo-name_jubliant-winner-rg"

  resource_query {
    query = <<JSON
{
  "ResourceTypeFilters": [
    "AWS::AllSupported"
  ],
  "TagFilters": [
    {
      "Key": "repo-name",
      "Values": ["jubliant-winner"]
    }
  ]
}
JSON
  }
}

resource "aws_resourcegroups_group" "repo-name_glowing-memory-rg" {
  name = "repo-name_glowing-memory-rg"

  resource_query {
    query = <<JSON
{
  "ResourceTypeFilters": [
    "AWS::AllSupported"
  ],
  "TagFilters": [
    {
      "Key": "repo-name",
      "Values": ["glowing-memory"]
    }
  ]
}
JSON
  }
}

resource "aws_resourcegroups_group" "environment_development-rg" {
  name = "environment_development-rg"

  resource_query {
    query = <<JSON
{
  "ResourceTypeFilters": [
    "AWS::AllSupported"
  ],
  "TagFilters": [
    {
      "Key": "environment",
      "Values": ["development"]
    }
  ]
}
JSON
  }
}

resource "aws_resourcegroups_group" "platform_aws-rg" {
  name = "platform_aws-rg"

  resource_query {
    query = <<JSON
{
  "ResourceTypeFilters": [
    "AWS::AllSupported"
  ],
  "TagFilters": [
    {
      "Key": "platform",
      "Values": ["aws"]
    }
  ]
}
JSON
  }
}