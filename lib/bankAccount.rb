class BankAccount
  attr_reader :balance

  def initialize
    @balance = 0
  end

  def deposit(amount)
    @balance = @balance + amount
  end

  def withdraw(money)
    @balance = @balance - money
  end
end
