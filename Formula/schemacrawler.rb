# Generated with JReleaser 1.25.0-SNAPSHOT at 2026-05-04T03:13:12.9895401Z

class Schemacrawler < Formula
  desc "Free database schema discovery and comprehension tool"
  homepage "https://www.schemacrawler.com/"
  url "https://github.com/schemacrawler/SchemaCrawler-Installers/releases/download/v17.11.0/schemacrawler-17.11.0-bin.zip"
  version "17.11.0"
  sha256 "c319a81e56b1f08434f789b9e2eb59434c488ae3e658dd5215c82cdcbed0db46"
  license "EPL-1.0"

  depends_on "openjdk@17"

  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/schemacrawler.sh" => "schemacrawler"
  end

  test do
    output = shell_output("#{bin}/schemacrawler --version")
    assert_match "17.11.0", output
  end
end
