require 'pry'

class Main
  class << self
    def run_clt_payment
      binding.pry
      employee_clt = ContratoClt.new
      folha_pagamento = FolhaDePagamento.new

      folha_pagamento.calculate(employee_clt)
    end

    def run_estagio_payment
      employee_estagio = ContratoEstagio.new
      folha_pagamento = FolhaDePagamento.new

      folha_pagamento.calculate(employee_estagio)
    end

    def run_pj_payment
      employee_pj = ContratoPj.new
      folha_pagamento = FolhaDePagamento.new

      folha_pagamento.calculate(employee_pj)
    end
  end

  run_clt_payment
  run_estagio_payment
  run_pj_payment
end
