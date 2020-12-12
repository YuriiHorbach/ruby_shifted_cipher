#!/usr/bin/env ruby

require_relative 'classes/radio'
require_relative 'classes/secure_radio'
# require_relative 'classes/shift_cipher's

radio = Radio.new
puts radio.status
radio.play
radio.play
radio.play
puts '-'*10
sec_radio = SecureRadio.new
puts radio.status
sec_radio.play
sec_radio.play
sec_radio.play
