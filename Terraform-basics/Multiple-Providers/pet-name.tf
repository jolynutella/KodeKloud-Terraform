resource "local_file" "my-pet" {
  filename = "/Users/ihorb/pet-name.txt"
  content  = "My pet is called finnegan!!"
}

resource "random_pet" "other-pet" {
  length    = 1
  prefix    = "Mr"
  separator = "."
}
