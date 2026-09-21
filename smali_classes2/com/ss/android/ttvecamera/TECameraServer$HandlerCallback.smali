.class Lcom/ss/android/ttvecamera/TECameraServer$HandlerCallback;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ss/android/ttvecamera/TECameraServer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "HandlerCallback"
.end annotation


# static fields
.field public static final MSG_NONE:I = 0x0

.field public static final MSG_START_ZOOM:I = 0x1

.field public static final MSG_STOP_ZOOM:I = 0x2


# instance fields
.field private mWeakServer:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/ss/android/ttvecamera/TECameraServer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/ss/android/ttvecamera/TECameraServer;)V
    .registers 3

    .line 2617
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2618
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/ss/android/ttvecamera/TECameraServer$HandlerCallback;->mWeakServer:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .registers 7

    .line 2623
    iget v0, p1, Landroid/os/Message;->what:I

    .line 2624
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 2626
    iget-object p0, p0, Lcom/ss/android/ttvecamera/TECameraServer$HandlerCallback;->mWeakServer:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/ss/android/ttvecamera/TECameraServer;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eq v0, v2, :cond_11

    goto :goto_4e

    .line 2630
    :cond_11
    const-string v0, "TECameraServer"

    const-string v2, "startZoom..."

    invoke-static {v0, v2}, Lcom/ss/android/ttvecamera/TELogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2631
    # getter for: Lcom/ss/android/ttvecamera/TECameraServer;->mStateLock:Ljava/lang/Object;
    invoke-static {p0}, Lcom/ss/android/ttvecamera/TECameraServer;->access$1200(Lcom/ss/android/ttvecamera/TECameraServer;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 2632
    :try_start_1d
    # getter for: Lcom/ss/android/ttvecamera/TECameraServer;->mCameraInstance:Lcom/ss/android/ttvecamera/TECameraBase;
    invoke-static {p0}, Lcom/ss/android/ttvecamera/TECameraServer;->access$300(Lcom/ss/android/ttvecamera/TECameraServer;)Lcom/ss/android/ttvecamera/TECameraBase;

    move-result-object v2

    if-eqz v2, :cond_35

    .line 2633
    # getter for: Lcom/ss/android/ttvecamera/TECameraServer;->mCameraInstance:Lcom/ss/android/ttvecamera/TECameraBase;
    invoke-static {p0}, Lcom/ss/android/ttvecamera/TECameraServer;->access$300(Lcom/ss/android/ttvecamera/TECameraServer;)Lcom/ss/android/ttvecamera/TECameraBase;

    move-result-object v2

    iget p1, p1, Landroid/os/Message;->arg1:I

    int-to-float p1, p1

    const/high16 v4, 0x42c80000    # 100.0f

    div-float/2addr p1, v4

    check-cast v1, Lcom/ss/android/ttvecamera/TECameraSettings$ZoomCallback;

    invoke-virtual {v2, p1, v1}, Lcom/ss/android/ttvecamera/TECameraBase;->startZoom(FLcom/ss/android/ttvecamera/TECameraSettings$ZoomCallback;)V

    goto :goto_35

    :catchall_33
    move-exception p0

    goto :goto_4f

    .line 2635
    :cond_35
    :goto_35
    # getter for: Lcom/ss/android/ttvecamera/TECameraServer;->mFirstZoom:Z
    invoke-static {p0}, Lcom/ss/android/ttvecamera/TECameraServer;->access$3100(Lcom/ss/android/ttvecamera/TECameraServer;)Z

    move-result p1

    if-eqz p1, :cond_4d

    .line 2636
    # getter for: Lcom/ss/android/ttvecamera/TECameraServer;->mCameraEvent:Lcom/ss/android/ttvecamera/TECameraBase$CameraEvents;
    invoke-static {p0}, Lcom/ss/android/ttvecamera/TECameraServer;->access$1500(Lcom/ss/android/ttvecamera/TECameraServer;)Lcom/ss/android/ttvecamera/TECameraBase$CameraEvents;

    move-result-object p1

    const-string v1, "startzoom"

    # getter for: Lcom/ss/android/ttvecamera/TECameraServer;->mCameraInstance:Lcom/ss/android/ttvecamera/TECameraBase;
    invoke-static {p0}, Lcom/ss/android/ttvecamera/TECameraServer;->access$300(Lcom/ss/android/ttvecamera/TECameraServer;)Lcom/ss/android/ttvecamera/TECameraBase;

    move-result-object v2

    const/16 v4, 0x72

    invoke-interface {p1, v4, v3, v1, v2}, Lcom/ss/android/ttvecamera/TECameraBase$CameraEvents;->onCameraInfo(IILjava/lang/String;Ljava/lang/Object;)V

    .line 2637
    # setter for: Lcom/ss/android/ttvecamera/TECameraServer;->mFirstZoom:Z
    invoke-static {p0, v3}, Lcom/ss/android/ttvecamera/TECameraServer;->access$3102(Lcom/ss/android/ttvecamera/TECameraServer;Z)Z

    .line 2639
    :cond_4d
    monitor-exit v0

    :goto_4e
    return v3

    :goto_4f
    monitor-exit v0
    :try_end_50
    .catchall {:try_start_1d .. :try_end_50} :catchall_33

    throw p0
.end method
