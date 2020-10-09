#!/bin/bash
echo "Downloading Zettel"
curl -sL "https://github.com/athul/zettel/releases/download/0.5.5/zettel_0.5.5_linux_amd64.tar.gz" | tar xz
echo "Zettel Downloaded"
./zettel build