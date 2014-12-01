Docker NFS Client
================
Supports custom NFS port

Usage
----

```bash
docker run -d --name nfs-client -e NFS_PORT=1234 -e NFS_ADDR=1.2.3.4 \
  elcolio/nfs-client /path/on/nfs/server:/path/on/client
``` 
