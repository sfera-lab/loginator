defmodule Loginator.MixProject do
  use Mix.Project

  def project do
    [
      app: :loginator,
      version: "0.0.1",
      elixir: "~> 1.18",
      build_embedded: Mix.env() == :prod,
      start_permanent: Mix.env() == :prod,
      description: description(),
      package: package(),
      deps: deps(),
      name: "Loginator",
      source_url: "https://github.com/sfera-lab/loginator"
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      extra_applications: [:logger],
      mod: {Loginator.Application, []}
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      {:ex_doc, "~> 0.14", only: :dev, runtime: false}
    ]
  end

  defp description do
    "Loginator is a library for managing user authentication and authorization in Elixir."
  end

  defp package do
    [
      name: "loginator",
      files: ~w(lib .formatter.exs mix.exs README* LICENSE* CHANGELOG*),
      licenses: ["MIT"],
      links: %{"GitHub" => "https://github.com/sfera-lab/loginator"}
    ]
  end
end
