# CsvGrouper

## Installation

`bundle install`

## Run

```sh
$ bin/console
$ irb(main): CsvGrouper::Run.new("Phone1", "./input3.csv").go
```

Update the command to use the correct column and and file path to test appropriately.

## Run Tests

`bundle exec rake`


## TODO

- Make `CsvGrouper::Run` more testable. Printing to STDIO makes it hard to test
