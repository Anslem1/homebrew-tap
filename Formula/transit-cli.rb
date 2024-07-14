class TransitCli < Formula
  desc "Transit is a versatile command-line interface (CLI) tool designed to streamline the workflow of developers in the terminal."
  homepage "https://github.com/Anslem1/transit-cli"
  license "Apache-2.0"

  version "1.0.1"

  if OS.mac? && Hardware::CPU.intel?
      url "https://github.com/Anslem1/transit-cli/releases/download/v1.0.1/transit_darwin_amd64.tar.gz"
      sha256 "4c80c9d945a1f0b0f63ca1edd1ee9cde0ccfbd3086f3c5d0bbb1f43456bf85d3"
  elsif OS.mac? && Hardware::CPU.arm?
      url "https://github.com/Anslem1/transit-cli/releases/download/v1.0.1/transit_darwin_arm64.tar.gz"
     sha256 "1b23e060b537d1ae0ae122a3b9d0801e3d840b584d055aa8640bcd0ced954800"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/Anslem1/transit-cli/releases/download/v1.0.1/transit_linux_amd64.tar.gz"
    sha256 "0d4614ad88bca0d16ccb62e129775967b315359cda25672d5ae693c30be378e3"
  elsif OS.linux? && Hardware::CPU.arm?
     url "https://github.com/Anslem1/transit-cli/releases/download/v1.0.1/transit_linux_arm64.tar.gz"
    sha256 "4c80c9d945a1f0b0f63ca1edd1ee9cde0ccfbd3086f3c5d0bbb1f43456bf85d3"
  elsif OS.windows? && Hardware::CPU.intel?
      url "https://github.com/Anslem1/transit-cli/releases/download/v1.0.1/transit_windows_amd64.tar.gz"
      sha256 "e165a86dbf2b3d85c3186eb7b82bed77fac41aff371076f2e1b5201efc923bbd"
  elsif OS.windows? && Hardware::CPU.arm?
     url "https://github.com/Anslem1/transit-cli/releases/download/v1.0.1/transit_windows_arm64.tar.gz"
    sha256 "3e38d2e05bee942a3fb1ed7561923c723358fda66cea2018cabdae8a8107a381"

     def install
    bin.install "transit"
  end

  test do
    system "#{bin}/transit", "--version"
  end
end