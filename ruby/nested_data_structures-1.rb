highway = {

  

 lane_1: {
       car_model: "Lexus",
       car_color: "Red",
       type: {
           year: 2009,
           number_doors:[2, 4],
           brake_lights: ["Brake lights are on", "Brake lights are off"]
        },
    },

    lane_2: {
       car_model: "Civic",
       car_color: "White",
       type: {
           year: 2016,
           number_doors:[2, 4],
           brake_lights: ["Brake lights are on", "Brake lights are off"]
        },
    },

    lane_3: {
       car_model: "Audi",
       car_color: "Blue",
       type: {
           year: 2011,
           number_doors:[2, 4],
           brake_lights: ["Brake lights are on", "Brake lights are off"]
        },
     },
}
puts "What kind of car is in lane 1?"
p highway [:lane_1] [:car_model]
puts "How many doors does the car in lane 1 have?"
p highway [:lane_1][:type][:number_doors][1]
puts "What color is the car in lane 2?"
p highway [:lane_2] [:car_color]
puts "What year is the car in lane 3?"
p highway [:lane_3] [:type] [:year]
puts "Are the brake lights on the car in lane 2 on?"
p highway [:lane_2] [:type] [:brake_lights] [0]
