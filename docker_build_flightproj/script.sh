
cd /
# create a directory and enter to the test2
sudo mkdir test2
cd test2

# cloning a repository

git clone -b dev https://ansible-story@dev.azure.com/ansible-story/springbootapp_mumbai/_git/springbootapp_mumbai

cd springbootapp_mumbai/flight-tracking/

sudo mvn clean package

docker build -t webservertest .

docker run -d -p 8050:8080 webservertest

cd ../FlightStatusServiceImpl/

docker build -t appservertest .

docker run -d -p 8053:8083 appservertest

cd ../FlightsStatusResource/

docker build -t apiservertest .

docker run -d -p 8054:8084 apiservertest
