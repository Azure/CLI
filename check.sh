#!/bin/bash

if [ "$OSTYPE" == "darwin"* ]
then
    echo "CredScan is not supported on MacOS. Please use Linux or Windows";
    exit 1;
else
    echo "OS check passed";
fi

DOTNETVERSION=`dotnet --version`
if [ $? -ne 0 ]
    then
        echo "Please install .NET Core 1.0.1 - .NET 5.x to use CredScan"
fi
OLDEST="1.0.1"
NEWEST="5.0.8"

if [[ $DOTNETVERSION < $OLDEST ]]; then
    echo "Please install .NET Core 1.0.1 - .NET 5.x to use CredScan"
    exit 1
elif [[ $DOTNETVERSION == $OLDEST || $DOTNETVERSION =~ *"5."* ]]; then
    echo ".NET version check passed"
elif [[ $DOTNETVERSION > $OLDEST && $DOTNETVERSION < $NEWEST ]]; then
    echo ".NET version check passed"
else
    echo "Please install .NET Core 1.0.1 - .NET 5.x to use CredScan"
    exit 1
fi

npm install




