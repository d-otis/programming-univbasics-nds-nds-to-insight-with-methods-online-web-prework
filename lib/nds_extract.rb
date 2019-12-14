require_relative './directors_database.rb'
require 'pry'

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
    director_hash = nds[d][:movies]
    results[nds[d][:name]] = gross_for_director(nds, d)
    # binding.pry
    d += 1
  end
  results
end

# # # # # # # # # # # # # # # # # # # # # #

# Find a way to accumulate the :worldwide_grosses and return that Integer
# using director_data as input
def gross_for_director(director_hash)
  # RETURNS AN INTEGER
  binding.pry
  m = 0
  dir_total = 0
  while m < nds[d][:movies].length do
    # this iterates through each movie
    # and adds the gross to a total director-specific gross
    dir_total += nds[d][:movies][m][:worldwide_gross]
    m += 1
  end
  p "#{dir_total} is the total for #{nds[d][:name]}"
  dir_total
end

# gross_for_director(directors_database)
