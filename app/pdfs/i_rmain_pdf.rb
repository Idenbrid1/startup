class IRmainPdf < Prawn::Document
  def initialize(i_rmain)
  	super()
  	@i_rmain = i_rmain
  	text "IRmain\#{#{@i_rmain.ir_file }}"
  	
  	
  end
end