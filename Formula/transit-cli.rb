class TransitCli < Formula
  desc "Transit is a versatile command-line interface (CLI) tool designed to streamline the workflow of developers in the terminal."
  homepage "https://github.com/Anslem1/transit-cli"
  license "Apache-2.0"

  version "1.0.1"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/Anslem1/transit-cli/releases/download/v1.0.1/transit_darwin_amd64.tar.gz"
    sha256 "abc123..."
  elsif OS.mac? && Hardware::CPU.arm?
    url "https://github.com/Anslem1/transit-cli/releases/download/v1.0.1/transit_darwin_arm64.tar.gz"
    sha256 "def456..."
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/Anslem1/transit-cli/releases/download/v1.0.1/transit_linux_amd64.tar.gz"
    sha256 "ghi789..."
  elsif OS.linux? && Hardware::CPU.arm?
    url "https://github.com/Anslem1/transit-cli/releases/download/v1.0.1/transit_linux_arm64.tar.gz"
    sha256 "jkl012..."
  elsif OS.windows? && Hardware::CPU.intel?
    url "https://github.com/Anslem1/transit-cli/releases/download/v1.0.1/transit_windows_amd64.zip"
    sha256 "mno345..."
  elsif OS.windows? && Hardware::CPU.arm?
    url "https://github.com/Anslem1/transit-cli/releases/download/v1.0.1/transit_windows_arm64.zip"
    sha256 "pqr678..."
  end

  def install
    bin.install "transit"
  end

  test do
    system "#{bin}/transit", "--version"
  end
end
