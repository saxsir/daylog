require File.expand_path('../test_helper', __FILE__)

class DaylogTest < Minitest::Test

  describe "#open_yaml" do
    it "ファイルが見つからなかったらエラー" do
      fp = File.expand_path('../../foo.yml', __FILE__)
      assert_raises do
        Daylog.open_yaml(fp)
      end
    end

    it "ファイルが見つかればYAMLファイルの中身をRubyのオブジェクトにして返す" do
      fp = File.expand_path('../../config.sample.yml', __FILE__)
      assert_equal({"token" => "your-token"}, Daylog.open_yaml(fp))
    end
  end

  describe "#find_token" do
    it "yamlファイルのtokenの値を返す" do
      config = Daylog.open_yaml(File.expand_path('../../config.sample.yml', __FILE__))
      assert_equal "your-token", Daylog.find_token(config)
    end
  end

  describe "#auth?" do
    it "slackのapiを利用できる（tokenで認証できる）" do
      assert_equal true, Daylog.auth?
    end
  end
end
