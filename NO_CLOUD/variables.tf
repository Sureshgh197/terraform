variable "name" {
  description = "what is ur name"
  type        = string
  default     = "suresh"
}  

variable "fname" {
  description = "what is ur name"
  type        = string
}  

#usage of list
#for output blocks we cannot use for_each, but use with for loop
variable "fruits" {
  description = "my list of fruits"
  type        = list(string)
  default     = ["apple", "banana", "grapes"]
}

#usage of map
variable "capitals" {
  description = "my map of capitals"
  type        = map(string)
  default     = {
    "india" = "delhi",
    "usa"   = "washington",
    "uk"    = "london"
  }
}