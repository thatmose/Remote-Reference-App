class DebtorsController < ApplicationController
  def index
    @debtors = Debt.all
    # Allow for multiple response formats (i.e html and xlsx)
    respond_to do |format|
      format.html
      format.xlsx
    end
  end
end
