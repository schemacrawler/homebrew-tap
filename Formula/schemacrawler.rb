# Generated with JReleaser 1.28.0-SNAPSHOT at 2026-11-17T23:07:42.6220655Z

class Schemacrawler < Formula
  desc "Free database schema discovery and comprehension tool"
  homepage "https://www.schemacrawler.com/"
  url "https://github.com/schemacrawler/SchemaCrawler-Installers/releases/download/v18.0.3/schemacrawler-18.0.3-bin.zip"
  version "18.0.3"
  sha256 "4543e93ebe13b1ea335f3df51a9c70b7d224a3887c67cb3115804ffc6a749e7b"
  license "EPL-1.0"

  depends_on "openjdk@17"

  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/schemacrawler.sh" => "schemacrawler"
  end

  test do
    output = shell_output("#{bin}/schemacrawler --version")
    assert_match "18.0.3", output
  end
end
