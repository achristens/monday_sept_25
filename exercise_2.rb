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
end

account_1 = BankAccount.new

puts account_1.change_balance(100)
puts account_1.deposit(15)
puts account_1.withdraw(30)
puts account_1.balance
