defmodule ConduitSvelteWeb.PageView do
  use ConduitSvelteWeb, :view

  def svelte(name, props) do
    :div |> tag(data: [props: json(props)], id: generate_id(name))
  end

  def json(props) do
    props
    |> Jason.encode()
    |> case do
      {:ok, message} -> message
      {:error, _} -> ""
    end
  end

  def generate_id(name) do
    "svelte-#{String.replace(name, " ", "-")}-root"
  end
end
