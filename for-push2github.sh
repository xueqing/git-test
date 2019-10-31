#!/usr/bin/expect
set timeout 3
set githubURL [lindex $argv 0]
set githubUser [lindex $argv 1]
set githubPWD [lindex $argv 2]
spawn git remote set-url origin $githubURL
spawn git push --set-upstream origin master
expect ".*Username for 'https://github.com':"
send "$githubUser\r"
expect "Password for 'https://bmi-tech@github.com':"
set timeout 100
send "$githubPWD\r"
expect 100%
set timeout 3
expect eof
