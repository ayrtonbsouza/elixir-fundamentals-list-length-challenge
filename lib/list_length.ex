defmodule ListLength do
  def call(list), do: local_length(list, 0)

  defp local_length([], count), do: count

  defp local_length([_head | tail], count) do
    count = count + 1
    local_length(tail, count)
  end
end
