cask "ipaper" do
  version "1.0.2"
  sha256 "4365364d498864138946848ecea012390220188d24fa14f3f9d1272191481a0a"

  url "https://github.com/Md-Yousuf-2723/iPaper/releases/download/v#{version}/iPaper-v#{version}-macOS.zip"
  name "iPaper"
  desc "Production-quality native macOS live video wallpaper application"
  homepage "https://github.com/Md-Yousuf-2723/iPaper"

  depends_on macos: :sonoma

  app "iPaper.app"

  zap trash: [
    "~/Library/Application Support/iPaper",
    "~/Library/Caches/com.yousuf.iPaper",
    "~/Library/HTTPStorages/com.yousuf.iPaper",
    "~/Library/Preferences/com.yousuf.iPaper.plist",
    "~/Library/Saved Application State/com.yousuf.iPaper.savedState",
  ]
end
