# frozen_string_literal: true

require_relative '../lib/caesar_cipher.rb'

describe 'the caesar_cipher method' do
  it 'should return STRING encrypt' do
    expect(caesar_cipher('Hello World', 3)).to eq('Khoor Zruog')
  end

  it 'should return STRING if params IS NOT string and int' do
    expect(caesar_cipher(15, 2)).to eq('Params should be STRING and INT')
    expect(caesar_cipher('Hello', '2')).to eq('Params should be STRING and INT')
    expect(caesar_cipher(0, '2')).to eq('Params should be STRING and INT')
  end
end
