class TransitCli < Formula
  desc "Transit is a versatile command-line interface (CLI) tool designed to streamline the workflow of developers in the terminal."
  homepage "https://github.com/Anslem1/transit-cli"
  license "Apache-2.0"

  # macOS amd64
  url "https://github.com/Anslem1/transit-cli/releases/download/v1.0.1/transit_darwin_amd64.tar.gz"
  sha256 "ddeb707538deb46afc4ceafe05c171971ca6b3e57aa6ca61beca81869e4630e1"
  sha256 "cc7acaf44f84d4c3c4bfad50d5845ace651138346561f5ad5482ab12a770f9cf"





  # macOS arm64
  url "https://github.com/Anslem1/transit-cli/releases/download/v1.0.1/transit_darwin_arm64.tar.gz"
  sha256 "3d3b11cae71e1b69dcc170597e2db7315bd9935eb8bb2b3166b30ac84e8dbc33"
  sha256 "202b64f002c56d4120e24d7a9ebc03e98a9d3a2444a2393849aefccaa76d356c"






  # Linux amd64
  url "https://github.com/Anslem1/transit-cli/releases/download/v1.0.1/transit_linux_amd64.tar.gz"
  sha256 "56a285f1622b18484cb23300c527d9dac82a58f4ab19c562f3fbb83054938ed8"
  sha256 "87f4236bb465589ab2331082faa1eef49a35681dcc67dd042fa4fc7add08c61d"





  # Linux arm64
  url "https://github.com/Anslem1/transit-cli/releases/download/v1.0.1/transit_linux_arm64.tar.gz"
  sha256 "b89584c06cedc8f93bcebe001a446e45732a439d147914fed122aeae39cc1897"
  sha256 "3ad3532ed7dc8546621ac5ba6dc25b93384a5ea572db0c95fab88da3eb71c42f"




  # Windows amd64
  url "https://github.com/Anslem1/transit-cli/releases/download/v1.0.1/transit_windows_amd64.zip"
  sha256 "f2a216a492989fb793b556d68adc7f22bd43a2ddc7d87bc7c1a885b21fc9b07f"
  sha256 "e165a86dbf2b3d85c3186eb7b82bed77fac41aff371076f2e1b5201efc923bbd"
  
  
  
  
  # Windows arm64
  url "https://github.com/Anslem1/transit-cli/releases/download/v1.0.1/transit_windows_arm64.zip"
  sha256 "c376c9afd430d9f3fbf6a8a2b5c821d7eb6e28d974a2503b5b675920833781d5"
  sha256 ""
  

  def install
    bin.install "transit"
  end

  test do
    system "#{bin}/transit", "--version"
  end
end
