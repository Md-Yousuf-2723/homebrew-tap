cask "ipaper" do
  version "1.0.5"
  sha256 "e69b16c29d136a5010e5af0edcb2b7d3e950bcca27e6e3ed4d9ab89006a286ba"

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
