.class public Lcom/transsion/camera/feature/setting/flashfacade/monitor/CaptureStateMonitor;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/adapter/CameraProxy$Shot2ShotCallback;
.implements Lcom/transsion/camera/app/common/setting/ICameraSetting$DevicePictureStateCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/feature/setting/flashfacade/monitor/CaptureStateMonitor$CallbackWrapper;,
        Lcom/transsion/camera/feature/setting/flashfacade/monitor/CaptureStateMonitor$ICaptureStateCallback;
    }
.end annotation


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private mCallback:Lcom/transsion/camera/feature/setting/flashfacade/monitor/CaptureStateMonitor$ICaptureStateCallback;

.field private final mCallbackWrapper:Lcom/transsion/camera/feature/setting/flashfacade/monitor/CaptureStateMonitor$CallbackWrapper;

.field private final mCapturing:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method static bridge synthetic -$$Nest$fgetmCallback(Lcom/transsion/camera/feature/setting/flashfacade/monitor/CaptureStateMonitor;)Lcom/transsion/camera/feature/setting/flashfacade/monitor/CaptureStateMonitor$ICaptureStateCallback;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/flashfacade/monitor/CaptureStateMonitor;->mCallback:Lcom/transsion/camera/feature/setting/flashfacade/monitor/CaptureStateMonitor$ICaptureStateCallback;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;
    .registers 1

    .line 0
    sget-object v0, Lcom/transsion/camera/feature/setting/flashfacade/monitor/CaptureStateMonitor;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 27
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "CaptureStateMonitor"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/feature/setting/flashfacade/monitor/CaptureStateMonitor;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/transsion/camera/feature/setting/flashfacade/monitor/CaptureStateMonitor;->mCapturing:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 42
    new-instance v0, Lcom/transsion/camera/feature/setting/flashfacade/monitor/CaptureStateMonitor$CallbackWrapper;

    invoke-direct {v0, p0}, Lcom/transsion/camera/feature/setting/flashfacade/monitor/CaptureStateMonitor$CallbackWrapper;-><init>(Lcom/transsion/camera/feature/setting/flashfacade/monitor/CaptureStateMonitor;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/setting/flashfacade/monitor/CaptureStateMonitor;->mCallbackWrapper:Lcom/transsion/camera/feature/setting/flashfacade/monitor/CaptureStateMonitor$CallbackWrapper;

    return-void
.end method


# virtual methods
.method public capturing()Z
    .registers 1

    .line 103
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/flashfacade/monitor/CaptureStateMonitor;->mCapturing:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p0

    if-lez p0, :cond_a

    const/4 p0, 0x1

    return p0

    :cond_a
    const/4 p0, 0x0

    return p0
.end method

.method public flush()V
    .registers 2

    .line 68
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/flashfacade/monitor/CaptureStateMonitor;->mCapturing:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-lez v0, :cond_d

    .line 69
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/flashfacade/monitor/CaptureStateMonitor;->mCapturing:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    .line 71
    :cond_d
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/flashfacade/monitor/CaptureStateMonitor;->mCallbackWrapper:Lcom/transsion/camera/feature/setting/flashfacade/monitor/CaptureStateMonitor$CallbackWrapper;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/flashfacade/monitor/CaptureStateMonitor$CallbackWrapper;->onCaptureEnd()V

    return-void
.end method

.method public onCaptureEnd()V
    .registers 2

    .line 86
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/flashfacade/monitor/CaptureStateMonitor;->mCapturing:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-lez v0, :cond_d

    .line 87
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/flashfacade/monitor/CaptureStateMonitor;->mCapturing:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    .line 89
    :cond_d
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/flashfacade/monitor/CaptureStateMonitor;->mCallbackWrapper:Lcom/transsion/camera/feature/setting/flashfacade/monitor/CaptureStateMonitor$CallbackWrapper;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/flashfacade/monitor/CaptureStateMonitor$CallbackWrapper;->onCaptureEnd()V

    return-void
.end method

.method public onCaptureStart()V
    .registers 1

    return-void
.end method

.method public onNextReady(Lcom/transsion/camera/adapter/CameraProxy$ICameraCaptureState;)V
    .registers 2

    .line 63
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/flashfacade/monitor/CaptureStateMonitor;->mCallbackWrapper:Lcom/transsion/camera/feature/setting/flashfacade/monitor/CaptureStateMonitor$CallbackWrapper;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/flashfacade/monitor/CaptureStateMonitor$CallbackWrapper;->onNextReady()V

    return-void
.end method

.method public bridge synthetic onShutterDone()V
    .registers 1

    .line 0
    invoke-super {p0}, Lcom/transsion/camera/adapter/CameraProxy$Shot2ShotCallback;->onShutterDone()V

    return-void
.end method

.method public processPreview()V
    .registers 1

    return-void
.end method

.method public reset()V
    .registers 3

    .line 107
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/flashfacade/monitor/CaptureStateMonitor;->mCapturing:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 108
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/flashfacade/monitor/CaptureStateMonitor;->mCallbackWrapper:Lcom/transsion/camera/feature/setting/flashfacade/monitor/CaptureStateMonitor$CallbackWrapper;

    invoke-static {p0}, Lcom/transsion/camera/feature/setting/flashfacade/monitor/CaptureStateMonitor$CallbackWrapper;->-$$Nest$mreset(Lcom/transsion/camera/feature/setting/flashfacade/monitor/CaptureStateMonitor$CallbackWrapper;)V

    return-void
.end method

.method public saveHighQualityJpegDone()V
    .registers 1

    return-void
.end method

.method public setCaptureStateCallback(Lcom/transsion/camera/feature/setting/flashfacade/monitor/CaptureStateMonitor$ICaptureStateCallback;)V
    .registers 5

    .line 46
    sget-object v0, Lcom/transsion/camera/feature/setting/flashfacade/monitor/CaptureStateMonitor;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setCaptureStateCallback callback: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 47
    iput-object p1, p0, Lcom/transsion/camera/feature/setting/flashfacade/monitor/CaptureStateMonitor;->mCallback:Lcom/transsion/camera/feature/setting/flashfacade/monitor/CaptureStateMonitor$ICaptureStateCallback;

    return-void
.end method

.method public takePictureEnd(Z)V
    .registers 2

    if-nez p1, :cond_14

    .line 95
    iget-object p1, p0, Lcom/transsion/camera/feature/setting/flashfacade/monitor/CaptureStateMonitor;->mCapturing:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p1

    if-lez p1, :cond_f

    .line 96
    iget-object p1, p0, Lcom/transsion/camera/feature/setting/flashfacade/monitor/CaptureStateMonitor;->mCapturing:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    .line 98
    :cond_f
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/flashfacade/monitor/CaptureStateMonitor;->mCallbackWrapper:Lcom/transsion/camera/feature/setting/flashfacade/monitor/CaptureStateMonitor$CallbackWrapper;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/flashfacade/monitor/CaptureStateMonitor$CallbackWrapper;->onCaptureEnd()V

    :cond_14
    return-void
.end method

.method public takePictureStart()V
    .registers 2

    .line 52
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/flashfacade/monitor/CaptureStateMonitor;->mCapturing:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 53
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/flashfacade/monitor/CaptureStateMonitor;->mCallbackWrapper:Lcom/transsion/camera/feature/setting/flashfacade/monitor/CaptureStateMonitor$CallbackWrapper;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/flashfacade/monitor/CaptureStateMonitor$CallbackWrapper;->onCaptureStart()V

    return-void
.end method
