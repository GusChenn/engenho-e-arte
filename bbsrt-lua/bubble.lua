chroma = require('chroma')

-- Define random data
data_size = arg[1]

print('Data size: ' .. data_size)

data = {}
for i = 1, data_size, 1 do
  data[i] = math.random() * 10
end

-- Define initial system time
chroma.blue('\nInitializing timer')
initial_time = os.clock()

-- Organize random data
for i = 1, data_size, 1 do
  for j = 1, data_size, 1 do
    if data[i] < data[j] then
      local temp = data[i]
      data[i] = data[j] 
      data[j] = temp
    end
  end
end

-- Define end time
final_time = os.clock()
total_time = final_time - initial_time

-- Print organized data
-- print('\n')
-- print('--------- ORGANIZED DATA ---------\n')
-- for i = 1, data_size, 1 do
--   print(data[i])
-- end
-- print('\n\n')
chroma.blue('Execution time: ' .. total_time)
