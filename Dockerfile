FROM ubuntu:16.04
LABEL maintainer="Luiz Filho <lfilho@gmail.com>"

# Let the container know that there is no tty
# ENV DEBIAN_FRONTEND noninteractive
ENV TERM xterm-256color

# Bootstrapping packages needed for installation
RUN \
  apt-get update && \
  apt-get install -yqq locales software-properties-common

# Set locale to UTF-8
ENV LANGUAGE en_US.UTF-8
ENV LANG en_US.UTF-8
RUN localedef -i en_US -f UTF-8 en_US.UTF-8 && \
  /usr/sbin/update-locale LANG=$LANG && \
  useradd -m -s /bin/bash nonrootuser && \
	echo 'nonrootuser ALL=(ALL) NOPASSWD:ALL' >>/etc/sudoers

# Install dependencies
# `security` is needed for fontconfig and fc-cache
RUN \
  add-apt-repository "deb http://archive.ubuntu.com/ubuntu xenial security" && \
  apt-get update && \
  apt-get -yqq install curl file fontconfig g++ git make ruby2.3 ruby2.3-dev uuid-runtime && \
  apt-get clean && \
  ln -sf ruby2.3 /usr/bin/ruby && \
  ln -sf gem2.3 /usr/bin/gem && \
  rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*


# Install dotfiles (as regular, non-root user)
COPY . /home/nonrootuser/.yadr/
RUN chown -R nonrootuser: /home/nonrootuser
ENV USER nonrootuser
USER nonrootuser
WORKDIR /home/nonrootuser/.yadr
# RUN rake install

# Run a zsh session
CMD [ "/bin/zsh" ]
