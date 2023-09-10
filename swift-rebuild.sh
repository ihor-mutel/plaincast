git commit -m "test commit" .
git push
docker build -t plaincast:test1 . --build-arg CACHEBUST="$(date +%s)"
docker-compose up