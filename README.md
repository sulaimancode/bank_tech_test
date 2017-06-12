# Bank tech test

## Specification

### Requirements

* You should be able to interact with the your code via a REPL like IRB or the JavaScript console.  (You don't need to implement a command line interface that takes input from STDIN.)
* Deposits, withdrawal.
* Account statement (date, amount, balance) printing.
* Data can be kept in memory (it doesn't need to be stored to a database or anything).

### Acceptance criteria

**Given** a client makes a deposit of 1000 on 10-01-2012
**And** a deposit of 2000 on 13-01-2012
**And** a withdrawal of 500 on 14-01-2012
**When** she prints her bank statement
**Then** she would see

```
date || credit || debit || balance
14/01/2012 || || 500.00 || 2500.00
13/01/2012 || 2000.00 || || 3000.00
10/01/2012 || 1000.00 || || 1000.00
```
## Quick startup

```
$ git clone https://github.com/sulaimancode/bank_tech_test.git
$ cd bank_tech_test
$ bundle
```
To run tests
```
$ rspec
```

## REPL interaction

Make sure you are in the 'bank_tech_test' directory and require all lib files
```
pry(main)> Dir[__dir__ + '/lib/*.rb'].each { |file| require file }
```
Instantiate transaction objects
```
t1 = Transaction.new(1000)
=> #<Transaction:0x007fdd07dc23f0 @amount=1000, @made_at="12/06/2017", @type=nil>
t2 = Transaction.new(400)
```
Instantiate and account object and call the deposit and withdraw methods.
```
  acc = Account.new
  => #<Account:0x007fdd07ba4fc8
   @balance=0,
   @printer=#<Printer:0x007fdd07ba4be0>,
   @statement=#<BankStatment:0x007fdd07ba4f28 @transactions=[]>>
  acc.deposit(t1)
  acc.withdraw(t2)

```
Print your statement
```
acc.print_statement
"Date      ||  Transaction     ||   Balance "
"12/06/2017 ||      -£400        || £600"
"12/06/2017 ||      +£1000        || £1000"
```
