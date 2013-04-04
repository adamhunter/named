# Named

Give anonymous modules and classes names when they are inspected.

[![Code Climate](https://codeclimate.com/github/adamhunter/named.png)](https://codeclimate.com/github/adamhunter/named)

## Usage

### Named modules

```ruby
fancy_module = Named::Module.new('FancyModule') do
  def module_method
    puts 'Hello from the module'
  end
end

fancy_module.inspect # => "Named::Module:FancyModule:0x007fa9ea9e6178"
```

### Named classes

```ruby
# subclasses Array
fancy_class = Named::Class.new('FancyClass', Array) do
  def class_method
    puts 'Hello from the class'
  end
end

# Inspection string shows the superclass
fancy_class.inspect => "Named::Class:Array:FancyClass:0x007fa9ea8aaea8"
```

### Using them together
```ruby
fancy_class.send(:include, fancy_module)

fancy_class.ancestors # => [Named::Class:Array:FancyClass:0x007fa9ea8aaea8, 
                            Named::Module:FancyModule:0x007fa9ea9e6178, 
                            Named::Class, Named::Naming, 
                            Array, Kernel, BasicObject]

instance = fancy_class.new

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
