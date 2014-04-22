CCBill Log Digester
=========

Display ccbill.com logs as charts

This preliminary version "digests" the log files that ccbill save on your site. It shows you important data like:

* Operations % by type
* Removes ok over time (month, week)
* User-rejects by ccbill over time
* Errors %
* Errors over time by type

Version
----

1.0

Tech
-----------

CCBill Log Digester uses a number of open source projects to work properly:

* [Ruby on Rails] - The frame
* [chartkick] - Very easy to use charts
* [mysql2] - The db
* [haml] - Very easy to use html
* [groupdate] - Group dates by day, week, month, ...



Installation
--------------

Source

```sh
git clone https://github.com/martinbrambati/ccbill-log-digester digester
cd digester
bundle install
change config/database.yml configuration
rails s
```

Configuration
---------------

Import logs from production logs
```sh
scp scp user@produ:/routetolog/ccbill.log tmp/ccbill.log
change the log route in logs_controller.rb:19
enter http://localhost:3000/logs/import?site=site_name
```

License
----

MIT


**Free Software, Hell Yeah!**

[Ruby on Rails]:http://rubyonrails.org/
[mysql2]:https://rubygems.org/gems/mysql2
[chartkick]:http://chartkick.com/
[haml]:http://rubygems.org/gems/haml
[groupdate]:https://github.com/ankane/groupdate