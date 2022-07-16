# Raw Presenter Plugin

A plugin for [COPRL](http://github.com/coprl/coprl) that allows you to add raw HTML/JSS block.


## Installation

Add this line to your application's Gemfile:

```ruby
gem 'raw_presenter_plugin', git: 'https://github.com/coprl/raw_presenter_plugin', require: false
```

And then execute:

    $ bundle

## Usage

In your presenter file, include the plugin using:

`
plugin :raw_block
`
    
Then you can render raw HTML/JS blocks using:
`
raw_block html_string
`
