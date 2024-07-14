class TransitCli < Formula
  desc "Transit is a versatile command-line interface (CLI) tool designed to streamline the workflow of developers in the terminal."
  homepage "https://github.com/Anslem1/transit-cli"
  license "Apache-2.0"
  version "1.0.1"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/Anslem1/transit-cli/releases/download/v1.0.1/transit_darwin_amd64.tar.gz"
  sha256 "b0af465f4fb31f99cbf735438881acf2e254ba4e16433bab1eb40afd0a3e133e"
    sha256 "4c80c9d945a1f0b0f63ca1edd1ee9cde0ccfbd3086f3c5d0bbb1f43456bf85d3"
  elsif OS.mac? && Hardware::CPU.arm?
    url "https://github.com/Anslem1/transit-cli/releases/download/v1.0.1/transit_darwin_arm64.tar.gz"
  sha256 "00c9325681342efec4d5d331f0947dca21d6fa2e0f2cf47585bf9575245828fa"
    sha256 "1b23e060b537d1ae0ae122a3b9d0801e3d840b584d055aa8640bcd0ced954800"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/Anslem1/transit-cli/releases/download/v1.0.1/transit_linux_amd64.tar.gz"
  sha256 "15fc7fcb7a2bb3ff4687f4a19af646e9d15cded444143114630e7f5bb038979f"
    sha256 "0d4614ad88bca0d16ccb62e129775967b315359cda25672d5ae693c30be378e3"
  elsif OS.linux? && Hardware::CPU.arm?
    url "https://github.com/Anslem1/transit-cli/releases/download/v1.0.1/transit_linux_arm64.tar.gz"
  sha256 "a67c9a2678b82fd5b03b58b583c6ce716b03f95873e0c85582d8a79def0573e0"
    sha256 "4c80c9d945a1f0b0f63ca1edd1ee9cde0ccfbd3086f3c5d0bbb1f43456bf85d3"
  elsif OS.windows? && Hardware::CPU.intel?
    url "https://github.com/Anslem1/transit-cli/releases/download/v1.0.1/transit_windows_amd64.tar.gz"
    sha256 "e165a86dbf2b3d85c3186eb7b82bed77fac41aff371076f2e1b5201efc923bbd"
  elsif OS.windows? && Hardware::CPU.arm?
    url "https://github.com/Anslem1/transit-cli/releases/download/v1.0.1/transit_windows_arm64.tar.gz"
    sha256 "3e38d2e05bee942a3fb1ed7561923c723358fda66cea2018cabdae8a8107a381"
  end

  def install
    bin.install "transit"
  end

  test do
    system "#{bin}/transit", "--version"
  end
end
