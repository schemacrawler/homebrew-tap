# Generated with JReleaser 1.27.0-SNAPSHOT at 2026-10-14T12:26:45.168733Z

class Schemacrawler < Formula
  desc "Free database schema discovery and comprehension tool"
  homepage "https://www.schemacrawler.com/"
  url "https://github.com/schemacrawler/SchemaCrawler-Installers/releases/download/v17.16.0/schemacrawler-17.16.0-bin.zip"
  version "17.16.0"
  sha256 "06f4572f4b90c9c3246bc15c99897fcf4ee92bccf73ada168df32502b650e4d9"
  license "EPL-1.0"

  depends_on "openjdk@17"

  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/schemacrawler.sh" => "schemacrawler"
  end

  test do
    output = shell_output("#{bin}/schemacrawler --version")
    assert_match "17.16.0", output
  end
end
