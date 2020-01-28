


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
    @sender.valid? && @receiver.valid? ? true : false
  end


  def execute_transaction
  if valid? && sender.balance > @amount && @status == 'pending'
    sender.balance -= @amount
    receiver.balance += @amount
    @status = 'complete'
  else
    @status = 'rejected'
    "Transaction rejected. Please check your account balance."
    # self.status = 'rejected'
  end
end


  def reverse_transfer

    if @status == 'complete'
    sender.balance -= @amount
    receiver.balance += @amount
  else
    @status == 'reversed'
  end

  end






end
