# rio-process-symlink-issue

https://github.com/commercialhaskell/rio/issues/217

```
$ virtualenv venv
$ . venv/bin/activate
$ pip install semver
$ python -c "import semver; print(semver.parse(\"1.2.3\"))"
{'major': 1, 'prerelease': None, 'build': None, 'minor': 2, 'patch': 3}
$ deactivate
$ stack build
$ stack run
```

