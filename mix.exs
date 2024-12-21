defmodule Omdb.MixProject do
  use Mix.Project

  def project do
    [
      app: :omdb,
      version: "0.1.0",
      elixir: "~> 1.18",
      start_permanent: Mix.env() == :prod,
      deps: deps()
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      extra_applications: [:logger],
      mod: {Omdb.Application, []}
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      {:finch, "~> 0.19"},
      {:mix_test_watch, "1.2.0", only: [:dev, :test]}
    ]
  end
end
