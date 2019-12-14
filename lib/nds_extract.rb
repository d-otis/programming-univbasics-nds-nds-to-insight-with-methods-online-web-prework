require 'directors_database'

# Write a method that, given an NDS creates a new Hash
# The return value should be like:
#
# { directorOne => allTheMoneyTheyMade, ... }
# _  _ ___ _____           
# / \|_) | /__ | |\ | /\ |  
# \_/| \_|_\_|_|_| \|/--\|_ 

def directors_totals(nds)
  d = 0
  results = {}
  while d < nds.length do
    m = 0
    total = 0
    while m < nds[d][:movies].length do
      # puts nds[d][:movies][m][:worldwide_gross]
      total += nds[d][:movies][m][:worldwide_gross]
      m += 1
    end
    results[nds[d][:name]] = total
    # binding.pry
    d += 1
  end
  results
end

def directors_totals(nds)
  result = {}
  nil
end

# Find a way to accumulate the :worldwide_grosses and return that Integer
# using director_data as input
def gross_for_director(director_data)
end
