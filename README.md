# 垃圾分類大挑戰（課堂小遊戲）

純靜態網頁（GitHub Pages）＋ Supabase 當即時分數資料庫。

## 設定
1. Supabase 建立專案 → SQL Editor 執行 `supabase.sql`。
2. Project Settings → API，把 Project URL 與 anon public key 填進 `config.js`。
3. GitHub Pages 的 Source 選 `main` / root。
4. 小朋友平板開 `https://<帳號>.github.io/<repo>/`，老師計分板開同一個網址加 `#board`。

沒填 `config.js` 時會自動變成單機模式（老師手動 + / − 記分）。
分數約 2 秒更新一次。
