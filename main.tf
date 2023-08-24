# This should only be called for the frontend component
module "alb-public" {
    source                   = "./vendor/modules/alb" 
    ALB_NAME                 = "roboshop-public" 
    INTERNAL                 = false
    ENV                      = var.ENV
}

# This should only be called for the backend component
module "alb-private" {
    source                   = "./vendor/modules/alb"  
    ALB_NAME                 = "roboshop-private" 
    INTERNAL                 = true 
    ENV                      = var.ENV
}