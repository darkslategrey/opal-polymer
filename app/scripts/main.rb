
require 'opal'
require 'opal-parser'
# require 'opal-jquery'

DEFAULT_TRY_CODE = <<-RUBY
class User
  attr_accessor :name

  def initialize(name)
    @name = name
  end

  def admin?
    @name == 'Admin'
  end
end

user = User.new('Bob')
puts user
puts user.admin?
RUBY


puts DEFAULT_TRY_CODE

class TryOpal
  class Editor
    def initialize(dom_id, options)
      @native = `CodeMirror(document.getElementById(dom_id), #{options.to_n})`
    end
  end
end

Document.ready? do
  compiled = Opal.compile 'puts "hello depuis opal"'
  `eval(compiled)`
  
  puts "ready !!! !! !!!!!! "
end

# Opal.compile "puts Hello"
puts "hello comment ca va bien ou bien bien bien "
