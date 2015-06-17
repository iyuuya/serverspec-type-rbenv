require 'serverspec/type/rbenv'
require 'serverspec-type-rbenv/version'

module Serverspec::Helper::Type::Rbenv
  def rbenv(*args)
    Serverspec::Type::Rbenv.new(*args)
  end
end

extend Serverspec::Helper::Type::Rbenv
class RSpec::Core::ExampleGroup
  extend Serverspec::Helper::Type::Rbenv
  include Serverspec::Helper::Type::Rbenv
end
