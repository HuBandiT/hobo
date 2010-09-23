#!/usr/bin/env ruby

system %(hobo new testapp --skip-wizard)
system %(cd testapp && echo "gem 'irt', '>= 0.6.1', :group => :console" >> Gemfile)
system %(cd testapp && echo "" > app/models/.gitignore) # because git reset --hard would rm the dir
system %(cd testapp && git init && git add . && git commit -m "initial commit")
puts %(Please cd into the 'testapp' dir and run `irt ../` or `../path/to/test.irt` )
puts %(After running the tests you can remove the testapp dir)
