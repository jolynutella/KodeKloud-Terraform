resource "local_file" "games" {
    filename = "/Users/ihorb/favorite-game.txt"
    content = "The Witcher 3"
}

resource "local_sensitive_file" "dishes" {
    filename = "/Users/ihorb/favorite-dish.txt"
    content = "Pizza Pepperoni"
}
