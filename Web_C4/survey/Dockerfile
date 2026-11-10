FROM tomcat:10.1-jdk21-temurin

ENV APP_DIR=/usr/local/tomcat/webapps/survey

COPY src/main/web_app/ ${APP_DIR}/
COPY src/main/java/ /tmp/survey-src/

RUN mkdir -p "$APP_DIR/WEB-INF/classes" \
    && mv "$APP_DIR/Web_INF/web.xml" "$APP_DIR/WEB-INF/web.xml" \
    && rmdir "$APP_DIR/Web_INF" \
    && find /tmp/survey-src -name '*.java' -exec javac -encoding UTF-8 \
        -cp /usr/local/tomcat/lib/servlet-api.jar \
        -d "$APP_DIR/WEB-INF/classes" {} +

EXPOSE 8080
CMD ["catalina.sh", "run"]