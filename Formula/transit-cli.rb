class TransitCli < Formula
  desc "Transit is a versatile command-line interface (CLI) tool designed to streamline the workflow of developers in the terminal."
  homepage "https://github.com/Anslem1/transit-cli"
  license "Apache-2.0"

  # macOS amd64
  url "https://github.com/Anslem1/transit-cli/releases/download/v1.0.1/transit_darwin_amd64.tar.gz"
  sha256 "cc7acaf44f84d4c3c4bfad50d5845ace651138346561f5ad5482ab12a770f9cf"





  # macOS arm64
  url "https://github.com/Anslem1/transit-cli/releases/download/v1.0.1/transit_darwin_arm64.tar.gz"
  sha256 "202b64f002c56d4120e24d7a9ebc03e98a9d3a2444a2393849aefccaa76d356c"






  # Linux amd64
  url "https://github.com/Anslem1/transit-cli/releases/download/v1.0.1/transit_linux_amd64.tar.gz"
  sha256 "87f4236bb465589ab2331082faa1eef49a35681dcc67dd042fa4fc7add08c61d"





  # Linux arm64
  url "https://github.com/Anslem1/transit-cli/releases/download/v1.0.1/transit_linux_arm64.tar.gz"
  sha256 "3ad3532ed7dc8546621ac5ba6dc25b93384a5ea572db0c95fab88da3eb71c42f"




  # Windows amd64
  url "https://github.com/Anslem1/transit-cli/releases/download/v1.0.1/transit_windows_amd64.tar.zip"
  sha256 "e165a86dbf2b3d85c3186eb7b82bed77fac41aff371076f2e1b5201efc923bbd"


  

  # Windows arm64
  url "https://github.com/Anslem1/transit-cli/releases/download/v1.0.1/transit_windows_arm64.tar.zip"
  

  def install
    bin.install "transit"
  end

  test do
    system "#{bin}/transit", "--version"
  end
end
