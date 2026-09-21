.class Lcom/ss/android/ttvecamera/framework/TECameraModeBase$5$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ss/android/ttvecamera/framework/TECameraModeBase$5;->onConfigured(Landroid/hardware/camera2/CameraCaptureSession;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/ss/android/ttvecamera/framework/TECameraModeBase$5;

.field final synthetic val$ret:I


# direct methods
.method constructor <init>(Lcom/ss/android/ttvecamera/framework/TECameraModeBase$5;I)V
    .registers 3

    .line 1604
    iput-object p1, p0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase$5$1;->this$1:Lcom/ss/android/ttvecamera/framework/TECameraModeBase$5;

    iput p2, p0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase$5$1;->val$ret:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .line 1607
    iget-object v0, p0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase$5$1;->this$1:Lcom/ss/android/ttvecamera/framework/TECameraModeBase$5;

    iget-object v0, v0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase$5;->this$0:Lcom/ss/android/ttvecamera/framework/TECameraModeBase;

    iget-object v1, v0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mCameraEvents:Lcom/ss/android/ttvecamera/TECameraBase$CameraEvents;

    iget-object v2, v0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mCameraSettings:Lcom/ss/android/ttvecamera/TECameraSettings;

    iget v2, v2, Lcom/ss/android/ttvecamera/TECameraSettings;->mCameraType:I

    iget p0, p0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase$5$1;->val$ret:I

    const-string v3, "updateCapture : something wrong."

    iget-object v0, v0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    invoke-interface {v1, v2, p0, v3, v0}, Lcom/ss/android/ttvecamera/TECameraBase$CameraEvents;->onCameraError(IILjava/lang/String;Ljava/lang/Object;)V

    return-void
.end method
