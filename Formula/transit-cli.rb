class TransitCli < Formula
<<<<<<< HEAD
  desc "Transit is a versatile command-line interface (CLI) tool designed to streamline the workflow of developers by allowing them to store and execute a series of frequently used terminal commands all at once. This tool is ideal for automating repetitive tasks, thereby saving valuable time and increasing productivity."
  homepage "https://github.com/Anslem1/transit-cli"

  # macOS binaries
  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/Anslem1/transit-cli/releases/download/v1.0.0/transit_Darwin_arm64.tar.gz"
      sha256 "0a8047d0e24a64c1d8bd8c4d78194224af0e9f1cc985cc4057cbf97d1b950961"
    else
      url "https://github.com/Anslem1/transit-cli/releases/download/v1.0.0/transit_Darwin_x86_64.tar.gz"
      sha256 "b60620425e46c86161769264d1125933dcfad13ace308abc8223a1bbb9139f5b"
    end

  # Linux binaries
  elsif OS.linux?
    if Hardware::CPU.arm?
      url "https://github.com/Anslem1/transit-cli/releases/download/v1.0.0/transit_Linux_arm64.tar.gz"
      sha256 "538696ade6fab30cc966012036dee01a990c281b040242d5cfbc87ef9752f493"
    elsif
      url "https://github.com/Anslem1/transit-cli/releases/download/v1.0.0/transit_Linux_x86_64.tar.gz"
      sha256 "37e80f7bcbffeb6e7834e2027a878b35d6f377ab23cc085d3c2859b5d9462630"
    else 
        url "https://github.com/Anslem1/transit-cli/releases/download/v1.0.0/transit_Linux_i386.tar.gz"
        sha256       "d560ac39e69969dc6bdb296c521883f167566afbd5a4e1d6843b0bfc3ed97197"
    end

  # Windows binaries (example)
  elsif OS.windows?
    url "https://github.com/Anslem1/transit-cli/releases/download/v1.0.0/transit_Windows_x86_64.zip"
    sha256 "bb73d057b99ca0ccaa79d4f2aa99a8512716b0345fc8644e2e5937265e2969f7"
  end

  license "Apache-2.0"

  def install
    if OS.mac? || OS.linux?
      bin.install "transit"
    elsif OS.windows?
      # Example: Unzip and install on Windows
      system "unzip", "transit_Windows_x86_64.zip"
      bin.install "transit.exe"
    end
=======
  desc "Transit is a versatile command-line interface (CLI) tool designed to streamline the workflow of developers."
  homepage "https://github.com/Anslem1/transit-cli"
  
  # Define placeholders for URL and SHA256 (to be populated by GitHub Actions)
  url ""
  sha256 ""
  
  # License of the software
  license "Apache-2.0"
  
  # Specify installation steps
  def install
    # Install the transit binary into the 'bin' directory
    bin.install "transit"
>>>>>>> 79d0c0d (updated brew file)
  end
  
  # Test block to verify installation
  test do
<<<<<<< HEAD
<<<<<<< HEAD
    system "#{bin}/transit", "--version"
=======
    # Run transit with the version cmd and check for output
    assert_match /^v\d+\.\d+\.\d+$/, shell_output("#{bin}/transit version")
>>>>>>> 79d0c0d (updated brew file)
=======
    # Run transit with the ersion flag command and check for output
    assert_match /^v\d+\.\d+\.\d+$/, shell_output("#{bin}/transit --version")
>>>>>>> 743b3bc (updated brew file)
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
