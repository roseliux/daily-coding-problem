## daily-coding-problem
Solutions to https://www.dailycodingproblem.com
with ruby.


## run with docker
```bash
$ docker build -t my-ruby-app .
$ docker run -it --rm --name my-running-script -v "$PWD":/usr/src/myapp -w /usr/src/myapp ruby:2.5 ruby problem_2.rb
```

command for windows docker

```bash
$docker run -it --rm  -v /c/Users/rocela/github/daily-coding-problem:/usr/src/app -w /usr/src/app ruby:2.5 ruby problem_2.rb
```
