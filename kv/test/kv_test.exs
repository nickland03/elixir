defmodule KVTest do
  use ExUnit.Case, async: true
  doctest KV

  test "unit test: isNumberBiggerThan" do
    assert KV.isNumberBiggerThan(2,5) == false
    assert KV.isNumberBiggerThan(5,2) == true
    assert KV.isNumberBiggerThan(5,5) == false
  end

  test "unit test: exponentialList" do
    assert KV.exponentialList([1,2,3], 3) == [1, 8, 27]
  end
end
