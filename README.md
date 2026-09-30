# HA ScaleBridge Sync

Home Assistant add-on wrapper for [ScaleBridge Sync](https://github.com/ulfdalen/scalebridge-sync), a self-hosted bridge that synchronizes Withings scale measurements to Garmin Connect.

This repository is **not** the ScaleBridge Sync project itself. It packages the upstream application as a Home Assistant add-on.

## Install

1. In Home Assistant, open **Settings → Apps / Add-ons → Store**.
2. Add this repository:
   `https://github.com/Jocke1970/HA-ScaleBridge-Sync`
3. Install **ScaleBridge Sync**.
4. Open the add-on configuration and set `public_url` to an address your browser can use to reach port 8723 on the Home Assistant host, for example:
   `http://192.168.1.50:8723`
5. Start the add-on and open its web UI.

## Current version

- Add-on: **0.2.0**
- Upstream ScaleBridge Sync: **0.0.3** (pinned)

## Home Assistant status sensors

An optional package example is available at `examples/scalebridge_package.yaml`. It reads ScaleBridge's local `/api/status` endpoint once per minute and exposes connection, sync and update state in Home Assistant.

## Security

ScaleBridge Sync's web UI does not have its own login. The current add-on exposes port 8723 to the local network, so use it only on a trusted LAN. Do not expose port 8723 directly to the internet.

Ingress / authenticated Home Assistant access is planned for a later version.

## Upstream

ScaleBridge Sync: https://github.com/ulfdalen/scalebridge-sync
