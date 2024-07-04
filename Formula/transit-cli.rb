class TransitCli < Formula
  desc "Transit is a versatile command-line interface (CLI) tool designed to streamline the workflow of developers in the terminal."
  homepage "https://github.com/Anslem1/transit-cli"
  
  license "Apache-2.0"
  
url "https://github.com/Anslem1/transit-cli/releases/download/#{version}/transit_darwin_amd64.tar.gz"
  sha256 "{darwin_amd64_sha256}"
  url "https://github.com/Anslem1/transit-cli/releases/download/#{version}/transit_darwin_arm64.tar.gz"
  sha256 "{darwin_arm64_sha256}"
  url "https://github.com/Anslem1/transit-cli/releases/download/#{version}/transit_linux_amd64.tar.gz"
  sha256 "{linux_amd64_sha256}"
  url "https://github.com/Anslem1/transit-cli/releases/download/#{version}/transit_linux_arm64.tar.gz"
  sha256 "{linux_arm64_sha256}"
  url "https://github.com/Anslem1/transit-cli/releases/download/#{version}/transit_windows_amd64.tar.gz"
  sha256 "{windows_amd64_sha256}"
  url "https://github.com/Anslem1/transit-cli/releases/download/#{version}/transit_windows_arm64.tar.gz"
  sha256 "{windows_arm64_sha256}"

  def install
    bin.install "transit"
  end

  test do
    system "#{bin}/transit", "--version"
  end
end