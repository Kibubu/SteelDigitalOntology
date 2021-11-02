# JOD für StahtDigital

## Installation

Für JOD wird eine vorhandene Installation von Jekyll und RUBY benötigt.
Siehe https://jekyllrb.com/docs/installation/

Wenn diese installiert sind, muss über

```gem install jekyll```

und

```gem install bundler```

installiert werden.

Abschließend müssen mit Hilfe von bundler die für JOD und Jekyll-RDF notwendigen Pakete installiert werden.
Dies geschieht über:

```bundle install --path .vendor```

## Erstellen der Seiten + Webservice

Am einfachsten baut man die Seiten mit:

```bundle exec jekyll serve```

Auf diese Weise werden sowohl die HTML-Dateien erstellt als auch ein Webserver unter ```localhost:4000``` gestartet.

Möchte man nur die Seiten bauen ohne einen Webserver zu starten genügt:

```bundle exec jekyll build```

## Konfiguration

- Die Konfigurationsdatei verweist über ```theme``` auf die JOD-Erweiterung, durch deren Abhängigkeiten sind auch alle Funktionalitäten von jekyll-RDF vorhanden.
- Änderungen können in der ```_config.yml``` vorgenommen werden.
- In der Quelldatei, muss auf die Nutzung von ```rdfs:type``` verzichtet werden und stattdessen "a" verwendet werden.
- JOD benötigt den Namespace explizit als Ressource des Typs ```owl:Ontology``` (auf diese Klasse wird in der config unter ```class_template_mappings``` verwiesen)
Über diese Ressource können dann noch weitere Metadaten hinzugefügt werden, die ebenfalls ins HTML serialisiert werden
- Um den Vorgang der Static-Site-Generation zu beschleuningen, können die abzufragenden Ressourcen eingeschränkt werden.
Dies geschieht über eine SPARQL-Query unter Verwendung der Variable ```?resourceUri``` unter ```restriction``` (fehlt dieser Punkt, wird über alle Ressourcen (Subjekte ?) iteriert).
