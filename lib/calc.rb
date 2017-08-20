class Calc
  # addition
  def add(a, b)
    a + b
  end

  # subtraction
  def sub(a, b)
    a - b
  end

  # multiplication
  def multi(a, b)
    a * b
  end

  # division
  def div(a, b)
     b != 0 ? a / b.to_f : 'Делить на ноль нельзя'
  end
end
