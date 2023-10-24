This will setup a development environment without having to install any tools other than docker.  
Once setup it can be used to run selenium tests with local browser in debug mode.
Although the docker image is based off a selenium-hub image it is not being used for this setup.

# Prerequisites

In the docker host computer, run the browser in debug mode.  
### For Chrome (windows):
-find location of Chrome.exe  
-execute below in command prompt  
`chrome.exe --remote-debugging-port=9222 --user-data-dir="%appdata%\ChromeProfile"`

# How to use
-build the docker container `docker build --no-cache -t jupyter_selenium_ide:v1 .`  
-start the docker container `docker run -d -p 8880:8880 jupyter_selenium_ide:v1`  
-using any browser in local (host) computer navigate to jupyter lab `http://127.0.0.1:8880/lab`  
-run the notebook `main.ipynb`  
-you can now work in debug mode in your local Chrome browser.
