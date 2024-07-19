class TransitCli < Formula
  desc "Transit is a versatile command-line interface (CLI) tool designed to streamline the workflow of developers in the terminal."
  homepage "https://github.com/Anslem1/transit-cli"
  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/Anslem1/transit-cli/releases/download/v1.0.0/transit-cli_v1.0.0_darwin_amd64.tar.gz"
    sha256 "577c302e6e9226d29e60fedce64aa4f122ef5e3ad4fff4624ed0a668ab0ee51c"
  elsif OS.mac? && Hardware::CPU.arm?
    url "https://github.com/Anslem1/transit-cli/releases/download/v1.0.0/transit-cli_v1.0.0_darwin_arm64.tar.gz"
    sha256 "f704f68faacd35fafca239ea13f68f3aa584e71ab5c8e5eaf822d6a533a8d69a"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/Anslem1/transit-cli/releases/download/v1.0.0/transit-cli_v1.0.0_linux_amd64.tar.gz"
    sha256 "a635ae220b9b5aae23871bfe2196f916c72e684c3a0f4de07cbc4b13654e13a0"
  elsif OS.linux? && Hardware::CPU.arm?
    url "https://github.com/Anslem1/transit-cli/releases/download/v1.0.0/transit-cli_v1.0.0_linux_arm64.tar.gz"
    sha256 "456661ba274ef8c88891aca1794efebda6697f6f479fcb4ae2ff943852089e14"
  elsif OS.windows? && Hardware::CPU.intel?
    url "https://github.com/Anslem1/transit-cli/releases/download/v1.0.0/transit-cli_v1.0.0_windows_amd64.zip"
    sha256 "20254033ab440eed481642d8ce45d166e4e6bfeb58f3941921b458811c5e33bb"
  elsif OS.windows? && Hardware::CPU.arm?
    url "https://github.com/Anslem1/transit-cli/releases/download/v1.0.0/transit-cli_v1.0.0_windows_arm64.zip"
    sha256 "e354e1a91c43d9d9b2e2bcc7ee1add49e31df543fba6dc27bb57492f6c5eda31"
  end
  def install
    bin.install "transit"
  end
  test do
    system "#{bin}/transit", "--version"
  end
end
