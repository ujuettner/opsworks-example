require 'yaml'

config = YAML::load_file(Rails.root.join('config', 'redis.yml'))
$redis = Redis.new(config)
