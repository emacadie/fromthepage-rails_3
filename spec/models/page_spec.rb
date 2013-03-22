require 'spec_helper'

describe Page do
  before(:each) do
    @user = FactoryGirl.create(:user)
    User.current_user = @user
    @work = FactoryGirl.create(:work)
    @page = Page.new
    
    @page.title = "Wednesday, January 2, 1918"
    @page.source_text  = "From the Page is awesoooooome"
    @page.base_image = "/home/fromthe/fromthepage/current/public/images/working/6/img_3862.jpg"
    @page.base_width = 1944
    @page.base_height = 2592
    @page.shrink_factor = 2
    @page.position = 1
    @page.lock_version = 3
    @page.xml_text = "<?xml version='1.0' encoding='ISO-8859-15'?> \n <page>\n <p/>\n
\ </page>\n"
    @work.pages << @page 
  end

  subject { @page }

  it { should respond_to(:title) }

end
