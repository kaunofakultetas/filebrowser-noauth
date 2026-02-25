FROM filebrowser/filebrowser:v2.60.0

USER root

ARG FILEBROWSER_BASE_URL
WORKDIR /

COPY settings.json /config/settings.json
COPY branding /branding


RUN filebrowser config init
RUN filebrowser users add student 'dummypassworddummypassword'
RUN filebrowser config set --branding.name "Filebrowser" --branding.files "/branding" --branding.disableExternal --branding.theme "dark"
RUN filebrowser config set --auth.method=noauth

RUN chown 1000:1000 /config/settings.json /filebrowser.db
USER 1000

