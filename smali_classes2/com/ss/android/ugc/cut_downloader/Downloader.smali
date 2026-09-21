.class public final Lcom/ss/android/ugc/cut_downloader/Downloader;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ss/android/ugc/cut_downloader/Downloader$DownloadServiceConnection;,
        Lcom/ss/android/ugc/cut_downloader/Downloader$DownloadResult;
    }
.end annotation


# instance fields
.field private callback:Lcom/ss/android/ugc/cut_downloader/IDownloadCallback;

.field private final context:Landroid/content/Context;

.field private final innerCallback:Lcom/ss/android/ugc/cut_downloader/Downloader$innerCallback$1;

.field private final mainHandler:Landroid/os/Handler;

.field private final pendingSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private remoteConnection:Lcom/ss/android/ugc/cut_downloader/Downloader$DownloadServiceConnection;

.field private final runningMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/ss/android/ugc/cut_downloader/Downloader$DownloadResult;",
            ">;"
        }
    .end annotation
.end field

.field private final serviceName:Landroid/content/ComponentName;


# direct methods
.method public static synthetic $r8$lambda$8L7gJ57NsGzJC_o98YDxyrEoAVk(Lcom/ss/android/ugc/cut_downloader/Downloader;Lcom/ss/android/ugc/cut_downloader/IDownloadService;)V
    .registers 2

    .line 0
    invoke-static {p0, p1}, Lcom/ss/android/ugc/cut_downloader/Downloader;->triggerFlushPending$lambda-4(Lcom/ss/android/ugc/cut_downloader/Downloader;Lcom/ss/android/ugc/cut_downloader/IDownloadService;)V

    return-void
.end method

.method public static synthetic $r8$lambda$bqCJiB8SvUpXtvv_J_SH2RNC26I(Lcom/ss/android/ugc/cut_downloader/Downloader;Ljava/lang/String;)V
    .registers 2

    .line 0
    invoke-static {p0, p1}, Lcom/ss/android/ugc/cut_downloader/Downloader;->cancel$lambda-2(Lcom/ss/android/ugc/cut_downloader/Downloader;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$zi5AwxgiQNT7unYc2XGEWk8ziHM(Lcom/ss/android/ugc/cut_downloader/Downloader$DownloadResult;Ljava/lang/String;Lcom/ss/android/ugc/cut_downloader/Downloader;)V
    .registers 3

    .line 0
    invoke-static {p0, p1, p2}, Lcom/ss/android/ugc/cut_downloader/Downloader;->download$lambda-0(Lcom/ss/android/ugc/cut_downloader/Downloader$DownloadResult;Ljava/lang/String;Lcom/ss/android/ugc/cut_downloader/Downloader;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/content/ComponentName;)V
    .registers 4

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/ss/android/ugc/cut_downloader/Downloader;->context:Landroid/content/Context;

    iput-object p2, p0, Lcom/ss/android/ugc/cut_downloader/Downloader;->serviceName:Landroid/content/ComponentName;

    .line 43
    new-instance p1, Ljava/util/LinkedHashSet;

    invoke-direct {p1}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object p1, p0, Lcom/ss/android/ugc/cut_downloader/Downloader;->pendingSet:Ljava/util/Set;

    .line 45
    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p1, p0, Lcom/ss/android/ugc/cut_downloader/Downloader;->runningMap:Ljava/util/Map;

    .line 47
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/ss/android/ugc/cut_downloader/Downloader;->mainHandler:Landroid/os/Handler;

    .line 51
    new-instance p1, Lcom/ss/android/ugc/cut_downloader/Downloader$innerCallback$1;

    invoke-direct {p1, p0}, Lcom/ss/android/ugc/cut_downloader/Downloader$innerCallback$1;-><init>(Lcom/ss/android/ugc/cut_downloader/Downloader;)V

    iput-object p1, p0, Lcom/ss/android/ugc/cut_downloader/Downloader;->innerCallback:Lcom/ss/android/ugc/cut_downloader/Downloader$innerCallback$1;

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Landroid/content/ComponentName;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 5

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_5

    const/4 p2, 0x0

    .line 23
    :cond_5
    invoke-direct {p0, p1, p2}, Lcom/ss/android/ugc/cut_downloader/Downloader;-><init>(Landroid/content/Context;Landroid/content/ComponentName;)V

    return-void
.end method

.method public static final synthetic access$getCallback$p(Lcom/ss/android/ugc/cut_downloader/Downloader;)Lcom/ss/android/ugc/cut_downloader/IDownloadCallback;
    .registers 1

    .line 22
    iget-object p0, p0, Lcom/ss/android/ugc/cut_downloader/Downloader;->callback:Lcom/ss/android/ugc/cut_downloader/IDownloadCallback;

    return-object p0
.end method

.method public static final synthetic access$getRunningMap$p(Lcom/ss/android/ugc/cut_downloader/Downloader;)Ljava/util/Map;
    .registers 1

    .line 22
    iget-object p0, p0, Lcom/ss/android/ugc/cut_downloader/Downloader;->runningMap:Ljava/util/Map;

    return-object p0
.end method

.method private static final cancel$lambda-2(Lcom/ss/android/ugc/cut_downloader/Downloader;Ljava/lang/String;)V
    .registers 3

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$url"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 120
    iget-object p0, p0, Lcom/ss/android/ugc/cut_downloader/Downloader;->remoteConnection:Lcom/ss/android/ugc/cut_downloader/Downloader$DownloadServiceConnection;

    if-nez p0, :cond_f

    goto :goto_1b

    :cond_f
    invoke-virtual {p0}, Lcom/ss/android/ugc/cut_downloader/Downloader$DownloadServiceConnection;->getServiceLiveData()Landroidx/lifecycle/MutableLiveData;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/ss/android/ugc/cut_downloader/IDownloadService;

    if-nez p0, :cond_1c

    :goto_1b
    return-void

    .line 121
    :cond_1c
    invoke-interface {p0, p1}, Lcom/ss/android/ugc/cut_downloader/IDownloadService;->cancel(Ljava/lang/String;)V

    return-void
.end method

.method private final createRemoteConnection()Lcom/ss/android/ugc/cut_downloader/Downloader$DownloadServiceConnection;
    .registers 7

    .line 250
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.ss.android.ugc.cut_downloader.DOWNLOAD"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 251
    iget-object v1, p0, Lcom/ss/android/ugc/cut_downloader/Downloader;->serviceName:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 252
    iget-object v1, p0, Lcom/ss/android/ugc/cut_downloader/Downloader;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 254
    iget-object v1, p0, Lcom/ss/android/ugc/cut_downloader/Downloader;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    const-string v3, "context.packageManager.q\u2026IntentServices(intent, 0)"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 255
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x0

    if-lez v3, :cond_6b

    .line 256
    new-instance v3, Landroid/content/ComponentName;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/ResolveInfo;

    iget-object v5, v5, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v5, v5, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ResolveInfo;

    iget-object v1, v1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v1, v1, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-direct {v3, v5, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 257
    const-string v1, "createRemoteConnection : "

    invoke-virtual {v0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "cutui.DownloadProxy"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 263
    new-instance v1, Lcom/ss/android/ugc/cut_downloader/Downloader$DownloadServiceConnection;

    .line 264
    new-instance v2, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v2}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    .line 263
    invoke-direct {v1, v2}, Lcom/ss/android/ugc/cut_downloader/Downloader$DownloadServiceConnection;-><init>(Landroidx/lifecycle/MutableLiveData;)V

    .line 266
    iget-object p0, p0, Lcom/ss/android/ugc/cut_downloader/Downloader;->context:Landroid/content/Context;

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result p0

    if-eqz p0, :cond_6b

    return-object v1

    :cond_6b
    return-object v4
.end method

.method private static final download$lambda-0(Lcom/ss/android/ugc/cut_downloader/Downloader$DownloadResult;Ljava/lang/String;Lcom/ss/android/ugc/cut_downloader/Downloader;)V
    .registers 6

    const-string v0, "$url"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "this$0"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 102
    invoke-virtual {p0}, Lcom/ss/android/ugc/cut_downloader/Downloader$DownloadResult;->getFilePath()Ljava/lang/String;

    move-result-object v0

    const-string v1, "cutui.DownloadProxy"

    if-eqz v0, :cond_28

    .line 103
    const-string v0, "download success [Cache] : "

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    iget-object p2, p2, Lcom/ss/android/ugc/cut_downloader/Downloader;->callback:Lcom/ss/android/ugc/cut_downloader/IDownloadCallback;

    if-nez p2, :cond_20

    goto :goto_4c

    :cond_20
    invoke-virtual {p0}, Lcom/ss/android/ugc/cut_downloader/Downloader$DownloadResult;->getFilePath()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p2, p1, p0}, Lcom/ss/android/ugc/cut_downloader/IDownloadCallback;->onSuccess(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 106
    :cond_28
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "download error ["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/ss/android/ugc/cut_downloader/Downloader$DownloadResult;->getErrorCode()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "] [Cache] : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    iget-object p2, p2, Lcom/ss/android/ugc/cut_downloader/Downloader;->callback:Lcom/ss/android/ugc/cut_downloader/IDownloadCallback;

    if-nez p2, :cond_4d

    :goto_4c
    return-void

    :cond_4d
    invoke-virtual {p0}, Lcom/ss/android/ugc/cut_downloader/Downloader$DownloadResult;->getErrorCode()I

    move-result p0

    invoke-interface {p2, p1, p0}, Lcom/ss/android/ugc/cut_downloader/IDownloadCallback;->onError(Ljava/lang/String;I)V

    return-void
.end method

.method private final flushPending(Lcom/ss/android/ugc/cut_downloader/IDownloadService;)V
    .registers 6

    .line 169
    iget-object v0, p0, Lcom/ss/android/ugc/cut_downloader/Downloader;->pendingSet:Ljava/util/Set;

    .line 281
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 170
    iget-object v2, p0, Lcom/ss/android/ugc/cut_downloader/Downloader;->runningMap:Ljava/util/Map;

    .line 171
    new-instance v3, Lcom/ss/android/ugc/cut_downloader/Downloader$DownloadResult;

    invoke-direct {v3}, Lcom/ss/android/ugc/cut_downloader/Downloader$DownloadResult;-><init>()V

    .line 170
    invoke-interface {v2, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 172
    const-string v2, "download running : "

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "cutui.DownloadProxy"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    invoke-interface {p1, v1}, Lcom/ss/android/ugc/cut_downloader/IDownloadService;->download(Ljava/lang/String;)V

    goto :goto_6

    .line 175
    :cond_2b
    iget-object p0, p0, Lcom/ss/android/ugc/cut_downloader/Downloader;->pendingSet:Ljava/util/Set;

    invoke-interface {p0}, Ljava/util/Set;->clear()V

    return-void
.end method

.method private final tearDownAll()V
    .registers 7

    .line 188
    iget-object v0, p0, Lcom/ss/android/ugc/cut_downloader/Downloader;->runningMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const-string v2, "download tearDown : "

    const-string v3, "cutui.DownloadProxy"

    if-eqz v1, :cond_36

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 189
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    iget-object v2, p0, Lcom/ss/android/ugc/cut_downloader/Downloader;->callback:Lcom/ss/android/ugc/cut_downloader/IDownloadCallback;

    if-nez v2, :cond_2a

    goto :goto_a

    :cond_2a
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const/16 v3, -0xa

    invoke-interface {v2, v1, v3}, Lcom/ss/android/ugc/cut_downloader/IDownloadCallback;->onError(Ljava/lang/String;I)V

    goto :goto_a

    .line 192
    :cond_36
    iget-object v0, p0, Lcom/ss/android/ugc/cut_downloader/Downloader;->runningMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 195
    iget-object v0, p0, Lcom/ss/android/ugc/cut_downloader/Downloader;->pendingSet:Ljava/util/Set;

    .line 285
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_41
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 196
    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    iget-object v4, p0, Lcom/ss/android/ugc/cut_downloader/Downloader;->callback:Lcom/ss/android/ugc/cut_downloader/IDownloadCallback;

    if-nez v4, :cond_59

    goto :goto_41

    :cond_59
    const/16 v5, -0xb

    invoke-interface {v4, v1, v5}, Lcom/ss/android/ugc/cut_downloader/IDownloadCallback;->onError(Ljava/lang/String;I)V

    goto :goto_41

    .line 199
    :cond_5f
    iget-object p0, p0, Lcom/ss/android/ugc/cut_downloader/Downloader;->pendingSet:Ljava/util/Set;

    invoke-interface {p0}, Ljava/util/Set;->clear()V

    return-void
.end method

.method private final tearDownPending()V
    .registers 5

    .line 179
    iget-object v0, p0, Lcom/ss/android/ugc/cut_downloader/Downloader;->pendingSet:Ljava/util/Set;

    .line 283
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_28

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 180
    const-string v2, "download tearDown : "

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "cutui.DownloadProxy"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    iget-object v2, p0, Lcom/ss/android/ugc/cut_downloader/Downloader;->callback:Lcom/ss/android/ugc/cut_downloader/IDownloadCallback;

    if-nez v2, :cond_22

    goto :goto_6

    :cond_22
    const/16 v3, -0xb

    invoke-interface {v2, v1, v3}, Lcom/ss/android/ugc/cut_downloader/IDownloadCallback;->onError(Ljava/lang/String;I)V

    goto :goto_6

    .line 183
    :cond_28
    iget-object p0, p0, Lcom/ss/android/ugc/cut_downloader/Downloader;->pendingSet:Ljava/util/Set;

    invoke-interface {p0}, Ljava/util/Set;->clear()V

    return-void
.end method

.method private final triggerFlushPending()V
    .registers 3

    .line 139
    iget-object v0, p0, Lcom/ss/android/ugc/cut_downloader/Downloader;->remoteConnection:Lcom/ss/android/ugc/cut_downloader/Downloader$DownloadServiceConnection;

    if-eqz v0, :cond_18

    .line 141
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/ss/android/ugc/cut_downloader/Downloader$DownloadServiceConnection;->getServiceLiveData()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ss/android/ugc/cut_downloader/IDownloadService;

    if-nez v0, :cond_14

    return-void

    .line 142
    :cond_14
    invoke-direct {p0, v0}, Lcom/ss/android/ugc/cut_downloader/Downloader;->flushPending(Lcom/ss/android/ugc/cut_downloader/IDownloadService;)V

    return-void

    .line 146
    :cond_18
    const-string v0, "start bind Download Service"

    const-string v1, "cutui.DownloadProxy"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    invoke-direct {p0}, Lcom/ss/android/ugc/cut_downloader/Downloader;->createRemoteConnection()Lcom/ss/android/ugc/cut_downloader/Downloader$DownloadServiceConnection;

    move-result-object v0

    if-eqz v0, :cond_34

    .line 149
    iput-object v0, p0, Lcom/ss/android/ugc/cut_downloader/Downloader;->remoteConnection:Lcom/ss/android/ugc/cut_downloader/Downloader$DownloadServiceConnection;

    .line 150
    invoke-virtual {v0}, Lcom/ss/android/ugc/cut_downloader/Downloader$DownloadServiceConnection;->getServiceLiveData()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    new-instance v1, Lcom/ss/android/ugc/cut_downloader/Downloader$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/ss/android/ugc/cut_downloader/Downloader$$ExternalSyntheticLambda2;-><init>(Lcom/ss/android/ugc/cut_downloader/Downloader;)V

    invoke-virtual {v0, v1}, Landroidx/lifecycle/LiveData;->observeForever(Landroidx/lifecycle/Observer;)V

    return-void

    .line 162
    :cond_34
    const-string v0, "start bind Download Service FAILED !!"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    invoke-direct {p0}, Lcom/ss/android/ugc/cut_downloader/Downloader;->tearDownPending()V

    return-void
.end method

.method private static final triggerFlushPending$lambda-4(Lcom/ss/android/ugc/cut_downloader/Downloader;Lcom/ss/android/ugc/cut_downloader/IDownloadService;)V
    .registers 4

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 151
    const-string v0, "cutui.DownloadProxy"

    if-eqz p1, :cond_17

    .line 152
    const-string v1, "Service Interface Get"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    iget-object v0, p0, Lcom/ss/android/ugc/cut_downloader/Downloader;->innerCallback:Lcom/ss/android/ugc/cut_downloader/Downloader$innerCallback$1;

    invoke-interface {p1, v0}, Lcom/ss/android/ugc/cut_downloader/IDownloadService;->registerCallback(Lcom/ss/android/ugc/cut_downloader/IDownloadCallback;)V

    .line 154
    invoke-direct {p0, p1}, Lcom/ss/android/ugc/cut_downloader/Downloader;->flushPending(Lcom/ss/android/ugc/cut_downloader/IDownloadService;)V

    return-void

    .line 156
    :cond_17
    const-string p1, "Service Interface Lost"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    invoke-direct {p0}, Lcom/ss/android/ugc/cut_downloader/Downloader;->tearDownAll()V

    const/4 p1, 0x0

    .line 158
    iput-object p1, p0, Lcom/ss/android/ugc/cut_downloader/Downloader;->remoteConnection:Lcom/ss/android/ugc/cut_downloader/Downloader$DownloadServiceConnection;

    return-void
.end method


# virtual methods
.method public final cancel(Ljava/lang/String;)V
    .registers 4

    const-string v0, "url"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 119
    iget-object v0, p0, Lcom/ss/android/ugc/cut_downloader/Downloader;->mainHandler:Landroid/os/Handler;

    new-instance v1, Lcom/ss/android/ugc/cut_downloader/Downloader$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lcom/ss/android/ugc/cut_downloader/Downloader$$ExternalSyntheticLambda0;-><init>(Lcom/ss/android/ugc/cut_downloader/Downloader;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final download(Ljava/lang/String;)V
    .registers 5

    const-string v0, "url"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 98
    iget-object v0, p0, Lcom/ss/android/ugc/cut_downloader/Downloader;->runningMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ss/android/ugc/cut_downloader/Downloader$DownloadResult;

    if-eqz v0, :cond_20

    .line 100
    invoke-virtual {v0}, Lcom/ss/android/ugc/cut_downloader/Downloader$DownloadResult;->hasDone()Z

    move-result v1

    if-eqz v1, :cond_1f

    .line 101
    iget-object v1, p0, Lcom/ss/android/ugc/cut_downloader/Downloader;->mainHandler:Landroid/os/Handler;

    new-instance v2, Lcom/ss/android/ugc/cut_downloader/Downloader$$ExternalSyntheticLambda1;

    invoke-direct {v2, v0, p1, p0}, Lcom/ss/android/ugc/cut_downloader/Downloader$$ExternalSyntheticLambda1;-><init>(Lcom/ss/android/ugc/cut_downloader/Downloader$DownloadResult;Ljava/lang/String;Lcom/ss/android/ugc/cut_downloader/Downloader;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_1f
    return-void

    .line 112
    :cond_20
    iget-object v0, p0, Lcom/ss/android/ugc/cut_downloader/Downloader;->pendingSet:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 113
    const-string v0, "download pending : "

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "cutui.DownloadProxy"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    invoke-direct {p0}, Lcom/ss/android/ugc/cut_downloader/Downloader;->triggerFlushPending()V

    return-void
.end method

.method public final downloadForce(Ljava/lang/String;)V
    .registers 4

    const-string v0, "url"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 133
    const-string v0, "clear cache : "

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "cutui.DownloadProxy"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    iget-object v0, p0, Lcom/ss/android/ugc/cut_downloader/Downloader;->runningMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    invoke-virtual {p0, p1}, Lcom/ss/android/ugc/cut_downloader/Downloader;->download(Ljava/lang/String;)V

    return-void
.end method

.method public final release()V
    .registers 5

    const/4 v0, 0x0

    .line 213
    iput-object v0, p0, Lcom/ss/android/ugc/cut_downloader/Downloader;->callback:Lcom/ss/android/ugc/cut_downloader/IDownloadCallback;

    .line 214
    iget-object v1, p0, Lcom/ss/android/ugc/cut_downloader/Downloader;->remoteConnection:Lcom/ss/android/ugc/cut_downloader/Downloader$DownloadServiceConnection;

    if-nez v1, :cond_8

    goto :goto_1b

    .line 215
    :cond_8
    const-string v2, "cutui.DownloadProxy"

    const-string v3, "start * unbind * Download Service"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    iget-object v2, p0, Lcom/ss/android/ugc/cut_downloader/Downloader;->context:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 217
    invoke-virtual {v1}, Lcom/ss/android/ugc/cut_downloader/Downloader$DownloadServiceConnection;->getServiceLiveData()Landroidx/lifecycle/MutableLiveData;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 219
    :goto_1b
    iput-object v0, p0, Lcom/ss/android/ugc/cut_downloader/Downloader;->remoteConnection:Lcom/ss/android/ugc/cut_downloader/Downloader$DownloadServiceConnection;

    return-void
.end method

.method public final setCallback(Lcom/ss/android/ugc/cut_downloader/IDownloadCallback;)V
    .registers 2

    .line 88
    iput-object p1, p0, Lcom/ss/android/ugc/cut_downloader/Downloader;->callback:Lcom/ss/android/ugc/cut_downloader/IDownloadCallback;

    return-void
.end method

.method public final setup()V
    .registers 1

    .line 206
    invoke-direct {p0}, Lcom/ss/android/ugc/cut_downloader/Downloader;->triggerFlushPending()V

    return-void
.end method
