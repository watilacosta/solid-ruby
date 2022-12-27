require 'pry'

class Main
  attr_accessor :folha, :clt, :pj, :estagio

  def initialize
    @folha   = FolhaDePagamento.new
    @clt     = ContratoClt.new
    @estagio = ContratoEstagio.new
    @pj      = ContratoPj.new
  end
end

# **************************** FOLHA DE PAGAMENTO ******************************
class FolhaDePagamento
  attr_accessor :balance

  def calculate(employee)
    raise ArgumentError, 'Argument must be a employee' unless employee

    self.balance = employee.remuneration
  end
end

# ******************************* INTERFACE ************************************
class InterfaceRemunerative
  def remuneration
    raise NotImplementedError, 'Remuneration is not implemented'
  end
end

# ********************************* CLT ****************************************
class ContratoClt < InterfaceRemunerative

  def remuneration
    private_remuneration
  end

  private

  def private_remuneration
    puts 'Remuneração de um CLT'
  end
end

# ******************************** ESTÁGIO *************************************
class ContratoEstagio < InterfaceRemunerative
  def remuneration
    private_remuneration
  end

  private

  def private_remuneration
    puts 'Remuneração de um Estagiário'
  end
end

# ********************************** PJ ****************************************
class ContratoPj < InterfaceRemunerative
  def remuneration
    private_remuneration
  end

  private

  def private_remuneration
    puts 'Remuneração de um PJ'
  end
end

system = Main.new
binding.pry
