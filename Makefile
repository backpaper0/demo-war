down:
	docker rm -f wildfly

up:
	docker run -d --name wildfly -p 8080:8080 -p 9990:9990 jboss/wildfly /opt/jboss/wildfly/bin/standalone.sh -b=0.0.0.0 -bmanagement=0.0.0.0
	@while [ "$$(docker logs wildfly|grep WFLYSRV0025)" = "" ]; do\
		sleep 1;\
	done
	docker exec wildfly /opt/jboss/wildfly/bin/add-user.sh admin secret --silent

logs:
	@clear
	docker logs -f --since=0m wildfly

bash:
	docker exec -it wildfly bash

jboss-cli:
	docker exec -it wildfly /opt/jboss/wildfly/bin/jboss-cli.sh --connect
