#Kodak i1220 Dokumentenscanner

Mit diesem Image, kann der Kodak i1220 Dokumentenscanner via Docker verwendet werden.
In dem Image sind alle benötigten Treiber installiert und man kann den Dokumentenscanner
über den Befehl Doker exec <Container-ID> /bin/bash verwenden.

Container ausführen:
Interaktiv:
docker run -it --privileged -v /dev/bus/usb:/dev/bus/usb kodak /bin/bash

Deamon
docker run -d --privileged -v /dev/bus/usb:/dev/bus/usb kodak


Scanner verwenden im Docker Container:

scanimage -b --format tiff


TODO:

- Volume für Outputfiles
- Docker Compose File schreiben
- Treiber in tar.gz packen und im Container entpacken
- Spring Boot Anwendung schreiben zum Scannen 
    - Rest API
    - Webclient