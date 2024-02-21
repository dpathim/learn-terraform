//plain variable

variable "fruit_name" {
  default = "apple"
}

output "fruit_name" {
  value = var.fruit_name
}


#List variable

variable "fruits" {
  default = [
  "apple" ,
    "banana" ]
}

#single line default = ["apple" , "banana"]

# map variable, plain

variable "fruit_stocks" {
  default = {
    apple = 100
    banana = 200
  }
}

#map variable ,map of map

variable "fruit_stock_with_price" {
  default = {
    apple = {
      stock = 100
      price =3
    }
    banana = {
      stock = 200
      price = 1

    }
  }
}

// access the list variable with index ,index start with zero

output "fruits_first" {
  value = var.fruits[0]
}

output "fruits_second" {
  value = var.fruits[1]
}

//access the variable map of map with key
output "fruit_stocks_apple"{
  value = var.fruit_stocks.apple // ["apple"]
}

output "fruit_stock_with_price_banana" {
  value = var.fruit_stock_with_price.banana
}

output "fruit_stock_with_price_apple_stock" {
  value = var.fruit_stock_with_price.apple.stock
}

# Variable Data Types
variable "fruit_details" {
  default = {
    apple = {
      stock = 100 # number
      type = "washington" # string
      for_sale = true # boolean
    }
  }
}

# Variable with the combination of any other sting then it needs to be i ${}

output "fruit_name_1" {
  value = "Fruit Name=${var.fruit_name}"
}

output "fruit_details_apple" {
  value = "Apple Stock = ${var.fruit_details["apple"].stock}, Apple Type =${var.fruit_details["apple"].type} , Apple sale Status = ${var.fruit_details["apple"].for_sale}"
}