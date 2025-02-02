cask "qcad" do
  version "3.27.2"

  if Hardware::CPU.intel?
    if MacOS.version <= :high_sierra
      sha256 "589a84168c38bf57435441511b19fa081b622e009719c4be7cc1385b7dc55eeb"
      url "https://www.qcad.org/archives/qcad/qcad-#{version}-trial-macos-10.10-10.13.dmg"

      livecheck do
        url "https://www.qcad.org/en/download"
        regex(/qcad[._-]v?(\d+(?:\.\d+)+)[._-]trial[._-]macos[._-]10\.10[._-]10\.13\.dmg/i)
      end
    else
      sha256 "495bc61b51acde046e14a442576211c34aee6b6f6ca80e057aec892df2a1ca9c"
      url "https://www.qcad.org/archives/qcad/qcad-#{version}-trial-macos-10.14-12.dmg"

      livecheck do
        url "https://www.qcad.org/en/download"
        regex(/qcad[._-]v?(\d+(?:\.\d+)+)[._-]trial[._-]macos[._-]10\.14[._-]12\.dmg/i)
      end
    end
  else
    sha256 "2d535b73678a2504d570b56a37e0e6ec59648b21ea371cfe6d943990a8f3c6aa"
    url "https://www.qcad.org/archives/qcad/qcad-#{version}-trial-macos-11-12-arm64.dmg"

    livecheck do
      url "https://www.qcad.org/en/download"
      regex(/qcad[._-]v?(\d+(?:\.\d+)+)[._-]trial[._-]macos[._-]11[._-]12[._-]arm64\.dmg/i)
    end
  end

  name "QCAD"
  desc "Free, open source application for computer aided drafting in 2D"
  homepage "https://www.qcad.org/"

  app "QCAD.app"
end
