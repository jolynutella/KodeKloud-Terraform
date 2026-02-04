resource "docker_container" "php-httpd" {
  name     = "webserver"
  hostname = "php-httpd"
  image    = docker_image.php-httpd-image.name

  networks_advanced {
    name = "my_network"
  }

  ports {
    internal = 80
    external = 80
    ip       = "0.0.0.0"
  }

  labels {
    label = "challenge"
    value = "second"
  }

  volumes {
    host_path      = "/root/code/terraform-challenges/challenge2/lamp_stack/website_content/"
    container_path = "/var/www/html"
  }
}

resource "docker_container" "mariadb" {
  name     = "db"
  hostname = "db"
  image    = docker_image.mariadb-image.name

  networks_advanced {
    name = "my_network"
  }

  ports {
    internal = 3306
    external = 3306
    ip       = "0.0.0.0"
  }

  labels {
    label = "challenge"
    value = "second"
  }

  env = [
    "MYSQL_ROOT_PASSWORD=1234",
    "MYSQL_DATABASE=simple-website"
  ]

  volumes {
    volume_name    = "mariadb-volume"
    container_path = "/var/lib/mysql"
  }
}

resource "docker_container" "phpmyadmin" {
  name     = "db_dashboard"
  hostname = "phpmyadmin"
  image    = "phpmyadmin/phpmyadmin"

  networks_advanced {
    name = "my_network"
  }

  ports {
    internal = 80
    external = 8081
    ip       = "0.0.0.0"
  }

  labels {
    label = "challenge"
    value = "second"
  }

  links = ["db"]

  depends_on = [docker_container.mariadb]
}
