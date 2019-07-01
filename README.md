# hoshi-controller

### development flow
1. Quartus プロジェクトのビルド
    1. QsysでIPコアを生成
    2. Quartus Projectのビルド 
2. NIOSプロジェクトのビルド
3. DeviceTreeBlobの作成
    1. soc_system.sopcinfoからdtsファイルを生成
    2. dtsファイルを編集
    3. dtsファイルをdtbファイルに変換
4. YoctoでLinuxイメージの生成
5. LinuxのイメージをSDCardに書き出す
6. SDcardにdtsファイルを保存
