sudo service datadog-agent stop
docker kill $(docker ps -q)
docker container rm $(docker container ls -qa)
curl -s https://datadoghq.dev/katacodalabtools/r?raw=true|bash
rmdir /root/lab/ecommerceapp
statusupdate tools
# mkdir -p /root/lab
cd /ecommworkshop
git pull
# locked to specific commit on 2020-10-02
git checkout 9ce34516d9a65d6f09a6fffd5c4911a409d31e3f
git reset --hard


docker-compose -f /ecommworkshop/docker-compose-files/docker-compose-broken-instrumented.yml pull
statusupdate pulls
statuscheck dockerstart
while [ -z `docker-compose -f /root/ecommworkshop/docker-compose-files/docker-compose.yaml ps -q db` ] || [ -z `docker ps -q --no-trunc | grep $(docker-compose -f /root/ecommworkshop/docker-compose-files/docker-compose.yaml ps -q db)` ]; do
  sleep .5
done
sleep 2
statusupdate dbup

statusupdate complete

