docker build -t xjcdc.tencentcloudcr.com/xjcdc/nfineweb  .  -f NFine.Web/Dockerfile
docker build -t xjcdc.tencentcloudcr.com/xjcdc/nfinemobile  .  -f NFine.Mobile/Dockerfile
docker push xjcdc.tencentcloudcr.com/xjcdc/nfineweb
docker push xjcdc.tencentcloudcr.com/xjcdc/nfinemobile
docker image prune -f
