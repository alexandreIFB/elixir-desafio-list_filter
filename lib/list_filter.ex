defmodule ListFilter do
  def call(list) do
    Enum.count(
      Enum.filter(Enum.map(list, fn elem -> integer_parse(Integer.parse(elem)) end), fn elem ->
        elem != nil && rem(elem, 2) != 0
      end)
    )
  end

  defp integer_parse(:error) do
  end

  defp integer_parse({inteiro, _resto}) do
    inteiro
  end
end
