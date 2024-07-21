class TransitCli < Formula
  desc "Transit is a versatile command-line interface (CLI) tool designed to streamline the workflow of developers in the terminal."
  homepage "https://github.com/Anslem1/transit-cli"
  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/Anslem1/transit-cli/releases/download/v1.0.0/transit-cli_v1.0.0_darwin_amd64.tar.gz"
    sha256 "3d9e248a8473137105e86334f01662d20a9e01c8c229ea17c22f612ca5cd6677"
  elsif OS.mac? && Hardware::CPU.arm?
    url "https://github.com/Anslem1/transit-cli/releases/download/v1.0.0/transit-cli_v1.0.0_darwin_arm64.tar.gz"
    sha256 "78f24aa6f90b9387ccceff622f82eb375498fe7c92307d16528f463d34877fa1"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/Anslem1/transit-cli/releases/download/v1.0.0/transit-cli_v1.0.0_linux_amd64.tar.gz"
    sha256 "c366462b2f73a081edee44d31293094d849cf6c750696e9d670fb69a6ed657d9"
  elsif OS.linux? && Hardware::CPU.arm?
    url "https://github.com/Anslem1/transit-cli/releases/download/v1.0.0/transit-cli_v1.0.0_linux_arm64.tar.gz"
    sha256 "383a86b8143423425a1ada6ca469c0684e3b11f5fb6037444cb8c2cce00ee5b3"
  elsif OS.windows? && Hardware::CPU.intel?
    url "https://github.com/Anslem1/transit-cli/releases/download/v1.0.0/transit-cli_v1.0.0_windows_amd64.zip"
    sha256 "42be84a133868f88669639604915d3d0b4dd228b22d62f5a0e283689a4bb1ad9"
  elsif OS.windows? && Hardware::CPU.arm?
    url "https://github.com/Anslem1/transit-cli/releases/download/v1.0.0/transit-cli_v1.0.0_windows_arm64.zip"
    sha256 "7592a9e436de9cb5392b28af5c624660db2272524f3a3c021323d8f901e1597e"
  end
  def install
    bin.install "transit-cli" => "transit"
  end
  test do
    system "#{bin}/transit", "--version"
  end
end
