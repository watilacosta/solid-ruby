module Rh
  class FolhaDePagamento
    attr_accessor :balance

    def calculate(employee)
      if employee.class == Rh::ContratoClt
        self.balance = employee.salary
      elsif employee.class == Rh::ContratoEstagio
        self.balance = employee.benefit
      end
    end
  end
end
