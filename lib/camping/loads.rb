# Loads things into camping.rb

# external dependencies
require "uri"
require "rack"
require 'rubygems'
require 'bundler/setup'

# internal dependencies
require 'camping/tools'
require 'camping/gear/filters'
require 'camping/gear/nancy'
require 'camping/gear/inspection'
require 'camping/gear/kuddly'


# Common Errors
module Campguide
	Errors = {"wrong number of arguments (given 3, expected 0)" => "ArgumentError. This is sometimes caused when you try to send a request to a controller when a camping app hasn't made camp yet. make certain to call Camping.make_camp to set up your apps."}

	class << self

		# accepts string error messages and tries to match them with better explanations of the error.
		def make_sense(error_message)
			message = Errors[error_message]
			puts message ? message : error_message
		end

	end
end
