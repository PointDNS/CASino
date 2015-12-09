require_relative 'listener'

class CASino::SessionOverviewListener < CASino::Listener
  def user_not_logged_in
    @controller.redirect_to(
      login_path(return_to: @controller.request.original_fullpath))
  end

  def ticket_granting_tickets_found(ticket_granting_tickets)
    assign(:ticket_granting_tickets, ticket_granting_tickets)
  end
end
