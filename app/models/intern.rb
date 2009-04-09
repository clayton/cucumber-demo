class Intern < ActiveRecord::Base

	validates_numericality_of :number

  before_destroy :cover_shift

	def self.which_to_ridicule
		Intern.all.map{ |intern| [intern.value_of_life, intern] }.sort.first.last
	end
	
	def value_of_life
		smell_karma.to_f / debt_payment_timeframe.to_f
	end
	
	def debt_payment_timeframe
		# days
		timeframe = indentured_servant? ? 365 : 90
	end
	
	def smell_karma
		karma = 1
		case smell
			when "tolerable"
			karma += 2
			when "bad"
			karma -= 1
			else
			karma += 0
		end
		karma
	end

  private

  def cover_shift
    false if Intern.count == 1
  end

end
