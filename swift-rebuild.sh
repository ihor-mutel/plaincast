git commit -m "test commit" .
git push
docker build -t plaincast:test1 . --no-cache
docker-compose up