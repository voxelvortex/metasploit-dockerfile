FROM debian:latest

RUN apt-get update && apt-get install -y curl wget gnupg2

RUN curl https://raw.githubusercontent.com/rapid7/metasploit-omnibus/master/config/templates/metasploit-framework-wrappers/msfupdate.erb > msfinstall && \
	chmod +x ./msfinstall &&\
	./msfinstall && \
	rm ./msfinstall

RUN useradd nroot && usermod --shell /bin/bash nroot
