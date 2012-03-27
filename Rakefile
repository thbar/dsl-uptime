require 'rubygems'
require 'redis'
require 'redis-timeseries'
require 'time'

ts = RedisTimeSeries.new("dsl", 1, Redis.new)

desc "Show the latest records"
task :latest do
  begin_time = Time.now - 15*60
  end_time = Time.now

  ts.fetch_range(begin_time, end_time).each do |record|
    record[:human_time] = Time.at(record[:time]).iso8601
    puts record.inspect
  end
end
