# fakes

This project uses [WireMock] to mock responses faking some of the external dependencies of the Bot:

- Plural (FX quote)
- Bitstamp (order entry)
- Binance (order entry)

## Running

The easiest way to run the project is to use docker-compose:

```bash
docker-compose up

# or to run as a daemon
# docker-compose up -d
# prepare to use graphql
```

## Adding mocks

WireMock accepts JSON files to configure stubbed responses, called _mappings_. Create a new file in the _mappings_ folder with the configuration.

See [Stubbing - WireMock][Stubbing] for the format, and [Response Templating - WireMock][Templating] for using templates in the response, which gives a lot of flexibility.

It can also serve files from the _\_\_files_ folder, either statically or from a mapping.

[WireMock]: http://wiremock.org/
[Stubbing]: http://wiremock.org/docs/stubbing/
[Templating]: http://wiremock.org/docs/response-templating/
