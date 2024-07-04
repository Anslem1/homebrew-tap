class TransitCli < Formula
  desc "Transit is a versatile command-line interface (CLI) tool designed to streamline the workflow of developers in the terminal."
  homepage "https://github.com/Anslem1/transit-cli"
  
  license "Apache-2.0"
  
url "https://github.com/Anslem1/transit-cli/releases/download/#{version}/transit_darwin_amd64.tar.gz"
  sha256 "53483ebcd4402335bc588c9aaecd92a61e24360b6156246c521271aecbfea18d"
  url "https://github.com/Anslem1/transit-cli/releases/download/v1.0.1/transit_windows_arm64.tar.gz"
  sha256 "53483ebcd4402335bc588c9aaecd92a61e24360b6156246c521271aecbfea18d"
  url "https://github.com/Anslem1/transit-cli/releases/download/v1.0.1/transit_windows_arm64.tar.gz"
  sha256 "53483ebcd4402335bc588c9aaecd92a61e24360b6156246c521271aecbfea18d"
  url "https://github.com/Anslem1/transit-cli/releases/download/v1.0.1/transit_windows_arm64.tar.gz"
  sha256 "53483ebcd4402335bc588c9aaecd92a61e24360b6156246c521271aecbfea18d"
  url "https://github.com/Anslem1/transit-cli/releases/download/v1.0.1/transit_windows_arm64.tar.gz"
  sha256 "53483ebcd4402335bc588c9aaecd92a61e24360b6156246c521271aecbfea18d"
  url "https://github.com/Anslem1/transit-cli/releases/download/v1.0.1/transit_windows_arm64.tar.gz"
  sha256 "53483ebcd4402335bc588c9aaecd92a61e24360b6156246c521271aecbfea18d"

  def install
    bin.install "transit"
  end

  test do
    system "#{bin}/transit", "--version"
  end
end