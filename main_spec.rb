require 'simplecov'
SimpleCov.start

if ENV['CI'] == 'true'
  require 'codecov'
  SimpleCov.formatter = SimpleCov::Formatter::Codecov
end

require 'rspec'

require_relative 'main'

describe Main do
  describe '#cps6750' do
    it 'returns the argument multiplied by four' do
      expect(Main.cps6750(4)).to eq(16)
    end
  end
end


