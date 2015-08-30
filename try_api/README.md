try_api
=========

Renders standard HTML documentation for REST APIs through the gulp build system.
Creates a mock server based on an API Blueprint.

## Precondition

* Mac OS X Yosemite
* node.js (v0.12.2 ~)
* npm (2.7.4 ~)

## Getting started

### 1. Move to this directory

```bash
$ cd try_api
```

### 2. Install the Node packages as Glocal

```bash
$ npm install -g gulp
```

### 3. Install the Node packages as Local

```bash
$ npm install
```

### 6. Run API Document server

```bash
$ gulp doc
```

### 7. Run API Mock server

```bash
$ gulp mock
```

#### Example

http://localhost:5557


## Directory structure

The root directory generated for a app with name `try_api` :

```bash
.
├── README.md
├── app/
│   └── md/
│       └── index.md
├── gulp/
│   ├── config.coffee
│   └── tasks/
│       ├── aglio.coffee
│       ├── api-mock.coffee
│       ├── browser-sync.coffee
│       ├── clean.coffee
│       └── watch.coffee
├── gulpfile.coffee
├── node_modules/
├── package.json
└── public/
```
