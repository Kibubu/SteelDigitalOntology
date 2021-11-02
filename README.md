# JOD für StahtDigital

## Installation

Für JOD wird eine vorhandene Installation von Jekyll und RUBY benötigt.
Siehe https://jekyllrb.com/docs/installation/

Wenn diese installiert ist, muss über ´´´gem install jekyll´´´ und
´´´gem install bundler´´´ insalliert werden.

Abschließend müssen mit Hilfe von bundler die für JOD und Jekyll-RDF notwendigen Pakete installiert werden.
Dies geschieht über ´´´bundle install --path .vendor´´´.

## Erstellen der Seiten + Webservice

Am einfachsten baut man die Seiten mit ´´´bundle exec jekyll serve´´´.
Auf diese Weise werden sowohl die HTML-Dateien erstellt als auch ein Webserver unter "localhost:4000" gestartet.

## Konfiguration

- Änderungen können in der ´´´_config.yml´´´ vorgenommen werden.
- In der Quelldatei, muss auf die Nutzung von "rdfs:type" verzichtet werden und stattdessen "a" verwendet werden.
