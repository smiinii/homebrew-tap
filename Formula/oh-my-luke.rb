class OhMyLuke < Formula
  desc "Local graph runtime for controlled AI coding workflows"
  homepage "https://github.com/smiinii/oh-my-luke"
  url "https://github.com/smiinii/oh-my-luke/archive/refs/tags/v0.1.0-rc.1.tar.gz"
  sha256 "883f012a33d9f9e6d76b9dd1d092b97bb35a90b10b303d594be6e89821b07209"

  on_macos do
    depends_on arch: :arm64
  end

  on_linux do
    depends_on arch: :x86_64
  end

  resource "runtime" do
    on_macos do
      on_arm do
        url "https://github.com/smiinii/oh-my-luke/releases/download/v0.1.0-rc.1/omluke-0.1.0-rc.1-macos-aarch64.tar.gz"
        sha256 "e3b6075df4bd09300047b59d8f47a268f8338879a4a72fa23d1f5904492a85b2"
      end
    end

    on_linux do
      on_intel do
        url "https://github.com/smiinii/oh-my-luke/releases/download/v0.1.0-rc.1/omluke-0.1.0-rc.1-linux-x64.tar.gz"
        sha256 "738d0eefdc5693f58891ac9a6999a7c7b61b929e217bf23584dcc83805a6b264"
      end
    end
  end

  def install
    resource("runtime").stage do
      if OS.mac?
        libexec.install "omluke.app"
        bin.write_exec_script libexec/"omluke.app/Contents/MacOS/omluke"
      else
        libexec.install "omluke"
        bin.write_exec_script libexec/"omluke/bin/omluke"
      end

      libexec.install "VERSION", "PLATFORM"
      pkgshare.install "examples"
    end
  end

  test do
    assert_match "omluke #{version}", shell_output("#{bin}/omluke --version")
    assert_match "Oh My Luke", shell_output("#{bin}/omluke --help")
  end
end
