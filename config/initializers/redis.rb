require 'yaml'

config = YAML::load_file(Rails.root.join('config', 'redis.yml'))

Rails.logger.info "redis config from redis.yml:"
Rails.logger.info config

$redis = Redis.new(config)
