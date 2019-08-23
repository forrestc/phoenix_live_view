defmodule Phoenix.LiveView.Socket do
  @moduledoc """
  The LiveView socket for Phoenix Endpoints.
  """
  use Phoenix.Socket

  defstruct id: nil,
            endpoint: nil,
            view: nil,
            router: nil,
            parent_pid: nil,
            assigns: %{},
            changed: %{},
            temporary: %{},
            fingerprints: {nil, %{}},
            private: %{},
            mounted: false,
            redirected: nil,
            connected?: false

  channel "lv:*", Phoenix.LiveView.Channel

  @doc """
  Connects the Phoenix.Socket for a LiveView client.
  """
  @impl Phoenix.Socket
  def connect(_params, %Phoenix.Socket{} = socket, _connect_info) do
    {:ok, socket}
  end

  @doc """
  Identifies the Phoenix.Socket for a LiveView client.
  """
  @impl Phoenix.Socket
  def id(_socket), do: nil
end
