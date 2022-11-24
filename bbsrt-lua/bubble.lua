-- Define random data
multiplier = 10
quantity = arg[1]
timesToRepeat = 5
executionTimes = {}

function bubbleSort (array, quantity)
  flag = false
  for i = 1, quantity, 1 do
    flag = false
    for j = 1, quantity - i, 1 do
      if array[j] > array[j + 1] then
        local temp = array[j]
        array[j] = array[j + 1] 
        array[j + 1] = temp
        flag = true
      end
    end
    if not flag then
      return
    end
  end
end

function generateRandomData (quantity, multiplier)
  data = {}
  for i = 1, quantity, 1 do
    data[i] = math.random() * 10
  end
  return data
end

function meanCalc (array, quantity)
  local sum = 0
  for i = 1, quantity, 1 do
    sum = sum + array[i]
  end
  return sum / quantity
end

for i = 1, timesToRepeat, 1 do
  randomNumbersArray = generateRandomData(quantity, multiplier)

  initial_time = os.clock()
  bubbleSort(randomNumbersArray, quantity)
  final_time = os.clock()
  total_time = final_time - initial_time

  table.insert(executionTimes, total_time)
end

print('Tempo de execução médio: ' .. meanCalc(executionTimes, timesToRepeat))


-- Define initial system time


-- Organize random data
-- for i = 1, quantity, 1 do
--  for j = 1, quantity, 1 do
--    if data[i] < data[j] then
--      local temp = data[i]
--      data[i] = data[j] 
--      data[j] = temp
--    end
--  end
--end

-- Define end time
-- Print organized data
-- print('\n')
-- print('--------- ORGANIZED DATA ---------\n')
-- for i = 1, quantity, 1 do
--   print(data[i])
-- end
-- print('\n\n')
