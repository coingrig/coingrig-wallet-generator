#!/usr/bin/env bash
cd ./ios
if test -f "CGWallet.tar"; then
  tar -xvf CGWallet.tar
else
    echo "CGWallet.tar does not exist or is not needed."
fi
cd ../