# Without Docker Compose:

## Create Docker Container

sudo docker build -f Dockerfile.dev -t workflow/frontend .

## Run Docker Container

sudo docker run -p 3000:3000 -v /app/node_modules -v $(pwd):/app <container_id or tag name>

# With Docker Compose (better):

create the docker-compose.yml file, then:

sudo docker-compose up

to stop:

sudo docker-compose down

# Run Tests:

sudo docker exec -it <container_id or tag name> yarn test 
