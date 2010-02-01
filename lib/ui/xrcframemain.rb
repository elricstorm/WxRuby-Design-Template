
# This class was automatically generated from XRC source. It is not
# recommended that this file is edited directly; instead, inherit from
# this class and extend its behaviour there.  
#
# Source file: ui/ui.xrc 
# Generated at: 2010-02-01 11:00:03 -0500

class XrcFrameMain < Wx::Frame
	
	attr_reader :mb_main, :mb_fm_new, :mb_fm_exit, :tb_main, :status_bar
	
	def initialize(parent = nil)
		super()
		xml = Wx::XmlResource.get
		xml.flags = 2 # Wx::XRC_NO_SUBCLASSING
		xml.init_all_handlers
    xml.load(File.join(File.dirname(__FILE__),"ui.xrc"))
		#xml.load("ui/ui.xrc")
		xml.load_frame_subclass(self, parent, "ID_WXFRAME")

		finder = lambda do | x | 
			int_id = Wx::xrcid(x)
			begin
				Wx::Window.find_window_by_id(int_id, self) || int_id
			# Temporary hack to work around regression in 1.9.2; remove
			# begin/rescue clause in later versions
			rescue RuntimeError
				int_id
			end
		end
		
		@mb_main = finder.call("mb_main")
		@mb_fm_new = finder.call("mb_fm_new")
		@mb_fm_exit = finder.call("mb_fm_exit")
		@tb_main = finder.call("tb_main")
		@status_bar = finder.call("status_bar")
		if self.class.method_defined? "on_init"
			self.on_init()
		end
	end
end


