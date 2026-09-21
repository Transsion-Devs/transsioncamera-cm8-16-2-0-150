.class public final Lcom/ss/android/ugc/cut_downloader_simple/AndroidDownloadService$contentObserver$1;
.super Landroid/database/ContentObserver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ss/android/ugc/cut_downloader_simple/AndroidDownloadService;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ss/android/ugc/cut_downloader_simple/AndroidDownloadService;


# direct methods
.method constructor <init>(Lcom/ss/android/ugc/cut_downloader_simple/AndroidDownloadService;Landroid/os/Handler;)V
    .registers 3

    iput-object p1, p0, Lcom/ss/android/ugc/cut_downloader_simple/AndroidDownloadService$contentObserver$1;->this$0:Lcom/ss/android/ugc/cut_downloader_simple/AndroidDownloadService;

    .line 39
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .registers 13

    .line 42
    const-string p1, "running : progress="

    const-string v0, "CUT_PREPARE_DOWNLOAD"

    iget-object v1, p0, Lcom/ss/android/ugc/cut_downloader_simple/AndroidDownloadService$contentObserver$1;->this$0:Lcom/ss/android/ugc/cut_downloader_simple/AndroidDownloadService;

    # getter for: Lcom/ss/android/ugc/cut_downloader_simple/AndroidDownloadService;->pendingDownloadInfo:Ljava/util/List;
    invoke-static {v1}, Lcom/ss/android/ugc/cut_downloader_simple/AndroidDownloadService;->access$getPendingDownloadInfo$p(Lcom/ss/android/ugc/cut_downloader_simple/AndroidDownloadService;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 43
    :goto_e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_30b

    .line 44
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ss/android/ugc/cut_downloader_simple/DownloadInfo;

    .line 46
    new-instance v3, Landroid/app/DownloadManager$Query;

    invoke-direct {v3}, Landroid/app/DownloadManager$Query;-><init>()V

    invoke-virtual {v2}, Lcom/ss/android/ugc/cut_downloader_simple/DownloadInfo;->getDownloadId()J

    move-result-wide v4

    const/4 v6, 0x1

    new-array v7, v6, [J

    const/4 v8, 0x0

    aput-wide v4, v7, v8

    invoke-virtual {v3, v7}, Landroid/app/DownloadManager$Query;->setFilterById([J)Landroid/app/DownloadManager$Query;

    move-result-object v3

    const/4 v4, 0x0

    .line 49
    :try_start_2e
    iget-object v5, p0, Lcom/ss/android/ugc/cut_downloader_simple/AndroidDownloadService$contentObserver$1;->this$0:Lcom/ss/android/ugc/cut_downloader_simple/AndroidDownloadService;

    # getter for: Lcom/ss/android/ugc/cut_downloader_simple/AndroidDownloadService;->downloadManager:Landroid/app/DownloadManager;
    invoke-static {v5}, Lcom/ss/android/ugc/cut_downloader_simple/AndroidDownloadService;->access$getDownloadManager$p(Lcom/ss/android/ugc/cut_downloader_simple/AndroidDownloadService;)Landroid/app/DownloadManager;

    move-result-object v5

    if-nez v5, :cond_43

    const-string v5, "downloadManager"

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v5, v4

    goto :goto_43

    :catchall_3d
    move-exception p0

    goto/16 :goto_304

    :catch_40
    move-exception v2

    goto/16 :goto_2f3

    :cond_43
    :goto_43
    invoke-virtual {v5, v3}, Landroid/app/DownloadManager;->query(Landroid/app/DownloadManager$Query;)Landroid/database/Cursor;

    move-result-object v4

    if-eqz v4, :cond_2ea

    .line 50
    invoke-interface {v4}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_2ea

    .line 51
    invoke-virtual {v2}, Lcom/ss/android/ugc/cut_downloader_simple/DownloadInfo;->getDownloadStatus()I

    move-result v3

    .line 53
    const-string v5, "status"

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    .line 52
    invoke-virtual {v2, v5}, Lcom/ss/android/ugc/cut_downloader_simple/DownloadInfo;->setDownloadStatus(I)V

    .line 57
    const-string v5, "downloadStatus : info.downloadStatus="

    invoke-virtual {v2}, Lcom/ss/android/ugc/cut_downloader_simple/DownloadInfo;->getDownloadStatus()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {v5, v7}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 55
    invoke-static {v0, v5}, Lcom/ss/android/ugc/cut_log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    invoke-virtual {v2}, Lcom/ss/android/ugc/cut_downloader_simple/DownloadInfo;->getDownloadStatus()I

    move-result v5

    const/4 v7, 0x2

    if-eq v5, v7, :cond_7e

    invoke-virtual {v2}, Lcom/ss/android/ugc/cut_downloader_simple/DownloadInfo;->getDownloadStatus()I

    move-result v5

    if-eq v3, v5, :cond_2ea

    .line 60
    :cond_7e
    invoke-virtual {v2}, Lcom/ss/android/ugc/cut_downloader_simple/DownloadInfo;->getDownloadStatus()I

    move-result v3
    :try_end_82
    .catch Ljava/lang/Exception; {:try_start_2e .. :try_end_82} :catch_40
    .catchall {:try_start_2e .. :try_end_82} :catchall_3d

    const-string v5, ", url="

    if-eq v3, v6, :cond_2c8

    if-eq v3, v7, :cond_1ff

    const/4 v6, 0x4

    if-eq v3, v6, :cond_1c1

    const/16 v6, 0x8

    if-eq v3, v6, :cond_11d

    const/16 v6, 0x10

    const-string v7, ", id="

    if-eq v3, v6, :cond_cc

    .line 146
    :try_start_95
    iget-object v3, p0, Lcom/ss/android/ugc/cut_downloader_simple/AndroidDownloadService$contentObserver$1;->this$0:Lcom/ss/android/ugc/cut_downloader_simple/AndroidDownloadService;

    invoke-virtual {v2}, Lcom/ss/android/ugc/cut_downloader_simple/DownloadInfo;->getUrl()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Lcom/ss/android/ugc/cut_downloader_simple/AndroidDownloadService;->cancel(Ljava/lang/String;)V

    .line 149
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "unknown : status="

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/ss/android/ugc/cut_downloader_simple/DownloadInfo;->getDownloadStatus()I

    move-result v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/ss/android/ugc/cut_downloader_simple/DownloadInfo;->getDownloadId()J

    move-result-wide v6

    invoke-virtual {v3, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/ss/android/ugc/cut_downloader_simple/DownloadInfo;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 147
    invoke-static {v0, v2}, Lcom/ss/android/ugc/cut_log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2ea

    .line 96
    :cond_cc
    const-string v3, "reason"

    invoke-interface {v4, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v4, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    .line 99
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "failed : error="

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/ss/android/ugc/cut_downloader_simple/DownloadInfo;->getDownloadId()J

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/ss/android/ugc/cut_downloader_simple/DownloadInfo;->getUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 97
    invoke-static {v0, v3}, Lcom/ss/android/ugc/cut_log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    iget-object v3, p0, Lcom/ss/android/ugc/cut_downloader_simple/AndroidDownloadService$contentObserver$1;->this$0:Lcom/ss/android/ugc/cut_downloader_simple/AndroidDownloadService;

    # getter for: Lcom/ss/android/ugc/cut_downloader_simple/AndroidDownloadService;->progressMap:Ljava/util/Map;
    invoke-static {v3}, Lcom/ss/android/ugc/cut_downloader_simple/AndroidDownloadService;->access$getProgressMap$p(Lcom/ss/android/ugc/cut_downloader_simple/AndroidDownloadService;)Ljava/util/Map;

    move-result-object v3

    invoke-virtual {v2}, Lcom/ss/android/ugc/cut_downloader_simple/DownloadInfo;->getUrl()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    invoke-virtual {v2}, Lcom/ss/android/ugc/cut_downloader_simple/DownloadInfo;->getCallback()Lcom/ss/android/ugc/cut_downloader/AbsDownloadService$Callback;

    move-result-object v3

    invoke-virtual {v2}, Lcom/ss/android/ugc/cut_downloader_simple/DownloadInfo;->getUrl()Ljava/lang/String;

    move-result-object v2

    const/16 v5, 0x6a

    invoke-virtual {v3, v2, v5}, Lcom/ss/android/ugc/cut_downloader/AbsDownloadService$Callback;->error(Ljava/lang/String;I)V

    .line 103
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto/16 :goto_2ea

    .line 75
    :cond_11d
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "success : id="

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/ss/android/ugc/cut_downloader_simple/DownloadInfo;->getDownloadId()J

    move-result-wide v6

    invoke-virtual {v3, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/ss/android/ugc/cut_downloader_simple/DownloadInfo;->getUrl()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 73
    invoke-static {v0, v3}, Lcom/ss/android/ugc/cut_log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "success : info.filePathDownloading="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/ss/android/ugc/cut_downloader_simple/DownloadInfo;->getFilePathDownloading()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", info.filePath="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/ss/android/ugc/cut_downloader_simple/DownloadInfo;->getFilePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 77
    invoke-static {v0, v3}, Lcom/ss/android/ugc/cut_log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    new-instance v3, Ljava/io/File;

    invoke-virtual {v2}, Lcom/ss/android/ugc/cut_downloader_simple/DownloadInfo;->getFilePathDownloading()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v5, Ljava/io/File;

    invoke-virtual {v2}, Lcom/ss/android/ugc/cut_downloader_simple/DownloadInfo;->getFilePath()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v5}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v3

    if-eqz v3, :cond_18b

    .line 84
    invoke-virtual {v2}, Lcom/ss/android/ugc/cut_downloader_simple/DownloadInfo;->getCallback()Lcom/ss/android/ugc/cut_downloader/AbsDownloadService$Callback;

    move-result-object v3

    invoke-virtual {v2}, Lcom/ss/android/ugc/cut_downloader_simple/DownloadInfo;->getUrl()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2}, Lcom/ss/android/ugc/cut_downloader_simple/DownloadInfo;->getFilePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v5, v2}, Lcom/ss/android/ugc/cut_downloader/AbsDownloadService$Callback;->success(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1bc

    .line 86
    :cond_18b
    invoke-virtual {v2}, Lcom/ss/android/ugc/cut_downloader_simple/DownloadInfo;->getCallback()Lcom/ss/android/ugc/cut_downloader/AbsDownloadService$Callback;

    move-result-object v3

    invoke-virtual {v2}, Lcom/ss/android/ugc/cut_downloader_simple/DownloadInfo;->getUrl()Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x69

    invoke-virtual {v3, v5, v6}, Lcom/ss/android/ugc/cut_downloader/AbsDownloadService$Callback;->error(Ljava/lang/String;I)V

    .line 89
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "rename failed : "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/ss/android/ugc/cut_downloader_simple/DownloadInfo;->getFilePathDownloading()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " to "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/ss/android/ugc/cut_downloader_simple/DownloadInfo;->getFilePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 87
    invoke-static {v0, v2}, Lcom/ss/android/ugc/cut_log/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    :goto_1bc
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto/16 :goto_2ea

    .line 64
    :cond_1c1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "pause unknown: id="

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/ss/android/ugc/cut_downloader_simple/DownloadInfo;->getDownloadId()J

    move-result-wide v6

    invoke-virtual {v3, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/ss/android/ugc/cut_downloader_simple/DownloadInfo;->getUrl()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 62
    invoke-static {v0, v3}, Lcom/ss/android/ugc/cut_log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    iget-object v3, p0, Lcom/ss/android/ugc/cut_downloader_simple/AndroidDownloadService$contentObserver$1;->this$0:Lcom/ss/android/ugc/cut_downloader_simple/AndroidDownloadService;

    # getter for: Lcom/ss/android/ugc/cut_downloader_simple/AndroidDownloadService;->progressMap:Ljava/util/Map;
    invoke-static {v3}, Lcom/ss/android/ugc/cut_downloader_simple/AndroidDownloadService;->access$getProgressMap$p(Lcom/ss/android/ugc/cut_downloader_simple/AndroidDownloadService;)Ljava/util/Map;

    move-result-object v3

    invoke-virtual {v2}, Lcom/ss/android/ugc/cut_downloader_simple/DownloadInfo;->getUrl()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    invoke-virtual {v2}, Lcom/ss/android/ugc/cut_downloader_simple/DownloadInfo;->getCallback()Lcom/ss/android/ugc/cut_downloader/AbsDownloadService$Callback;

    move-result-object v3

    invoke-virtual {v2}, Lcom/ss/android/ugc/cut_downloader_simple/DownloadInfo;->getUrl()Ljava/lang/String;

    move-result-object v2

    const/16 v5, 0x68

    invoke-virtual {v3, v2, v5}, Lcom/ss/android/ugc/cut_downloader/AbsDownloadService$Callback;->error(Ljava/lang/String;I)V

    goto/16 :goto_2ea

    .line 113
    :cond_1ff
    const-string v3, "bytes_so_far"

    invoke-interface {v4, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v4, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    .line 115
    const-string v6, "total_size"

    invoke-interface {v4, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v4, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    .line 116
    iget-object v7, p0, Lcom/ss/android/ugc/cut_downloader_simple/AndroidDownloadService$contentObserver$1;->this$0:Lcom/ss/android/ugc/cut_downloader_simple/AndroidDownloadService;

    # getter for: Lcom/ss/android/ugc/cut_downloader_simple/AndroidDownloadService;->progressMap:Ljava/util/Map;
    invoke-static {v7}, Lcom/ss/android/ugc/cut_downloader_simple/AndroidDownloadService;->access$getProgressMap$p(Lcom/ss/android/ugc/cut_downloader_simple/AndroidDownloadService;)Ljava/util/Map;

    move-result-object v7

    invoke-virtual {v2}, Lcom/ss/android/ugc/cut_downloader_simple/DownloadInfo;->getUrl()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v7, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    if-nez v7, :cond_227

    move v7, v8

    goto :goto_22b

    :cond_227
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    :goto_22b
    add-int/lit8 v7, v7, 0xf

    const/16 v9, 0x5a

    if-le v7, v9, :cond_232

    goto :goto_24b

    .line 119
    :cond_232
    iget-object v7, p0, Lcom/ss/android/ugc/cut_downloader_simple/AndroidDownloadService$contentObserver$1;->this$0:Lcom/ss/android/ugc/cut_downloader_simple/AndroidDownloadService;

    # getter for: Lcom/ss/android/ugc/cut_downloader_simple/AndroidDownloadService;->progressMap:Ljava/util/Map;
    invoke-static {v7}, Lcom/ss/android/ugc/cut_downloader_simple/AndroidDownloadService;->access$getProgressMap$p(Lcom/ss/android/ugc/cut_downloader_simple/AndroidDownloadService;)Ljava/util/Map;

    move-result-object v7

    invoke-virtual {v2}, Lcom/ss/android/ugc/cut_downloader_simple/DownloadInfo;->getUrl()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v7, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    if-nez v7, :cond_245

    goto :goto_249

    :cond_245
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v8

    :goto_249
    add-int/lit8 v9, v8, 0xf

    .line 121
    :goto_24b
    iget-object v7, p0, Lcom/ss/android/ugc/cut_downloader_simple/AndroidDownloadService$contentObserver$1;->this$0:Lcom/ss/android/ugc/cut_downloader_simple/AndroidDownloadService;

    # getter for: Lcom/ss/android/ugc/cut_downloader_simple/AndroidDownloadService;->progressMap:Ljava/util/Map;
    invoke-static {v7}, Lcom/ss/android/ugc/cut_downloader_simple/AndroidDownloadService;->access$getProgressMap$p(Lcom/ss/android/ugc/cut_downloader_simple/AndroidDownloadService;)Ljava/util/Map;

    move-result-object v7

    invoke-virtual {v2}, Lcom/ss/android/ugc/cut_downloader_simple/DownloadInfo;->getUrl()Ljava/lang/String;

    move-result-object v8

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v7, v8, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {p1, v7}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v7}, Lcom/ss/android/ugc/cut_log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    invoke-virtual {v2}, Lcom/ss/android/ugc/cut_downloader_simple/DownloadInfo;->getCallback()Lcom/ss/android/ugc/cut_downloader/AbsDownloadService$Callback;

    move-result-object v7

    .line 124
    invoke-virtual {v2}, Lcom/ss/android/ugc/cut_downloader_simple/DownloadInfo;->getUrl()Ljava/lang/String;

    move-result-object v8

    .line 123
    invoke-virtual {v7, v8, v9}, Lcom/ss/android/ugc/cut_downloader/AbsDownloadService$Callback;->progress(Ljava/lang/String;I)V

    if-lez v6, :cond_2a5

    .line 130
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v3, 0x2f

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "}, id="

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/ss/android/ugc/cut_downloader_simple/DownloadInfo;->getDownloadId()J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/ss/android/ugc/cut_downloader_simple/DownloadInfo;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 128
    invoke-static {v0, v2}, Lcom/ss/android/ugc/cut_log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2ea

    .line 135
    :cond_2a5
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "running : id="

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/ss/android/ugc/cut_downloader_simple/DownloadInfo;->getDownloadId()J

    move-result-wide v6

    invoke-virtual {v3, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/ss/android/ugc/cut_downloader_simple/DownloadInfo;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 133
    invoke-static {v0, v2}, Lcom/ss/android/ugc/cut_log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2ea

    .line 108
    :cond_2c8
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "pending : id="

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/ss/android/ugc/cut_downloader_simple/DownloadInfo;->getDownloadId()J

    move-result-wide v6

    invoke-virtual {v3, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/ss/android/ugc/cut_downloader_simple/DownloadInfo;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 106
    invoke-static {v0, v2}, Lcom/ss/android/ugc/cut_log/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2ea
    .catch Ljava/lang/Exception; {:try_start_95 .. :try_end_2ea} :catch_40
    .catchall {:try_start_95 .. :try_end_2ea} :catchall_3d

    :cond_2ea
    :goto_2ea
    if-nez v4, :cond_2ee

    goto/16 :goto_e

    .line 158
    :cond_2ee
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    goto/16 :goto_e

    .line 156
    :goto_2f3
    :try_start_2f3
    const-string v3, "exception is "

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/ss/android/ugc/cut_log/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_300
    .catchall {:try_start_2f3 .. :try_end_300} :catchall_3d

    if-nez v4, :cond_2ee

    goto/16 :goto_e

    :goto_304
    if-nez v4, :cond_307

    goto :goto_30a

    .line 158
    :cond_307
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    :goto_30a
    throw p0

    :cond_30b
    return-void
.end method
