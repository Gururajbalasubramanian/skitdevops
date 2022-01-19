#       TASK 1 DOCKER
# BUILD
docker build .(current dir)

# RUN
docker run -it --run -p 8080:8080 e5d2a93830da (image ID)

#       TASK 2 DEPLOY

# RUN
kubectl run go-lb-service (name)