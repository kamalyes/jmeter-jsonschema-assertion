# JMeter Jsonschema Assertion plugin

![](https://img.shields.io/badge/JMeter-green)
![](https://img.shields.io/badge/release-5.5-green)

a ApacheJmeter assertion plugin to validate JSON/YAML Schema (Based on Sampler response).

## Packaging

Execute below mvn command. Make sure JAVA_HOME is set properly
> Maven & JDK 1.8+ is required.

```bash
mvn -B clean package -X "-Dmaven.test.skip=true -Dmaven.javadoc.skip=true" -s settings.xml
```

## Upgrade

* Close JMeter if its started.
* Remove old jar.
* Put '`jmeter-jsonschema-assertion-<version>.jar`' file from [Releases](https://github.com/kamalyes/jmeter-jsonschema-assertion/releases) to `~<JmeterPath<\lib\ext`;
* Run JMeter again and got Listener.

## Features

* Get JSON/YAML Schema from textarea or filepath
* Use [JsonPath](https://github.com/json-path/JsonPath) expression to extract the schema object

## Quick Usage

![Assertion Settings](https://www.yuyanqing.cn/oss/image-bed/col/jmeter/jmeter-jsonschema-assertion/20220115116559.jpg)

![Assertion Results](https://www.yuyanqing.cn/oss/image-bed/col/jmeter/jmeter-jsonschema-assertion/20220115115625.jpg)

## Acknowledgements

Thanks for these awesome resources that were used during the development of the **ApacheJmeter Schema Assertion**:

* [Open API](https://spec.openapis.org/oas/latest.html#info-object-example)
* [JSON Schema](https://json-schema.org/specification.html)
* [YAML Schema](https://asdf-standard.readthedocs.io/en/1.5.0/schemas/yaml_schema.html#Schema%20Definitions)
* [https://github.com/networknt/json-schema-validator](https://github.com/networknt/json-schema-validator)
* [https://github.com/json-path/JsonPath](https://github.com/json-path/JsonPath)
