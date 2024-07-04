class TransitCli < Formula
  desc "Transit is a versatile command-line interface (CLI) tool designed to streamline the workflow of developers."
  homepage "https://github.com/Anslem1/transit-cli"
  
  # Define placeholders for URL and SHA256 (to be populated by GitHub Actions)
  url "https://github.com/Anslem1/transit-cli/releases/download/v1.0.1/transit_windows_arm64.tar.gz"
  sha256 "cc12c3849414147cacbac7cf483f6086e8c3ab6f353d189e7da9eec3f4e9b792"
  
  license "Apache-2.0"
  
  def install
    bin.install "transit"
  end
  
  test do
    assert_match /^v\d+\.\d+\.\d+$/, shell_output("#{bin}/transit --version")
  end

  # Method to update URL and SHA256 based on platform
  def self.update_from_workflow(version, sha256, platform)
    case platform
    when "linux"
      url "https://example.com/transit/transit_linux_amd64.tar.gz"
    when "darwin"
      url "https://example.com/transit/transit_darwin_amd64.tar.gz"
    when "windows"
      url "https://example.com/transit/transit_windows_amd64.zip"
    else
      raise "Unsupported platform: #{platform}"
    end
    
    sha256 "#{sha256}"
  end
end

