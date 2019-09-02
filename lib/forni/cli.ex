defmodule Forni.Cli do
  def main(argv) do
    OptionParser.parse(argv, switches: [create: :boolean, migrate: :boolean])
    |> parse_args
  end

  def parse_args({value, _, _}) do
    [type_of_key] = Keyword.keys(value)

    case type_of_key do
      type_of_key when type_of_key == :create -> IO.puts("Creation migration")
      type_of_key when type_of_key == :migrate -> IO.puts("Migraiton!!!")
      _ -> IO.puts("No option")
    end
  end
end
