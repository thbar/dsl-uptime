require 'rubygems'
require 'time'
require 'redis'
require 'redis-timeseries'

time_series = RedisTimeSeries.new("dsl", 1, Redis.new)
time = Time.now.to_f

def log(msg)
  puts "#{Time.now.iso8601} #{msg}"
end

server = "www.google.com"
result = `/sbin/ping -t 1 #{server}`
status = ($?.exitstatus == 0) # true = good!

log (status ? "up" : "down")

time_series.add({:time => time, :status => status})
if status
  log "up"
else
  log "down"
end