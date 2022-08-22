# Flox Go Env

This repo is a working example Flox development and packaging of the https://github.com/gin-gonic/gin framework,
plus developer dependencies, into one system.

In this case, the source code lives with the package:

```
[flox] λ tree
.
├── flake.lock
├── flake.nix
├── pkgs
│   └── gin
│       ├── default.nix
│       └── ugin
│           ├── CHANGELOG.md
│           ├── config.yml
│           ├── containers
│           │   ├── composes
│           │   │   ├── dc.mysql.yml
│           │   │   ├── dc.postgres.yml
│           │   │   ├── mysql.yml
│           │   │   └── postgres.yml
│           │   └── images
│           │       └── Dockerfile
│           ├── controller
│           │   ├── admin.go
│           │   ├── auth.go
│           │   ├── base.go
│           │   └── post.go
│           ├── go.mod
│           ├── go.sum
│           ├── LICENSE
│           ├── main.go
│           ├── Makefile
│           ├── model
│           │   ├── auth.go
│           │   └── post.go
│           ├── pkg
│           │   ├── config
│           │   │   ├── configuration.go
│           │   │   ├── database.go
│           │   │   └── server.go
│           │   ├── database
│           │   │   └── database.go
│           │   ├── logger
│           │   │   └── logger.go
│           │   ├── middleware
│           │   │   └── middleware.go
│           │   └── router
│           │       └── router.go
│           ├── README.md
│           ├── service
│           │   ├── auth.go
│           │   ├── helper.go
│           │   ├── post.go
│           │   └── user.go
│           ├── ugin.access.log
│           ├── ugin.db
│           ├── ugin.db.log
│           └── ugin.log
└── shells
    └── default.toml
```


