class TransitCli < Formula
  desc "Transit is a versatile command-line interface (CLI) tool designed to streamline the workflow of developers in the terminal."
  homepage "https://github.com/Anslem1/transit-cli"
  license "Apache-2.0"

  # macOS amd64
  url "https://github.com/Anslem1/transit-cli/releases/download/v1.0.1/transit_darwin_amd64.tar.gz"
  sha256 "b8616163495ac3cabcb6c119781e25549d65fea56fb6a7a1a694dba80109dad6"
  sha256 "cc7acaf44f84d4c3c4bfad50d5845ace651138346561f5ad5482ab12a770f9cf"





  # macOS arm64
  url "https://github.com/Anslem1/transit-cli/releases/download/v1.0.1/transit_darwin_arm64.tar.gz"
  sha256 "1b23e060b537d1ae0ae122a3b9d0801e3d840b584d055aa8640bcd0ced954800"
  sha256 "202b64f002c56d4120e24d7a9ebc03e98a9d3a2444a2393849aefccaa76d356c"






  # Linux amd64
  url "https://github.com/Anslem1/transit-cli/releases/download/v1.0.1/transit_linux_amd64.tar.gz"
  sha256 "0d4614ad88bca0d16ccb62e129775967b315359cda25672d5ae693c30be378e3"
  sha256 "87f4236bb465589ab2331082faa1eef49a35681dcc67dd042fa4fc7add08c61d"





  # Linux arm64
  url "https://github.com/Anslem1/transit-cli/releases/download/v1.0.1/transit_linux_arm64.tar.gz"
  sha256 "4c80c9d945a1f0b0f63ca1edd1ee9cde0ccfbd3086f3c5d0bbb1f43456bf85d3"
  sha256 "3ad3532ed7dc8546621ac5ba6dc25b93384a5ea572db0c95fab88da3eb71c42f"




  # Windows amd64
  url "https://github.com/Anslem1/transit-cli/releases/download/v1.0.1/transit_windows_amd64.tar.gz"
  sha256 "e165a86dbf2b3d85c3186eb7b82bed77fac41aff371076f2e1b5201efc923bbd"


  

  # Windows arm64
  url "https://github.com/Anslem1/transit-cli/releases/download/v1.0.1/transit_windows_arm64.tar.gz"
  sha256 "3e38d2e05bee942a3fb1ed7561923c723358fda66cea2018cabdae8a8107a381"



  

  def install
    bin.install "transit"
  end

  test do
    system "#{bin}/transit", "--version"
  end
end
