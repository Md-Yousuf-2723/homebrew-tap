cask "viddownloader" do
  version "1.0.0"
  sha256 "29b50d3dc36112728bebc8ada8819522ecf8b92fe2acf591a1154c58dcb9928a"

  url "https://github.com/Md-Yousuf-2723/vidDownloader/releases/download/v#{version}/vidDownloader-mac.zip"
  name "vidDownloader"
  desc "Professional dark-themed video downloader"
  homepage "https://github.com/Md-Yousuf-2723/vidDownloader"

  app "vidDownloader.app"

  zap trash: [
    "~/Library/Saved Application State/com.viddownloader.app.savedState",
    "~/Library/Preferences/com.viddownloader.app.plist",
  ]
end
