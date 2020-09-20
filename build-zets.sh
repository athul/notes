#!/bin/bash
echo "Downloading Zettel"
curl -sL "https://github.com/hackstream/zettel/releases/download/v0.5.0/zettel_0.5.0_$(uname)_amd64.tar.gz" | tar xz
echo "Zettel Downloaded"
./zettel build