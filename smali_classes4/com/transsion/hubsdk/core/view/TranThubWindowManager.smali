.class public Lcom/transsion/hubsdk/core/view/TranThubWindowManager;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/hubsdk/interfaces/view/ITranWindowManagerAdapter;


# static fields
.field private static final TAG:Ljava/lang/String; = "TranThubWindowManager"


# instance fields
.field private mLayoutParams:Lcom/transsion/hubsdk/view/TranWindowManager$TranLayoutParams;

.field private mService:Lcom/transsion/hubsdk/view/ITranWindowManager;


# direct methods
.method public static synthetic $r8$lambda$Fo3Bp0bJv__TkhRMCH7esMivrSE(Lcom/transsion/hubsdk/core/view/TranThubWindowManager;Landroid/view/WindowManager$LayoutParams;)Ljava/lang/Object;
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/hubsdk/core/view/TranThubWindowManager;->lambda$setTrustedOverlay$1(Landroid/view/WindowManager$LayoutParams;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$XZ038bTWdDJBEd0iAZ5m3IfRak0(Lcom/transsion/hubsdk/core/view/TranThubWindowManager;Landroid/view/WindowManager$LayoutParams;I)Ljava/lang/Object;
    .registers 3

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/transsion/hubsdk/core/view/TranThubWindowManager;->lambda$setCutoutMode$2(Landroid/view/WindowManager$LayoutParams;I)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$uybZyQAbmoLLt0koU6oyXHAh4-s(Lcom/transsion/hubsdk/core/view/TranThubWindowManager;Landroid/view/WindowManager$LayoutParams;I)Ljava/lang/Object;
    .registers 3

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/transsion/hubsdk/core/view/TranThubWindowManager;->lambda$setPrivateFlags$0(Landroid/view/WindowManager$LayoutParams;I)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    const-string v0, "window"

    invoke-static {v0}, Lcom/transsion/hubsdk/TranServiceManager;->getServiceIBinder(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 35
    invoke-static {v0}, Lcom/transsion/hubsdk/view/ITranWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/transsion/hubsdk/view/ITranWindowManager;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/hubsdk/core/view/TranThubWindowManager;->mService:Lcom/transsion/hubsdk/view/ITranWindowManager;

    return-void
.end method

.method private getLayoutParams()Lcom/transsion/hubsdk/view/TranWindowManager$TranLayoutParams;
    .registers 2

    .line 104
    iget-object v0, p0, Lcom/transsion/hubsdk/core/view/TranThubWindowManager;->mLayoutParams:Lcom/transsion/hubsdk/view/TranWindowManager$TranLayoutParams;

    if-nez v0, :cond_b

    .line 105
    new-instance v0, Lcom/transsion/hubsdk/view/TranWindowManager$TranLayoutParams;

    invoke-direct {v0}, Lcom/transsion/hubsdk/view/TranWindowManager$TranLayoutParams;-><init>()V

    iput-object v0, p0, Lcom/transsion/hubsdk/core/view/TranThubWindowManager;->mLayoutParams:Lcom/transsion/hubsdk/view/TranWindowManager$TranLayoutParams;

    .line 107
    :cond_b
    iget-object p0, p0, Lcom/transsion/hubsdk/core/view/TranThubWindowManager;->mLayoutParams:Lcom/transsion/hubsdk/view/TranWindowManager$TranLayoutParams;

    return-object p0
.end method

.method private synthetic lambda$setCutoutMode$2(Landroid/view/WindowManager$LayoutParams;I)Ljava/lang/Object;
    .registers 3

    .line 115
    invoke-direct {p0}, Lcom/transsion/hubsdk/core/view/TranThubWindowManager;->getLayoutParams()Lcom/transsion/hubsdk/view/TranWindowManager$TranLayoutParams;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/transsion/hubsdk/view/TranWindowManager$TranLayoutParams;->setCutoutMode(Landroid/view/WindowManager$LayoutParams;I)V

    const/4 p0, 0x0

    return-object p0
.end method

.method private synthetic lambda$setPrivateFlags$0(Landroid/view/WindowManager$LayoutParams;I)Ljava/lang/Object;
    .registers 3

    .line 77
    invoke-direct {p0}, Lcom/transsion/hubsdk/core/view/TranThubWindowManager;->getLayoutParams()Lcom/transsion/hubsdk/view/TranWindowManager$TranLayoutParams;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/transsion/hubsdk/view/TranWindowManager$TranLayoutParams;->setPrivateFlags(Landroid/view/WindowManager$LayoutParams;I)V

    const/4 p0, 0x0

    return-object p0
.end method

.method private synthetic lambda$setTrustedOverlay$1(Landroid/view/WindowManager$LayoutParams;)Ljava/lang/Object;
    .registers 2

    .line 98
    invoke-direct {p0}, Lcom/transsion/hubsdk/core/view/TranThubWindowManager;->getLayoutParams()Lcom/transsion/hubsdk/view/TranWindowManager$TranLayoutParams;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/transsion/hubsdk/view/TranWindowManager$TranLayoutParams;->setTrustedOverlay(Landroid/view/WindowManager$LayoutParams;)V

    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public getAppRefreshRate(Ljava/lang/String;)I
    .registers 3

    .line 167
    iget-object p0, p0, Lcom/transsion/hubsdk/core/view/TranThubWindowManager;->mService:Lcom/transsion/hubsdk/view/ITranWindowManager;

    if-eqz p0, :cond_11

    .line 169
    :try_start_4
    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/view/ITranWindowManager;->getAppRefreshRate(Ljava/lang/String;)I

    move-result p0
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_8} :catch_9

    return p0

    :catch_9
    move-exception p0

    .line 171
    sget-object p1, Lcom/transsion/hubsdk/core/view/TranThubWindowManager;->TAG:Ljava/lang/String;

    const-string v0, "getAppRefreshRate RemoteException: "

    invoke-static {p1, v0, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_11
    const/4 p0, 0x0

    return p0
.end method

.method public getDefaultRefreshRateConfigList()Ljava/lang/String;
    .registers 3

    .line 132
    iget-object p0, p0, Lcom/transsion/hubsdk/core/view/TranThubWindowManager;->mService:Lcom/transsion/hubsdk/view/ITranWindowManager;

    if-eqz p0, :cond_11

    .line 134
    :try_start_4
    invoke-interface {p0}, Lcom/transsion/hubsdk/view/ITranWindowManager;->getDefaultRefreshRateConfigList()Ljava/lang/String;

    move-result-object p0
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_8} :catch_9

    return-object p0

    :catch_9
    move-exception p0

    .line 136
    sget-object v0, Lcom/transsion/hubsdk/core/view/TranThubWindowManager;->TAG:Ljava/lang/String;

    const-string v1, "getDefaultRefreshRateConfigList RemoteException: "

    invoke-static {v0, v1, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 139
    :cond_11
    const-string p0, ""

    return-object p0
.end method

.method public getPrivateFlags(Landroid/view/WindowManager$LayoutParams;)I
    .registers 2

    .line 127
    invoke-direct {p0}, Lcom/transsion/hubsdk/core/view/TranThubWindowManager;->getLayoutParams()Lcom/transsion/hubsdk/view/TranWindowManager$TranLayoutParams;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/transsion/hubsdk/view/TranWindowManager$TranLayoutParams;->getPrivateFlags(Landroid/view/WindowManager$LayoutParams;)I

    move-result p0

    return p0
.end method

.method public getRefreshRateConfigList()Ljava/lang/String;
    .registers 3

    .line 144
    iget-object p0, p0, Lcom/transsion/hubsdk/core/view/TranThubWindowManager;->mService:Lcom/transsion/hubsdk/view/ITranWindowManager;

    if-eqz p0, :cond_11

    .line 146
    :try_start_4
    invoke-interface {p0}, Lcom/transsion/hubsdk/view/ITranWindowManager;->getRefreshRateConfigList()Ljava/lang/String;

    move-result-object p0
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_8} :catch_9

    return-object p0

    :catch_9
    move-exception p0

    .line 148
    sget-object v0, Lcom/transsion/hubsdk/core/view/TranThubWindowManager;->TAG:Ljava/lang/String;

    const-string v1, "getRefreshRateConfigList RemoteException: "

    invoke-static {v0, v1, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 151
    :cond_11
    const-string p0, ""

    return-object p0
.end method

.method public getTranPictureList(I)Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 40
    iget-object p0, p0, Lcom/transsion/hubsdk/core/view/TranThubWindowManager;->mService:Lcom/transsion/hubsdk/view/ITranWindowManager;

    if-eqz p0, :cond_20

    .line 42
    :try_start_4
    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/view/ITranWindowManager;->getTranPictureList(I)Ljava/util/List;

    move-result-object p0
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_8} :catch_9

    return-object p0

    :catch_9
    move-exception p0

    .line 44
    sget-object p1, Lcom/transsion/hubsdk/core/view/TranThubWindowManager;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getTranPictureList fail:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_20
    const/4 p0, 0x0

    return-object p0
.end method

.method public getTranPictureSupportMode()[I
    .registers 4

    .line 52
    iget-object p0, p0, Lcom/transsion/hubsdk/core/view/TranThubWindowManager;->mService:Lcom/transsion/hubsdk/view/ITranWindowManager;

    if-eqz p0, :cond_20

    .line 54
    :try_start_4
    invoke-interface {p0}, Lcom/transsion/hubsdk/view/ITranWindowManager;->getTranPictureSupportMode()[I

    move-result-object p0
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_8} :catch_9

    return-object p0

    :catch_9
    move-exception p0

    .line 56
    sget-object v0, Lcom/transsion/hubsdk/core/view/TranThubWindowManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getTranPictureSupportMode fail:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_20
    const/4 p0, 0x0

    return-object p0
.end method

.method public hasMultiWindowForXDR()Z
    .registers 5

    .line 203
    iget-object p0, p0, Lcom/transsion/hubsdk/core/view/TranThubWindowManager;->mService:Lcom/transsion/hubsdk/view/ITranWindowManager;

    const/4 v0, 0x0

    if-nez p0, :cond_6

    return v0

    .line 207
    :cond_6
    :try_start_6
    invoke-interface {p0}, Lcom/transsion/hubsdk/view/ITranWindowManager;->hasMultiWindowForXDR()Z

    move-result p0
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_a} :catch_b

    return p0

    :catch_b
    move-exception p0

    .line 209
    sget-object v1, Lcom/transsion/hubsdk/core/view/TranThubWindowManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "hasMultiWindowForXDR RemoteException:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public isOccluded()Z
    .registers 4

    .line 180
    :try_start_0
    iget-object p0, p0, Lcom/transsion/hubsdk/core/view/TranThubWindowManager;->mService:Lcom/transsion/hubsdk/view/ITranWindowManager;

    if-eqz p0, :cond_24

    .line 181
    invoke-interface {p0}, Lcom/transsion/hubsdk/view/ITranWindowManager;->isOccluded()Z

    move-result p0
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_8} :catch_9

    return p0

    :catch_9
    move-exception p0

    .line 184
    sget-object v0, Lcom/transsion/hubsdk/core/view/TranThubWindowManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isOccluded error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_24
    const/4 p0, 0x0

    return p0
.end method

.method public setCutoutMode(Landroid/view/WindowManager$LayoutParams;I)V
    .registers 5

    .line 114
    new-instance v0, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;

    invoke-direct {v0}, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;-><init>()V

    new-instance v1, Lcom/transsion/hubsdk/core/view/TranThubWindowManager$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, p1, p2}, Lcom/transsion/hubsdk/core/view/TranThubWindowManager$$ExternalSyntheticLambda2;-><init>(Lcom/transsion/hubsdk/core/view/TranThubWindowManager;Landroid/view/WindowManager$LayoutParams;I)V

    const-string p0, "window"

    invoke-virtual {v0, v1, p0}, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;->timeOutAndExceptionRun(Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute$TimeOutAndExceptionRunnable;Ljava/lang/String;)Ljava/lang/Object;

    return-void
.end method

.method public setInputFeatures(Landroid/view/WindowManager$LayoutParams;I)V
    .registers 3

    .line 122
    invoke-direct {p0}, Lcom/transsion/hubsdk/core/view/TranThubWindowManager;->getLayoutParams()Lcom/transsion/hubsdk/view/TranWindowManager$TranLayoutParams;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/transsion/hubsdk/view/TranWindowManager$TranLayoutParams;->setInputFeatures(Landroid/view/WindowManager$LayoutParams;I)V

    return-void
.end method

.method public setPrivateFlags(Landroid/view/WindowManager$LayoutParams;I)V
    .registers 5

    .line 76
    new-instance v0, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;

    invoke-direct {v0}, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;-><init>()V

    new-instance v1, Lcom/transsion/hubsdk/core/view/TranThubWindowManager$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1, p2}, Lcom/transsion/hubsdk/core/view/TranThubWindowManager$$ExternalSyntheticLambda1;-><init>(Lcom/transsion/hubsdk/core/view/TranThubWindowManager;Landroid/view/WindowManager$LayoutParams;I)V

    const-string p0, "window"

    invoke-virtual {v0, v1, p0}, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;->timeOutAndExceptionRun(Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute$TimeOutAndExceptionRunnable;Ljava/lang/String;)Ljava/lang/Object;

    return-void
.end method

.method public setRefreshRateConfigList(Ljava/lang/String;)V
    .registers 3

    .line 156
    iget-object p0, p0, Lcom/transsion/hubsdk/core/view/TranThubWindowManager;->mService:Lcom/transsion/hubsdk/view/ITranWindowManager;

    if-eqz p0, :cond_10

    .line 158
    :try_start_4
    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/view/ITranWindowManager;->setRefreshRateConfigList(Ljava/lang/String;)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_7} :catch_8

    return-void

    :catch_8
    move-exception p0

    .line 160
    sget-object p1, Lcom/transsion/hubsdk/core/view/TranThubWindowManager;->TAG:Ljava/lang/String;

    const-string v0, "getRefreshRateConfigList RemoteException: "

    invoke-static {p1, v0, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_10
    return-void
.end method

.method protected setService(Lcom/transsion/hubsdk/view/ITranWindowManager;)V
    .registers 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 197
    iput-object p1, p0, Lcom/transsion/hubsdk/core/view/TranThubWindowManager;->mService:Lcom/transsion/hubsdk/view/ITranWindowManager;

    return-void
.end method

.method public setTranPictureMode(ILjava/lang/String;)V
    .registers 4

    .line 64
    iget-object p0, p0, Lcom/transsion/hubsdk/core/view/TranThubWindowManager;->mService:Lcom/transsion/hubsdk/view/ITranWindowManager;

    if-eqz p0, :cond_1f

    .line 66
    :try_start_4
    invoke-interface {p0, p1, p2}, Lcom/transsion/hubsdk/view/ITranWindowManager;->setTranPictureMode(ILjava/lang/String;)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_7} :catch_8

    return-void

    :catch_8
    move-exception p0

    .line 68
    sget-object p1, Lcom/transsion/hubsdk/core/view/TranThubWindowManager;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "setTranPictureMode fail:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1f
    return-void
.end method

.method public setTrustedOverlay(Landroid/view/WindowManager$LayoutParams;)V
    .registers 4

    .line 97
    new-instance v0, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;

    invoke-direct {v0}, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;-><init>()V

    new-instance v1, Lcom/transsion/hubsdk/core/view/TranThubWindowManager$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lcom/transsion/hubsdk/core/view/TranThubWindowManager$$ExternalSyntheticLambda0;-><init>(Lcom/transsion/hubsdk/core/view/TranThubWindowManager;Landroid/view/WindowManager$LayoutParams;)V

    const-string p0, "window"

    invoke-virtual {v0, v1, p0}, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;->timeOutAndExceptionRun(Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute$TimeOutAndExceptionRunnable;Ljava/lang/String;)Ljava/lang/Object;

    return-void
.end method

.method public tranScreenshotWallpaperLocked()Landroid/graphics/Bitmap;
    .registers 4

    .line 84
    iget-object p0, p0, Lcom/transsion/hubsdk/core/view/TranThubWindowManager;->mService:Lcom/transsion/hubsdk/view/ITranWindowManager;

    if-eqz p0, :cond_20

    .line 86
    :try_start_4
    invoke-interface {p0}, Lcom/transsion/hubsdk/view/ITranWindowManager;->tranScreenshotWallpaperLocked()Landroid/graphics/Bitmap;

    move-result-object p0
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_8} :catch_9

    return-object p0

    :catch_9
    move-exception p0

    .line 88
    sget-object v0, Lcom/transsion/hubsdk/core/view/TranThubWindowManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "tranScreenshotWallpaperLocked fail"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_20
    const/4 p0, 0x0

    return-object p0
.end method
