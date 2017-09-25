class BankAccount
  # The interest_rate class variable should be a float
  @@interest_rate
  @@accounts = []

  def initialize
    @balance = 0
  end

  def balance
    @balance
  end

  # The below may have to use a += or -= to update the balance
  def change_balance(value)
    @balance = value
  end
end
