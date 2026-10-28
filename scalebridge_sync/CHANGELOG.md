# Changelog

## 0.2.1

- Update upstream ScaleBridge Sync from 0.0.3 to 0.0.5:
  - 0.0.4: syncing keeps working after Withings' API-plan change of 12 October 2026, and hydration is correct (body water in kg was uploaded as a percentage).
  - 0.0.5: a `public_url` with a non-standard port works behind reverse proxies that drop the port from the Host header, such as Nginx Proxy Manager.
- Document that `public_url` must match the browser's address exactly, and that the web UI and the optional sensors only answer on that address.

## 0.2.0

- Convert the local proof-of-concept into an installable Home Assistant add-on repository.
- Pin upstream ScaleBridge Sync to version 0.0.3.
- Keep persistent ScaleBridge state in the Home Assistant add-on data volume.
- Add watchdog and Home Assistant Web UI metadata.
- Add optional Home Assistant REST status sensor package.
- Document current LAN-only web UI security model.

## 0.1.1

- Run the wrapper as root so Home Assistant's `/data/options.json` can be read.

## 0.1.0

- Initial local Home Assistant add-on proof-of-concept.
