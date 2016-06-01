# QueueSync

This is a script that was specifically built to transfer video files from my Macbook pro to my Android phone where they are consumed. This is a restricted sync in which new files are pushed only from source to consumer, and deletions are only propogated from consumer to source, thus becoming a queue. 

This also means that currently this only works for local source, and ssh remote consumer.

Currently this script doesnt delete consumed files, it just moves them into a `.deleted` folder. At some point, this folder might get cleared on the next run of the script, giving you a little safety to catch accidental deletions.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'queue_sync'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install queue_sync

## Usage

TODO: Write usage instructions here

## Development

After checking out the repo, run `bin/setup` to install dependencies. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Development

1. Clean up the code into modular components
2. Add some tests
3. Allow for non ssh consumers and other usability fixes
4. Implement actual deletion again

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/ktaragorn/queue_sync.


## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).

