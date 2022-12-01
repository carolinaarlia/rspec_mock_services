# require "rails_helper"
require_relative "../services/service_one"
require_relative "../services/service_two"
require_relative "../services/service_three"

RSpec.describe ServiceOne do

  context "given a number" do
    it "return the number plus one" do
      # 1. set up
      service_two = instance_double(ServiceTwo)
      service_three = instance_double(ServiceThree)
      service_one = ServiceOne.new(service_two, service_three)

      # instructions for mocks
      expect(service_two).to receive(:method_two).with(8).and_return(9)
      expect(service_two).to receive(:method_three).with(9).and_return(18)
      expect(service_three).to receive(:method_four).with(18).and_return(23)

      # 2. execution
      result = service_one.method_one(8)

      # 3. asserts
      expect(result).to eq(24)
    end
  end

end
