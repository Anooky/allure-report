FROM openjdk
ENV ALLURE_VERSION=2.7.0
ADD https://dl.bintray.com/qameta/generic/io/qameta/allure/allure/${ALLURE_VERSION}/allure-${ALLURE_VERSION}.tgz .
RUN tar -xvzf allure-${ALLURE_VERSION}.tgz
ENV PATH="/allure-${ALLURE_VERSION}/bin:$PATH"
COPY make-report.sh .
CMD sh make-report.sh
