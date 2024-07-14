class TransitCli < Formula
  desc "Transit is a versatile command-line interface (CLI) tool designed to streamline the workflow of developers in the terminal."
  homepage "https://github.com/Anslem1/transit-cli"
  license "Apache-2.0"
  version "1.0.1"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/Anslem1/transit-cli/releases/download/v1.0.1/transit_darwin_amd64.tar.gz"
  sha256 "8afbf4835e7b4469a504d404763a58f23f095259b6fbedfb8b7354bf6452ac04"
 
   
  elsif OS.mac? && Hardware::CPU.arm?
    url "https://github.com/Anslem1/transit-cli/releases/download/v1.0.1/transit_darwin_arm64.tar.gz"
  sha256 "966654ad6cd87ecc41d811573756ad436d84d0ef25d7629baf2e8d976cfac900"
 
  
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/Anslem1/transit-cli/releases/download/v1.0.1/transit_linux_amd64.tar.gz"
  sha256 "aad1b36d760c6507367deed25bde3fe1e2db792d8ecdefa6d3e8e12c656d19cf"
 

  elsif OS.linux? && Hardware::CPU.arm?
    url "https://github.com/Anslem1/transit-cli/releases/download/v1.0.1/transit_linux_arm64.tar.gz"
  sha256 "c58c1f4b7fc795994df3b56aca3e5876b525532c868a918ee4263112d4ff599e"
 

  elsif OS.windows? && Hardware::CPU.intel?
    url "https://github.com/Anslem1/transit-cli/releases/download/v1.0.1/transit_windows_amd64.tar.gz"
   
  elsif OS.windows? && Hardware::CPU.arm?
    url "https://github.com/Anslem1/transit-cli/releases/download/v1.0.1/transit_windows_arm64.tar.gz"
   
  end

  def install
    bin.install "transit"
  end

  test do
    system "#{bin}/transit", "--version"
  end
end
