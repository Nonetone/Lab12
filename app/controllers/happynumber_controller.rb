class HappynumberController < ApplicationController
    before_action :authorize
    before_action :parse_params, only: :find_happy

    def find_happy
        happy = []
        0.upto(@number) do |i|
          digits = i.digits.reverse
          if digits.length < 6
            (6 - digits.length).times do
              digits.prepend(0)
            end
          end
          happy.push(i) if digits.slice(0, 3).sum == digits.slice(3, 3).sum
        end
         @cur_res = happy
        end 
    end

    def parse_params
        @number = params[:value].to_i
    end

