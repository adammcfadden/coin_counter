class String
  define_method('coin_counter') do
    change = self.to_i
    nickels = 0
    dimes = 0
    quaters = 0

    until change < 10
      change = change - 10
      dimes += 1
    end

    until  change < 5
      change = change - 5
      nickels += 1
    end

    if change > 0
      if change > 1
      output = change.to_s + " pennies"
      else
      output = change.to_s + " penny"
      end
    end

    if nickels > 0
      if nickels > 1
        output = nickels.to_s + " nickels" + ", " + output
      else
        output = nickels.to_s + " nickel" + ", " + output
      end
    end

    if dimes > 0
      if dimes > 1
        output = dimes.to_s + " dimes" + ", " + output
      else
        output = dimes.to_s + " dime" + ", " + output
      end
    end

    output
    
  end
end
