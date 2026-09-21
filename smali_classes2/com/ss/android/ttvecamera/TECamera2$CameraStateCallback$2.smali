.class Lcom/ss/android/ttvecamera/TECamera2$CameraStateCallback$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ss/android/ttvecamera/TECamera2$CameraStateCallback;->onDisconnected(Ljava/lang/Object;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ss/android/ttvecamera/TECamera2$CameraStateCallback;

.field final synthetic val$cameraHolder:Lcom/ss/android/ttvecamera/TECamera2;


# direct methods
.method constructor <init>(Lcom/ss/android/ttvecamera/TECamera2$CameraStateCallback;Lcom/ss/android/ttvecamera/TECamera2;)V
    .registers 3

    .line 151
    iput-object p1, p0, Lcom/ss/android/ttvecamera/TECamera2$CameraStateCallback$2;->this$0:Lcom/ss/android/ttvecamera/TECamera2$CameraStateCallback;

    iput-object p2, p0, Lcom/ss/android/ttvecamera/TECamera2$CameraStateCallback$2;->val$cameraHolder:Lcom/ss/android/ttvecamera/TECamera2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .line 154
    iget-object v0, p0, Lcom/ss/android/ttvecamera/TECamera2$CameraStateCallback$2;->val$cameraHolder:Lcom/ss/android/ttvecamera/TECamera2;

    iget-object v1, v0, Lcom/ss/android/ttvecamera/TECameraBase;->openPrivacyCert:Lcom/bytedance/bpea/basics/Cert;

    invoke-virtual {v0, v1}, Lcom/ss/android/ttvecamera/TECamera2;->_reset(Lcom/bytedance/bpea/basics/Cert;)V

    .line 155
    iget-object p0, p0, Lcom/ss/android/ttvecamera/TECamera2$CameraStateCallback$2;->val$cameraHolder:Lcom/ss/android/ttvecamera/TECamera2;

    iget-object v0, p0, Lcom/ss/android/ttvecamera/TECameraBase;->mCameraEvents:Lcom/ss/android/ttvecamera/TECameraBase$CameraEvents;

    if-eqz v0, :cond_1a

    .line 156
    iget-object v1, p0, Lcom/ss/android/ttvecamera/TECameraBase;->mCameraSettings:Lcom/ss/android/ttvecamera/TECameraSettings;

    iget v1, v1, Lcom/ss/android/ttvecamera/TECameraSettings;->mCameraType:I

    const-string v2, "Camera onDisconnected"

    iget-object p0, p0, Lcom/ss/android/ttvecamera/TECamera2;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    const/16 v3, -0x199

    invoke-interface {v0, v1, v3, v2, p0}, Lcom/ss/android/ttvecamera/TECameraBase$CameraEvents;->onCameraError(IILjava/lang/String;Ljava/lang/Object;)V

    :cond_1a
    return-void
.end method
