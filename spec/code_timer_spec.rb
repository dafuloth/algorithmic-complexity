# frozen_string_literal: true

require_relative '../lib/code_timer.rb'

describe 'CodeTimer' do
  # array = [297, 182, 332, 302, 112, 92, 224]
  code_timer = CodeTimer.new()

  describe 'returns the time needed to execute a function' do
    it '.last returns execution times of `Array.last`' do
      expect(code_timer.last.values.each { |time| time.class.instance_of? String }.length).to eq 20
    end

    it '.reverse returns execution times of `Array.reverse`' do
      expect(code_timer.reverse.values.each { |time| time.class.instance_of? String }.length).to eq 20
    end

    it '.shuffle returns execution time of `Array.shuffle`' do
      expect(code_timer.shuffle.values.each { |time| time.class.instance_of? String }.length).to eq 20
    end

    it '.sort returns execution time of `Array.sort`' do
      expect(code_timer.sort.values.each { |time| time.class.instance_of? String }.length).to eq 20
    end
  end
end
