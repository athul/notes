---
date: "2018-12-01T00:25:28+05:30"
title: "SSH"
tags: ["terminal"]
---
> SSH → Secure Shell

- `~/.ssh/authorized_keys` contains list of **Public Keys**. These keys are authorized to log into the system.
- `$ ssh-keygen` generates a SSH key in `~/.ssh` deirectory
  - Two keys are generated
      1. `id_rsa` which is the Private Key(Donot Share)
      2. `id_ras.pub` → Public Key (for sharing)

For Copying Public Key to Server

```bash
ssh-copy-id username@hostname
```

- `$ ssh-add` adds your Private Key to the SSH Authentication Agent for sso
  - The `-A` flag enables forwarding of the SSH Authentication Agent
