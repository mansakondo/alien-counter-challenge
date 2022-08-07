# frozen_string_literal: true

class CounterReflex < ApplicationReflex
  def increment(step = 1)
    counter.increment by: step
  end

  def decrement(step = 1)
    counter.decrement by: step
  end

  def counter
    Kredis.counter "counter:count"
  end
end
