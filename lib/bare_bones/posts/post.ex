defmodule BareBones.Posts.Post do
  use Ecto.Schema
  import Ecto.Changeset

  schema "posts" do
    field :title, :string
    field :slug, :string
    field :body, :string
    field :description, :string
    field :published_at, :date
    field :draft, :boolean, default: false
    field :free, :boolean, default: false
    field :user_id, :id

    timestamps(type: :utc_datetime)
  end

  @doc false
  def changeset(post, attrs, user_scope) do
    post
    |> cast(attrs, [:title, :slug, :body, :description, :published_at, :draft, :free])
    |> validate_required([:title, :slug, :body, :description, :published_at, :draft, :free])
    |> put_change(:user_id, user_scope.user.id)
  end
end
