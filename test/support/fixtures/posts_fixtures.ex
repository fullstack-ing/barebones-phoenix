defmodule BareBones.PostsFixtures do
  @moduledoc """
  This module defines test helpers for creating
  entities via the `BareBones.Posts` context.
  """

  @doc """
  Generate a post.
  """
  def post_fixture(scope, attrs \\ %{}) do
    attrs =
      Enum.into(attrs, %{
        body: "some body",
        description: "some description",
        draft: true,
        free: true,
        published_at: ~D[2025-06-17],
        slug: "some slug",
        title: "some title"
      })

    {:ok, post} = BareBones.Posts.create_post(scope, attrs)
    post
  end
end
