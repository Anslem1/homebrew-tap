class TransitCli < Formula
  desc "Transit is a versatile command-line interface (CLI) tool designed to streamline the workflow of developers in the terminal."
  homepage "https://github.com/Anslem1/transit-cli"
  license "Apache-2.0"

  # macOS amd64
  url "https://github.com/Anslem1/transit-cli/releases/download/v1.0.1/transit_darwin_amd64.tar.gz"
  sha256 ""
  sha256 "c0899a83487a986ef1db6ac44ae7b31aa7a683a7e5173e10822865825bb8a309"


  # macOS arm64
  url "https://github.com/Anslem1/transit-cli/releases/download/v1.0.1/transit_darwin_arm64.tar.gz"
  sha256 ""
  sha256 "d5904072e138c442d7fd676168ef79d4dcfb9d1379047ea553a7ce1f840f31da"



  # Linux amd64
  url "https://github.com/Anslem1/transit-cli/releases/download/v1.0.1/transit_linux_amd64.tar.gz"
  sha256 ""
  sha256 "d300738281938912f4e43272b90f64d7aaafa240b0596e082ba0dd6683938211"



  # Linux arm64
  url "https://github.com/Anslem1/transit-cli/releases/download/v1.0.1/transit_linux_arm64.tar.gz"
  sha256 ""
  sha256 "a6d310fddfcae256b8a920028ffbe1c82440c634c1d8181bbb297d86dda0e978"


  # Windows amd64
  url "https://github.com/Anslem1/transit-cli/releases/download/v1.0.1/transit_windows_amd64.tar.gz"
  sha256 ""
  sha256 "0ce166c225fe0f51b067cff26fed33b9d29881cfc9201f0fed01416b76e8b358"
  

  # Windows arm64
  url "https://github.com/Anslem1/transit-cli/releases/download/v1.0.1/transit_windows_arm64.tar.gz"
  sha256 ""
  sha256 "2ae3a83d545fc8596f3eae3688bf578062cb38b92eeb8d44c9f4c25c6ea1c674"

  

  def install
    bin.install "transit"
  end

  test do
    system "#{bin}/transit", "--version"
  end
end
