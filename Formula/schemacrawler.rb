# Generated with JReleaser 1.26.0-SNAPSHOT at 2026-08-25T01:45:25.2197021Z

class Schemacrawler < Formula
  desc "Free database schema discovery and comprehension tool"
  homepage "https://www.schemacrawler.com/"
  url "https://github.com/schemacrawler/SchemaCrawler-Installers/releases/download/v17.14.1/schemacrawler-17.14.1-bin.zip"
  version "17.14.1"
  sha256 "0a716b44a7beb7e06f0b34d044b41e5cd03f5214d7ee6cd308a273bb995e71f0"
  license "EPL-1.0"

  depends_on "openjdk@17"

  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/schemacrawler.sh" => "schemacrawler"
  end

  test do
    output = shell_output("#{bin}/schemacrawler --version")
    assert_match "17.14.1", output
  end
end
