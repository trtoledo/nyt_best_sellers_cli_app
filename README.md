# NytBestSellersCliApp

Welcome to the NY Times Best Sellers Cli-App CLI Gem!
This CLI displays two different lists with the 15 best sellers of fiction and nonfiction books.
After the user choses one of the lists, they can chose a specific book and be given it`s list position, title, author, publisher and synopsis.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'nyt_best_sellers_cli_app'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install nyt_best_sellers_cli_app

## Usage
After installing bundle:

Start by calling the executable ‘nyt_best_sellers’ into the ‘bin’ file.
./bin/nyt_best_sellers
It will display a greeting and the following options:
‘Hi, this is the top 15 Fiction and Nonfiction New York Times Best Sellers books checker!’
‘If you want to check the top 15 New York Times Fiction best sellers enter F’
‘If you want to check the top 15 New York Times Nonfiction best sellers enter N’
‘If you want to leave type EXIT’
After the user chooses,  it will display a list with the position, title and author of the New York Times 15 best sellers books  from the chosen category.  At the bottom it will display the options;
‘If you want more information about any book in this list type it`s number!’
‘If you want to choose another list type 'lists' and to leave type 'exit'.’
At this point when the user chooses the book he wants more information about by typing it`s number, it will display a more detailed list of information with the publisher and a synopsis of it including the position on the list, title and author.
At all times the user can type ‘EXIT’ to leave the app or by typing ‘LISTS’ to return to the first question.
In case the user`s input doesn`t correspond to an expected answer it will display;
‘Sorry didn`t understand.’
‘If you want more information about any book in this list type it`s number!’
‘If you want to choose an other list type 'LISTS' and to leave type 'EXIT.’

## Development

After checking out the repo, run `bin/setup` to install dependencies. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/'trtoledo'/nyt_best_sellers_cli_app. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

## Code of Conduct

Everyone interacting in the NytBestSellersCliApp project’s codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/'trtoledo'/nyt_best_sellers_cli_app/blob/master/CODE_OF_CONDUCT.md).
