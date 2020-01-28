


class BankAccount
attr_reader :name
attr_accessor :balance, :status, :transfer

  def initialize(name)
  @name = name
  @balance = 1000
  @status = 'open'
  end

  def deposit(deposit_amount)
  @balance += deposit_amount
  end

  def display_balance
    p "Your balance is $#{self.balance}." #difference between p, prints, puts and when to use them
  end

  def valid?
    @balance > 0 && @status == 'open' if true
  end

  def close_account
    @status = 'closed'
  end

end
