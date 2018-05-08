# ldpd-biggert [![Build Status](https://travis-ci.org/cul/ldpd-biggert.svg?branch=master)](https://travis-ci.org/cul/biggert_static) [![Dependency Status](https://gemnasium.com/badges/github.com/cul/ldpd-biggert.svg)](https://gemnasium.com/github.com/cul/ldpd-biggert)

Jekyll site for the Biggert Collection of Architectural Vignettes<br>@ the Avery Architectural and Fine Arts Library

## Getting Started

### Set up

```sh
$ git clone https://github.com/cul/biggert_static.git && cd biggert_static
$ bundle
```

## Add/update data (if needed)

#### Generate json from hyacinth csv
```sh
$ ruby _lib/export.rb > _data/biggert.json
```

#### Run the Rake processing tasks

Generate the collection markdown pages:<br>
`$ bundle exec rake wax:pagemaster items`

Generate the elasticlunr index:<br>`$ bundle exec rake wax:lunr`

## Run the tests

To use html-proofer, you need to build the site to the `/biggert` dir to mimic the baseurl:

`$ bundle exec jekyll build -d _site/biggert`

Then run `wax:test` (htmlproofer and rspec)

`$ bundle exec rake wax:test`

Delete the `_site` folder when you're finished.

## Build and push compiled site to branch

`$ bundle exec jekyll build`
`$ bundle exec rake wax:push:s3`

To add the newest version to the `cul.github.io/ldpd-biggert` gh-pages demo (optional), run:

`$ bundle exec rake wax:push:gh`


## Constant Data
| **key** 	| **value** 	|
|:------------------	|:------------------------------------------------------------------------	|
| `collection` 	| Biggert Collection of Architectural Vignettes on Commercial Stationery 	|
| `location` 	| Avery Architectural & Fine Arts Library, Columbia University 	|
| `sublocation` 	| Avery Classics Collection 	|
| `collector` 	| Biggert, Robert 	|
| `digital_origin` 	| reformatted digital 	|
