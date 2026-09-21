.class Lcom/transsion/camera/app/common/mode/SubDeviceControl$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/adapter/CameraProxy$CameraShutterCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/app/common/mode/SubDeviceControl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/app/common/mode/SubDeviceControl;


# direct methods
.method constructor <init>(Lcom/transsion/camera/app/common/mode/SubDeviceControl;)V
    .registers 2

    .line 1934
    iput-object p1, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl$4;->this$0:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onShutterStarted(Ljava/lang/String;ZJJ)V
    .registers 7

    .line 1942
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl$4;->this$0:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    invoke-static {p0}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->-$$Nest$fgetmCurrentMode(Lcom/transsion/camera/app/common/mode/SubDeviceControl;)Lcom/transsion/camera/app/common/mode/ICameraMode;

    move-result-object p1

    invoke-interface/range {p1 .. p6}, Lcom/transsion/camera/app/common/mode/ICameraMode;->onShutterStart(ZJJ)V

    return-void
.end method

.method public onThumbNailTypeConfirmed(I[IJ)V
    .registers 5

    .line 1937
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl$4;->this$0:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    invoke-static {p0}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->-$$Nest$fgetmCurrentMode(Lcom/transsion/camera/app/common/mode/SubDeviceControl;)Lcom/transsion/camera/app/common/mode/ICameraMode;

    move-result-object p0

    invoke-interface {p0, p1, p2, p3, p4}, Lcom/transsion/camera/app/common/mode/ICameraMode;->onThumbNailTypeConfirmed(I[IJ)V

    return-void
.end method
