.class public final Lcom/ss/android/ugc/cut_downloader_simple/AndroidDownloadService;
.super Lcom/ss/android/ugc/cut_downloader/AbsDownloadService;
.source "SourceFile"


# instance fields
.field private connectivityManager:Landroid/net/ConnectivityManager;

.field private final contentObserver:Lcom/ss/android/ugc/cut_downloader_simple/AndroidDownloadService$contentObserver$1;

.field private downloadManager:Landroid/app/DownloadManager;

.field private final pendingDownloadInfo:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/ss/android/ugc/cut_downloader_simple/DownloadInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final progressMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 32
    invoke-direct {p0}, Lcom/ss/android/ugc/cut_downloader/AbsDownloadService;-><init>()V

    .line 36
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ss/android/ugc/cut_downloader_simple/AndroidDownloadService;->pendingDownloadInfo:Ljava/util/List;

    .line 37
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/ss/android/ugc/cut_downloader_simple/AndroidDownloadService;->progressMap:Ljava/util/Map;

    .line 39
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/ss/android/ugc/cut_downloader_simple/AndroidDownloadService$contentObserver$1;

    invoke-direct {v1, p0, v0}, Lcom/ss/android/ugc/cut_downloader_simple/AndroidDownloadService$contentObserver$1;-><init>(Lcom/ss/android/ugc/cut_downloader_simple/AndroidDownloadService;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/ss/android/ugc/cut_downloader_simple/AndroidDownloadService;->contentObserver:Lcom/ss/android/ugc/cut_downloader_simple/AndroidDownloadService$contentObserver$1;

    return-void
.end method

.method public static final synthetic access$getDownloadManager$p(Lcom/ss/android/ugc/cut_downloader_simple/AndroidDownloadService;)Landroid/app/DownloadManager;
    .registers 1

    .line 32
    iget-object p0, p0, Lcom/ss/android/ugc/cut_downloader_simple/AndroidDownloadService;->downloadManager:Landroid/app/DownloadManager;

    return-object p0
.end method

.method public static final synthetic access$getPendingDownloadInfo$p(Lcom/ss/android/ugc/cut_downloader_simple/AndroidDownloadService;)Ljava/util/List;
    .registers 1

    .line 32
    iget-object p0, p0, Lcom/ss/android/ugc/cut_downloader_simple/AndroidDownloadService;->pendingDownloadInfo:Ljava/util/List;

    return-object p0
.end method

.method public static final synthetic access$getProgressMap$p(Lcom/ss/android/ugc/cut_downloader_simple/AndroidDownloadService;)Ljava/util/Map;
    .registers 1

    .line 32
    iget-object p0, p0, Lcom/ss/android/ugc/cut_downloader_simple/AndroidDownloadService;->progressMap:Ljava/util/Map;

    return-object p0
.end method

.method private final isNetworkConnected(Landroid/content/Context;)Z
    .registers 2

    if-eqz p1, :cond_17

    .line 290
    iget-object p0, p0, Lcom/ss/android/ugc/cut_downloader_simple/AndroidDownloadService;->connectivityManager:Landroid/net/ConnectivityManager;

    if-nez p0, :cond_c

    const-string p0, "connectivityManager"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    :cond_c
    invoke-virtual {p0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object p0

    if-eqz p0, :cond_17

    .line 292
    invoke-virtual {p0}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result p0

    return p0

    :cond_17
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method protected cancel(Ljava/lang/String;)V
    .registers 8

    const-string v0, "url"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 299
    iget-object v0, p0, Lcom/ss/android/ugc/cut_downloader_simple/AndroidDownloadService;->pendingDownloadInfo:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 300
    iget-object v1, p0, Lcom/ss/android/ugc/cut_downloader_simple/AndroidDownloadService;->progressMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 301
    :cond_10
    :goto_10
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_70

    .line 302
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ss/android/ugc/cut_downloader_simple/DownloadInfo;

    .line 303
    invoke-virtual {v1}, Lcom/ss/android/ugc/cut_downloader_simple/DownloadInfo;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10

    .line 304
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cancel : id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/ss/android/ugc/cut_downloader_simple/DownloadInfo;->getDownloadId()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, ", url="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "CUT_PREPARE_DOWNLOAD"

    invoke-static {v3, v2}, Lcom/ss/android/ugc/cut_log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 305
    invoke-virtual {v1}, Lcom/ss/android/ugc/cut_downloader_simple/DownloadInfo;->getCallback()Lcom/ss/android/ugc/cut_downloader/AbsDownloadService$Callback;

    move-result-object v2

    invoke-virtual {v1}, Lcom/ss/android/ugc/cut_downloader_simple/DownloadInfo;->getUrl()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x6b

    invoke-virtual {v2, v3, v4}, Lcom/ss/android/ugc/cut_downloader/AbsDownloadService$Callback;->error(Ljava/lang/String;I)V

    .line 306
    iget-object v2, p0, Lcom/ss/android/ugc/cut_downloader_simple/AndroidDownloadService;->downloadManager:Landroid/app/DownloadManager;

    if-nez v2, :cond_5f

    const-string v2, "downloadManager"

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v2, 0x0

    :cond_5f
    invoke-virtual {v1}, Lcom/ss/android/ugc/cut_downloader_simple/DownloadInfo;->getDownloadId()J

    move-result-wide v3

    const/4 v1, 0x1

    new-array v1, v1, [J

    const/4 v5, 0x0

    aput-wide v3, v1, v5

    invoke-virtual {v2, v1}, Landroid/app/DownloadManager;->remove([J)I

    .line 307
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_10

    :cond_70
    return-void
.end method

.method protected download(Ljava/lang/String;Lcom/ss/android/ugc/cut_downloader/AbsDownloadService$Callback;)V
    .registers 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v6, p2

    const-string v2, "url"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "callback"

    invoke-static {v6, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 198
    invoke-direct {v0, v0}, Lcom/ss/android/ugc/cut_downloader_simple/AndroidDownloadService;->isNetworkConnected(Landroid/content/Context;)Z

    move-result v2

    .line 199
    const-string v3, "networkConnected is "

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "CUT_PREPARE_DOWNLOAD"

    invoke-static {v4, v3}, Lcom/ss/android/ugc/cut_log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v2, :cond_2e

    .line 201
    invoke-virtual/range {p0 .. p1}, Lcom/ss/android/ugc/cut_downloader_simple/AndroidDownloadService;->cancel(Ljava/lang/String;)V

    const/16 v0, 0x67

    .line 202
    invoke-virtual {v6, v1, v0}, Lcom/ss/android/ugc/cut_downloader/AbsDownloadService$Callback;->error(Ljava/lang/String;I)V

    return-void

    .line 205
    :cond_2e
    sget-object v2, Landroid/os/Environment;->DIRECTORY_DOWNLOADS:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    if-eqz v2, :cond_3b

    .line 207
    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    move-object v3, v2

    goto :goto_47

    .line 211
    :cond_3b
    sget-object v3, Landroid/os/Environment;->DIRECTORY_DOWNLOADS:Ljava/lang/String;

    invoke-static {v3}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v3

    if-nez v3, :cond_44

    goto :goto_47

    .line 212
    :cond_44
    invoke-virtual {v3}, Ljava/io/File;->mkdir()Z

    :goto_47
    if-nez v3, :cond_54

    .line 217
    const-string v0, "download: storage dir null"

    invoke-static {v4, v0}, Lcom/ss/android/ugc/cut_log/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0x65

    .line 218
    invoke-virtual {v6, v1, v0}, Lcom/ss/android/ugc/cut_downloader/AbsDownloadService$Callback;->error(Ljava/lang/String;I)V

    return-void

    .line 222
    :cond_54
    invoke-static {v1}, Lcom/ss/android/ugc/cut_downloader_simple/AndroidDownloadServiceKt;->stringToMD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 223
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v8, 0x2f

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 225
    new-instance v9, Ljava/io/File;

    invoke-direct {v9, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v9

    const-string v10, ", url="

    if-eqz v9, :cond_97

    .line 226
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "hit cache : fileName="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/ss/android/ugc/cut_log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 227
    invoke-virtual {v6, v1, v7}, Lcom/ss/android/ugc/cut_downloader/AbsDownloadService$Callback;->success(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 231
    :cond_97
    const-string v9, ".download"

    invoke-static {v5, v9}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    .line 232
    new-instance v12, Ljava/io/File;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v12, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 233
    const-string v3, "fileNameDownloading= "

    invoke-virtual {v12}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    invoke-static {v3, v8}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/ss/android/ugc/cut_log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 234
    invoke-virtual {v12}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_cf

    .line 235
    const-string v3, "filePathDownloading is exit"

    invoke-static {v4, v3}, Lcom/ss/android/ugc/cut_log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 236
    invoke-virtual {v12}, Ljava/io/File;->delete()Z

    .line 238
    :cond_cf
    new-instance v3, Landroid/app/DownloadManager$Request;

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    invoke-direct {v3, v8}, Landroid/app/DownloadManager$Request;-><init>(Landroid/net/Uri;)V

    if-eqz v2, :cond_e3

    .line 243
    :try_start_da
    sget-object v2, Landroid/os/Environment;->DIRECTORY_DOWNLOADS:Ljava/lang/String;

    .line 241
    invoke-virtual {v3, v0, v2, v11}, Landroid/app/DownloadManager$Request;->setDestinationInExternalFilesDir(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/app/DownloadManager$Request;

    goto :goto_e8

    :catch_e0
    move-exception v0

    goto/16 :goto_178

    .line 248
    :cond_e3
    sget-object v2, Landroid/os/Environment;->DIRECTORY_DOWNLOADS:Ljava/lang/String;

    .line 247
    invoke-virtual {v3, v2, v11}, Landroid/app/DownloadManager$Request;->setDestinationInExternalPublicDir(Ljava/lang/String;Ljava/lang/String;)Landroid/app/DownloadManager$Request;
    :try_end_e8
    .catch Ljava/lang/Exception; {:try_start_da .. :try_end_e8} :catch_e0

    :goto_e8
    const/4 v2, 0x3

    .line 258
    invoke-virtual {v3, v2}, Landroid/app/DownloadManager$Request;->setAllowedNetworkTypes(I)Landroid/app/DownloadManager$Request;

    const/4 v2, 0x1

    .line 259
    invoke-virtual {v3, v2}, Landroid/app/DownloadManager$Request;->setAllowedOverRoaming(Z)Landroid/app/DownloadManager$Request;

    .line 260
    invoke-virtual {v3, v2}, Landroid/app/DownloadManager$Request;->setAllowedOverMetered(Z)Landroid/app/DownloadManager$Request;

    const/4 v2, 0x2

    .line 261
    invoke-virtual {v3, v2}, Landroid/app/DownloadManager$Request;->setNotificationVisibility(I)Landroid/app/DownloadManager$Request;

    .line 263
    iget-object v2, v0, Lcom/ss/android/ugc/cut_downloader_simple/AndroidDownloadService;->downloadManager:Landroid/app/DownloadManager;

    const/4 v8, 0x0

    const-string v11, "downloadManager"

    if-nez v2, :cond_102

    invoke-static {v11}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v2, v8

    :cond_102
    invoke-virtual {v2, v3}, Landroid/app/DownloadManager;->enqueue(Landroid/app/DownloadManager$Request;)J

    move-result-wide v2

    .line 264
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "enqueue : id="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v13, ", fileName="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/ss/android/ugc/cut_log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 266
    iget-object v5, v0, Lcom/ss/android/ugc/cut_downloader_simple/AndroidDownloadService;->downloadManager:Landroid/app/DownloadManager;

    if-nez v5, :cond_130

    invoke-static {v11}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_131

    :cond_130
    move-object v8, v5

    :goto_131
    invoke-virtual {v8, v2, v3}, Landroid/app/DownloadManager;->getUriForDownloadedFile(J)Landroid/net/Uri;

    .line 267
    iget-object v5, v0, Lcom/ss/android/ugc/cut_downloader_simple/AndroidDownloadService;->pendingDownloadInfo:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .line 268
    iget-object v8, v0, Lcom/ss/android/ugc/cut_downloader_simple/AndroidDownloadService;->progressMap:Ljava/util/Map;

    invoke-interface {v8, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 269
    :cond_13f
    :goto_13f
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_164

    .line 270
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/ss/android/ugc/cut_downloader_simple/DownloadInfo;

    .line 271
    invoke-virtual {v8}, Lcom/ss/android/ugc/cut_downloader_simple/DownloadInfo;->getDownloadId()J

    move-result-wide v10

    cmp-long v8, v2, v10

    if-nez v8, :cond_13f

    .line 272
    const-string v8, "pendingDownloadInfo remove id="

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-static {v8, v10}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v8}, Lcom/ss/android/ugc/cut_log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 273
    invoke-interface {v5}, Ljava/util/Iterator;->remove()V

    goto :goto_13f

    .line 276
    :cond_164
    iget-object v8, v0, Lcom/ss/android/ugc/cut_downloader_simple/AndroidDownloadService;->pendingDownloadInfo:Ljava/util/List;

    .line 277
    new-instance v0, Lcom/ss/android/ugc/cut_downloader_simple/DownloadInfo;

    .line 280
    invoke-static {v7, v9}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    move-wide v14, v2

    move-object v3, v4

    move-wide v4, v14

    move-object v2, v7

    const/4 v7, 0x1

    .line 277
    invoke-direct/range {v0 .. v7}, Lcom/ss/android/ugc/cut_downloader_simple/DownloadInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLcom/ss/android/ugc/cut_downloader/AbsDownloadService$Callback;I)V

    .line 276
    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    .line 253
    :goto_178
    const-string v2, "download: setDestination fail "

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/ss/android/ugc/cut_log/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0x66

    .line 254
    invoke-virtual {v6, v1, v0}, Lcom/ss/android/ugc/cut_downloader/AbsDownloadService$Callback;->error(Ljava/lang/String;I)V

    return-void
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 4

    const-string v0, "intent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 181
    const-string v0, "CUT_PREPARE_DOWNLOAD"

    const-string v1, "onBind"

    invoke-static {v0, v1}, Lcom/ss/android/ugc/cut_log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 182
    invoke-super {p0, p1}, Lcom/ss/android/ugc/cut_downloader/AbsDownloadService;->onBind(Landroid/content/Intent;)Landroid/os/IBinder;

    move-result-object p0

    return-object p0
.end method

.method public onCreate()V
    .registers 5

    .line 165
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 166
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 167
    const-string v1, "content://downloads/my_downloads"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x1

    .line 168
    iget-object v3, p0, Lcom/ss/android/ugc/cut_downloader_simple/AndroidDownloadService;->contentObserver:Lcom/ss/android/ugc/cut_downloader_simple/AndroidDownloadService$contentObserver$1;

    .line 166
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 170
    const-string v0, "download"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_5a

    check-cast v0, Landroid/app/DownloadManager;

    iput-object v0, p0, Lcom/ss/android/ugc/cut_downloader_simple/AndroidDownloadService;->downloadManager:Landroid/app/DownloadManager;

    .line 171
    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_52

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Lcom/ss/android/ugc/cut_downloader_simple/AndroidDownloadService;->connectivityManager:Landroid/net/ConnectivityManager;

    .line 172
    invoke-static {p0}, Landroid/app/DownloadManager;->getMaxBytesOverMobile(Landroid/content/Context;)Ljava/lang/Long;

    move-result-object v0

    .line 173
    invoke-static {p0}, Landroid/app/DownloadManager;->getRecommendedMaxBytesOverMobile(Landroid/content/Context;)Ljava/lang/Long;

    move-result-object p0

    .line 176
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCreate maxBytesOverMobile="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, "  recommendedMaxBytesOverMobile="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 174
    const-string v0, "CUT_PREPARE_DOWNLOAD"

    invoke-static {v0, p0}, Lcom/ss/android/ugc/cut_log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 171
    :cond_52
    new-instance p0, Ljava/lang/NullPointerException;

    const-string v0, "null cannot be cast to non-null type android.net.ConnectivityManager"

    invoke-direct {p0, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 170
    :cond_5a
    new-instance p0, Ljava/lang/NullPointerException;

    const-string v0, "null cannot be cast to non-null type android.app.DownloadManager"

    invoke-direct {p0, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public onDestroy()V
    .registers 3

    .line 191
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 192
    const-string v0, "CUT_PREPARE_DOWNLOAD"

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Lcom/ss/android/ugc/cut_log/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 193
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object p0, p0, Lcom/ss/android/ugc/cut_downloader_simple/AndroidDownloadService;->contentObserver:Lcom/ss/android/ugc/cut_downloader_simple/AndroidDownloadService$contentObserver$1;

    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    return-void
.end method

.method public onUnbind(Landroid/content/Intent;)Z
    .registers 4

    .line 186
    const-string v0, "CUT_PREPARE_DOWNLOAD"

    const-string v1, "onUnbind"

    invoke-static {v0, v1}, Lcom/ss/android/ugc/cut_log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 187
    invoke-super {p0, p1}, Landroid/app/Service;->onUnbind(Landroid/content/Intent;)Z

    move-result p0

    return p0
.end method
