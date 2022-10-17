. config.sh

echo now and block.timestamp are calculated correctly!
echo now: $(seth call $BUG_ADDRESS 'get_now()(uint256)')
echo block.timestamp: $(seth call $BUG_ADDRESS 'get_block_timestamp()(uint256)')
echo block.number: $(seth call $BUG_ADDRESS 'get_block_number()(uint256)')

# echo Creating new mapping elements always works well!
# echo
# echo create_new_element_1
# seth send $BUG_ADDRESS 'create_new_element_1()'
# echo create_new_element_100000000000000000
# seth send $BUG_ADDRESS 'create_new_element_100000000000000000()'

echo The create_new_element_timestamp1 function is unstable. 
echo In it, we first store the timestamp value in a variable, and then use this variable to add a new element to the mapping.
echo

test_with_repeat() {
  echo $method
  status=124
  count=1
  while (($status==124))
  do
    echo Попытка №$count
    timeout 30 seth send $BUG_ADDRESS "$method()"
    status=$?
    (( count++ ))
  done
}

method=set_block_number
test_with_repeat

method=create_new_element_block_number
test_with_repeat
method=create_new_element_block_number
test_with_repeat
method=create_new_element_block_number
test_with_repeat
method=create_new_element_block_number
test_with_repeat

method=create_new_element_timestamp1
test_with_repeat

method=create_new_element_timestamp1
test_with_repeat

method=create_new_element_timestamp1
test_with_repeat

method=create_new_element_timestamp1
test_with_repeat

echo The create_new_element_timestamp2 function almost always fails. Very rarely, but the transaction did sometimes go through. 
echo In it, we immediately create a new element in the mapping using the current timestamp as a key.
echo
method=create_new_element_timestamp2
test_with_repeat

echo Same with now
echo
method=create_new_element_now
test_with_repeat


