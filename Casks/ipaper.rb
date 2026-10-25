cask "ipaper" do
  version "1.0.4"
  sha256 "086bbee90b822a4919b5464f76d7723f0fcb3db280e7496dd202d91e30a2cc81"

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
