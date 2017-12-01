defmodule Samantha.Mixfile do
  use Mix.Project

  def project do
    [
      app: :samantha,
      version: "0.1.0",
      elixir: "~> 1.5",
      start_permanent: Mix.env == :prod,
      deps: deps()
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      extra_applications: [:logger],
      mod: {Samantha.Application, []}
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      {:websockex, github: "queer/websockex"},
      {:httpoison, "~> 0.13"},
      {:poison, "~> 3.1"},
      {:lace, github: "queer/lace"},
    ]
  end
end
