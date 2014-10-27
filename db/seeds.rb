School.create(
  name: 'Boston University',
  city: 'Boston',
  state: 'MA',
  image_url: 'http://upload.wikimedia.org/wikipedia/commons/7/74/Boston_University_Talbot_Building_01.JPG'
)

School.create(
  name: 'University of Southern California',
  city: 'Los Angeles',
  state: 'CA',
  image_url: 'http://upload.wikimedia.org/wikipedia/commons/8/83/Doheny.jpg'
)

School.create(
  name: 'Columbia University',
  city: 'New York',
  state: 'NY',
  image_url: 'http://upload.wikimedia.org/wikipedia/commons/2/2a/Low_Library_Columbia_University_8-11-06.jpg'
)

School.create(
  name: 'New York University',
  city: 'New York',
  state: 'NY',
  image_url: 'http://www.nyu.edu/admissions/undergraduate-admissions/visit-us/virtual-tour/jcr:content/quadBox/nyuvideoplayer.img.png?15'
)

School.create(
  name: 'University of Washington',
  city: 'Seattle',
  state: 'WA',
  image_url: 'http://staff.washington.edu/paymana/images/photos/uw/blossoms4.gif'
)

School.all.each do |school|
  ['Drink Beers!', 'Get In', 'Apply'].each do |title|
    school.tasks.create(title: title)
  end
end
