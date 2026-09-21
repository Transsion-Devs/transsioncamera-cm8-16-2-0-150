.class Lcom/transsion/camera/adapter/CameraProxy2Impl$AFPreCaptureTimeOutCallback;
.super Lcom/transsion/camera/adapter/CameraProxy2Impl$TimeOutCallback;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/adapter/CameraProxy$CameraAutoFocusCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/adapter/CameraProxy2Impl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AFPreCaptureTimeOutCallback"
.end annotation


# instance fields
.field private final mDelegate:Lcom/transsion/camera/adapter/CameraProxy$CameraAutoFocusCallback;


# direct methods
.method private constructor <init>(Lcom/transsion/camera/adapter/CameraProxy2Impl;Lcom/transsion/camera/adapter/CameraProxy$CameraAutoFocusCallback;)V
    .registers 4

    const/4 v0, 0x0

    .line 2368
    invoke-direct {p0, p1, v0}, Lcom/transsion/camera/adapter/CameraProxy2Impl$TimeOutCallback;-><init>(Lcom/transsion/camera/adapter/CameraProxy2Impl;Lcom/transsion/camera/adapter/CameraProxy2Impl-IA;)V

    .line 2369
    iput-object p2, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl$AFPreCaptureTimeOutCallback;->mDelegate:Lcom/transsion/camera/adapter/CameraProxy$CameraAutoFocusCallback;

    return-void
.end method

.method private constructor <init>(Lcom/transsion/camera/adapter/CameraProxy2Impl;Lcom/transsion/camera/adapter/CameraProxy$CameraAutoFocusCallback;J)V
    .registers 6

    const/4 v0, 0x0

    .line 2373
    invoke-direct {p0, p1, p3, p4, v0}, Lcom/transsion/camera/adapter/CameraProxy2Impl$TimeOutCallback;-><init>(Lcom/transsion/camera/adapter/CameraProxy2Impl;JLcom/transsion/camera/adapter/CameraProxy2Impl-IA;)V

    .line 2374
    iput-object p2, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl$AFPreCaptureTimeOutCallback;->mDelegate:Lcom/transsion/camera/adapter/CameraProxy$CameraAutoFocusCallback;

    return-void
.end method

.method synthetic constructor <init>(Lcom/transsion/camera/adapter/CameraProxy2Impl;Lcom/transsion/camera/adapter/CameraProxy$CameraAutoFocusCallback;JLcom/transsion/camera/adapter/CameraProxy2Impl-IA;)V
    .registers 6

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/transsion/camera/adapter/CameraProxy2Impl$AFPreCaptureTimeOutCallback;-><init>(Lcom/transsion/camera/adapter/CameraProxy2Impl;Lcom/transsion/camera/adapter/CameraProxy$CameraAutoFocusCallback;J)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/transsion/camera/adapter/CameraProxy2Impl;Lcom/transsion/camera/adapter/CameraProxy$CameraAutoFocusCallback;Lcom/transsion/camera/adapter/CameraProxy2Impl-IA;)V
    .registers 4

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/adapter/CameraProxy2Impl$AFPreCaptureTimeOutCallback;-><init>(Lcom/transsion/camera/adapter/CameraProxy2Impl;Lcom/transsion/camera/adapter/CameraProxy$CameraAutoFocusCallback;)V

    return-void
.end method


# virtual methods
.method public onAutoFocus(Z)V
    .registers 5

    .line 2385
    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraProxy2Impl$TimeOutCallback;->shouldTriggerCallBack()Z

    move-result v0

    if-eqz v0, :cond_26

    .line 2386
    invoke-static {}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[CapturePerformance] trigger onAutoFocus focused: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 2387
    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraProxy2Impl$TimeOutCallback;->removeTimeOutCallback()V

    .line 2388
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl$AFPreCaptureTimeOutCallback;->mDelegate:Lcom/transsion/camera/adapter/CameraProxy$CameraAutoFocusCallback;

    invoke-interface {p0, p1}, Lcom/transsion/camera/adapter/CameraProxy$CameraAutoFocusCallback;->onAutoFocus(Z)V

    :cond_26
    return-void
.end method

.method protected triggerTimeOutCallBack()V
    .registers 3

    .line 2379
    invoke-static {}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    const-string v1, "[CapturePerformance] triggerTimeOutCallBack AFPreCapture"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 2380
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl$AFPreCaptureTimeOutCallback;->mDelegate:Lcom/transsion/camera/adapter/CameraProxy$CameraAutoFocusCallback;

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Lcom/transsion/camera/adapter/CameraProxy$CameraAutoFocusCallback;->onAutoFocus(Z)V

    return-void
.end method
