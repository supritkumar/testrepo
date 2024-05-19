output "user_output" {
    value = "My name is ${var.name} and I'm from ${lookup(var.user_location,var.name)}"
}