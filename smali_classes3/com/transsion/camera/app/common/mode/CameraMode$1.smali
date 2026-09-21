.class Lcom/transsion/camera/app/common/mode/CameraMode$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/app/common/IModeFeatureConfig;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/app/common/mode/CameraMode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/app/common/mode/CameraMode;


# direct methods
.method constructor <init>(Lcom/transsion/camera/app/common/mode/CameraMode;)V
    .registers 2

    .line 1170
    iput-object p1, p0, Lcom/transsion/camera/app/common/mode/CameraMode$1;->this$0:Lcom/transsion/camera/app/common/mode/CameraMode;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getZoomConfig()Lcom/transsion/camera/app/common/ZoomConfig;
    .registers 2

    .line 1173
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode$1;->this$0:Lcom/transsion/camera/app/common/mode/CameraMode;

    iget-object v0, v0, Lcom/transsion/camera/app/common/mode/CameraMode;->mCurrentCameraId:Ljava/lang/String;

    invoke-static {v0}, Lcom/transsion/camera/adapter/CameraInfoUtil;->isCameraFacingFront(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 1174
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode$1;->this$0:Lcom/transsion/camera/app/common/mode/CameraMode;

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CameraMode;->getFrontZoomConfig()Lcom/transsion/camera/app/common/ZoomConfig;

    move-result-object p0

    return-object p0

    :cond_11
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode$1;->this$0:Lcom/transsion/camera/app/common/mode/CameraMode;

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CameraMode;->getBackZoomConfig()Lcom/transsion/camera/app/common/ZoomConfig;

    move-result-object p0

    return-object p0
.end method
