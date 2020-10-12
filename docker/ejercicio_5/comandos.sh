sudo docker run -d -p 2222:22 --net=ejercicio5 --name ubuntu ssh-ubuntu
sudo docker run -d --net=ejercicio5 --name centos ssh-centos