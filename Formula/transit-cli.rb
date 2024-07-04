class TransitCli < Formula
  desc "Transit is a versatile command-line interface (CLI) tool designed to streamline the workflow of developers in the terminal."
  homepage "https://github.com/Anslem1/transit-cli"
  license "Apache-2.0"

  # macOS amd64
  url "https://github.com/Anslem1/transit-cli/releases/download/v1.0.1/transit_darwin_amd64.tar.gz" sha256 "e3dbb98520b6dc67f08f1e87d37e5277114768e0f35baf724ed1159501f43696" sha256 "b33851b1dc0fd64b7f04a778951351e382fbfcdb6e2ae98c5e10261b55e85808"
  sha256 "b33851b1dc0fd64b7f04a778951351e382fbfcdb6e2ae98c5e10261b55e85808"

  # macOS arm64
  url "https://github.com/Anslem1/transit-cli/releases/download/v1.0.1/transit_darwin_arm64.tar.gz" sha256 "96f301459acf49d60786e7fbf0ffbd2950f6c96333f3908814c85311982b4527" sha256 "8de858c8cca87205486b2e39b2c5b8e04e6c06b63b2b4fa5740fb2ca4fad1f85"
  sha256 "8de858c8cca87205486b2e39b2c5b8e04e6c06b63b2b4fa5740fb2ca4fad1f85"

  # Linux amd64
  url "https://github.com/Anslem1/transit-cli/releases/download/v1.0.1/transit_linux_amd64.tar.gz" sha256 "4bc7dd7111b3c47c16168d5372b7b02090bd24a13a99a077f043f57e6be60347" sha256 "330ec02daed9230964c3d93e00d400566251ff9212e95bdc78c35883ccaece02"
  sha256 "330ec02daed9230964c3d93e00d400566251ff9212e95bdc78c35883ccaece02"

  # Linux arm64
  url "https://github.com/Anslem1/transit-cli/releases/download/v1.0.1/transit_linux_arm64.tar.gz" sha256 "3fcdb223bd7a81dbad5946699c16b603f1132bb5d4362fe3b4a7e79386ac413e" sha256 "2dbc1fcfe29ec0a3348c900df9b93fdc09a56a9d63cb110ba7eec3c1b358d61e"
  sha256 "2dbc1fcfe29ec0a3348c900df9b93fdc09a56a9d63cb110ba7eec3c1b358d61e"

  # Windows amd64
  url "https://github.com/Anslem1/transit-cli/releases/download/v1.0.1/transit_windows_amd64.tar.gz" sha256 "7cd6ed2af534b463f94d5e0565a53253c251f5bc0a9d7eb17344be6fc7809736" sha256 "c72f9e1eaa7e32911672f14a6151b9cc291be8fd16da8df9bde9e2431166aef7"
  sha256 "c72f9e1eaa7e32911672f14a6151b9cc291be8fd16da8df9bde9e2431166aef7"

  # Windows arm64
  url "https://github.com/Anslem1/transit-cli/releases/download/v1.0.1/transit_windows_arm64.tar.gz" sha256 "643c2186e4ac0ca6c157ede260a2eab9c68d110e37fb3651c02c6ba6ba91b4da" sha256 "e1c0c1a5fab52badc48440efa208459191f094bc38aef4759d13631b2df20f4a"
  sha256 "e1c0c1a5fab52badc48440efa208459191f094bc38aef4759d13631b2df20f4a"

  def install
    bin.install "transit"
  end

  test do
    system "#{bin}/transit", "--version"
  end
end
