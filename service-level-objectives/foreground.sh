#!/bin/bash
mkdir ecommerce-workshop
git clone https://github.com/DataDog/ecommerce-workshop /ecommerce-workshop/
cd /ecommerce-workshop/
# locked to specific commit on 2020-10-02
git checkout 9ce34516d9a65d6f09a6fffd5c4911a409d31e3f
git reset --hard

export POSTGRES_USER=postgres
export POSTGRES_PASSWORD=postgres
echo Welcome to the Ensuring Reliability with SLOs Training Workshop!