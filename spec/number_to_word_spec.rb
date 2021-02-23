require('rspec')
require('number_to_word')
# require('pry')

describe('WordNumber#convert_num') do
  it("returns a word that corresponds to the number") do
  number = WordNumber.new(3)
  expect(number.convert_num()).to(eq("three"))
  end
end