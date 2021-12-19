# puppy-euler--ruby-

![ruby](https://github.com/dankreiger/puppy-euler--ruby-/actions/workflows/ruby.yml/badge.svg)
![js](https://github.com/dankreiger/puppy-euler--ruby-/actions/workflows/node.yml/badge.svg)

ruby/js solutions to puppy euler

```ruby
def puppy_euler__ruby_
  1.upto(9) { |i| puts "\033[3#{i}m#{(['bark'].zip(['woof'],['wau'],['waggle'],['hol das bällchen']) * 9000).flatten}\033[0m" }
end

puppy_euler__ruby_
```

---

```sh
 (\_\^^__o   .
 `-'\ ` /   `(
    |  \_____|
    |        |                _
  ./`,----./~|     .   .   . - ()
```

## Do it

```sh
yarn start
```

## Run ruby tests

```sh
yarn test:rb
```

## Run js tests

```sh
yarn test:js
```
