#/bin/bash

echo Generating ttl files
bundle exec jekyll build --config _config_nt.yml

echo Moving ttl output to tmp
mkdir /tmp/ttl
mv _site/* /tmp/ttl/.

for f in /tmp/ttl/*.html ; do
    sed '/./!d' $f > "${f%.*}.ttl" ;
    rm $f ;
done

echo Generating main page and resource pages
bundle exec jekyll build

echo Merge ttl output in ./_site
mv /tmp/ttl ./_site/.
