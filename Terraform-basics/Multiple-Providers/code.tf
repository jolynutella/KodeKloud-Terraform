resource "local_file" "iac_code" {
  filename = "/Users/ihorb/practice.txt"
  content  = "Setting up infrastructure as code"
}

resource "random_string" "iac_random" {
  length = 10
  min_upper = 5
}
