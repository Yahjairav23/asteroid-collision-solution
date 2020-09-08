def asteroid_collision(asteroids)
    #create an empty array to hold all of the surviving asteroids
    results = []
    
    #loop through each of the asteroids in the given asteroid array
    asteroids.each do |asteroid|
        #create a boolean variable that will turn to false if the asteroid bursts
        push_asteroid = true
        
        #check for conditionals that would result in an asteroid collision
        while results.length>0 && asteroid < 0  && 0 < results.last
            #if there a collision will occur, check conditionals to determine which asteroids will be destroyed

          if asteroid.abs > results.last
            #if the base number of the current asteroid is larger that the previous asteroid seen
            #the previous asteroid gets detroyed
              results.pop()
          elsif asteroid.abs == results.last
            #if the base number of the current asteroid is equal to the previous asteroid then both asteroids get detroyed
            #and we must now change our boolean variable to false to reflect that it will not get pushed onto our results array.
              push_asteroid = false
              results.pop()
            #we must break here in order to move out of the while loop
              break
          else
            #if no other conditions apply, that means the current asteroid will be destroyed, 
            #so we must change the boolean variable to reflect we will not be pushing this value onto the results array
              push_asteroid = false
            #we must break here in order to move out of the while loop
              break
          end
     
        end
        
        #after all conditions are checked, if the push_asteroids variable is still true
        if push_asteroid == true 
            #the current asteroid has survived collision and will be pushed on to the results array
            results.push(asteroid)
        end
    end

    #whatever asteroid are remaining in the results array after looping through all asteroid in asteroid array will be returned
    return results
    
end