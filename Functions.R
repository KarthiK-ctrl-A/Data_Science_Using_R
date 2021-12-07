#R Functions 

#fun_name <- function decalration(){
#   function block
#}

#function with 0 arguments
My_function <- function() {
  print("Hello World !") #function block
}

My_function()

#op --> [1] "Hello world !"

#functions with arguments
My_Function_param <- function(sname, lname) {
  paste(sname,lname)
}

My_Function_param("R","Programming")

#op --> [1] "R Programming"
