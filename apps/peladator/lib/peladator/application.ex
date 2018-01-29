defmodule Peladator.Application do
  @moduledoc """
  The Peladator Application Service.

  The peladator system business domain lives in this application.

  Exposes API to clients such as the `PeladatorWeb` application
  for use in channels, controllers, and elsewhere.
  """
  use Application

  def start(_type, _args) do
    import Supervisor.Spec, warn: false

    Supervisor.start_link(
      [
        supervisor(Peladator.Repo, [])
      ],
      strategy: :one_for_one,
      name: Peladator.Supervisor
    )
  end
end
