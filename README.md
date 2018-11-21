# clinical-trials-pg-restore

Restore latest snapshot from https://aact.ctti-clinicaltrials.org/snapshots to
given PostgreSQL database given as a URL.

## example usage

```sh
docker run \
  -e DATABASE_URL='postgres://raine:mysecretpassword@host.docker.internal:5432/aact' \
  -it --rm rainevi/clinical-trials-pg-restore
```
