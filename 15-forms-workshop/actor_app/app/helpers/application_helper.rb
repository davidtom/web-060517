module ApplicationHelper
  def foo
    "<h1> Hola</h1>".html_safe
  end

  def my_form_tag(action, options = {})
    # options = {:method => "put"}
    method = options[:method] || "post"
    value = options[:value] || ""
    html = <<-HTML
      <form class="" action="#{action}" value="#{value}" method="#{method}">

          #{yield}
      </form>
    HTML
    html.html_safe
  end

  # text_field_tag 'actor[name]', 'bob', {placeholder: 'fill in the name'}

  def my_text_field_tag(name_attribute, options = {})
    html = <<-HTML
      <input type="text" name="#{name_attribute}" value="" placeholder="#{options[:placeholder]}">
    HTML
    html.html_safe
  end

  # def my_form_tag(method)
  #   yield
  # end
end
