echo "Update files....."
echo "Downling...."
docker-compose pull
echo "starting......"
docker-compose up -d
echo "prune images ....."
docker image prune -f
echo "All done"
