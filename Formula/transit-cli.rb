class TransitCli < Formula
  desc "Transit is a versatile command-line interface (CLI) tool designed to streamline the workflow of developers by allowing them to store and execute a series of frequently used terminal commands all at once. This tool is ideal for automating repetitive tasks, thereby saving valuable time and increasing productivity."
  homepage "https://github.com/Anslem1/transit-cli"
  url "https://github.com/Anslem1/transit-cli/releases/download/v1.0.0/transit_Darwin_x86_64.tar.gz"
  sha256 "b60620425e46c86161769264d1125933dcfad13ace308abc8223a1bbb9139f5b"
  license "Apache-2.0"

  def install
    bin.install "transit"
  end

  test do
    system "#{bin}/transit", "--version"
  end
end
