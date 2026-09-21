.class final Lcom/ss/android/ugc/cut_downloader/Downloader$DownloadServiceConnection;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ss/android/ugc/cut_downloader/Downloader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "DownloadServiceConnection"
.end annotation


# instance fields
.field private final serviceLiveData:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$Ldh8UOw0ofY1EkvgyApclU_taW0(Lcom/ss/android/ugc/cut_downloader/Downloader$DownloadServiceConnection;)V
    .registers 1

    .line 0
    invoke-static {p0}, Lcom/ss/android/ugc/cut_downloader/Downloader$DownloadServiceConnection;->onServiceConnected$lambda-1$lambda-0(Lcom/ss/android/ugc/cut_downloader/Downloader$DownloadServiceConnection;)V

    return-void
.end method

.method public constructor <init>(Landroidx/lifecycle/MutableLiveData;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/lifecycle/MutableLiveData;",
            ")V"
        }
    .end annotation

    const-string v0, "serviceLiveData"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 222
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ss/android/ugc/cut_downloader/Downloader$DownloadServiceConnection;->serviceLiveData:Landroidx/lifecycle/MutableLiveData;

    return-void
.end method

.method private static final onServiceConnected$lambda-1$lambda-0(Lcom/ss/android/ugc/cut_downloader/Downloader$DownloadServiceConnection;)V
    .registers 3

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 242
    const-string v0, "cutui.DownloadProxy"

    const-string v1, "service Death !!"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    invoke-virtual {p0}, Lcom/ss/android/ugc/cut_downloader/Downloader$DownloadServiceConnection;->getServiceLiveData()Landroidx/lifecycle/MutableLiveData;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final getServiceLiveData()Landroidx/lifecycle/MutableLiveData;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData;"
        }
    .end annotation

    .line 222
    iget-object p0, p0, Lcom/ss/android/ugc/cut_downloader/Downloader$DownloadServiceConnection;->serviceLiveData:Landroidx/lifecycle/MutableLiveData;

    return-object p0
.end method

.method public onBindingDied(Landroid/content/ComponentName;)V
    .registers 2

    .line 226
    const-string p0, "onBindingDied "

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "cutui.DownloadProxy"

    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onNullBinding(Landroid/content/ComponentName;)V
    .registers 2

    .line 230
    const-string p0, "onNullBinding "

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "cutui.DownloadProxy"

    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 4

    if-nez p2, :cond_3

    return-void

    .line 240
    :cond_3
    invoke-virtual {p0}, Lcom/ss/android/ugc/cut_downloader/Downloader$DownloadServiceConnection;->getServiceLiveData()Landroidx/lifecycle/MutableLiveData;

    move-result-object p1

    invoke-static {p2}, Lcom/ss/android/ugc/cut_downloader/IDownloadService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/ss/android/ugc/cut_downloader/IDownloadService;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 241
    new-instance p1, Lcom/ss/android/ugc/cut_downloader/Downloader$DownloadServiceConnection$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lcom/ss/android/ugc/cut_downloader/Downloader$DownloadServiceConnection$$ExternalSyntheticLambda0;-><init>(Lcom/ss/android/ugc/cut_downloader/Downloader$DownloadServiceConnection;)V

    const/4 p0, 0x0

    invoke-interface {p2, p1, p0}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 3

    .line 234
    const-string p1, "cutui.DownloadProxy"

    const-string v0, "onServiceDisconnected"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    iget-object p0, p0, Lcom/ss/android/ugc/cut_downloader/Downloader$DownloadServiceConnection;->serviceLiveData:Landroidx/lifecycle/MutableLiveData;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    return-void
.end method
