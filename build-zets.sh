#!/bin/bash
echo "Downloading Zettel"
curl -L "https://github.com/athul/zet/releases/download/0.1.0/zet_0.1.0_linux_amd64.tar.gz" | tar xz
echo "Zettel Downloaded"
./zettel build