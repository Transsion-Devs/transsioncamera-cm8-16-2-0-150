.class public abstract Lcom/ss/android/ugc/cut_downloader/AbsDownloadService;
.super Landroid/app/Service;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ss/android/ugc/cut_downloader/AbsDownloadService$Callback;,
        Lcom/ss/android/ugc/cut_downloader/AbsDownloadService$DownloadServiceBinder;,
        Lcom/ss/android/ugc/cut_downloader/AbsDownloadService$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/ss/android/ugc/cut_downloader/AbsDownloadService$Companion;

.field public static final SERVICE_INTERFACE:Ljava/lang/String; = "com.ss.android.ugc.cut_downloader.DOWNLOAD"


# instance fields
.field private final mainThreadHandler:Landroid/os/Handler;

.field private final pidCallbackMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/List<",
            "Lcom/ss/android/ugc/cut_downloader/IDownloadCallback;",
            ">;>;"
        }
    .end annotation
.end field

.field private final runningCallback:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/ss/android/ugc/cut_downloader/AbsDownloadService$Callback;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/ss/android/ugc/cut_downloader/AbsDownloadService$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/ss/android/ugc/cut_downloader/AbsDownloadService$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/ss/android/ugc/cut_downloader/AbsDownloadService;->Companion:Lcom/ss/android/ugc/cut_downloader/AbsDownloadService$Companion;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .line 33
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 34
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/ss/android/ugc/cut_downloader/AbsDownloadService;->mainThreadHandler:Landroid/os/Handler;

    .line 37
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/ss/android/ugc/cut_downloader/AbsDownloadService;->pidCallbackMap:Ljava/util/Map;

    .line 39
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/ss/android/ugc/cut_downloader/AbsDownloadService;->runningCallback:Ljava/util/Map;

    return-void
.end method

.method public static final synthetic access$getMainThreadHandler$p(Lcom/ss/android/ugc/cut_downloader/AbsDownloadService;)Landroid/os/Handler;
    .registers 1

    .line 33
    iget-object p0, p0, Lcom/ss/android/ugc/cut_downloader/AbsDownloadService;->mainThreadHandler:Landroid/os/Handler;

    return-object p0
.end method

.method public static final synthetic access$getPidCallbackMap$p(Lcom/ss/android/ugc/cut_downloader/AbsDownloadService;)Ljava/util/Map;
    .registers 1

    .line 33
    iget-object p0, p0, Lcom/ss/android/ugc/cut_downloader/AbsDownloadService;->pidCallbackMap:Ljava/util/Map;

    return-object p0
.end method

.method public static final synthetic access$getRunningCallback$p(Lcom/ss/android/ugc/cut_downloader/AbsDownloadService;)Ljava/util/Map;
    .registers 1

    .line 33
    iget-object p0, p0, Lcom/ss/android/ugc/cut_downloader/AbsDownloadService;->runningCallback:Ljava/util/Map;

    return-object p0
.end method


# virtual methods
.method protected abstract cancel(Ljava/lang/String;)V
.end method

.method protected abstract download(Ljava/lang/String;Lcom/ss/android/ugc/cut_downloader/AbsDownloadService$Callback;)V
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 3

    const-string v0, "intent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 184
    const-string v0, "com.ss.android.ugc.cut_downloader.DOWNLOAD"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_17

    .line 185
    new-instance p1, Lcom/ss/android/ugc/cut_downloader/AbsDownloadService$DownloadServiceBinder;

    invoke-direct {p1, p0}, Lcom/ss/android/ugc/cut_downloader/AbsDownloadService$DownloadServiceBinder;-><init>(Lcom/ss/android/ugc/cut_downloader/AbsDownloadService;)V

    return-object p1

    :cond_17
    const/4 p0, 0x0

    return-object p0
.end method
