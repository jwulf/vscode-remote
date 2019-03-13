FROM codercom/code-server

RUN apt install -y gcc g++ make gnupg2 git curl nano
RUN curl -sL https://deb.nodesource.com/setup_10.x | bash - & \
  apt install -y nodejs
RUN git clone https://github.com/magicmonty/bash-git-prompt.git /root/.bash-git-prompt --depth=1
RUN echo GIT_PROMPT_ONLY_IN_REPO=1 >> ~/.bashrc & \
  echo source ~/.bash-git-prompt/gitprompt.sh >> ~/.bashrc
