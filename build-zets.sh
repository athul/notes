#!/bin/bash
echo "Downloading Zettel"
curl -sL "https://github.com/athul/zettel/releases/download/0.5.7/zettel_0.5.7_linux_amd64.tar.gz" | tar xz
echo "Zettel Downloaded"
./zettel build