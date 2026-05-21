class TiresiasCli < Formula
  desc "Interactive Tiresias firmware development environment helper"
  homepage "https://github.com/felipepimentab/tiresias-cli"
  version "0.1.6"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/felipepimentab/tiresias-cli/releases/download/v0.1.6/tiresias-macos"
      sha256 "5771e0972a37e744867c7474f6bc2da9a053f1b528085386d0d9475a98219056"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/felipepimentab/tiresias-cli/releases/download/v0.1.6/tiresias-linux"
      sha256 "611d33ddb8f9741472d00bef482cdb7c1c9924dc8d177ff79d3c1da30cc1f973"
    end
  end

  def install
    if OS.mac?
      bin.install "tiresias-macos" => "tiresias"
    elsif OS.linux?
      bin.install "tiresias-linux" => "tiresias"
    end
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/tiresias --version")
    assert_match "Interactive Tiresias firmware development environment helper", shell_output("#{bin}/tiresias --help")
  end
end
