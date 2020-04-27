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
Stack has not been tested with GHC versions above 8.6, and using 8.8.3, this may fail
Stack has not been tested with Cabal versions above 2.4, but version 3.0.1.0 was found, this may fail
rio-process-symlink-issue: Received ExitFailure 1 when running
Raw command: /usr/bin/python3.8 -c "import semver; print(semver.parse(\"1.2.3\"))"
Standard error:

Traceback (most recent call last):
  File "<string>", line 1, in <module>
ModuleNotFoundError: No module named 'semver'
```

