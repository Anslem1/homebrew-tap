class TransitCli < Formula
  desc "Transit is a versatile command-line interface (CLI) tool designed to streamline the workflow of developers in the terminal."
  homepage "https://github.com/Anslem1/transit-cli"
  license "Apache-2.0"
  version "1.0.1"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/Anslem1/transit-cli/releases/download/v1.0.1/transit_darwin_amd64.tar.gz"
  sha256 "8a2d777b91569a2823452dbe06e6098f055bb0afff22fc7149b816cd7102e439"
 

   
  elsif OS.mac? && Hardware::CPU.arm?
    url "https://github.com/Anslem1/transit-cli/releases/download/v1.0.1/transit_darwin_arm64.tar.gz"
  sha256 "ebbb28b227bd63676bc1c12d2d0669ea57da71c33e543128d1e8abfc42abaf4c"


  
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/Anslem1/transit-cli/releases/download/v1.0.1/transit_linux_amd64.tar.gz"
  sha256 "7030fd5af5f25d43b237c08ee19cfb3200b22ee9df28282d5c62d002760e3105"
  

  elsif OS.linux? && Hardware::CPU.arm?
    url "https://github.com/Anslem1/transit-cli/releases/download/v1.0.1/transit_linux_arm64.tar.gz"
  sha256 "62ced0c80aa6c405e24da191e30324467dc0cd61295c5912eb453d3771743ded"

  

  elsif OS.windows? && Hardware::CPU.intel?
    url "https://github.com/Anslem1/transit-cli/releases/download/v1.0.1/transit_windows_amd64.tar.gz"
  sha256 "cccc39d432b833825f1a1e9d313dea9b3147d27a24ea906f18eb7372b47dd461"

  
  elsif OS.windows? && Hardware::CPU.arm?
    url "https://github.com/Anslem1/transit-cli/releases/download/v1.0.1/transit_windows_arm64.tar.gz"
sha256 "3bbd1b7ee7c57f8785b3a9611fa58192b479409558c4fe89845672e7e26c7882"
 
  end

  def install
    bin.install "transit"
  end

  test do
    system "#{bin}/transit", "--version"
  end
end
