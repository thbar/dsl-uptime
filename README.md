A quick ruby+redis script to monitor DSL disconnections using time series with redis zadd/zrangebyscore.

Tested on Mac OS X with the stock Ruby 1.8.7 Snow Leopard install.

### How to install

* make sure you have redis up: `brew install redis` (I set it up to start at boot, too)
* install the required gems for your system ruby (`rvm system` if you use rvm)
  * `gem install redis`
* set up a cron with `crontab -e`

```
* * * * * cd /Users/thbar/git/uptime && ruby check_dsl.rb >> check_dsl.log 2>&1
```

### TODO

* plug a graphical front-end

### Credits

Based on redis timeseries work by [Paul Bellamy](https://github.com/paulbellamy/redis-timeseries/commit/4436ef7553b19daf6c2566a3dcb608b741a3b28c) and [antirez](https://github.com/antirez/redis-timeseries).

### License

MIT