require "pry"
class BankAccount
    attr_accessor :balance, :status
    attr_reader :name

    def initialize(name, balance=1000)
        @name = name
        @balance = balance
        @status = "open"
    end

    # def balance
    #     if balance < 0
    #         balance = 0
    #     end
    # end

    def deposit(amount)
        self.balance = balance + amount
    end

    def display_balance
        "Your balance is $#{balance}."
    end

    def valid?
        balance > 0 && status == "open" ? true : false
    end

    def close_account
        self.status = "closed"
    end

end
