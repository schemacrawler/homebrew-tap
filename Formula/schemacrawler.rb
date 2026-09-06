# Generated with JReleaser 1.27.0-SNAPSHOT at 2026-09-06T19:48:03.1899952Z

class Schemacrawler < Formula
  desc "Free database schema discovery and comprehension tool"
  homepage "https://www.schemacrawler.com/"
  url "https://github.com/schemacrawler/SchemaCrawler-Installers/releases/download/v17.15.0/schemacrawler-17.15.0-bin.zip"
  version "17.15.0"
  sha256 "e27353a0cbc49e8570a1edbcea42fb19f405991a9e5f2be1277a4853bcef6cbd"
  license "EPL-1.0"

  depends_on "openjdk@17"

  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/schemacrawler.sh" => "schemacrawler"
  end

  test do
    output = shell_output("#{bin}/schemacrawler --version")
    assert_match "17.15.0", output
  end
end
