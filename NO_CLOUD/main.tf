resource "random_string" "rand_name" {
  length = 5

}

resource "random_integer" "rand_num" {
  min = 1
  max = 50
}

output "name" {
  value = "My rand name is ${random_string.rand_name.result}"
}