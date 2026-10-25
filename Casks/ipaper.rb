cask "ipaper" do
  version "1.0.3"
  sha256 "b8c35beb582bfc1344808915d80fe6ea3ab453990a96b36a4b4c0aa816e97391"

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
