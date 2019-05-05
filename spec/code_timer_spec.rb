require_relative '../lib/code_timer.rb'

describe 'CodeTimer' do
  array = [297, 182, 332, 302, 112, 92, 224]
  code_timer = CodeTimer.new(array)

  it '.last returns execution time of `Array.last`' do
    expect(code_timer.last).to be_an_instance_of Float
  end

  it '.reverse returns execution time of `Array.reverse`' do
    expect(code_timer.reverse).to be_an_instance_of Float
  end
end
