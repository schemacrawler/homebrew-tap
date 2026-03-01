# Generated with JReleaser 1.24.0-SNAPSHOT at 2026-03-01T02:54:57.8072979Z

class Schemacrawler < Formula
  desc "Free database schema discovery and comprehension tool"
  homepage "https://www.schemacrawler.com/"
  url "https://github.com/schemacrawler/SchemaCrawler-Installers/releases/download/v17.6.3/schemacrawler-17.6.3-bin.zip"
  version "17.6.3"
  sha256 "4b873b98847855b4ca880910c19bd55c8720494bf6fd41ca2db9b238b162b9bd"
  license "EPL-1.0"

  depends_on "openjdk@8"

  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/schemacrawler.sh" => "schemacrawler"
  end

  test do
    output = shell_output("#{bin}/schemacrawler --version")
    assert_match "17.6.3", output
  end
end
