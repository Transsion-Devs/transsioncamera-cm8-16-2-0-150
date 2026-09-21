.class Lcom/transsion/camera/adapter/CameraProxy2Impl$CaptureStateMonitor;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/adapter/CameraProxy$CameraCaptureCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/adapter/CameraProxy2Impl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CaptureStateMonitor"
.end annotation


# instance fields
.field private mCallback:Lcom/transsion/camera/adapter/CameraProxy$CameraCaptureCallback;

.field private mCaptureCount:I

.field private mNeedCallbackCount:I

.field final synthetic this$0:Lcom/transsion/camera/adapter/CameraProxy2Impl;


# direct methods
.method static bridge synthetic -$$Nest$monNextReady(Lcom/transsion/camera/adapter/CameraProxy2Impl$CaptureStateMonitor;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/adapter/CameraProxy2Impl$CaptureStateMonitor;->onNextReady()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mwrapCaptureCallback(Lcom/transsion/camera/adapter/CameraProxy2Impl$CaptureStateMonitor;Lcom/transsion/camera/adapter/CameraProxy$CameraCaptureCallback;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/adapter/CameraProxy2Impl$CaptureStateMonitor;->wrapCaptureCallback(Lcom/transsion/camera/adapter/CameraProxy$CameraCaptureCallback;)V

    return-void
.end method

.method private constructor <init>(Lcom/transsion/camera/adapter/CameraProxy2Impl;)V
    .registers 2

    .line 465
    iput-object p1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl$CaptureStateMonitor;->this$0:Lcom/transsion/camera/adapter/CameraProxy2Impl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/transsion/camera/adapter/CameraProxy2Impl;Lcom/transsion/camera/adapter/CameraProxy2Impl-IA;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/adapter/CameraProxy2Impl$CaptureStateMonitor;-><init>(Lcom/transsion/camera/adapter/CameraProxy2Impl;)V

    return-void
.end method

.method private captureFinished()V
    .registers 2

    .line 521
    iget v0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl$CaptureStateMonitor;->mCaptureCount:I

    if-gtz v0, :cond_14

    iget v0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl$CaptureStateMonitor;->mNeedCallbackCount:I

    if-lez v0, :cond_14

    const/4 v0, 0x0

    .line 522
    iput v0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl$CaptureStateMonitor;->mNeedCallbackCount:I

    .line 523
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl$CaptureStateMonitor;->this$0:Lcom/transsion/camera/adapter/CameraProxy2Impl;

    invoke-static {p0}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->-$$Nest$fgetmParameters(Lcom/transsion/camera/adapter/CameraProxy2Impl;)Lcom/transsion/camera/adapter/CameraParameters2Impl;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/transsion/camera/adapter/CameraParameters;->setFocusModeAuto(Z)V

    :cond_14
    return-void
.end method

.method private onNextReady()V
    .registers 2

    .line 528
    iget v0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl$CaptureStateMonitor;->mNeedCallbackCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl$CaptureStateMonitor;->mNeedCallbackCount:I

    .line 529
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl$CaptureStateMonitor;->this$0:Lcom/transsion/camera/adapter/CameraProxy2Impl;

    invoke-static {p0}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->-$$Nest$fgetmParameters(Lcom/transsion/camera/adapter/CameraProxy2Impl;)Lcom/transsion/camera/adapter/CameraParameters2Impl;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/transsion/camera/adapter/CameraParameters;->setFocusModeAuto(Z)V

    return-void
.end method

.method private wrapCaptureCallback(Lcom/transsion/camera/adapter/CameraProxy$CameraCaptureCallback;)V
    .registers 2

    .line 473
    iput-object p1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl$CaptureStateMonitor;->mCallback:Lcom/transsion/camera/adapter/CameraProxy$CameraCaptureCallback;

    .line 475
    iget p1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl$CaptureStateMonitor;->mCaptureCount:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl$CaptureStateMonitor;->mCaptureCount:I

    .line 476
    iget p1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl$CaptureStateMonitor;->mNeedCallbackCount:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl$CaptureStateMonitor;->mNeedCallbackCount:I

    return-void
.end method


# virtual methods
.method public onCaptureCompleted(Lcom/transsion/camera/adapter/CameraResults;Landroid/hardware/camera2/CaptureResult;Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;)V
    .registers 5

    .line 513
    iget v0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl$CaptureStateMonitor;->mCaptureCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl$CaptureStateMonitor;->mCaptureCount:I

    .line 514
    invoke-direct {p0}, Lcom/transsion/camera/adapter/CameraProxy2Impl$CaptureStateMonitor;->captureFinished()V

    .line 515
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl$CaptureStateMonitor;->mCallback:Lcom/transsion/camera/adapter/CameraProxy$CameraCaptureCallback;

    if-eqz p0, :cond_10

    .line 516
    invoke-interface {p0, p1, p2, p3}, Lcom/transsion/camera/adapter/CameraProxy$CameraCaptureCallback;->onCaptureCompleted(Lcom/transsion/camera/adapter/CameraResults;Landroid/hardware/camera2/CaptureResult;Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;)V

    :cond_10
    return-void
.end method

.method public onCaptureFailed(JZ[J)V
    .registers 6

    .line 504
    iget v0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl$CaptureStateMonitor;->mCaptureCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl$CaptureStateMonitor;->mCaptureCount:I

    .line 505
    invoke-direct {p0}, Lcom/transsion/camera/adapter/CameraProxy2Impl$CaptureStateMonitor;->captureFinished()V

    .line 506
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl$CaptureStateMonitor;->mCallback:Lcom/transsion/camera/adapter/CameraProxy$CameraCaptureCallback;

    if-eqz p0, :cond_10

    .line 507
    invoke-interface {p0, p1, p2, p3, p4}, Lcom/transsion/camera/adapter/CameraProxy$CameraCaptureCallback;->onCaptureFailed(JZ[J)V

    :cond_10
    return-void
.end method

.method public onCaptureFailed(Z)V
    .registers 3

    const/4 v0, 0x0

    .line 494
    invoke-virtual {p0, p1, v0}, Lcom/transsion/camera/adapter/CameraProxy2Impl$CaptureStateMonitor;->onCaptureFailed(Z[J)V

    return-void
.end method

.method public onCaptureFailed(Z[J)V
    .registers 5

    const-wide/16 v0, -0x1

    .line 499
    invoke-virtual {p0, v0, v1, p1, p2}, Lcom/transsion/camera/adapter/CameraProxy2Impl$CaptureStateMonitor;->onCaptureFailed(JZ[J)V

    return-void
.end method

.method public onCaptureProgressed(Lcom/transsion/camera/adapter/CameraResults;Lcom/transsion/camera/adapter/CameraProxy$ICameraCaptureState;)V
    .registers 3

    .line 534
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl$CaptureStateMonitor;->mCallback:Lcom/transsion/camera/adapter/CameraProxy$CameraCaptureCallback;

    if-eqz p0, :cond_7

    .line 535
    invoke-interface {p0, p1, p2}, Lcom/transsion/camera/adapter/CameraProxy$CameraCaptureCallback;->onCaptureProgressed(Lcom/transsion/camera/adapter/CameraResults;Lcom/transsion/camera/adapter/CameraProxy$ICameraCaptureState;)V

    :cond_7
    return-void
.end method

.method public onCaptureStarted(JLcom/transsion/camera/adapter/CameraProxy$ICameraCaptureState;)V
    .registers 4

    .line 481
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl$CaptureStateMonitor;->mCallback:Lcom/transsion/camera/adapter/CameraProxy$CameraCaptureCallback;

    if-eqz p0, :cond_7

    .line 482
    invoke-interface {p0, p1, p2, p3}, Lcom/transsion/camera/adapter/CameraProxy$CameraCaptureCallback;->onCaptureStarted(JLcom/transsion/camera/adapter/CameraProxy$ICameraCaptureState;)V

    :cond_7
    return-void
.end method

.method public onDoCapture()V
    .registers 1

    .line 487
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl$CaptureStateMonitor;->mCallback:Lcom/transsion/camera/adapter/CameraProxy$CameraCaptureCallback;

    if-eqz p0, :cond_7

    .line 488
    invoke-interface {p0}, Lcom/transsion/camera/adapter/CameraProxy$CameraCaptureCallback;->onDoCapture()V

    :cond_7
    return-void
.end method
