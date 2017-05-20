class DebtorsController < ApplicationController
  def index
    @debtors = Debt.all
  end
end
