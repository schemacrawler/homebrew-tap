# Generated with JReleaser 1.25.0-SNAPSHOT at 2026-05-10T06:07:30.6197456Z

class Schemacrawler < Formula
  desc "Free database schema discovery and comprehension tool"
  homepage "https://www.schemacrawler.com/"
  url "https://github.com/schemacrawler/SchemaCrawler-Installers/releases/download/v17.11.1/schemacrawler-17.11.1-bin.zip"
  version "17.11.1"
  sha256 "3309244ba7f9cf14aae3408d7c46ccb1b161eab6626ea511d8fd82c4de01a8b9"
  license "EPL-1.0"

  depends_on "openjdk@17"

  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/schemacrawler.sh" => "schemacrawler"
  end

  test do
    output = shell_output("#{bin}/schemacrawler --version")
    assert_match "17.11.1", output
  end
end
