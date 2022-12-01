class ServiceOne

  def initialize(service_two, service_three)
    @service_two = service_two
    @service_three = service_three
  end

  def method_one(number)
    result_method_two = @service_two.method_two(number)
    result_method_three = @service_two.method_three(result_method_two)
    result_method_four = @service_three.method_four(result_method_three)
    return result_method_four + 1
  end

end
