cask "ipaper" do
  version "1.0.0"
  sha256 "5d419a47b23789cb44c9656e0c09ed7476a901297dc32d69c3af8a3f1f19b7b1"

  url "https://github.com/Md-Yousuf-2723/iPaper/releases/download/v#{version}/iPaper-v#{version}-macOS.zip"
  name "iPaper"
  desc "Production-quality native macOS live video wallpaper application"
  homepage "https://github.com/Md-Yousuf-2723/iPaper"

  depends_on macos: :sonoma

  app "iPaper.app"

  zap trash: [
    "~/Library/Preferences/com.yousuf.iPaper.plist",
    "~/Library/Saved Application State/com.yousuf.iPaper.savedState",
  ]
end
