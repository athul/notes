#!/bin/bash
echo "Downloading Zettel"
curl -sL "https://github.com/athul/zettel/releases/download/0.5.2/zettel_0.5.2_linux_arm64.tar.gz" | tar xz
echo "Zettel Downloaded"
./zettel build