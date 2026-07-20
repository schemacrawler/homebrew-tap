# Generated with JReleaser 1.26.0-SNAPSHOT at 2026-07-20T16:57:23.1010183Z

class Schemacrawler < Formula
  desc "Free database schema discovery and comprehension tool"
  homepage "https://www.schemacrawler.com/"
  url "https://github.com/schemacrawler/SchemaCrawler-Installers/releases/download/v17.12.2/schemacrawler-17.12.2-bin.zip"
  version "17.12.2"
  sha256 "32151d9155a0b913d15720ae706ffdc662c06bacbbcea8826105eae6201e80b8"
  license "EPL-1.0"

  depends_on "openjdk@17"

  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/schemacrawler.sh" => "schemacrawler"
  end

  test do
    output = shell_output("#{bin}/schemacrawler --version")
    assert_match "17.12.2", output
  end
end
