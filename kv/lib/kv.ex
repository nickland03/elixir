defmodule KV do
  @spec isNumberBiggerThan(number, number) :: boolean
  def isNumberBiggerThan(m, n) do
    m > n
  end

  @spec exponentialList(list, number) :: list
  def exponentialList(list, exponent) do
    Enum.map(list, fn x -> :math.pow(x, exponent) |> round end)
  end

  def displayUserInfoWithPostsInfo do
    require User
    require Post

    posts = [
      %Post{title: "my title 1", content: "my content 1"},
      %Post{title: "my title 2", content: "my content 2"}
    ]
    u = %User{age: 27, name: "Jane", posts: posts}
    IO.puts(u.name <>  " " <> Integer.to_string(u.age))
    IO.puts(Enum.at(u.posts, 0).title <> " with " <> Enum.at(u.posts, 0).content)
  end

  @spec mergeArray(list, list) :: list
  def mergeArray(list1, list2) do
    list1 ++ list2
  end
end
