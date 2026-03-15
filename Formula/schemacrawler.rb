# Generated with JReleaser 1.24.0-SNAPSHOT at 2026-03-15T03:50:15.1893764Z

class Schemacrawler < Formula
  desc "Free database schema discovery and comprehension tool"
  homepage "https://www.schemacrawler.com/"
  url "https://github.com/schemacrawler/SchemaCrawler-Installers/releases/download/v17.8.0/schemacrawler-17.8.0-bin.zip"
  version "17.8.0"
  sha256 "653e676b95910313a1f8496d3b80601d807bc0666a154aa231a754049ffe95e8"
  license "EPL-1.0"

  depends_on "openjdk@17"

  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/schemacrawler.sh" => "schemacrawler"
  end

  test do
    output = shell_output("#{bin}/schemacrawler --version")
    assert_match "17.8.0", output
  end
end
