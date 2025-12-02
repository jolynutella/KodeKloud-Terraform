variable "pet_name" {
  type    = string
  default = "Zelda"
}

variable "pet_age" {
  type    = number
  default = 3
}

variable "is_favorite" {
  type    = bool
  default = true
}

variable "pet_favorite_food" {
  type = list(string)
  default = [
    "fish",
    "chicken",
  ]
}

# Map type (keys must be unique; values share the same type constraint)
variable "pet_traits" {
  type = map(string)
  default = {
    color  = "gray"
    breed  = "tabby"
    energy = "high"
  }
}

# Set type (unordered collection with unique elements)
variable "pet_vaccination_years" {
  type = set(number)
  default = [
    2020,
    2021,
    2023,
  ]
}

# Tuple type (ordered collection with fixed-length, mixed types)
variable "pet_tuple_profile" {
  type = tuple([
    string, # name
    number, # age
    bool,   # is_indoor
  ])
  default = [
    "Zelda",
    3,
    true,
  ]
}

# Object type (named attributes with their own type constraints)
variable "pet_detailed_profile" {
  type = object({
    name           = string
    age            = number
    vaccinated     = bool
    favorite_foods = list(string)
    microchip = object({
      id         = string
      registered = bool
    })
  })

  default = {
    name           = "Zelda"
    age            = 3
    vaccinated     = true
    favorite_foods = ["fish", "chicken"]
    microchip = {
      id         = "1234-5678"
      registered = true
    }
  }
}

# Any type (no type constraint; allows any valid Terraform value)
variable "pet_miscellaneous" {
  type = any
  default = {
    nickname    = "Zee"
    hobbies     = ["napping", "bird watching"]
    weight_kg   = 4.2
    plays_fetch = false
  }
}
