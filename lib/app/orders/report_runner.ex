defmodule App.Orders.ReportRunner do
  use GenServer
  # def start_link(initial_stack) when is_list(initial_stack) do
  #   GenServer.start_link(__MODULE__, initial_stack)
  # end

  require Logger

  alias App.Orders.Report

  # Client
  def start_link(_initial_stack) do
    GenServer.start_link(__MODULE__, %{})
  end

  # Server
  @impl true
  def init(state) do
    Logger.info("Report Runner started")
    shedule_report_generation()

    {:ok, state}
  end

  @impl true
  def handle_info(:generate, state) do
    Logger.info("Generating report...")

    Report.create()

    {:noreply, state}
  end

  def shedule_report_generation do
    Process.send_after(self(), :generate, 1000 * 60 * 60 * 5)
  end
end
