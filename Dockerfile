FROM selenium/standalone-chrome:latest

RUN sudo apt-get update
RUN sudo apt-get install iputils-ping
RUN sudo apt-get install -y python3-pip
RUN pip3 install jupyter
RUN pip3 install selenium

COPY main.ipynb /home/seluser/
CMD ~/.local/bin/jupyter lab --allow-root --ip=0.0.0.0 --port=8880 --no-browser --notebook-dir="/home/seluser"

#docker build --no-cache -t jupyter_selenium_ide:v1 .
#docker run -d -p 8880:8880 jupyter_selenium_ide:v1
