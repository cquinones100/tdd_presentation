# Start

TDD, or test driven development is the practice of writing test while developing. With TDD, we don't right all of the tests before coding and we don't write all of the tst after coding, instead we following the following cycle: 

* Write a test that satisfies some requirement
* Run the failing test
* Write code to make the test pass
* Move on to the next requirement
* Repeat

In my workdflow, I extend the cycle to the following:

* Write a test that satisfies some requirement
* Run the failing test
* Perform any refactorings, abstractions etc
* Repeat steps 2-3 until the code is sufficiently refactored
* Move on to the next requirement
* Repeat

For the demo, we will attempt to complete the following requirements:

* Build an index of super smash brothers characters
* Craft an api endpoint that provides the scraped data from the super smash bros character table on wikipedia
<https://en.wikipedia.org/wiki/Characters_in_the_Super_Smash_Bros._series>

We will start off with an api-only rails app with RSpec Guard so that our tests will run each time we save a spec file.

> * Add RSpec Rails
> * Add guard-rspec
> * Add rspec binstubs for spring
> * edit guardfile to include the rspec spring
> * add pry to gemfile
> * edit rspec to handle focus

Scatch pad

`rails g rspec:request characters`
`doc.search('table')[0].search('tr')[1..-1]`
```
  split_name = text.split("\n")
  name = split_name[1]
  franchise = split_name[-1]
```
`allow(NokogiriWrapper).to receive(:html_from_url).and_return(MockedSmashBrosHtml)`
