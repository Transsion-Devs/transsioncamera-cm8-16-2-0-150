.class Lcom/transsion/camera/adapter/CameraProxy2Impl$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/adapter/CameraProxy2Impl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/adapter/CameraProxy2Impl;


# direct methods
.method public static synthetic $r8$lambda$ZKdgLQYWbxsCE1gor6ThT6OT4lk(Lcom/transsion/camera/adapter/CameraProxy2Impl$4;Z)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/adapter/CameraProxy2Impl$4;->lambda$run$1(Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$pLSVw6HtXBQqDbzOu5-y-P99xLg(Lcom/transsion/camera/adapter/CameraProxy2Impl$4;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/adapter/CameraProxy2Impl$4;->lambda$run$0()V

    return-void
.end method

.method constructor <init>(Lcom/transsion/camera/adapter/CameraProxy2Impl;)V
    .registers 2

    .line 2403
    iput-object p1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl$4;->this$0:Lcom/transsion/camera/adapter/CameraProxy2Impl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private synthetic lambda$run$0()V
    .registers 3

    .line 2409
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl$4;->this$0:Lcom/transsion/camera/adapter/CameraProxy2Impl;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->-$$Nest$fputmAeStable(Lcom/transsion/camera/adapter/CameraProxy2Impl;Z)V

    .line 2410
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl$4;->this$0:Lcom/transsion/camera/adapter/CameraProxy2Impl;

    invoke-static {p0}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->-$$Nest$mcheckAeAfStableToCapture(Lcom/transsion/camera/adapter/CameraProxy2Impl;)V

    return-void
.end method

.method private synthetic lambda$run$1(Z)V
    .registers 3

    .line 2415
    iget-object p1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl$4;->this$0:Lcom/transsion/camera/adapter/CameraProxy2Impl;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->-$$Nest$fputmAfStable(Lcom/transsion/camera/adapter/CameraProxy2Impl;Z)V

    .line 2416
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl$4;->this$0:Lcom/transsion/camera/adapter/CameraProxy2Impl;

    invoke-static {p0}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->-$$Nest$mcheckAeAfStableToCapture(Lcom/transsion/camera/adapter/CameraProxy2Impl;)V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    .line 2406
    invoke-static {}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    const-string v1, "[CapturePerformance] checkAeAfStableForCapturing"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 2407
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl$4;->this$0:Lcom/transsion/camera/adapter/CameraProxy2Impl;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->-$$Nest$fputmAeStable(Lcom/transsion/camera/adapter/CameraProxy2Impl;Z)V

    .line 2408
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl$4;->this$0:Lcom/transsion/camera/adapter/CameraProxy2Impl;

    invoke-static {v0}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->-$$Nest$fgetmCaptureResultMonitor(Lcom/transsion/camera/adapter/CameraProxy2Impl;)Lcom/transsion/camera/adapter/CaptureResultMonitor;

    move-result-object v0

    new-instance v2, Lcom/transsion/camera/adapter/CameraProxy2Impl$AEPreCaptureTimeOutCallback;

    iget-object v3, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl$4;->this$0:Lcom/transsion/camera/adapter/CameraProxy2Impl;

    new-instance v4, Lcom/transsion/camera/adapter/CameraProxy2Impl$4$$ExternalSyntheticLambda0;

    invoke-direct {v4, p0}, Lcom/transsion/camera/adapter/CameraProxy2Impl$4$$ExternalSyntheticLambda0;-><init>(Lcom/transsion/camera/adapter/CameraProxy2Impl$4;)V

    const/4 v5, 0x0

    invoke-direct {v2, v3, v4, v5}, Lcom/transsion/camera/adapter/CameraProxy2Impl$AEPreCaptureTimeOutCallback;-><init>(Lcom/transsion/camera/adapter/CameraProxy2Impl;Lcom/transsion/camera/adapter/CaptureResultMonitor$AEPreCaptureResultCallback;Lcom/transsion/camera/adapter/CameraProxy2Impl-IA;)V

    invoke-virtual {v0, v2}, Lcom/transsion/camera/adapter/CaptureResultMonitor;->triggerAEPreCapturing(Lcom/transsion/camera/adapter/CaptureResultMonitor$AEPreCaptureResultCallback;)V

    .line 2412
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl$4;->this$0:Lcom/transsion/camera/adapter/CameraProxy2Impl;

    invoke-static {v0}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->-$$Nest$misAFSupport(Lcom/transsion/camera/adapter/CameraProxy2Impl;)Z

    move-result v0

    if-eqz v0, :cond_48

    .line 2413
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl$4;->this$0:Lcom/transsion/camera/adapter/CameraProxy2Impl;

    invoke-static {v0, v1}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->-$$Nest$fputmAfStable(Lcom/transsion/camera/adapter/CameraProxy2Impl;Z)V

    .line 2414
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl$4;->this$0:Lcom/transsion/camera/adapter/CameraProxy2Impl;

    invoke-static {v0}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->-$$Nest$fgetmCaptureResultMonitor(Lcom/transsion/camera/adapter/CameraProxy2Impl;)Lcom/transsion/camera/adapter/CaptureResultMonitor;

    move-result-object v0

    new-instance v1, Lcom/transsion/camera/adapter/CameraProxy2Impl$AFPreCaptureTimeOutCallback;

    iget-object v2, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl$4;->this$0:Lcom/transsion/camera/adapter/CameraProxy2Impl;

    new-instance v3, Lcom/transsion/camera/adapter/CameraProxy2Impl$4$$ExternalSyntheticLambda1;

    invoke-direct {v3, p0}, Lcom/transsion/camera/adapter/CameraProxy2Impl$4$$ExternalSyntheticLambda1;-><init>(Lcom/transsion/camera/adapter/CameraProxy2Impl$4;)V

    invoke-direct {v1, v2, v3, v5}, Lcom/transsion/camera/adapter/CameraProxy2Impl$AFPreCaptureTimeOutCallback;-><init>(Lcom/transsion/camera/adapter/CameraProxy2Impl;Lcom/transsion/camera/adapter/CameraProxy$CameraAutoFocusCallback;Lcom/transsion/camera/adapter/CameraProxy2Impl-IA;)V

    invoke-virtual {v0, v1}, Lcom/transsion/camera/adapter/CaptureResultMonitor;->triggerAFStableScanning(Lcom/transsion/camera/adapter/CameraProxy$CameraAutoFocusCallback;)V

    return-void

    .line 2419
    :cond_48
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl$4;->this$0:Lcom/transsion/camera/adapter/CameraProxy2Impl;

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->-$$Nest$fputmAfStable(Lcom/transsion/camera/adapter/CameraProxy2Impl;Z)V

    return-void
.end method
