# Sulu base ddev project
Please clone it and run
```bash
$ ddev start
```

Import db dump when ddev is up
```bash
$ ddev import-db --src=basesulu.sql
```

Do composer install with ddev
```bash
$ ddev composer install
```

Run composer commands in the web container for db environment to add new packages
```bash
$ ddev ssh --service web   
```

# Sulu Minimal Edition

[![GitHub license](https://img.shields.io/github/license/sulu/sulu-minimal.svg)](https://github.com/sulu/sulu-minimal/blob/master/LICENSE)
[![GitHub tag (latest SemVer)](https://img.shields.io/github/tag/sulu/sulu-minimal.svg)](https://github.com/sulu/sulu-minimal/releases)
[![GitHub tag (latest by date)](https://img.shields.io/github/tag-date/sulu/sulu-minimal.svg)](https://github.com/sulu/sulu-minimal/releases)
[![Travis](https://travis-ci.org/sulu/sulu-minimal.png?branch=master)](https://travis-ci.org/sulu/sulu-minimal)

Welcome to the Sulu Minimal Edition - the recommended skeleton to start a new [Sulu](https://github.com/sulu/sulu) project.

## Getting started

Starting a new Sulu project is explained in our [documentation](http://docs.sulu.io/en/latest/book/getting-started.html).

## Issues

Submit any sulu related issues to the [sulu/sulu](https://github.com/sulu/sulu/issues) repository.
