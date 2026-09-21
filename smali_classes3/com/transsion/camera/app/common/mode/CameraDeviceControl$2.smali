.class Lcom/transsion/camera/app/common/mode/CameraDeviceControl$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/app/common/mode/SubDeviceControl$MainControlInfoCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/app/common/mode/CameraDeviceControl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;


# direct methods
.method constructor <init>(Lcom/transsion/camera/app/common/mode/CameraDeviceControl;)V
    .registers 2

    .line 2016
    iput-object p1, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl$2;->this$0:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public IsCanRetryOpenCamera()Z
    .registers 2

    .line 2040
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl$2;->this$0:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    invoke-static {v0}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->-$$Nest$fgetmReleased(Lcom/transsion/camera/app/common/mode/CameraDeviceControl;)Z

    move-result v0

    if-eqz v0, :cond_13

    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl$2;->this$0:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    invoke-static {p0}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->-$$Nest$fgetmClosing(Lcom/transsion/camera/app/common/mode/CameraDeviceControl;)Z

    move-result p0

    if-nez p0, :cond_11

    goto :goto_13

    :cond_11
    const/4 p0, 0x0

    return p0

    :cond_13
    :goto_13
    const/4 p0, 0x1

    return p0
.end method

.method public getActionSoundInfo()Lcom/transsion/camera/utils/sound/IActionSound;
    .registers 1

    .line 2020
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl$2;->this$0:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    invoke-static {p0}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->-$$Nest$fgetmAppUI(Lcom/transsion/camera/app/common/mode/CameraDeviceControl;)Lcom/transsion/camera/app/common/IAppUI;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/camera/app/common/IAppUI;->getActionSound()Lcom/transsion/camera/utils/sound/IActionSound;

    move-result-object p0

    return-object p0
.end method

.method public getOrientationInfo(Ljava/lang/String;)I
    .registers 3

    .line 2025
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl$2;->this$0:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    invoke-static {p0}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->-$$Nest$fgetmCurrentMode(Lcom/transsion/camera/app/common/mode/CameraDeviceControl;)Lcom/transsion/camera/app/common/mode/ICameraMode;

    move-result-object v0

    invoke-interface {v0}, Lcom/transsion/camera/app/common/mode/ICameraMode;->getOrientation()I

    move-result v0

    invoke-virtual {p0, v0, p1}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->getOrientation(ILjava/lang/String;)I

    move-result p0

    return p0
.end method

.method public getPreviewSurfaceType()I
    .registers 1

    .line 2035
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl$2;->this$0:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    invoke-static {p0}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->-$$Nest$fgetmAppUI(Lcom/transsion/camera/app/common/mode/CameraDeviceControl;)Lcom/transsion/camera/app/common/IAppUI;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/camera/app/common/IAppUI;->getPreviewSurfaceType()I

    move-result p0

    return p0
.end method

.method public getVideoOrientationInfo(Ljava/lang/String;)I
    .registers 3

    .line 2030
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl$2;->this$0:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    invoke-static {p0}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->-$$Nest$fgetmCurrentMode(Lcom/transsion/camera/app/common/mode/CameraDeviceControl;)Lcom/transsion/camera/app/common/mode/ICameraMode;

    move-result-object v0

    invoke-interface {v0}, Lcom/transsion/camera/app/common/mode/ICameraMode;->getVideoRecodingOrientation()I

    move-result v0

    invoke-virtual {p0, v0, p1}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->getOrientation(ILjava/lang/String;)I

    move-result p0

    return p0
.end method
