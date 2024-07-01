class YourCli < Formula
  desc "Transit is a versatile command-line interface (CLI) tool designed to streamline the workflow of developers by allowing them to store and execute a series of frequently used terminal commands all at once. This tool is ideal for automating repetitive tasks, thereby saving valuable time and increasing productivity."
  homepage "https://github.com/Anslem1/transit-cli"
  url "https://github.com/Anslem1/transit-cli/releases/download/v1.0.0/transit_Darwin_arm64.tar.gz"
  sha256 "0a8047d0e24a64c1d8bd8c4d78194224af0e9f1cc985cc4057cbf97d1b950961"
 license "Apache-2.0"

  depends_on "go" => :build

  def install
    system "go", "build", *std_go_args
  end

  test do
    system "#{bin}/your_cli", "--version"
  end
end
