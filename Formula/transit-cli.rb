class TransitCli < Formula
  desc "Transit is a versatile command-line interface (CLI) tool designed to streamline the workflow of developers in the terminal."
  homepage "https://github.com/Anslem1/transit-cli"
  url "https://github.com/Anslem1/transit-cli/releases/download/#{version}/transit_darwin_amd64.tar.gz"
  sha256 "{DARWIN_AMD64_SHA256}"

  url "https://github.com/Anslem1/transit-cli/releases/download/#{version}/transit_darwin_arm64.tar.gz"
  sha256 "{DARWIN_ARM64_SHA256}"

  url "https://github.com/Anslem1/transit-cli/releases/download/#{version}/transit_linux_amd64.tar.gz"
  sha256 "{LINUX_AMD64_SHA256}"

  url "https://github.com/Anslem1/transit-cli/releases/download/#{version}/transit_linux_arm64.tar.gz"
  sha256 "{LINUX_ARM64_SHA256}"

  url "https://github.com/Anslem1/transit-cli/releases/download/#{version}/transit_windows_amd64.tar.gz"
  sha256 "{WINDOWS_AMD64_SHA256}"

  url "https://github.com/Anslem1/transit-cli/releases/download/#{version}/transit_windows_arm64.tar.gz"
  sha256 "{WINDOWS_ARM64_SHA256}"

  license "Apache-2.0"

  def install
    bin.install "transit"
  end

  test do
    system "#{bin}/transit", "--version"
  end
end
