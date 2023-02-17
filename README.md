# Getting Started

## Setup React Website and Server
- [ ] npx create-react-app
- [ ] cd my-app && npm start


## Create an image from which we'll develop from
docker run -p 8080:3000 -v $(pwd):/var/www -w "/var/www" node npm start


## Save the current working directory to a container we can use in kubernetes
docker build -f Dockerfile -t kubernetes_2/node .

## Save the current working directory to a container we can use in kubernetes without deploying it to dockerhub
docker build . -t kubernetes_2/node

## Run the container we just created
docker run -p 3000:3000 kubernetes_2/node