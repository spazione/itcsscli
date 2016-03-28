## Installation

Add this line to your application's Gemfile:

```ruby
gem 'itcss_cli'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install itcss_cli

## Usage

First, you'll need to set up ITCSS by running:

    $ itcss init
    
Now go to `itcss.yml` and define define where Itcss_cli should create the ITCSS structure and the name of it's base file:

```yml
# Provide the root folder where the ITCSS file structure should be built.
stylesheets_directory: 'source/assets/stylesheets'

# Provide your base sass file (all ITCSS modules will be imported in it).
stylesheets_import_file: 'application.css'
```

Go ahead and grow your ITCSS structure:
```{r, engine='bash'}
$ itcss new component modals
create source/stylesheets/components/_components.modals.sass
update source/stylesheets/application.css.sass

$ itcss new trumps helpers
create source/stylesheets/trumps/_trumps.helpers.sass
update source/stylesheets/application.css.sass
```

## Example
Creating a full ITCSS structure:

```{r, engine='bash'}
$ itcss init
create itcss.yml
Well done! Please do your own configurations in itcss.yml.

[[[ Open the `itcss.yml` file and edit it. ]]]

$ itcss install example
create source/stylesheets/settings/_settings.example.sass
create source/stylesheets/tools/_tools.example.sass
create source/stylesheets/generic/_generic.example.sass
create source/stylesheets/base/_base.example.sass
create source/stylesheets/objects/_objects.example.sass
create source/stylesheets/components/_components.example.sass
create source/stylesheets/trumps/_trumps.example.sass
update source/stylesheets/application.css.sass
```

If you open the ITCSS's base file now, you'll see that all ITCSS modules are automatically imported into it:
```sass
@charset "utf-8"

// ========================================
//   application.css.sass
// ========================================


// [0] Requirements --- Vendor libraries
// [1] Settings ------- Sass vars, etc.
// [2] Tools ---------- Functions and mixins.
// [3] Generic -------- Generic, high-level styling, like resets, etc.
// [4] Base ----------- Unclasses HTML elements (e.g. `h2`, `ul`).
// [5] Objects -------- Objects and abstractions.
// [6] Components ----- Your designed UI elements (inuitcss includes none of these).
// [7] Trumps --------- Overrides and helper classes.

// ↓ ITCSS_CLI FILE IMPORTING ↓

// [0] Settings
@import "settings/_settings.example.sass"


// [1] Tools
@import "tools/_tools.example.sass"


// [2] Generic
@import "generic/_generic.example.sass"


// [3] Base
@import "base/_base.example.sass"


// [4] Objects
@import "objects/_objects.example.sass"


// [5] Components
@import "components/_components.example.sass"


// [6] Trumps
@import "trumps/_trumps.example.sass"


// ↑ ITCSS_CLI FILE IMPORTING ↑
```

## Development

After checking out the repo, run `bin/setup` to install dependencies. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/[USERNAME]/itcss_cli. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.


## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).

