[
  'University of Southern California',
  'Boston University',
  'New York University',
  'University of Washington',
  'Columbia University'
].each do |name|
  School.create(name: name)
end

School.all.each do |school|
  ['Apply', 'Get In', 'Drink Beers!'].each do |title|
    school.tasks.create(title: title)
  end
end
