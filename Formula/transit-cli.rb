class TransitCli < Formula
  desc "Transit is a versatile command-line interface (CLI) tool designed to streamline the workflow of developers in the terminal."
  homepage "https://github.com/Anslem1/transit-cli"
  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/Anslem1/transit-cli/releases/download/v1.0.0/transit-cli_v1.0.0_darwin_amd64.tar.gz"
    sha256 "fa09aa55de1da63490653e3028c5c1edce0de1520a59cd837af363399c499f5a"
  elsif OS.mac? && Hardware::CPU.arm?
    url "https://github.com/Anslem1/transit-cli/releases/download/v1.0.0/transit-cli_v1.0.0_darwin_arm64.tar.gz"
    sha256 "0aff963987b7baebaac24f1fbe8aad1654141aec555f7d9f114066b9c50ea257"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/Anslem1/transit-cli/releases/download/v1.0.0/transit-cli_v1.0.0_linux_amd64.tar.gz"
    sha256 "8711e3ee737e3f80f071f373388e76d5b4fa2fbd5b8101e149167076726a9cf1"
  elsif OS.linux? && Hardware::CPU.arm?
    url "https://github.com/Anslem1/transit-cli/releases/download/v1.0.0/transit-cli_v1.0.0_linux_arm64.tar.gz"
    sha256 "b7c2066e6a7a37d51790baf51624ee70615cf1b08f4cfcd506e3e2b0c3c7c5ca"
  elsif OS.windows? && Hardware::CPU.intel?
    url "https://github.com/Anslem1/transit-cli/releases/download/v1.0.0/transit-cli_v1.0.0_windows_amd64.zip"
    sha256 "424fd2092a8c01c3ec062d23d71dfb66038b97227850d09eabca4f1e50ad9cf8"
  elsif OS.windows? && Hardware::CPU.arm?
    url "https://github.com/Anslem1/transit-cli/releases/download/v1.0.0/transit-cli_v1.0.0_windows_arm64.zip"
    sha256 "c4d31d727df62b8f5fd51f1ccc332b7b731b2641b2d0fad63c04953921337036"
  end
  def install
    bin.install "transit-cli"
  end
  test do
    system "#{bin}/transit", "--version"
  end
end
