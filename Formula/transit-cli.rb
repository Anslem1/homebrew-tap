class TransitCli < Formula
  desc "Transit is a versatile command-line interface (CLI) tool designed to streamline the workflow of developers in the terminal."
  homepage "https://github.com/Anslem1/transit-cli"
  license "Apache-2.0"

  # macOS amd64
  url "https://github.com/Anslem1/transit-cli/releases/download/v1.0.1/transit_darwin_amd64.tar.gz"
  sha256 ""



  # macOS arm64
  url "https://github.com/Anslem1/transit-cli/releases/download/v1.0.1/transit_darwin_arm64.tar.gz"
  sha256 ""




  # Linux amd64
  url "https://github.com/Anslem1/transit-cli/releases/download/v1.0.1/transit_linux_amd64.tar.gz"
  sha256 ""



  # Linux arm64
  url "https://github.com/Anslem1/transit-cli/releases/download/v1.0.1/transit_linux_arm64.tar.gz"
  sha256 ""


  # Windows amd64
  url "https://github.com/Anslem1/transit-cli/releases/download/v1.0.1/transit_windows_amd64.tar.gz"
  sha256 ""
  

  # Windows arm64
  url "https://github.com/Anslem1/transit-cli/releases/download/v1.0.1/transit_windows_arm64.tar.gz"
  sha256 ""

  

  def install
    bin.install "transit"
  end

  test do
    system "#{bin}/transit", "--version"
  end
end
