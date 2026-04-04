# Generated with JReleaser 1.24.0-SNAPSHOT at 2026-04-04T15:30:07.6223914Z

class Schemacrawler < Formula
  desc "Free database schema discovery and comprehension tool"
  homepage "https://www.schemacrawler.com/"
  url "https://github.com/schemacrawler/SchemaCrawler-Installers/releases/download/v17.10.0/schemacrawler-17.10.0-bin.zip"
  version "17.10.0"
  sha256 "3e07a6d7a75455ac9f922a0997887e129d09eed2e4dc1bd4433fb0b3af282e47"
  license "EPL-1.0"

  depends_on "openjdk@17"

  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/schemacrawler.sh" => "schemacrawler"
  end

  test do
    output = shell_output("#{bin}/schemacrawler --version")
    assert_match "17.10.0", output
  end
end
