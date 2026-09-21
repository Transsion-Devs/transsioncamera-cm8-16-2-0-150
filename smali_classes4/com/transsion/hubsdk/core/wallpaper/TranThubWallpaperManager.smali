.class public Lcom/transsion/hubsdk/core/wallpaper/TranThubWallpaperManager;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/hubsdk/interfaces/wallpaper/ITranWallpaperManagerAdapter;


# static fields
.field private static final TAG:Ljava/lang/String; = "TranThubWallpaperManager"


# instance fields
.field private mService:Lcom/transsion/hubsdk/app/ITranWallpaperManager;


# direct methods
.method public static synthetic $r8$lambda$gxNg-m-FvS-5atznb-2omicvJ0E(Lcom/transsion/hubsdk/core/wallpaper/TranThubWallpaperManager;Landroid/content/ComponentName;)Ljava/lang/Object;
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/hubsdk/core/wallpaper/TranThubWallpaperManager;->lambda$setWallpaperComponent$0(Landroid/content/ComponentName;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    const-string v0, "wallpaper"

    invoke-static {v0}, Lcom/transsion/hubsdk/TranServiceManager;->getServiceIBinder(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 32
    invoke-static {v0}, Lcom/transsion/hubsdk/app/ITranWallpaperManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/transsion/hubsdk/app/ITranWallpaperManager;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/hubsdk/core/wallpaper/TranThubWallpaperManager;->mService:Lcom/transsion/hubsdk/app/ITranWallpaperManager;

    return-void
.end method

.method private synthetic lambda$setWallpaperComponent$0(Landroid/content/ComponentName;)Ljava/lang/Object;
    .registers 2

    .line 38
    iget-object p0, p0, Lcom/transsion/hubsdk/core/wallpaper/TranThubWallpaperManager;->mService:Lcom/transsion/hubsdk/app/ITranWallpaperManager;

    if-eqz p0, :cond_7

    .line 39
    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/app/ITranWallpaperManager;->setWallpaperComponent(Landroid/content/ComponentName;)V

    :cond_7
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public getBitmapAsUser(IZI)Landroid/graphics/Bitmap;
    .registers 4

    .line 61
    :try_start_0
    iget-object p0, p0, Lcom/transsion/hubsdk/core/wallpaper/TranThubWallpaperManager;->mService:Lcom/transsion/hubsdk/app/ITranWallpaperManager;

    if-eqz p0, :cond_11

    .line 62
    invoke-interface {p0, p1, p2, p3}, Lcom/transsion/hubsdk/app/ITranWallpaperManager;->getBitmapAsUser(IZI)Landroid/graphics/Bitmap;

    move-result-object p0
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_8} :catch_9

    return-object p0

    :catch_9
    move-exception p0

    .line 65
    sget-object p1, Lcom/transsion/hubsdk/core/wallpaper/TranThubWallpaperManager;->TAG:Ljava/lang/String;

    const-string p2, "getBitmapAsUser: "

    invoke-static {p1, p2, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_11
    const/4 p0, 0x0

    return-object p0
.end method

.method public getWallpaperInfo(I)Landroid/app/WallpaperInfo;
    .registers 3

    .line 51
    :try_start_0
    iget-object p0, p0, Lcom/transsion/hubsdk/core/wallpaper/TranThubWallpaperManager;->mService:Lcom/transsion/hubsdk/app/ITranWallpaperManager;

    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/app/ITranWallpaperManager;->getWallpaperInfo(I)Landroid/app/WallpaperInfo;

    move-result-object p0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return-object p0

    :catch_7
    move-exception p0

    .line 53
    sget-object p1, Lcom/transsion/hubsdk/core/wallpaper/TranThubWallpaperManager;->TAG:Ljava/lang/String;

    const-string v0, "getWallpaperInfo: "

    invoke-static {p1, v0, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method protected setService(Lcom/transsion/hubsdk/app/ITranWallpaperManager;)V
    .registers 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 77
    iput-object p1, p0, Lcom/transsion/hubsdk/core/wallpaper/TranThubWallpaperManager;->mService:Lcom/transsion/hubsdk/app/ITranWallpaperManager;

    return-void
.end method

.method public setWallpaperComponent(Landroid/content/ComponentName;)V
    .registers 4

    .line 37
    new-instance v0, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;

    invoke-direct {v0}, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;-><init>()V

    new-instance v1, Lcom/transsion/hubsdk/core/wallpaper/TranThubWallpaperManager$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lcom/transsion/hubsdk/core/wallpaper/TranThubWallpaperManager$$ExternalSyntheticLambda0;-><init>(Lcom/transsion/hubsdk/core/wallpaper/TranThubWallpaperManager;Landroid/content/ComponentName;)V

    const-string p0, "wallpaper"

    invoke-virtual {v0, v1, p0}, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;->timeOutAndExceptionRun(Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute$TimeOutAndExceptionRunnable;Ljava/lang/String;)Ljava/lang/Object;

    .line 43
    sget-object p0, Lcom/transsion/hubsdk/core/wallpaper/TranThubWallpaperManager;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setWallpaperComponent name:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
