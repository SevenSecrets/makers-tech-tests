#Bank Test

##Usage

Tests can be run with the `rspec` command.

Before starting: Open irb with the `irb` command in terminal, then run `require './lib/account'`

1. create a new account using: `account_name = Account.new`
2. deposit money using: `account_name.deposit(amount_to_deposit)`
3. withdraw money using: `account_name.withdraw(amount_to_withdraw)`
4. money can be withdrawn below a balance of 0
5. return statement using `account_name.print_statement`
6. there is no need to create a statement object as one is initialised when a new account object is created, but you can pass a pre-existing one by running `Account.new(already_existing_statement)` and it will be used

##Process

1. Looked through the tech test specs
2. Took notes in the notes app (will include below) on which objects will be needed (ie which will be separate) and which methods they will need based on the actions a user will perform in the specs (user stories)
3. Started building tests for account. Started with deposit, then withdraw methods. Did not do anything to the statement object or how it would print just yet.
4. Moved on to creating the statement object, as that would require a set of methods which would need to be separate in order to follow SRP and not get too cluttered.
5. Created tests for statement class. It takes the results of the transaction and defines a date on which the transaction it has just been passed happened, before adding all of the above to an array of transactions (called transaction_list) in the correct format (ie split by "||" and with the unused column being blank).
6. Moved back to the account class, integrating the statement class into it and creating a test for the print_statement method.
7. Created the print_statement method, which takes the statement, adds the header, puts it all in reverse-chronological order, and then returns it in the correct format.

###Notes:
```
Bank Test:

Data stored in memory (no database)

Methods on the account are gonna be: deposit, withdraw, print_statement
Methods on the statement are gonna be: deposit, withdrawal, print(?)


Account:
  Deposits:
    Stores an amount (integer) and records the date on which it happened

  Withdrawals:
    Removes an amount (int) and records the date on which it happened

  Account Statement:
    Prints the data from statement

Statement:
  Deposits:
    Takes the data from account deposit and stores it (ignoring debit)

  Withdrawals:
    Takes the data from account and stores it (ignoring credit)

  Print:
    Returns the stored data for each action on account (date, credit, debit, balance) in a readable format, most recent first

Am I gonna need more than one object?
Perhaps the account statement will need to be a separate object?
YES
```
