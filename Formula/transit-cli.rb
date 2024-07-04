class TransitCli < Formula
  desc "Transit is a versatile command-line interface (CLI) tool designed to streamline the workflow of developers."
  homepage "https://github.com/Anslem1/transit-cli"
  
  # Define placeholders for URL and SHA256 (to be populated by GitHub Actions)
  url "https://github.com/Anslem1/transit-cli/releases/download/v1.0.1/transit_windows_arm64.tar.gz"
  sha256 "6c88a052d129df6f2a7a44f5efc8fbc617ebb90e60e784ed21986e3307a3db6d"
  
  # License of the software
  license "Apache-2.0"
  
  # Specify installation steps
  def install
    # Install the transit binary into the 'bin' directory
    bin.install "transit"
  end
  
  # Test block to verify installation
  test do
    # Run transit with the ersion flag command and check for output
    assert_match /^v\d+\.\d+\.\d+$/, shell_output("#{bin}/transit --version")
  end
  
  # Specify bottle block if needed for bottle creation
  # bottle do
  #   root_url "https://github.com/Anslem1/transit-cli/releases/download/#{version}"
  #   cellar :any_skip_relocation
  #   sha256 "#{sha256}" => :catalina
  # end
  
  # Define a method to update URL and SHA256 based on platform
  def update_from_workflow(version, sha256, platform)
    case platform
    when "linux"
      self.class.url "https://github.com/Anslem1/transit-cli/releases/download/#{version}/transit_Linux_x86_64.tar.gz"
    when "darwin"
      self.class.url "https://github.com/Anslem1/transit-cli/releases/download/#{version}/transit_Darwin_x86_64.tar.gz"
    when "windows"
      self.class.url "https://github.com/Anslem1/transit-cli/releases/download/#{version}/transit_Windows_x86_64.zip"
    else
      raise "Unsupported platform: #{platform}"
    end
    
    self.class.sha256 "#{sha256}"
  end
end

# Call the `update_from_workflow` method with values from GitHub Actions
TransitCli.new.update_from_workflow(ENV['VERSION'], ENV['SHA256'], ENV['PLATFORM'])
