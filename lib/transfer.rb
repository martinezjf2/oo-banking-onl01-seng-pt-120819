class Transfer
  # your code here
  attr_accessor :sender, :receiver, :status, :amount, :bankaccount

  def initialize(sender, reciever, amount)
    @sender = sender
    @receiver = reciever
    @status = 'pending'
    @amount = amount
  end

  def valid?

  end

  def execute_transaction

  end

  def reverse_transfer

  end

  




end
