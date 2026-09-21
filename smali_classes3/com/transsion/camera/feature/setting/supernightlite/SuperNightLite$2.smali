.class Lcom/transsion/camera/feature/setting/supernightlite/SuperNightLite$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/adapter/CameraProxy$Shot2ShotCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/setting/supernightlite/SuperNightLite;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/feature/setting/supernightlite/SuperNightLite;


# direct methods
.method constructor <init>(Lcom/transsion/camera/feature/setting/supernightlite/SuperNightLite;)V
    .registers 2

    .line 362
    iput-object p1, p0, Lcom/transsion/camera/feature/setting/supernightlite/SuperNightLite$2;->this$0:Lcom/transsion/camera/feature/setting/supernightlite/SuperNightLite;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public flush()V
    .registers 1

    return-void
.end method

.method public onNextReady(Lcom/transsion/camera/adapter/CameraProxy$ICameraCaptureState;)V
    .registers 3

    .line 365
    invoke-static {}, Lcom/transsion/camera/feature/setting/supernightlite/SuperNightLite;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p1

    const-string v0, "notify onNextCapture"

    invoke-static {p1, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 366
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/supernightlite/SuperNightLite$2;->this$0:Lcom/transsion/camera/feature/setting/supernightlite/SuperNightLite;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/supernightlite/SuperNightLite;->getNextCaptureCallBack()Lcom/transsion/camera/feature/setting/supernightlite/SuperNightLite$INextCaptureCallBack;

    move-result-object p0

    if-eqz p0, :cond_14

    .line 368
    invoke-interface {p0}, Lcom/transsion/camera/feature/setting/supernightlite/SuperNightLite$INextCaptureCallBack;->notifyNextCapture()V

    :cond_14
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

.method public saveHighQualityJpegDone()V
    .registers 1

    return-void
.end method
