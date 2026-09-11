# Generated with JReleaser 1.27.0-SNAPSHOT at 2026-09-11T12:56:23.6263025Z

class Schemacrawler < Formula
  desc "Free database schema discovery and comprehension tool"
  homepage "https://www.schemacrawler.com/"
  url "https://github.com/schemacrawler/SchemaCrawler-Installers/releases/download/v17.15.2/schemacrawler-17.15.2-bin.zip"
  version "17.15.2"
  sha256 "09e058b32a47b3c570cebdf8008a73a08706ca0ca2cda24d9abaa4d03008d64a"
  license "EPL-1.0"

  depends_on "openjdk@17"

  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/schemacrawler.sh" => "schemacrawler"
  end

  test do
    output = shell_output("#{bin}/schemacrawler --version")
    assert_match "17.15.2", output
  end
end
