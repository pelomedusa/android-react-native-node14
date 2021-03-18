FROM  jangrewe/gitlab-ci-android

RUN apt update && apt install -y gnupg
RUN curl -sL https://deb.nodesource.com/setup_14.x | bash -
RUN apt install -y nodejs build-essential make
RUN apt clean
RUN apt autoclean
RUN npm install -g npm@6.14.10 react-native-cli
