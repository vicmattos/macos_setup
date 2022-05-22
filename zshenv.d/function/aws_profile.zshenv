
function aws_xhq() {
    export AWS_PROFILE=xhq
    export AWS_REGION=us-east-1
    export AWS_DEFAULT_REGION=$AWS_REGION
}

function aws_vikingprod() {
    export AWS_PROFILE=viking_prod
    export AWS_REGION=us-east-1
    export AWS_DEFAULT_REGION=$AWS_REGION
}

# aws_vikingregistrationprod() {
#     export AWS_PROFILE=viking_registrationprod
#     export AWS_REGION=us-east-1
#     export AWS_DEFAULT_REGION=$AWS_REGION
# }

function aws_vikingstaging() {
    export AWS_PROFILE=viking_dev
    export AWS_REGION=us-east-1
    export AWS_DEFAULT_REGION=$AWS_REGION
}

function aws_vikingdev() {
    export AWS_PROFILE=viking_dev
    export AWS_REGION=eu-west-1
    export AWS_DEFAULT_REGION=$AWS_REGION
}

function aws_none() {
    unset AWS_PROFILE AWS_REGION AWS_DEFAULT_REGION
}