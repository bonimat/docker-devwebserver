# README

Data 02/12/2018

Il progetto contiene un Dockefile e un docker-compose per creare un immagine di uno stack apache2 + php 7.0 + xdebug 2.5.5 e phpunit 6 e simulare un ambiente http (porta 80) con document root impostata dalla cartella in cui parte il container del docker-compose. Oltre alla porta 80, è rediretta la porta 9000 del client sulla 9000 dell'host per l'uso di xdebug (probabile sia da rimuovere perché di ostacolo)

Per avviare lanciare :
```docker-compose up -d```

