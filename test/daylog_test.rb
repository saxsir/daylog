require File.expand_path('../test_helper', __FILE__)

class DaylogTest < Minitest::Test
  def test_Daylogモジュールのメソッドが呼べる
    assert_equal 'Hello, Daylog', Daylog.hello
  end
end
