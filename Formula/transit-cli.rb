class TransitCli < Formula
  desc "Transit is a versatile command-line interface (CLI) tool designed to streamline the workflow of developers in the terminal."
  homepage "https://github.com/Anslem1/transit-cli"
  license "Apache-2.0"

  url "https://github.com/Anslem1/transit-cli/releases/download/__VERSION__/transit_darwin_amd64.tar.gz"
  sha256 "__DARWIN_AMD64_SHA256__"

  if Hardware::CPU.arm?
    url "https://github.com/Anslem1/transit-cli/releases/download/__VERSION__/transit_darwin_arm64.tar.gz"
    sha256 "__DARWIN_ARM64_SHA256__"
  end

  def install
    bin.install "transit"
  end

  test do
    system "#{bin}/transit", "--version"
  end
end
