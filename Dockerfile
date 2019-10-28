FROM fedora:30
RUN yum -y install syncthing syncthing-tools
RUN useradd -c 'Syncthing' syncthing
USER syncthing
WORKDIR /home/syncthing
entrypoint ["syncthing"]
