Unconference.destroy_all

ar_var_con = Unconference.create({ name: 'AR & VR', location: 'San Jose' })

conference_start = 14.days.from_now.at_midnight + 8.hours

comic_con = Unconference.create({ name: 'Comic Con', location: 'San Jose' })

talks_data = [
  {
    title: "The Best We Could Do",
    speaker_name: "Thi",
    start_offset: 3.hours,
    duration: 1.5.hours
  },
  {
    title: "America Chavez",
    speaker_name: "Gabby",
    start_offset: 5.hours,
    duration: 1.5.hours
  },
  {
    title: "Ms. Marvel",
    speaker_name: "Sana",
    start_offset: 6.hours,
    duration: 1.5.hours
  },
  {
    title: "Art of Storytelling",
    speaker_name: "Ida",
    start_offset: 7.hours,
    duration: 0.75.hours
  },
  {
    title: "Miles Morales",
    speaker_name: "Brian",
    start_offset: 2.hours,
    duration: 1.0.hours
  },
  {
    title: "Boxers and Saints",
    speaker_name: "Gene",
    start_offset: 0.hours,
    duration: 0.75.hours
  },
  {
    title: "Jessica Jones",
    speaker_name: "Krysten",
    start_offset: 4.hours,
    duration: 0.75.hours
  },
  {
    title: "Luke Cage",
    speaker_name: "Mike",
    start_offset: 5.hours,
    duration: 0.75.hours
  },
  {
    title: "Daredevil",
    speaker_name: "Charlie",
    start_offset: 7.25.hours,
    duration: 0.75.hours
  },
  {
    title: "Drawing Comics",
    speaker_name: "Fatima",
    start_offset: 4.5.hours,
    duration: 1.5.hours
  },
  {
    title: "Illustrated Women In Science Comic Series",
    speaker_name: "Dale",
    start_offset: 3.75.hours,
    duration: 1.hours
  },
]

talks_data.each_with_index do |talk_data, i|
  talk = Talk.create({
      title: talk_data[:title],
      speaker_name: talk_data[:speaker_name],
      start_time: conference_start + talk_data[:start_offset],
      end_time: conference_start + talk_data[:start_offset] + talk_data[:duration]
  })
  comic_con.talks << talk
end
