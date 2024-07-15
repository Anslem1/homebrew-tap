class TransitCli < Formula
  desc "Transit is a versatile command-line interface (CLI) tool designed to streamline the workflow of developers in the terminal."
  homepage "https://github.com/Anslem1/transit-cli"
  license "Apache-2.0"
  version "1.0.1"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/Anslem1/transit-cli/releases/download/v1.0.1/transit_darwin_amd64.tar.gz"
  sha256 "8a2d777b91569a2823452dbe06e6098f055bb0afff22fc7149b816cd7102e439"
  sha256 "9ed56cadc72a3015e4d4e8ac8dd5132bdd346ed1c9b8fd1f071ea26ac339f5aa"

   
  elsif OS.mac? && Hardware::CPU.arm?
    url "https://github.com/Anslem1/transit-cli/releases/download/v1.0.1/transit_darwin_arm64.tar.gz"
  sha256 "ebbb28b227bd63676bc1c12d2d0669ea57da71c33e543128d1e8abfc42abaf4c"
  sha256 "58c5d7db5fa3fd651f39eac3b45cd82562c56aaffc66e4ed89fafa61eb3ff467"

  
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/Anslem1/transit-cli/releases/download/v1.0.1/transit_linux_amd64.tar.gz"
  sha256 "7030fd5af5f25d43b237c08ee19cfb3200b22ee9df28282d5c62d002760e3105"
  sha256 "4474c92bd4de34c895a94bc701aa2a8d5a1390bc5a20fbb7de387bbd0bfeee26"
  

  elsif OS.linux? && Hardware::CPU.arm?
    url "https://github.com/Anslem1/transit-cli/releases/download/v1.0.1/transit_linux_arm64.tar.gz"
  sha256 "62ced0c80aa6c405e24da191e30324467dc0cd61295c5912eb453d3771743ded"
  sha256 "e3046ebd0ad7f902a879daa671aac9b46712416d343cc742ab592828faf26205"
  

  elsif OS.windows? && Hardware::CPU.intel?
    url "https://github.com/Anslem1/transit-cli/releases/download/v1.0.1/transit_windows_amd64.tar.gz"
  sha256 "4c5c44800f95a193d4146dea39e465326a320582dc837eb657b6fd567a07635e"

  elsif OS.windows? && Hardware::CPU.arm?
    url "https://github.com/Anslem1/transit-cli/releases/download/v1.0.1/transit_windows_arm64.tar.gz"
sha256 "242c99c4825b613aeb64acbbc5790580aaa2a70047b3e332abd98ee68b1e8cca"
 
  end

  def install
    bin.install "transit"
  end

  test do
    system "#{bin}/transit", "--version"
  end
end
