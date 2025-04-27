class PagesController < ApplicationController
  def howdy
    @first_name = params.fetch("zebra", nil)
    @last_name = params.fetch("giraffe", nil)
    render({ :template => "pages_templates/hello" })
  end

  def goodbye
    @first_name = params.fetch("zebra")
    @last_name = params.fetch("giraffe")
    render({ :template => "pages_templates/bye" })
  end

end
