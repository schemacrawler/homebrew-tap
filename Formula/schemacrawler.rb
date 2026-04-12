# Generated with JReleaser 1.24.0-SNAPSHOT at 2026-04-12T15:51:01.8260966Z

class Schemacrawler < Formula
  desc "Free database schema discovery and comprehension tool"
  homepage "https://www.schemacrawler.com/"
  url "https://github.com/schemacrawler/SchemaCrawler-Installers/releases/download/v17.10.1/schemacrawler-17.10.1-bin.zip"
  version "17.10.1"
  sha256 "107a6eed85b5c1d8b7a167f9e487ade6d13ab27e4e121a1633249783e2474b0c"
  license "EPL-1.0"

  depends_on "openjdk@17"

  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/schemacrawler.sh" => "schemacrawler"
  end

  test do
    output = shell_output("#{bin}/schemacrawler --version")
    assert_match "17.10.1", output
  end
end
