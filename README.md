# HyprBazz
A blend of Hyprlands productivity with some of Bazzites gaming niceties 
like steam and gamescope beeing preinstalled

Utilities for managing themes, displays and printers are also preinstalled and ready to use.
The same applies to KDE Connect.

If you really want to use this for whatever reason, the install instructions should work, but please look at the recipe first.

# [![bluebuild build badge](https://github.com/lostflashlight/hyprbazz/actions/workflows/build.yml/badge.svg)](https://github.com/lostflashlight/hyprbazz/actions/workflows/build.yml)


## Installation

> [!WARNING]  
> [This is experimental](https://www.fedoraproject.org/wiki/Changes/OstreeNativeContainerStable), try at your own discretion.

To rebase an existing atomic Fedora installation:

- First rebase to the unsigned image, to get the proper signing keys and policies installed:
  ```
  rpm-ostree rebase ostree-unverified-registry:ghcr.io/lostflashlight/hyprbazz:latest
  ```
- Reboot to complete the rebase:
  ```
  systemctl reboot
  ```
- Then rebase to the signed image, like so:
  ```
  rpm-ostree rebase ostree-image-signed:docker://ghcr.io/lostflashlight/hyprbazz:latest
  ```
- Reboot again to complete the installation
  ```
  systemctl reboot
  ```



## Verification

This images is signed with [Sigstore](https://www.sigstore.dev/)'s [cosign](https://github.com/sigstore/cosign). You can verify the signature by downloading the `cosign.pub` file from this repo and running the following command:

```bash
cosign verify --key cosign.pub ghcr.io/lostflashlight/hyprbazz
```
