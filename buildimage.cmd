docker build -t xjcdc.tencentcloudcr.com/xjcdc/nfineweb  .  -f NFine.Web/Dockerfile
docker push xjcdc.tencentcloudcr.com/xjcdc/nfineweb
docker image prune -f
