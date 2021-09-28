defmodule Phonecodelib.MixProject do
  use Mix.Project
  def project do
    [
      app: :phonecodelib,
      version: "0.1.0",
      elixir: "~> 1.12",
      description: "Get country's info using the name, iso, iso3 and countrycode",
      source_url: "https://github.com/menty44/phonecodelib-elixir.git",
      start_permanent: Mix.env() == :prod,
      deps: deps(),
      package: package(),
      docs: [
        canonical: "http://hexdocs.pm/phonecodelib",
        source_url: "https://github.com/menty44/phonecodelib-elixir.git",
        extras: ["README.md", "contributing.md"]
      ]
    ]
  end
  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      extra_applications: [:logger]
    ]
  end
  defp description do
    """
    Get country's info using the name, iso, iso3 and countrycode
    """
  end
  defp package do
    [
      name: "Phonecodelib",
      files: ~w(lib priv .formatter.exs mix.exs README* readme* LICENSE*
                license* CHANGELOG* changelog* src lib doc),
      maintainers: ["Fredrick Oluoch"],
      licenses: ["MIT"],
      links: %{"GitHub" => "https://github.com/menty44/phonecodelib-elixir.git"},
      homepage_url: "https://github.com/menty44/phonecodelib-elixir"
    ]
  end
  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      # {:dep_from_hexpm, "~> 0.3.0"},
      # {:dep_from_git, git: "https://github.com/elixir-lang/my_dep.git", tag: "0.1.0"}
      {:poison, "~> 5.0"},
      {:ex_doc, "~> 0.19", only: :dev, runtime: false},
    ]
  end
end
