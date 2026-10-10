# همراه | Hamrah LAN Messenger

A local-network messenger prototype for Windows and Android, built with Flutter.

## Current status

This repository starts with the Persian RTL interface and an automated build workflow. It is **not yet a complete messenger**: local device discovery, message transport, file transfer, and audio/video calling still need implementation and LAN testing.

## Build installers

GitHub Actions builds Android APK and Windows ZIP artifacts when code is pushed to `main`. Open the **Actions** tab, select **Build Hamrah**, and download the artifacts from a successful run.

## Direction

- Persian RTL UI
- Windows + Android from one Flutter codebase
- Intended for local Wi-Fi/LAN use without requiring a cloud account
- Planned: device discovery, private/group chats, file transfer, and calls

## Important

An offline LAN app still needs a way for devices to discover each other and establish connections. Group video calling for up to five participants is a later milestone and must be tested on the target network.
