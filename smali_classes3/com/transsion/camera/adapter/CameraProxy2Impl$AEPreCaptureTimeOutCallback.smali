.class Lcom/transsion/camera/adapter/CameraProxy2Impl$AEPreCaptureTimeOutCallback;
.super Lcom/transsion/camera/adapter/CameraProxy2Impl$TimeOutCallback;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/adapter/CaptureResultMonitor$AEPreCaptureResultCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/adapter/CameraProxy2Impl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AEPreCaptureTimeOutCallback"
.end annotation


# instance fields
.field private final mDelegate:Lcom/transsion/camera/adapter/CaptureResultMonitor$AEPreCaptureResultCallback;


# direct methods
.method private constructor <init>(Lcom/transsion/camera/adapter/CameraProxy2Impl;Lcom/transsion/camera/adapter/CaptureResultMonitor$AEPreCaptureResultCallback;)V
    .registers 4

    const/4 v0, 0x0

    .line 2341
    invoke-direct {p0, p1, v0}, Lcom/transsion/camera/adapter/CameraProxy2Impl$TimeOutCallback;-><init>(Lcom/transsion/camera/adapter/CameraProxy2Impl;Lcom/transsion/camera/adapter/CameraProxy2Impl-IA;)V

    .line 2342
    iput-object p2, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl$AEPreCaptureTimeOutCallback;->mDelegate:Lcom/transsion/camera/adapter/CaptureResultMonitor$AEPreCaptureResultCallback;

    return-void
.end method

.method synthetic constructor <init>(Lcom/transsion/camera/adapter/CameraProxy2Impl;Lcom/transsion/camera/adapter/CaptureResultMonitor$AEPreCaptureResultCallback;Lcom/transsion/camera/adapter/CameraProxy2Impl-IA;)V
    .registers 4

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/adapter/CameraProxy2Impl$AEPreCaptureTimeOutCallback;-><init>(Lcom/transsion/camera/adapter/CameraProxy2Impl;Lcom/transsion/camera/adapter/CaptureResultMonitor$AEPreCaptureResultCallback;)V

    return-void
.end method


# virtual methods
.method public onAEPreCaptureDone()V
    .registers 3

    .line 2353
    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraProxy2Impl$TimeOutCallback;->shouldTriggerCallBack()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 2354
    invoke-static {}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    const-string v1, "[CapturePerformance] onAEPreCaptureDone AEPreCapture"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 2355
    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraProxy2Impl$TimeOutCallback;->removeTimeOutCallback()V

    .line 2356
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl$AEPreCaptureTimeOutCallback;->mDelegate:Lcom/transsion/camera/adapter/CaptureResultMonitor$AEPreCaptureResultCallback;

    invoke-interface {p0}, Lcom/transsion/camera/adapter/CaptureResultMonitor$AEPreCaptureResultCallback;->onAEPreCaptureDone()V

    :cond_17
    return-void
.end method

.method protected triggerTimeOutCallBack()V
    .registers 3

    .line 2347
    invoke-static {}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    const-string v1, "[CapturePerformance] triggerTimeOutCallBack AEPreCapture"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 2348
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl$AEPreCaptureTimeOutCallback;->mDelegate:Lcom/transsion/camera/adapter/CaptureResultMonitor$AEPreCaptureResultCallback;

    invoke-interface {p0}, Lcom/transsion/camera/adapter/CaptureResultMonitor$AEPreCaptureResultCallback;->onAEPreCaptureDone()V

    return-void
.end method
