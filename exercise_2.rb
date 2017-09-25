class BankAccount
  # The interest_rate class variable should be a float
  @@interest_rate
  @@accounts = []

  def initialize
    @balance = 0
  end

  def balance
    "$#{@balance}"
  end

  # The below may have to use a += or -= to update the balance
  def change_balance(value)
    @balance = value
    "Your new balance is $#{@balance}"
  end

  def deposit(amount)
    @balance += amount
    "Your new balance is $#{@balance}"
  end

  def withdraw(amount)
    @balance -= amount
    "Your new balance is $#{@balance}"
  end

  def self.create
    new_account = BankAccount.new
    @@accounts << new_account
    new_account
  end

  def self.list_accounts
    return @@accounts
  end

end

my_account = BankAccount.create
your_account = BankAccount.create

puts my_account.balance
# should return total amount in all accounts
# puts BankAccount.total_funds
puts my_account.deposit(200)
puts your_account.deposit(1000)
# below should return 1
puts BankAccount.total_funds
