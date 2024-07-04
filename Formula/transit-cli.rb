class TransitCli < Formula
  desc "Transit is a versatile command-line interface (CLI) tool designed to streamline the workflow of developers in the terminal."
  homepage "https://github.com/Anslem1/transit-cli"
  url "https://github.com/Anslem1/transit-cli/releases/download/v1.0.1/transit_darwin_amd64.tar.gz"
  sha256 "53de625ca2ad2bb67a32bae518a179c96ed83529f793bcd2e7507a4fe9e7f140"

  url "https://github.com/Anslem1/transit-cli/releases/download/v1.0.1/transit_darwin_arm64.tar.gz"
  sha256 "53de625ca2ad2bb67a32bae518a179c96ed83529f793bcd2e7507a4fe9e7f140"

  url "https://github.com/Anslem1/transit-cli/releases/download/v1.0.1/transit_linux_amd64.tar.gz"
  sha256 "53de625ca2ad2bb67a32bae518a179c96ed83529f793bcd2e7507a4fe9e7f140"

  url "https://github.com/Anslem1/transit-cli/releases/download/v1.0.1/transit_linux_arm64.tar.gz"
  sha256 "53de625ca2ad2bb67a32bae518a179c96ed83529f793bcd2e7507a4fe9e7f140"

  url "https://github.com/Anslem1/transit-cli/releases/download/v1.0.1/transit_windows_amd64.tar.gz"
  sha256 "53de625ca2ad2bb67a32bae518a179c96ed83529f793bcd2e7507a4fe9e7f140"

  url "https://github.com/Anslem1/transit-cli/releases/download/v1.0.1/transit_windows_arm64.tar.gz"
  sha256 "53de625ca2ad2bb67a32bae518a179c96ed83529f793bcd2e7507a4fe9e7f140"

  license "Apache-2.0"

  def install
    bin.install "transit"
  end

  test do
    system "#{bin}/transit", "--version"
  end
end
