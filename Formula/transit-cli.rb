class TransitCli < Formula
  desc "Transit is a versatile command-line interface (CLI) tool designed to streamline the workflow of developers in the terminal."
  homepage "https://github.com/Anslem1/transit-cli"
  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/Anslem1/transit-cli/releases/download/v1.0.0/transit-cli_v1.0.0_darwin_amd64.tar.gz"
    sha256 "0e195f70491b96228c64f85ba7ff3cd18d2ad9841ac1aa9ddb7db3c534a2da96"
  elsif OS.mac? && Hardware::CPU.arm?
    url "https://github.com/Anslem1/transit-cli/releases/download/v1.0.0/transit-cli_v1.0.0_darwin_arm64.tar.gz"
    sha256 "05673235a1710c9ccc73b9fd6ba5a37f746da760f29c379c921c4d29f9a9f0d9"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/Anslem1/transit-cli/releases/download/v1.0.0/transit-cli_v1.0.0_linux_amd64.tar.gz"
    sha256 "1543a5797ff05f3ab5f7f27964b7f9d3ef19b7aa02f71c99fcc5faa21f6b3064"
  elsif OS.linux? && Hardware::CPU.arm?
    url "https://github.com/Anslem1/transit-cli/releases/download/v1.0.0/transit-cli_v1.0.0_linux_arm64.tar.gz"
    sha256 "d3c3e12ce54c4c7f045e5bade0824eef4c2d0482ff8f462338f1335afc060a40"
  elsif OS.windows? && Hardware::CPU.intel?
    url "https://github.com/Anslem1/transit-cli/releases/download/v1.0.0/transit-cli_v1.0.0_windows_amd64.zip"
    sha256 "f21d25326ecb4e525b790645f76cff819af1376091d9737affe708c01f490e37"
  elsif OS.windows? && Hardware::CPU.arm?
    url "https://github.com/Anslem1/transit-cli/releases/download/v1.0.0/transit-cli_v1.0.0_windows_arm64.zip"
    sha256 "49e72bcfaa98ed16118493d0293ad277917bbc358c4ad208baf14fb429096862"
  end
  def install
    bin.install "transit"
  end
  test do
    system "#{bin}/transit", "--version"
  end
end
