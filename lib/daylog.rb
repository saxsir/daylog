require "net/http"
require "uri"
require 'yaml'
require "json"

module Daylog


  def self.open_yaml(fp)
    str = open(fp, &:read)
    return YAML.load(str)
  end

  def self.find_token(yaml)
    return yaml.has_key?("token") ? yaml["token"] : ""
  end

  def self.auth?
  fp = File.expand_path('../../config.yml', __FILE__)
  config = self.open_yaml(fp)
  token = self.find_token(config)

    `curl -sS #{}`
    res = self.get_json('https://slack.com/api/auth.test', {
      "token" => token
    })

    p res
    p res.body

    return true if JSON.parse(res.body)["ok"] else false
  end
end
