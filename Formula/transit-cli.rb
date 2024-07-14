class TransitCli < Formula
  desc "Transit is a versatile command-line interface (CLI) tool designed to streamline the workflow of developers in the terminal."
  homepage "https://github.com/Anslem1/transit-cli"
  license "Apache-2.0"
  version "1.0.1"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/Anslem1/transit-cli/releases/download/v1.0.1/transit_darwin_amd64.tar.gz"
  sha256 "69959df00bda0b7c89cef9e97e9c5304dc889123a2b8c0e79a46bb57ed972d50"
  sha256 "69959df00bda0b7c89cef9e97e9c5304dc889123a2b8c0e79a46bb57ed972d50"
  sha256 ""
   
  elsif OS.mac? && Hardware::CPU.arm?
    url "https://github.com/Anslem1/transit-cli/releases/download/v1.0.1/transit_darwin_arm64.tar.gz"
  sha256 "9e62caa256fb0ac385a4106242e164890306ba0ebb162219bfa4db4f55fd5c9d"
  sha256 "9e62caa256fb0ac385a4106242e164890306ba0ebb162219bfa4db4f55fd5c9d"
  sha256 ""
  
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/Anslem1/transit-cli/releases/download/v1.0.1/transit_linux_amd64.tar.gz"
  sha256 "f0789f7997a0d5bcc9edc34eb720c4365c74e3059340462009b6843bee87995e"
  sha256 "f0789f7997a0d5bcc9edc34eb720c4365c74e3059340462009b6843bee87995e"
  sha256 ""

  elsif OS.linux? && Hardware::CPU.arm?
    url "https://github.com/Anslem1/transit-cli/releases/download/v1.0.1/transit_linux_arm64.tar.gz"
  sha256 "cf117dea57de30712c6414dd9cab63ca8b842b00ed46b8b77eb08d65dc9f964f"
  sha256 "cf117dea57de30712c6414dd9cab63ca8b842b00ed46b8b77eb08d65dc9f964f"
  sha256 ""

  elsif OS.windows? && Hardware::CPU.intel?
    url "https://github.com/Anslem1/transit-cli/releases/download/v1.0.1/transit_windows_amd64.tar.gz"
    sha256 ""
  elsif OS.windows? && Hardware::CPU.arm?
    url "https://github.com/Anslem1/transit-cli/releases/download/v1.0.1/transit_windows_arm64.tar.gz"
    sha256 ""
  end

  def install
    bin.install "transit"
  end

  test do
    system "#{bin}/transit", "--version"
  end
end
