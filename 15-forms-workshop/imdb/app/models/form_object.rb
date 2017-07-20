class FormObject
  attr_reader :ar_instance
  def initialize(activerecord_instance)
    @ar_instance = activerecord_instance
  end

  def form
    path = self.ar_instance.persisted? ? actors_path(self.ar_instance) : actors_path
                                              # /actors/1                 # /actors
    html = <<-HTML
      <form class="" action="#{path}" method="patch">
        <!-- -->

      </form>
    HTML
  end

  # def ar_instance
  #   @ar_instance
  # end

  def my_text_field(attribute)
    html_name = object.class.to_s.downcase

    # actor
    # we want it to break if there is no attribute/method
    html = <<-HTML
      <input type="text" name="#{html_name}[#{attribute}]" id="#{html_name}_#{attribute/}" value="#{self.ar_instance.send(attribute)}" />
    HTML
    html.html_safe
  end

  def submit
    self.ar_instance.persisted? ? "update User" : "create user"
    <input type="submit" value="#{text}" %>
  end
end
