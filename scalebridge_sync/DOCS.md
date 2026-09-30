# ScaleBridge Sync add-on

This add-on runs the upstream ScaleBridge Sync application inside Home Assistant.

## Configuration

### public_url

The URL your browser uses to access ScaleBridge on the Home Assistant host.

Example:

```yaml
public_url: "http://192.168.1.50:8723"
```

The URL is also used for the Withings OAuth callback:

```text
http://192.168.1.50:8723/callback
```

If you change `public_url` after linking Withings, update the callback URL in your Withings developer application before reconnecting.

## Persistent data

ScaleBridge stores its state, OAuth tokens and sync cursor under the add-on's persistent `/data` volume. Home Assistant includes this data when the add-on is backed up.

## Web interface

The web UI is available through the add-on's **Open Web UI** button and port 8723.

The current release does not use Home Assistant Ingress because upstream ScaleBridge currently expects to be served at the root path and applies strict Host / Origin validation.

## Optional Home Assistant sensors

See the repository file:

`examples/scalebridge_package.yaml`

Copy it to your Home Assistant packages directory and replace `HOME_ASSISTANT_IP` with the IP address of your Home Assistant host.

## Security

The ScaleBridge UI has no built-in authentication. Keep port 8723 on a trusted LAN and do not forward it through your router.

Upstream project: https://github.com/ulfdalen/scalebridge-sync
