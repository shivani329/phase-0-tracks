
olympics = {
   first_place: {
       medal_color: 'gold',
       aka: 'winner',
       records: {
           total_gold: 23,
           olympian: "Michael Phelps"
       },
       
       
   },
   second_place: {
       medal_color: 'silver',
       aka: 'runner up', 
       records: {
          total_silver: 6,
          olympian: ["Shirley Babashoff"]
       },
       
       
   },
   third_place: {
       medal_color: 'bronze',
       aka: 'last place',
       records: {
           total_bronze: 6,
           olympian: ['Franziska van Almsick',
                        'Merlene Ottey']
       },

   }
}

puts "What are other ways of saying first place?"
p olympics [:first_place] [:aka] 
puts "Who has the most olympic gold medals in the world?"
p olympics [:first_place] [:records] [:olympian]
puts "How many gold medals does Michael Phelps have?"
p olympics [:first_place] [:records] [:total_gold]
puts "Who broke the record for most bronze medals first?"
p olympics [:third_place] [:records] [:olympian] [1]
puts "What color medal do you get for coming in second?"
p olympics [:second_place] [:medal_color]



