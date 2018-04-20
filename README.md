# The Hawker Ruby gem

The Hawker gem is a web scraper which allows you to pull the basic information for given social media profile URL. No structure knowledge or API access required. Keep in mind that it's always better to use the API if possible.

## Installation
    gem install hawker

## What social media providers are supported?

Currently, the gem supports **Github**, **Twitter** and **Instagram**. If you need the support for another social media provider, please feel free to open new issue or push your own code and prepare pull request.

## Usage examples

The gem has built in matching mechanism so you can pass any link and it will automatically use the proper driver.

### GitHub

You can request the profile information using this code:

```ruby
profile = Hawker.get("https://github.com/rubyhero")
profile.username # => "rubyhero"
```

Following attributes are available:

* `name` - The name of the requested user
* `username` - The username of the requested user - it's also visible in the URL
* `company` - The company name of the requested user if available
* `location` - The location of the requested user if available
* `website` - The website URL of the requested user
* `repositories` - The count of the requested user repositories
* `stars` - The number of stars that the requested user gave
* `followers` - The number of people that are following the requested user
* `following` - The number of people followed by the requested user

### Twitter

You can request the profile information using this code:

```ruby
profile = Hawker.get("https://twitter.com/pdabrowski_k1")
profile.name # => "Paweł Dąbrowski"
```

Following attributes are available:

* `name` - The name of the requested user
* `bio` - The biography note of the requested user
* `location` - The location of the requested user if available
* `website` - The website URL of the requested user
* `joined` - The account creation date for the requested user
* `tweets` - The number of messages tweeted by the requested user
* `followers` - The number of people that are following the requested user
* `following` - The number of people followed by the requested user
* `likes` - The number of likes that the requested user gave
* `lists` - The number of lists created by the requested user

### Instagram

You can request the profile information using this code:

```ruby
profile = Hawker.get("https://www.instagram.com/someprofile")
profile.full_name # => "Full name"
```

Following attributes are available:

* `biography` - The biography note of the requested user
* `followers` - The number of people that are following the requested user
* `following` - The number of people followed by the requested user
* `full_name` - The full name of the requested user
* `external_url` - The URL from the biography note of the requested user
* `profile_pic_url` - The URL of the requested profile picture
* `username` - The username of the requested user

## Supported Ruby Versions

This gem was tested on the 2.5.0 version. If it's not working with older versions please add a new issue.

## Copyright

Copyright (c) 2018 Paweł Dąbrowski.
See [LICENSE][] for details.

[license]: LICENSE.md
