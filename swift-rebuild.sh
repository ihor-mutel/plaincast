git commit -m "test commit" .
git push
docker rmi plaincast:test1
docker build -t plaincast:test1 .
docker-compose up