git commit -m "test commit" .
git push

docker-compose build --no-cache
docker-compose up --build --force-recreate