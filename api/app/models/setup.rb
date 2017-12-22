require_relative './thermostat'

DataMapper.setup(:default, "postgres://localhost/thermostat_db_#{ENV['RACK_ENV']}")
# DataMapper::Model.raise_on_save_failure = true
DataMapper.finalize
DataMapper.auto_upgrade!
