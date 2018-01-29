status = ['awake', 'tired'].sample

mood =  if status == 'awake'
          "Be productive!"
        else
          "Go to sleep!"
        end

puts mood
