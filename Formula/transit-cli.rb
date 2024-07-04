class TransitCli < Formula
  desc "Transit is a versatile command-line interface (CLI) tool designed to streamline the workflow of developers."
  homepage "https://github.com/Anslem1/transit-cli"
  
  # Update the URL and SHA256 to the latest release
  url "https://github.com/Anslem1/transit-cli/releases/download/v1.2.3/transit_Darwin_x86_64.tar.gz"
  sha256 "0123456789abcdef0123456789abcdef0123456789abcdef0123456789abcdef"
  
  # License of the software
  license "Apache-2.0"
  
  # Specify installation steps
  def install
    # Install the transit binary into the 'bin' directory
    bin.install "transit"
  end
  
  # Test block to verify installation
  test do
    # Run transit with the version flag and check for output
    assert_match /^v\d+\.\d+\.\d+$/, shell_output("#{bin}/transit version")
  end
  
  # Specify bottle block if needed for bottle creation
  # bottle do
  #   root_url "https://github.com/Anslem1/transit-cli/releases/download/v1.2.3"
  #   cellar :any_skip_relocation
  #   sha256 "0123456789abcdef0123456789abcdef0123456789abcdef0123456789abcdef" => :catalina
  # end
end
