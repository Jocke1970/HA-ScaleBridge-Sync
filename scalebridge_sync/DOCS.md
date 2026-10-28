# ScaleBridge Sync add-on

This add-on runs the upstream ScaleBridge Sync application inside Home Assistant.

## Configuration

### public_url

The URL your browser uses to access ScaleBridge on the Home Assistant host.

It has to match the browser's address bar exactly: scheme, host and port. ScaleBridge answers only to this address and `localhost`. Under any other address the web UI answers `403 forbidden_host`, or it loads while every button fails with `403 csrf`.

Example:

```yaml
public_url: "http://192.168.1.50:8723"
```

The URL is also used for the Withings OAuth callback:

```text
http://192.168.1.50:8723/callback
```

If you change `public_url` after linking Withings, update the callback URL in your Withings developer application before reconnecting.

Behind a reverse proxy, `public_url` is the proxy's address, for example `https://scale.example.com:8443`, and the proxy must add authentication because the UI has none. See upstream's [Behind a reverse proxy](https://github.com/ulfdalen/scalebridge-sync/blob/main/DOCS.md#behind-a-reverse-proxy).

## Persistent data

ScaleBridge stores its state, OAuth tokens and sync cursor under the add-on's persistent `/data` volume. Home Assistant includes this data when the add-on is backed up.

## Web interface

The web UI is available through the add-on's **Open Web UI** button and port 8723.

The current release does not use Home Assistant Ingress because upstream ScaleBridge currently expects to be served at the root path and applies strict Host / Origin validation.

## Optional Home Assistant sensors

See the repository file:

`examples/scalebridge_package.yaml`

Copy it to your Home Assistant packages directory and replace `HOME_ASSISTANT_IP` with the IP address of your Home Assistant host. This works when `public_url` uses that same IP and port 8723; with any other `public_url`, ScaleBridge answers the sensors with `403 forbidden_host`.

## Security

The ScaleBridge UI has no built-in authentication. Keep port 8723 on a trusted LAN and do not forward it through your router.

Upstream project: https://github.com/ulfdalen/scalebridge-sync
