School.create(
  name: 'Boston University',
  city: 'Boston',
  state: 'MA'
)

School.create(
  name: 'University of Southern California',
  city: 'Los Angeles',
  state: 'CA'
)

School.create(
  name: 'Columbia University',
  city: 'New York',
  state: 'NY'
)

School.create(
  name: 'New York University',
  city: 'New York',
  state: 'NY'
)

School.create(
  name: 'University of Washington',
  city: 'Seattle',
  state: 'WA'
)

School.all.each do |school|
  ['Drink Beers!', 'Get In', 'Apply'].each do |title|
    school.tasks.create(title: title)
  end
end
