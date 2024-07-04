class TransitCli < Formula
  desc "Transit is a versatile command-line interface (CLI) tool designed to streamline the workflow of developers in the terminal."
  homepage "https://github.com/Anslem1/transit-cli"
  license "Apache-2.0"

  # Define separate blocks for each platform

  # macOS amd64
  url "https://github.com/Anslem1/transit-cli/releases/download/v1.0.1/transit_darwin_amd64.tar.gz"
  sha256 "b33851b1dc0fd64b7f04a778951351e382fbfcdb6e2ae98c5e10261b55e85808"

  # macOS arm64
  url "https://github.com/Anslem1/transit-cli/releases/download/v1.0.1/transit_darwin_arm64.tar.gz"
  sha256 "8de858c8cca87205486b2e39b2c5b8e04e6c06b63b2b4fa5740fb2ca4fad1f85"

  # Linux amd64
  url "https://github.com/Anslem1/transit-cli/releases/download/v1.0.1/transit_linux_amd64.tar.gz"
  sha256 "330ec02daed9230964c3d93e00d400566251ff9212e95bdc78c35883ccaece02"

  # Linux arm64
  url "https://github.com/Anslem1/transit-cli/releases/download/v1.0.1/transit_linux_arm64.tar.gz"
  sha256 "2dbc1fcfe29ec0a3348c900df9b93fdc09a56a9d63cb110ba7eec3c1b358d61e"

  # Windows amd64
  url "https://github.com/Anslem1/transit-cli/releases/download/v1.0.1/transit_windows_amd64.tar.gz"
  sha256 "c72f9e1eaa7e32911672f14a6151b9cc291be8fd16da8df9bde9e2431166aef7"

  # Windows arm64
  url "https://github.com/Anslem1/transit-cli/releases/download/v1.0.1/transit_windows_arm64.tar.gz"
  sha256 "e1c0c1a5fab52badc48440efa208459191f094bc38aef4759d13631b2df20f4a"

  def install
    bin.install "transit"
  end

  test do
    system "#{bin}/transit", "--version"
  end
end
