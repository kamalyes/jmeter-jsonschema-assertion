#!/bin/sh

_PWD=$(pwd)
_JMETER_VERSION="5.5"
_JMETER_DOWNLOAD_URL="https://mirrors.tuna.tsinghua.edu.cn/apache/jmeter/binaries/apache-jmeter-$_JMETER_VERSION.tgz"
_SCHEMA_ASSERTION_PLUGIN_NAME="jmeter-jsonschema-assertion-1.1.0.jar"

echo "\nDownloading the binary from" $_JMETER_DOWNLOAD_URL
curl -L $_JMETER_DOWNLOAD_URL -k >apache-jmeter-$_JMETER_VERSION.tgz

echo "\nUnzipping .tgz binary..."
eval tar zxvf $_PWD/apache-jmeter-$_JMETER_VERSION.tgz
mv apache-jmeter-$_JMETER_VERSION apache-jmeter-$_JMETER_VERSION

echo "\nCopy libraries ..."
cp $_PWD/$_SCHEMA_ASSERTION_PLUGIN_NAME $_PWD/apache-jmeter-$_JMETER_VERSION/lib/ext/$_SCHEMA_ASSERTION_PLUGIN_NAME

echo "\nRemove binary tgz ..."
rm -rf apache-jmeter-$_JMETER_VERSION.tgz

sleep 2
echo "\nDone!"
