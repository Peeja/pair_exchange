# PairExchange.com

## GitHub auth

For development, you'll need to [register a GitHub application][GH Apps].
Then put the application's into into a file `.env` in the root of the project:

[GH Apps]: https://github.com/settings/applications

```
GITHUB_CLIENT_ID=...
GITHUB_CLIENT_SECRET=...
```

For running the app under Pow, you're all set: the `.powrc` will pick up those
values.  For running the app from the command line, `export $(< .env)` first,
or get those values into the environment another way.
