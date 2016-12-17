# lita-parrot

TODO: Add a description of the plugin.

## Installation

Add lita-parrot to your Lita instance's Gemfile:

``` ruby
gem 'lita-parrot', git: 'https://github.com/gouf/lita-parrot'
```

## Configuration

Set your own API token

```
export SLACK_API_TOKEN=xoxb-yyyyyyyyyy-zzzzzzzzzzzzzzzzzzzzzzzz
```

## Usage

in Slack channel:

```
@lita parrot foo bar # => @my_name parrot foo bar
@lita echo foobar # => @my_name echo foo bar
```
