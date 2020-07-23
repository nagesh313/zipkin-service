wget -qO- https://toolbelt.heroku.com/install-ubuntu.sh | sh
heroku plugins:install heroku-container-registry
docker login -e _ -u _ --password=$HEROKU_API_KEY registry.heroku.com
heroku container:login
git clone https://github.com/nagesh313/zipkin-service.git
heroku container:push zipkin --app test-jira-app
heroku container:release zipkin

