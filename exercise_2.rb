class BankAccount
  @@interest_rate = 1.01
  @@accounts      = []

  def initialize
    @balance = 0.0
  end

  def balance
    @balance
  end

  def change_balance(value)
    @balance = value
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

  def self.total_funds
    sum = 0
    balances = @@accounts.map(&:balance)
    balances.each do |number|
      sum += number
    end
    return sum
  end

  def self.interest_time
    @@accounts.each do |account|
      new_balance = account.balance * @@interest_rate
      account.change_balance(new_balance)
    end
  end

  def self.list_accounts
    return @@accounts
  end

end

my_account = BankAccount.create
your_account = BankAccount.create

puts my_account.balance
puts BankAccount.total_funds

puts my_account.deposit(200)
puts your_account.deposit(1000)
puts my_account.balance
puts your_account.balance
puts BankAccount.total_funds

BankAccount.interest_time
puts my_account.balance
puts your_account.balance
my_account.withdraw(50)
puts my_account.balance
puts BankAccount.total_funds
puts "All Accounts: #{BankAccount.list_accounts.class}"
