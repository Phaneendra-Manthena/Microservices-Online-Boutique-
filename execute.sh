#!/bin/bash

# Save the current working directory
current_dir=$(pwd)

# Define the list of directories to process
directories=(
    /root/Microservices-Online-Boutique-/Paymentservice
    /root/Microservices-Online-Boutique-/Shipping service
    /root/Microservices-Online-Boutique-/Productcatalogservice
    /root/Microservices-Online-Boutique-/adservice
    /root/Microservices-Online-Boutique-/Currencyservice
    /root/Microservices-Online-Boutique-/cartservice
    /root/Microservices-Online-Boutique-/frontend
    /root/Microservices-Online-Boutique-/Emailservice
    /root/Microservices-Online-Boutique-/Recommendationservice
    /root/Microservices-Online-Boutique-/checkoutservice
    /root/Microservices-Online-Boutique-/Redis
)

# Loop through each directory and execute the kubectl apply commands
for dir in "${directories[@]}"
do
  echo "Processing directory: $dir"
  cd "$dir"
  kubectl apply -f manifest.yml
done

# Return to the original directory
cd "$current_dir"
