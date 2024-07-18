class TransitCli < Formula
  desc "Transit is a versatile command-line interface (CLI) tool designed to streamline the workflow of developers in the terminal."
  homepage "https://github.com/Anslem1/transit-cli"
  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/Anslem1/transit-cli/releases/download/v1.0.0/transit_vv1.0.0_darwin_amd64.tar.gz"
    sha256 ""
  elsif OS.mac? && Hardware::CPU.arm?
    url "https://github.com/Anslem1/transit-cli/releases/download/v1.0.0/transit_vv1.0.0_darwin_arm64.tar.gz"
    sha256 ""
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/Anslem1/transit-cli/releases/download/v1.0.0/transit_vv1.0.0_linux_amd64.tar.gz"
    sha256 ""
  elsif OS.linux? && Hardware::CPU.arm?
    url "https://github.com/Anslem1/transit-cli/releases/download/v1.0.0/transit_vv1.0.0_linux_arm64.tar.gz"
    sha256 ""
  elsif OS.windows? && Hardware::CPU.intel?
    url "https://github.com/Anslem1/transit-cli/releases/download/v1.0.0/transit_vv1.0.0_windows_amd64.zip"
    sha256 ""
  elsif OS.windows? && Hardware::CPU.arm?
    url "https://github.com/Anslem1/transit-cli/releases/download/v1.0.0/transit_vv1.0.0_windows_arm64.zip"
    sha256 ""
  end
  def install
    bin.install "transit"
  end
  test do
    system "#{bin}/transit", "--version"
  end
end
