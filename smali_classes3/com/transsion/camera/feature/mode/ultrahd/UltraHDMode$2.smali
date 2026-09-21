.class Lcom/transsion/camera/feature/mode/ultrahd/UltraHDMode$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/adapter/CameraProxy$Shot2ShotCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/mode/ultrahd/UltraHDMode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/feature/mode/ultrahd/UltraHDMode;


# direct methods
.method public static synthetic $r8$lambda$Y4bDbq8NtEmJHGf-FurbZLB3_UY(Lcom/transsion/camera/feature/mode/ultrahd/UltraHDMode$2;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/ultrahd/UltraHDMode$2;->lambda$saveHighQualityJpegDone$0()V

    return-void
.end method

.method constructor <init>(Lcom/transsion/camera/feature/mode/ultrahd/UltraHDMode;)V
    .registers 2

    .line 393
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/ultrahd/UltraHDMode$2;->this$0:Lcom/transsion/camera/feature/mode/ultrahd/UltraHDMode;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private synthetic lambda$saveHighQualityJpegDone$0()V
    .registers 2

    .line 417
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/ultrahd/UltraHDMode$2;->this$0:Lcom/transsion/camera/feature/mode/ultrahd/UltraHDMode;

    # getter for: Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;
    invoke-static {p0}, Lcom/transsion/camera/feature/mode/ultrahd/UltraHDMode;->access$400(Lcom/transsion/camera/feature/mode/ultrahd/UltraHDMode;)Lcom/transsion/camera/app/common/IAppUI;

    move-result-object p0

    const/4 v0, 0x1

    invoke-interface {p0, v0}, Lcom/transsion/camera/app/common/IAppUI;->setShutterEnabled(Z)V

    return-void
.end method


# virtual methods
.method public flush()V
    .registers 1

    return-void
.end method

.method public onNextReady(Lcom/transsion/camera/adapter/CameraProxy$ICameraCaptureState;)V
    .registers 2

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
    .registers 4

    .line 411
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/ultrahd/UltraHDMode$2;->this$0:Lcom/transsion/camera/feature/mode/ultrahd/UltraHDMode;

    # getter for: Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;
    invoke-static {v0}, Lcom/transsion/camera/feature/mode/ultrahd/UltraHDMode;->access$000(Lcom/transsion/camera/feature/mode/ultrahd/UltraHDMode;)Lcom/transsion/camera/app/common/IAppUI;

    move-result-object v0

    if-eqz v0, :cond_3d

    iget-object v0, p0, Lcom/transsion/camera/feature/mode/ultrahd/UltraHDMode$2;->this$0:Lcom/transsion/camera/feature/mode/ultrahd/UltraHDMode;

    # getter for: Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mStatusResponder:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;
    invoke-static {v0}, Lcom/transsion/camera/feature/mode/ultrahd/UltraHDMode;->access$100(Lcom/transsion/camera/feature/mode/ultrahd/UltraHDMode;)Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;

    move-result-object v0

    if-eqz v0, :cond_3d

    .line 412
    invoke-static {}, Lcom/transsion/camera/feature/mode/ultrahd/UltraHDMode;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    const-string v1, "saveHighQualityJpegDone"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 413
    invoke-static {v0}, Lcom/transsion/camera/feature/mode/ultrahd/UltraHDMode;->-$$Nest$sfputmSaveHighQualityJpegDone(Z)V

    .line 414
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/ultrahd/UltraHDMode$2;->this$0:Lcom/transsion/camera/feature/mode/ultrahd/UltraHDMode;

    # getter for: Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;
    invoke-static {v0}, Lcom/transsion/camera/feature/mode/ultrahd/UltraHDMode;->access$200(Lcom/transsion/camera/feature/mode/ultrahd/UltraHDMode;)Lcom/transsion/camera/app/common/IAppUI;

    move-result-object v0

    const/16 v1, 0xe

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    .line 415
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/ultrahd/UltraHDMode$2;->this$0:Lcom/transsion/camera/feature/mode/ultrahd/UltraHDMode;

    # getter for: Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mStatusResponder:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;
    invoke-static {v0}, Lcom/transsion/camera/feature/mode/ultrahd/UltraHDMode;->access$300(Lcom/transsion/camera/feature/mode/ultrahd/UltraHDMode;)Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;

    move-result-object v0

    const-string v1, "capture_state"

    const-string v2, "capture_end"

    invoke-virtual {v0, v1, v2}, Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;->statusChanged(Ljava/lang/String;Ljava/lang/Object;)V

    .line 416
    new-instance v0, Lcom/transsion/camera/feature/mode/ultrahd/UltraHDMode$2$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/transsion/camera/feature/mode/ultrahd/UltraHDMode$2$$ExternalSyntheticLambda0;-><init>(Lcom/transsion/camera/feature/mode/ultrahd/UltraHDMode$2;)V

    invoke-static {v0}, Lcom/transsion/camera/utils/UIUtils;->runOnUIThread(Ljava/lang/Runnable;)V

    :cond_3d
    return-void
.end method
