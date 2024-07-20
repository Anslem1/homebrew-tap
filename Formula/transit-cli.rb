class TransitCli < Formula
  desc "Transit is a versatile command-line interface (CLI) tool designed to streamline the workflow of developers in the terminal."
  homepage "https://github.com/Anslem1/transit-cli"
  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/Anslem1/transit-cli/releases/download/v1.0.0/transit-cli_v1.0.0_darwin_amd64.tar.gz"
    sha256 "c9bde99de538de2c6a325374cf431b2b17f70db6a5137171fe93c8ec534cc131"
  elsif OS.mac? && Hardware::CPU.arm?
    url "https://github.com/Anslem1/transit-cli/releases/download/v1.0.0/transit-cli_v1.0.0_darwin_arm64.tar.gz"
    sha256 "92d5ed2e65ce1fa2470d5c915f3c352e1ae5d6ef9b7fe1598fbd44a13db86903"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/Anslem1/transit-cli/releases/download/v1.0.0/transit-cli_v1.0.0_linux_amd64.tar.gz"
    sha256 "dea128f964ae0a67e438a66bdbf925100434c58e0915a1490d7e7abc09c5da4e"
  elsif OS.linux? && Hardware::CPU.arm?
    url "https://github.com/Anslem1/transit-cli/releases/download/v1.0.0/transit-cli_v1.0.0_linux_arm64.tar.gz"
    sha256 "9f08bc70814211710c0b7dde4351656f30ee30ae5df99d5bed1377e320b44b3e"
  elsif OS.windows? && Hardware::CPU.intel?
    url "https://github.com/Anslem1/transit-cli/releases/download/v1.0.0/transit-cli_v1.0.0_windows_amd64.zip"
    sha256 "b53d99fa2dd42a42580f3f1e8962db116d1e2a179954ae4271c89c40060e9d81"
  elsif OS.windows? && Hardware::CPU.arm?
    url "https://github.com/Anslem1/transit-cli/releases/download/v1.0.0/transit-cli_v1.0.0_windows_arm64.zip"
    sha256 "513c9f1dc84bcb95c4a2fc7a17ac5ede2617bcdb4c79d756a3956bd81f3c01f8"
  end
  def install
    bin.install "transit-cli" => "transit"
  end
  test do
    system "#{bin}/transit", "--version"
  end
end
