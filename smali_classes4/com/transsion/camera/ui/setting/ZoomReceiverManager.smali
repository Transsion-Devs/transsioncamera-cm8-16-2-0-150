.class public Lcom/transsion/camera/ui/setting/ZoomReceiverManager;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/ui/setting/ZoomReceiverManager$ZoomChangedReceiver;,
        Lcom/transsion/camera/ui/setting/ZoomReceiverManager$IZoomReceiverListener;
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mIsReceiverRegistered:Z

.field private final mListener:Lcom/transsion/camera/ui/setting/ZoomReceiverManager$IZoomReceiverListener;

.field private final mLock:Ljava/lang/Object;

.field private final mZoomChangedReceiver:Lcom/transsion/camera/ui/setting/ZoomReceiverManager$ZoomChangedReceiver;


# direct methods
.method public static synthetic $r8$lambda$OLuSQrbjg8z40zXKaHzp-jZGQSw(Lcom/transsion/camera/ui/setting/ZoomReceiverManager;Landroid/content/Context;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/ZoomReceiverManager;->lambda$init$0(Landroid/content/Context;)V

    return-void
.end method

.method public static synthetic $r8$lambda$iS1QKJsVZ_4vvAUhTRGNw63mjOo(Lcom/transsion/camera/ui/setting/ZoomReceiverManager;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/ZoomReceiverManager;->lambda$unInit$1()V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetmListener(Lcom/transsion/camera/ui/setting/ZoomReceiverManager;)Lcom/transsion/camera/ui/setting/ZoomReceiverManager$IZoomReceiverListener;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/ZoomReceiverManager;->mListener:Lcom/transsion/camera/ui/setting/ZoomReceiverManager$IZoomReceiverListener;

    return-object p0
.end method

.method public constructor <init>(Lcom/transsion/camera/ui/setting/ZoomReceiverManager$IZoomReceiverListener;)V
    .registers 4

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 20
    iput-boolean v0, p0, Lcom/transsion/camera/ui/setting/ZoomReceiverManager;->mIsReceiverRegistered:Z

    .line 21
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/ui/setting/ZoomReceiverManager;->mLock:Ljava/lang/Object;

    .line 28
    new-instance v0, Lcom/transsion/camera/ui/setting/ZoomReceiverManager$ZoomChangedReceiver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/transsion/camera/ui/setting/ZoomReceiverManager$ZoomChangedReceiver;-><init>(Lcom/transsion/camera/ui/setting/ZoomReceiverManager;Lcom/transsion/camera/ui/setting/ZoomReceiverManager-IA;)V

    iput-object v0, p0, Lcom/transsion/camera/ui/setting/ZoomReceiverManager;->mZoomChangedReceiver:Lcom/transsion/camera/ui/setting/ZoomReceiverManager$ZoomChangedReceiver;

    .line 29
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/ZoomReceiverManager;->mListener:Lcom/transsion/camera/ui/setting/ZoomReceiverManager$IZoomReceiverListener;

    return-void
.end method

.method private synthetic lambda$init$0(Landroid/content/Context;)V
    .registers 6

    .line 34
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/ZoomReceiverManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 35
    :try_start_3
    iget-boolean v1, p0, Lcom/transsion/camera/ui/setting/ZoomReceiverManager;->mIsReceiverRegistered:Z

    if-eqz v1, :cond_b

    .line 36
    monitor-exit v0

    return-void

    :catchall_9
    move-exception p0

    goto :goto_28

    .line 38
    :cond_b
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/ui/setting/ZoomReceiverManager;->mContext:Landroid/content/Context;

    .line 39
    new-instance p1, Landroid/content/IntentFilter;

    invoke-direct {p1}, Landroid/content/IntentFilter;-><init>()V

    .line 40
    const-string v1, "com.transsion.camera.action.zoomchanged"

    invoke-virtual {p1, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 41
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/ZoomReceiverManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/transsion/camera/ui/setting/ZoomReceiverManager;->mZoomChangedReceiver:Lcom/transsion/camera/ui/setting/ZoomReceiverManager$ZoomChangedReceiver;

    const/4 v3, 0x2

    invoke-virtual {v1, v2, p1, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    const/4 p1, 0x1

    .line 42
    iput-boolean p1, p0, Lcom/transsion/camera/ui/setting/ZoomReceiverManager;->mIsReceiverRegistered:Z

    .line 43
    monitor-exit v0

    return-void

    :goto_28
    monitor-exit v0
    :try_end_29
    .catchall {:try_start_3 .. :try_end_29} :catchall_9

    throw p0
.end method

.method private synthetic lambda$unInit$1()V
    .registers 4

    .line 50
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/ZoomReceiverManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 51
    :try_start_3
    iget-boolean v1, p0, Lcom/transsion/camera/ui/setting/ZoomReceiverManager;->mIsReceiverRegistered:Z

    if-eqz v1, :cond_17

    const/4 v1, 0x0

    .line 52
    iput-boolean v1, p0, Lcom/transsion/camera/ui/setting/ZoomReceiverManager;->mIsReceiverRegistered:Z

    .line 53
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/ZoomReceiverManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/transsion/camera/ui/setting/ZoomReceiverManager;->mZoomChangedReceiver:Lcom/transsion/camera/ui/setting/ZoomReceiverManager$ZoomChangedReceiver;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v1, 0x0

    .line 54
    iput-object v1, p0, Lcom/transsion/camera/ui/setting/ZoomReceiverManager;->mContext:Landroid/content/Context;

    goto :goto_17

    :catchall_15
    move-exception p0

    goto :goto_19

    .line 56
    :cond_17
    :goto_17
    monitor-exit v0

    return-void

    :goto_19
    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_3 .. :try_end_1a} :catchall_15

    throw p0
.end method


# virtual methods
.method public init(Landroid/content/Context;)V
    .registers 4

    .line 33
    invoke-static {}, Lcom/transsion/camera/utils/threads/WorkThreadPools;->getInstance()Lcom/transsion/camera/utils/threads/WorkThreadPools;

    move-result-object v0

    new-instance v1, Lcom/transsion/camera/ui/setting/ZoomReceiverManager$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lcom/transsion/camera/ui/setting/ZoomReceiverManager$$ExternalSyntheticLambda0;-><init>(Lcom/transsion/camera/ui/setting/ZoomReceiverManager;Landroid/content/Context;)V

    const-string p0, "ZoomReceiverManager.init"

    invoke-virtual {v0, v1, p0}, Lcom/transsion/camera/utils/threads/WorkThreadPools;->execute(Ljava/lang/Runnable;Ljava/lang/String;)V

    return-void
.end method

.method public unInit()V
    .registers 3

    .line 49
    invoke-static {}, Lcom/transsion/camera/utils/threads/WorkThreadPools;->getInstance()Lcom/transsion/camera/utils/threads/WorkThreadPools;

    move-result-object v0

    new-instance v1, Lcom/transsion/camera/ui/setting/ZoomReceiverManager$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/transsion/camera/ui/setting/ZoomReceiverManager$$ExternalSyntheticLambda1;-><init>(Lcom/transsion/camera/ui/setting/ZoomReceiverManager;)V

    const-string p0, "ZoomReceiverManager.unInit"

    invoke-virtual {v0, v1, p0}, Lcom/transsion/camera/utils/threads/WorkThreadPools;->execute(Ljava/lang/Runnable;Ljava/lang/String;)V

    return-void
.end method
