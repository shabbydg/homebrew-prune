cask "prune" do
  version "0.9.13"
  sha256 "d3d093529b68df17a72c6de120ed5df56e0bb34cfc93fa84f50e0a6d54425a6c"

  url "https://prune.digitalarc.lk/downloads/Prune_#{version}_universal.dmg"
  name "Prune"
  desc "Disk cleaner that knows AI and developer caches by name"
  homepage "https://prune.digitalarc.lk/"

  livecheck do
    url "https://prune.digitalarc.lk/version.json"
    regex(/"version":\s*"(\d+(?:\.\d+)+)"/i)
  end

  depends_on macos: :monterey

  app "prune.app", target: "Prune.app"

  zap trash: [
    "~/Library/Application Support/com.prune.app",
    "~/Library/Caches/com.prune.app",
    "~/Library/Preferences/com.prune.app.plist",
  ]
end
