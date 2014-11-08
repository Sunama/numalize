require "numalize/version"

module Numalize
	@numbers
	@text

	module_function :delocalize
	module_function :localize
	module_function :to

	def init
		@numbers = Hash.new

		#English
		@numbers.merge { 0: {'en': '0'}, 1: {'en': '1'}, 2: {'en': '2'}, 3: {'en': '3'}, 4: {'en': '4'}, 5: {'en': '5'}, 6: {'en': '6'}, 7: {'en': '7'}, 8: {'en': '8'}, 9: {'en': '9'} }

		#Thai
		@numbers[0].merge {'th': '๐'}
		@numbers[1].merge {'th': '๑'}
		@numbers[2].merge {'th': '๒'}
		@numbers[3].merge {'th': '๓'}
		@numbers[4].merge {'th': '๔'}
		@numbers[5].merge {'th': '๕'}
		@numbers[6].merge {'th': '๖'}
		@numbers[7].merge {'th': '๗'}
		@numbers[8].merge {'th': '๘'}
		@numbers[9].merge {'th': '๙'}
	end

	def delocalize(text)

	end

	def localize(text)
		@text = text
	end

	def to(language)

	end
end
