# Admin account setup

This archive includes `create-admin.sh` for creating the requested administrator account.
It does **not** create the account merely by uploading/deploying the ZIP. The panel must first
be installed, configured with a working database, and have its migrations completed.

Default credentials requested:
- Username: `7826514908`
- Password: `7826514908`
- Email placeholder: `admin7826514908@example.com`

After the panel is installed, run this from the panel root:

```sh
./create-admin.sh
```

You can override the defaults with environment variables `ADMIN_USERNAME`, `ADMIN_PASSWORD`,
`ADMIN_EMAIL`, `ADMIN_FIRST_NAME`, and `ADMIN_LAST_NAME` before running the script.

**Security:** change the password after first login. The email above is only a placeholder; replace
it with an address you control if the panel needs password resets or email features.

**Railway note:** this helper only creates a user in an already-working Pterodactyl database. It does
not make the full Pterodactyl stack Railway-compatible; Pterodactyl also relies on supporting services
and a Wings node/daemon for running game servers.
