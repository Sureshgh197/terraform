output "age" {
  value = "My rand age is ${random_integer.rand_num.result}"
}

output "fname" {
    value = "My var fname is ${upper(var.fname)}"
}

output "fruits" {
  value = join("\n", [for fruit in var.fruits : "My favourite fruit is ${fruit}"])
}

output "capitals" {
    value = [for cntr, cap in var.capitals: "The cap of ${cntr} is ${cap}"]
}
