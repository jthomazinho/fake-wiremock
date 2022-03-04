FROM openjdk:14.0.1-slim-buster

ENV JAR_FILE=https://repo1.maven.org/maven2/com/github/tomakehurst/wiremock-standalone/2.26.3/wiremock-standalone-2.26.3.jar

WORKDIR /app

RUN apt-get update \
  && apt-get install -y --no-install-recommends wget \
  && rm -rf /var/lib/apt/lists/* \
  && wget -O wiremock.jar "${JAR_FILE}"

CMD [ \
  "java", "-jar", "wiremock.jar", \
  "--local-response-templating", "--no-request-journal", \
  "--verbose" \
  ]
