# Limitations

## Package Availability

### APT (Debian/Ubuntu)

- Debian 11 (Bullseye): `cpufrequtils` is available in the Debian package archive.
- Debian 12 (Bookworm): `cpufrequtils` is available in the Debian package archive.
- Ubuntu 22.04 (Jammy): `cpufrequtils` is available in Ubuntu Universe.
- Ubuntu 24.04 (Noble): `cpufrequtils` is available in Ubuntu Universe.

### DNF/YUM (RHEL family and Fedora)

- Red Hat-family and Fedora documentation use the `cpupower` tooling to inspect and set governors rather than `cpufrequtils` / `cpufreq-set`.
- The current cookbook implementation uses `cpufrequtils` and `cpufreq-set`, so this cookbook should not claim support for Red Hat-family, Fedora, Amazon Linux, or openSUSE platforms without a separate implementation path.

## Architecture Limitations

- Debian package metadata lists `cpufrequtils` for Bullseye and Bookworm on multiple architectures, including `amd64` and `arm64`.
- Ubuntu package metadata lists `cpufrequtils` for Jammy and Noble on `amd64`, `arm64`, `armhf`, and `s390x`.

## Source/Compiled Installation

- This cookbook does not implement a source-build path.
- The current resource model assumes distro-packaged `cpufrequtils` and the presence of `cpufreq-info` / `cpufreq-set`.

## Known Issues

- EOL platforms still present in the old test matrix included CentOS Linux 7/8, CentOS Stream 8, Debian 9/10, Ubuntu 18.04/20.04, Oracle Linux 7, and Scientific Linux.
- openSUSE Leap 15.6 reaches end of life on 30 April 2026, so it should not be added as an ongoing support target in this cookbook.
