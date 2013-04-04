# Named

Give anonymous modules and classes names when they are inspected.

[![Code Climate](https://codeclimate.com/github/adamhunter/named.png)](https://codeclimate.com/github/adamhunter/named)


## Usage

```ruby
mod = Named::Module.new('FancyModule') do
  def module_method
    puts 'Hello from the module'
  end
end

mod.inspect # => "Named::Module:FancyModule:0x007fa9ea9e6178"

klass = Named::Class.new('FancyClass') do
  def class_method
    puts 'Hello from the class'
  end
end

klass.inspect => "Named::Class:Object:FancyClass:0x007fa9ea8aaea8"

klass.send(:include, mod)

klass.ancestors # => [Named::Class:Object:FancyClass:0x007fa9ea8aaea8, Named::Module:FancyModule:0x007fa9ea9e6178, Named::Class, Named::Naming, Object, Kernel, BasicObject]

instance = klass.new

instance.module_method # => 'Hello from the module'
instance.class_method  # => 'Hello from the class'

```

## Installation

Add this line to your application's Gemfile:

    gem 'named'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install named

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
