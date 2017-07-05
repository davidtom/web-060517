class FormObject
  attr_reader :ar_instance
  def initialize(activerecord_instance)
    @ar_instance = activerecord_instance
  end

  # def ar_instance
  #   @ar_instance
  # end

  def my_text_field(foo)
    html_name = object.class.to_s.downcase
    self.ar_instance.send(foo)
    # actor
    # we want it to break if there is no attribute/method
    html = <<-HTML
      <input type="text" name="#{html_name}[#{foo}]" id="#{html_name}_#{foo/}" />
    HTML
    html.html_safe
  end
end
