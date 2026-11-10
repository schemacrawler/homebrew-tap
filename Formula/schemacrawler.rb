# Generated with JReleaser 1.28.0-SNAPSHOT at 2026-11-10T02:27:48.0113994Z

class Schemacrawler < Formula
  desc "Free database schema discovery and comprehension tool"
  homepage "https://www.schemacrawler.com/"
  url "https://github.com/schemacrawler/SchemaCrawler-Installers/releases/download/v18.0.2/schemacrawler-18.0.2-bin.zip"
  version "18.0.2"
  sha256 "9bfe7d6bffb8c9f768cb0e5c275ec975062dc819a850babb0abb41ff2a07a207"
  license "EPL-1.0"

  depends_on "openjdk@17"

  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/schemacrawler.sh" => "schemacrawler"
  end

  test do
    output = shell_output("#{bin}/schemacrawler --version")
    assert_match "18.0.2", output
  end
end
