defmodule PhoenixLiveViewExample.CMS.Post do
  use Ecto.Schema
  import Ecto.Changeset

  schema "posts" do
    field :body, :string
    field :enabled, :boolean, default: false
    field :title, :string

    timestamps()
  end

  @doc false
  def changeset(post, attrs) do
    post
    |> cast(attrs, [:title, :body, :enabled])
    |> validate_required([:title, :body, :enabled])
  end
end
