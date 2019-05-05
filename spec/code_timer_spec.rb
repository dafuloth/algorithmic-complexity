require_relative '../lib/code_timer.rb'

describe 'CodeTimer' do
  it '.last returns execution time of `Array.last`' do
    array = [297, 182, 332, 302, 112, 92, 224]
    code_timer = CodeTimer.new(array)
    expect(code_timer.last).to be_an_instance_of Float
  end
end
