require "bankAccount"
#write smallest amount of code to pass the test
describe BankAccount do
  it "can create an instance of bank account" do
    bank_account = BankAccount.new
    expect(bank_account).to be_kind_of(BankAccount)
  end
  it "can respond to balance" do
    bank_account = BankAccount.new
    expect(bank_account).to respond_to(:balance)
  end
  it "should show a zero balance initially" do
    bank_account = BankAccount.new
    expect(bank_account.balance).to eq(0)
  end
  it "can allow users to deposit money" do
    bank_account = BankAccount.new
    expect(bank_account).to respond_to(:deposit).with(1).argument
  end
  it "should update the balance" do
    bank_account = BankAccount.new
    bank_account.deposit(10)
    expect(bank_account.balance).to eq(10)
  end
end
