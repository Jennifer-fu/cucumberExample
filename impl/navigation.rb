module Navigation
  def on(page,&block)
    page_instance=page.new(@browser)
    page_instance.instance_eval(&block)if block_given?
  end
end
