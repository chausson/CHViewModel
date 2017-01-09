Pod::Spec.new do |s|

  s.name         = "CHViewModel"
  s.version      = "0.0.1"
  s.summary      = "The ViewModel base on ReactiveCocoa 2.5 using MVVM Design "
  s.description  = "There are two signal in CHViewModel now, you can use push or pop in controller"
  s.homepage     = "https://github.com/chausson/CHViewModel.git"
  s.license      = "MIT"
  s.author       = { "Chausson" => "232564026@qq.com" }
  s.platform     = :ios, "8.0"
  s.source       = { :git => "https://github.com/chausson/CHViewModel.git",
                     :tag => "0.0.1"}
#  s.source_files  = "CHWebView/CHWebViewController.{h.m}"
#  s.frameworks = 'WebKit', 'JavaScriptCore'
   s.source_files = "CHViewModel"
   s.dependency "ReactiveCocoa",'~>2.5'
#  s.resources = "CHViewModel"
end
