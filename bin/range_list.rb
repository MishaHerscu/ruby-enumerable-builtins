rng = 1..15

p rng.include? 4

p rng.include? 45

sum = rng.reduce(:+)

sum_even = rng.select(&:even?).reduce(:+)

p sum
p sum_even


consultant = { given_name: 'Antony', surname: 'Donovan', height: 76}
consultant.reduce({keys: [],values: []}) { |memo, obj|
  memo[:keys] << obj[0];
  memo[:values] << obj[1];
  memo }

# can also do
consultant.each_with_object({key: [], value: []}) { |kv, memo|  memo[:key] << kv[0]; memo[:value] << kv[1] }
