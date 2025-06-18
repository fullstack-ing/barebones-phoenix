defmodule BareBonesWeb.PostLive.Show do
  use BareBonesWeb, :live_view

  alias BareBones.Posts

  @impl true
  def render(assigns) do
    ~H"""
    <Layouts.app flash={@flash} current_scope={@current_scope}>
      <.header>
        Post {@post.id}
        <:subtitle>This is a post record from your database.</:subtitle>
        <:actions>
          <.button navigate={~p"/posts"}>
            Back
          </.button>
          <.button variant="primary" navigate={~p"/posts/#{@post}/edit?return_to=show"}>
            Edit post
          </.button>
        </:actions>
      </.header>

      <.list>
        <:item title="Title">{@post.title}</:item>
        <:item title="Slug">{@post.slug}</:item>
        <:item title="Body">{@post.body}</:item>
        <:item title="Description">{@post.description}</:item>
        <:item title="Published at">{@post.published_at}</:item>
        <:item title="Draft">{@post.draft}</:item>
        <:item title="Free">{@post.free}</:item>
      </.list>
    </Layouts.app>
    """
  end

  @impl true
  def mount(%{"id" => id}, _session, socket) do
    if connected?(socket) do
      Posts.subscribe_posts(socket.assigns.current_scope)
    end

    {:ok,
     socket
     |> assign(:page_title, "Show Post")
     |> assign(:post, Posts.get_post!(socket.assigns.current_scope, id))}
  end

  @impl true
  def handle_info(
        {:updated, %BareBones.Posts.Post{id: id} = post},
        %{assigns: %{post: %{id: id}}} = socket
      ) do
    {:noreply, assign(socket, :post, post)}
  end

  def handle_info(
        {:deleted, %BareBones.Posts.Post{id: id}},
        %{assigns: %{post: %{id: id}}} = socket
      ) do
    {:noreply,
     socket
     |> put_flash(:error, "The current post was deleted.")
     |> push_navigate(to: ~p"/posts")}
  end

  def handle_info({type, %BareBones.Posts.Post{}}, socket)
      when type in [:created, :updated, :deleted] do
    {:noreply, socket}
  end
end
