class TransitCli < Formula
  desc "Transit is a versatile command-line interface (CLI) tool designed to streamline the workflow of developers in the terminal."
  homepage "https://github.com/Anslem1/transit-cli"
  license "Apache-2.0"

  # macOS amd64
  url "https://github.com/Anslem1/transit-cli/releases/download/v1.0.1/transit_darwin_amd64.tar.gz"
   sha256 "391a482326c860a2302facd97c368ac47848b35fe1d45e1ca5d607fd244610b7"

  # macOS arm64
  url "https://github.com/Anslem1/transit-cli/releases/download/v1.0.1/transit_darwin_arm64.tar.gz"
   sha256 "3126abf91a66229195f6ce042ad8c352dcbbd32b6303ee12707943426cffbf12"

  # Linux amd64
  url "https://github.com/Anslem1/transit-cli/releases/download/v1.0.1/transit_linux_amd64.tar.gz" sha256 "3e09e88816f2441810f5dcaf2816f05c979ba755305ed80971b8fe6fae8c4027"
  sha256 "3a32adea38286323b90f4d92caa79b15e4594e9f73db7f39b7d4647ccb3a8968"

  # Linux arm64
  url "https://github.com/Anslem1/transit-cli/releases/download/v1.0.1/transit_linux_arm64.tar.gz"
   sha256 "597f1dc170bd08496d6eb1180c01107c0bab9b1af3fb8d8d8abeea7e94f76a9f"
  # Windows amd64
  url "https://github.com/Anslem1/transit-cli/releases/download/v1.0.1/transit_windows_amd64.tar.gz"
   sha256 "8a45fb0237bdc8689f97e18fecfb9761539f2661b32e26c5b3f798e19e0d1aff"

  # Windows arm64
  url "https://github.com/Anslem1/transit-cli/releases/download/v1.0.1/transit_windows_arm64.tar.gz"
   sha256 "9ed32148ffcb24075ef336178d0e52afecba14258a5375e50103437f6a0511ce"
  

  def install
    bin.install "transit"
  end

  test do
    system "#{bin}/transit", "--version"
  end
end
