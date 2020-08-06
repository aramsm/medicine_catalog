defmodule AwakeBot do
  use Application
  use Alchemy.Cogs

  alias Alchemy.Client

  defmodule Comands do
    use Alchemy.Cogs

    Cogs.def set do
      :timer.sleep(1_680_000)
      Cogs.say("|wake")
    end
  end

  def start(_type, _args) do
    run = Client.start(System.get_env("TOKEN"))
    load_comands()
    Cogs.set_prefix("¬")

    run
  end

  def load_comands() do
    use Comands
  end
end
