cask "prune" do
  version "0.9.14"
  sha256 "bb2a166ff0354265c97c91fbe2fdc9b7d08608dbfa511ee072f905ac06087a07"

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
