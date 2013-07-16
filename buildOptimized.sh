#!/bin/bash

AppName="myApp"
AppFolder="${AppName}-optimized"

rm -rf ${AppName}.app/

rm -rf ${AppFolder}
mkdir ${AppFolder}

cd durandal
mimosa build -mo
cd ..

cp durandal/views/index-optimize.html ${AppFolder}/index.html
cp -R durandal/public/* ${AppFolder}/

macgap build -n ${AppName} ${AppFolder}/
