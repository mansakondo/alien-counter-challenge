class CounterController < ApplicationController
  def show
    @count = session[:count].to_i
    @users_count = 0
    @planets     = [
      { name: "Earth", code: "earth", counter_count: 0, users_count: 0 },
      { name: "Pluto", code: "pluto", counter_count: 0, users_count: 0 },
      { name: "Jupiter", code: "jupiter", counter_count: 0, users_count: 0 }
    ]
  end
end
