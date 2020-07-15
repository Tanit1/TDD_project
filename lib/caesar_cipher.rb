# frozen_string_literal: true

def check_params(phrase, key)
  if phrase.is_a? String and key.is_a? Integer
    true
  end
end

def caesar_cipher(phrase, key)
  # CHECK THE PARAMETERS
  incorrect_params = 'Params should be STRING, INT'
  incorrect_params unless check_params(phrase, key)

  encrypt_phrase = ''

  # FOR EACH SINGLE CHARACTER
  phrase.to_s.split('').map do |character|
    # INCREMENTAL key TIMES THIS CHARACTER,
    # IF IT IS A CHARACTER FROM THE ALPHABET
    key.times { character = character.next if character =~ /[[:alpha:]]/ }

    # ENTER EVERY CHARACTER ENCRYPTED IN encrypt_phrase
    encrypt_phrase += character
  end

  encrypt_phrase
end

caesar_cipher('Hello World', 3)
