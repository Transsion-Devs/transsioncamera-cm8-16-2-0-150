.class public Lcom/transsion/camera/featurelibs/aicommon/capture/CaptureShot;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/featurelibs/aicommon/capture/CaptureShot$ICaptureShotCallback;
    }
.end annotation


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private final mCallbacks:Ljava/util/Queue;

.field private final mDeviceControl:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

.field private final mLock:Ljava/lang/Object;


# direct methods
.method public static synthetic $r8$lambda$1HE0arsM4oqCMx_tBN2TD2MkW8E()V
    .registers 2

    .line 43
    sget-object v0, Lcom/transsion/camera/featurelibs/aicommon/capture/CaptureShot;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "captureExecuted"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 22
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "CaptureShot"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/featurelibs/aicommon/capture/CaptureShot;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Lcom/transsion/camera/app/common/mode/CameraDeviceControl;)V
    .registers 3

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/featurelibs/aicommon/capture/CaptureShot;->mLock:Ljava/lang/Object;

    .line 32
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/featurelibs/aicommon/capture/CaptureShot;->mCallbacks:Ljava/util/Queue;

    .line 35
    iput-object p1, p0, Lcom/transsion/camera/featurelibs/aicommon/capture/CaptureShot;->mDeviceControl:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    return-void
.end method


# virtual methods
.method public captureCompleted()V
    .registers 2

    .line 61
    sget-object p0, Lcom/transsion/camera/featurelibs/aicommon/capture/CaptureShot;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "captureCompleted"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method public captureFailed()V
    .registers 3

    .line 51
    sget-object v0, Lcom/transsion/camera/featurelibs/aicommon/capture/CaptureShot;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "captureFailed"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 52
    iget-object v0, p0, Lcom/transsion/camera/featurelibs/aicommon/capture/CaptureShot;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 53
    :try_start_a
    iget-object p0, p0, Lcom/transsion/camera/featurelibs/aicommon/capture/CaptureShot;->mCallbacks:Ljava/util/Queue;

    invoke-interface {p0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/camera/featurelibs/aicommon/capture/CaptureShot$ICaptureShotCallback;

    if-eqz p0, :cond_1b

    const/4 v1, 0x0

    .line 55
    invoke-interface {p0, v1}, Lcom/transsion/camera/featurelibs/aicommon/capture/CaptureShot$ICaptureShotCallback;->onCaptureShot([B)V

    goto :goto_1b

    :catchall_19
    move-exception p0

    goto :goto_1d

    .line 57
    :cond_1b
    :goto_1b
    monitor-exit v0

    return-void

    :goto_1d
    monitor-exit v0
    :try_end_1e
    .catchall {:try_start_a .. :try_end_1e} :catchall_19

    throw p0
.end method

.method public captureShot(Lcom/transsion/camera/featurelibs/aicommon/capture/CaptureShot$ICaptureShotCallback;)V
    .registers 4

    .line 39
    sget-object v0, Lcom/transsion/camera/featurelibs/aicommon/capture/CaptureShot;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "captureShot"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 40
    iget-object v0, p0, Lcom/transsion/camera/featurelibs/aicommon/capture/CaptureShot;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 41
    :try_start_a
    iget-object v1, p0, Lcom/transsion/camera/featurelibs/aicommon/capture/CaptureShot;->mCallbacks:Ljava/util/Queue;

    invoke-interface {v1, p1}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    .line 42
    monitor-exit v0
    :try_end_10
    .catchall {:try_start_a .. :try_end_10} :catchall_1b

    .line 43
    iget-object p0, p0, Lcom/transsion/camera/featurelibs/aicommon/capture/CaptureShot;->mDeviceControl:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    new-instance p1, Lcom/transsion/camera/featurelibs/aicommon/capture/CaptureShot$$ExternalSyntheticLambda0;

    invoke-direct {p1}, Lcom/transsion/camera/featurelibs/aicommon/capture/CaptureShot$$ExternalSyntheticLambda0;-><init>()V

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->takePicture(Lcom/transsion/camera/app/common/mode/CameraDeviceControl$ICommandCallback;)V

    return-void

    :catchall_1b
    move-exception p0

    .line 42
    :try_start_1c
    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_1c .. :try_end_1d} :catchall_1b

    throw p0
.end method

.method public captureStarted()V
    .registers 2

    .line 47
    sget-object p0, Lcom/transsion/camera/featurelibs/aicommon/capture/CaptureShot;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "captureStarted"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method public pictureTaken([B)V
    .registers 5

    .line 65
    sget-object v0, Lcom/transsion/camera/featurelibs/aicommon/capture/CaptureShot;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "pictureTaken jpeg: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 66
    iget-object v0, p0, Lcom/transsion/camera/featurelibs/aicommon/capture/CaptureShot;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 67
    :try_start_1a
    iget-object p0, p0, Lcom/transsion/camera/featurelibs/aicommon/capture/CaptureShot;->mCallbacks:Ljava/util/Queue;

    invoke-interface {p0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/camera/featurelibs/aicommon/capture/CaptureShot$ICaptureShotCallback;

    if-eqz p0, :cond_2a

    .line 69
    invoke-interface {p0, p1}, Lcom/transsion/camera/featurelibs/aicommon/capture/CaptureShot$ICaptureShotCallback;->onCaptureShot([B)V

    goto :goto_2a

    :catchall_28
    move-exception p0

    goto :goto_2c

    .line 71
    :cond_2a
    :goto_2a
    monitor-exit v0

    return-void

    :goto_2c
    monitor-exit v0
    :try_end_2d
    .catchall {:try_start_1a .. :try_end_2d} :catchall_28

    throw p0
.end method

.method public release()V
    .registers 3

    .line 75
    sget-object v0, Lcom/transsion/camera/featurelibs/aicommon/capture/CaptureShot;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "release"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 76
    iget-object v0, p0, Lcom/transsion/camera/featurelibs/aicommon/capture/CaptureShot;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 77
    :try_start_a
    iget-object p0, p0, Lcom/transsion/camera/featurelibs/aicommon/capture/CaptureShot;->mCallbacks:Ljava/util/Queue;

    invoke-interface {p0}, Ljava/util/Collection;->clear()V

    .line 78
    monitor-exit v0

    return-void

    :catchall_11
    move-exception p0

    monitor-exit v0
    :try_end_13
    .catchall {:try_start_a .. :try_end_13} :catchall_11

    throw p0
.end method
