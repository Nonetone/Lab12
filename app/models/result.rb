class Result < ApplicationRecord
  validates :query, presence: true, uniqueness: true 
  before_create :calculate

  def get_solution 
      ActiveSupport::JSON.decode(solution)
  end 
  
  private

  def calculate  
      happy = []
      0.upto(query.to_i) do |i|
        digits = i.digits.reverse
        if digits.length < 6
          (6 - digits.length).times do
            digits.prepend(0)
          end
        end
        happy.push(i) if digits.slice(0, 3).sum == digits.slice(3, 3).sum
      end
      self.solution = ActiveSupport::JSON.encode(happy)
      end  
  end
