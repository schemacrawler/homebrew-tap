# Generated with JReleaser 1.27.0-SNAPSHOT at 2026-09-25T17:51:42.8426766Z

class Schemacrawler < Formula
  desc "Free database schema discovery and comprehension tool"
  homepage "https://www.schemacrawler.com/"
  url "https://github.com/schemacrawler/SchemaCrawler-Installers/releases/download/v17.15.6/schemacrawler-17.15.6-bin.zip"
  version "17.15.6"
  sha256 "0095956a2b6a88d7bcdf696cf713b9151605d8a513221c177af18db60b54a8bb"
  license "EPL-1.0"

  depends_on "openjdk@17"

  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/schemacrawler.sh" => "schemacrawler"
  end

  test do
    output = shell_output("#{bin}/schemacrawler --version")
    assert_match "17.15.6", output
  end
end
