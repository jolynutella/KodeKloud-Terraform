resource "local_file" "whale" {
  filename = "/Users/ihorb/whale.txt"
  content  = "whale"
  depends_on = [
    local_file.krill
  ]
}

resource "local_file" "krill" {
  filename = "/Users/ihorb/krill.txt"
  content  = "krill"
}
