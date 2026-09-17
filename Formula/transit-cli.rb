class TransitCli < Formula
  desc "Transit is an interactive CLI tool designed to streamline developer workflows with sequential and concurrent command execution."
  homepage "https://github.com/Anslem1/transit-cli"
  version "1.1.0"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/Anslem1/transit-cli/releases/download/v1.1.0/transit-cli_v1.1.0_darwin_amd64.tar.gz"
    sha256 "f7508f6677391dc7301994d096840ea6a98febdfb1f89feee4e642e41be67fc8"
  elsif OS.mac? && Hardware::CPU.arm?
    url "https://github.com/Anslem1/transit-cli/releases/download/v1.1.0/transit-cli_v1.1.0_darwin_arm64.tar.gz"
    sha256 "e2d56dd1784e8bc49bc1722324756eeec6d37a824a3cf9bb2863b240cfe59373"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/Anslem1/transit-cli/releases/download/v1.1.0/transit-cli_v1.1.0_linux_amd64.tar.gz"
    sha256 "b4c16a503ce6a34fa269c38d1f14b6cb7b27e3b5a6b3c4c1a115512b961346e3"
  elsif OS.linux? && Hardware::CPU.arm?
    url "https://github.com/Anslem1/transit-cli/releases/download/v1.1.0/transit-cli_v1.1.0_linux_arm64.tar.gz"
    sha256 "5f325f7533ca444747f34a555938891a1d71d71c28261bb74b9ed56ed49159af"
  end

  def install
    bin.install "transit-cli" => "transit"
  end

  test do
    system "#{bin}/transit", "version"
  end
end
