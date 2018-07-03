module ApplicationHelper
  def nav_link(title, path, controller_name = '')
    klass = 'nav-item nav-link'
    if controller_name == params[:controller]
      klass += ' active'
    end
    link_to(title, path, class: klass)
  end
end
