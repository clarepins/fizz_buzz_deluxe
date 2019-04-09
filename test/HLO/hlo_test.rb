# noinspection RubyResolve,RubyResolve
require_relative '../test_helper'
require 'logging'

Logging.logger.root.appenders = Logging.appenders.stdout

require_solution 'HLO'

class ClientTest < Minitest::Test

  def test_hlo
    assert_equal "Hello, World!", Hello.new.hello("World"), 'App should return sentence'
  end

  def test_hlo
    assert_equal "Hello, Clare!", Hello.new.hello("Clare"), 'App should return sentence'
  end

end
