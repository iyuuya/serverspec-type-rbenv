# Serverspec::Type::Rbenv

Rbenv resource type extension for serverspec

## Installation

Add this line to your application's Gemfile:

    gem 'serverspec-type-rbenv'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install serverspec-type-rbenv

## Usage

This is a imaginary code :-)

```ruby
describe rbenv('/home/vagrant/.rbenv', 'vagrant') do
  it { should be_installed }

  it { should have_ruby_version '1.9.3-p545' }
  it { should have_ruby_version '2.1.1' }
  it { should have_global_ruby_version '2.1.1' }

  it { should have_plugin 'ruby-build' }
end
```

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
