

#TPiOSFramework.podspec
Pod::Spec.new do |s|

	s.name		= "TPiOSFramework"
	s.version	= "1.1.4"
	s.summary	= "tupo framework"
	s.homepage 	= "https://github.com/wanglanshou"
	s.license	= "mit"
	s.author	= {"Wang Lanshou" => "782699669@qq.com"}
	s.platform	= :ios,"8.0"
	s.ios.deployment_target = "8.0"
	s.source	= {:git => "https://github.com/wanglanshou/TPFramework.git" ,:tag => s.version}
	s.source_files = "Category/*.{h,m}","TPView/TPMenuItemsView/*.{h,m}"
	s.subspec "TPView" do |TPView|
		TPView.TPMenuItemsView = "TPV"
	s.requires_arc = true
	s.dependency "Masonry"
end


