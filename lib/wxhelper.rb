module WxHelper
  # this method will load all .rb extension files in our ui directory
	def WxHelper.include_ui
    # Two ways of doing this outlined below
    Dir[File.join(File.dirname(__FILE__),"..","ui","*.rb")].each { |rb_files| load rb_files }
    #Dir[File.expand_path('../../ui/*.rb', __FILE__)].each { |rb_files| load rb_files }
	end
  # use this method for setting up any configuration files/dirs for your program
  def WxHelper.setup_init
  end
end
