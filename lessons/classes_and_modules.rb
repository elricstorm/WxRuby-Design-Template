module Earth
  module Gravity
    module Oxygen
      class AlienSpecies
        def what_am_i
          puts "I'm an Alien Species that crashed landed on Earth. I'm bound by gravity, and forced to breathe oxygen."
        end
      end
    end
  end
  module Oxygen
    class AlienSpecies
      def what_am_i
        puts "I'm an Alien Species that crashed landed on Earth, and I'm forced to breathe oxygen."
      end
    end
  end
  class AlienSpecies
    def what_am_i
      puts "I'm an Alien Species that crashed landed on Earth."
    end
  end
  def what_am_i
    puts "I'm inside the earth and free"
  end
end

class ClassThatIncludes
  include Earth
end
class ClassThatExtends
  extend Earth
end


x = Earth::Gravity::Oxygen::AlienSpecies.new
x.what_am_i
y = Earth::Oxygen::AlienSpecies.new
y.what_am_i
z = Earth::AlienSpecies.new
z.what_am_i

puts "Module Include Example 1"
ClassThatIncludes.new.what_am_i
puts "Module Extend Example 1"
ClassThatExtends.what_am_i

puts "Module Include Example 2"
ClassThatIncludes::Gravity::Oxygen::AlienSpecies.new.what_am_i
puts "Module Extend Example 2"
puts "I can't extend into any other module and class."