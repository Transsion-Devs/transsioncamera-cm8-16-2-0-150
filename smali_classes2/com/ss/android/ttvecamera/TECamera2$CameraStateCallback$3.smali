.class Lcom/ss/android/ttvecamera/TECamera2$CameraStateCallback$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ss/android/ttvecamera/TECamera2$CameraStateCallback;->onError(Ljava/lang/Object;I)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ss/android/ttvecamera/TECamera2$CameraStateCallback;

.field final synthetic val$cameraHolder:Lcom/ss/android/ttvecamera/TECamera2;

.field final synthetic val$errorCode:I

.field final synthetic val$msg:Ljava/lang/String;

.field final synthetic val$sessionState:I


# direct methods
.method constructor <init>(Lcom/ss/android/ttvecamera/TECamera2$CameraStateCallback;Lcom/ss/android/ttvecamera/TECamera2;IILjava/lang/String;)V
    .registers 6

    .line 181
    iput-object p1, p0, Lcom/ss/android/ttvecamera/TECamera2$CameraStateCallback$3;->this$0:Lcom/ss/android/ttvecamera/TECamera2$CameraStateCallback;

    iput-object p2, p0, Lcom/ss/android/ttvecamera/TECamera2$CameraStateCallback$3;->val$cameraHolder:Lcom/ss/android/ttvecamera/TECamera2;

    iput p3, p0, Lcom/ss/android/ttvecamera/TECamera2$CameraStateCallback$3;->val$sessionState:I

    iput p4, p0, Lcom/ss/android/ttvecamera/TECamera2$CameraStateCallback$3;->val$errorCode:I

    iput-object p5, p0, Lcom/ss/android/ttvecamera/TECamera2$CameraStateCallback$3;->val$msg:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .line 184
    iget-object v0, p0, Lcom/ss/android/ttvecamera/TECamera2$CameraStateCallback$3;->val$cameraHolder:Lcom/ss/android/ttvecamera/TECamera2;

    iget-object v1, v0, Lcom/ss/android/ttvecamera/TECameraBase;->openPrivacyCert:Lcom/bytedance/bpea/basics/Cert;

    invoke-virtual {v0, v1}, Lcom/ss/android/ttvecamera/TECamera2;->_reset(Lcom/bytedance/bpea/basics/Cert;)V

    .line 185
    iget-object v0, p0, Lcom/ss/android/ttvecamera/TECamera2$CameraStateCallback$3;->val$cameraHolder:Lcom/ss/android/ttvecamera/TECamera2;

    iget-object v1, v0, Lcom/ss/android/ttvecamera/TECameraBase;->mCameraEvents:Lcom/ss/android/ttvecamera/TECameraBase$CameraEvents;

    if-eqz v1, :cond_2e

    .line 186
    iget v2, p0, Lcom/ss/android/ttvecamera/TECamera2$CameraStateCallback$3;->val$sessionState:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_22

    iget v2, p0, Lcom/ss/android/ttvecamera/TECamera2$CameraStateCallback$3;->val$errorCode:I

    if-ne v2, v3, :cond_22

    .line 188
    iget-object v3, v0, Lcom/ss/android/ttvecamera/TECameraBase;->mCameraSettings:Lcom/ss/android/ttvecamera/TECameraSettings;

    iget v3, v3, Lcom/ss/android/ttvecamera/TECameraSettings;->mCameraType:I

    iget-object p0, p0, Lcom/ss/android/ttvecamera/TECamera2$CameraStateCallback$3;->val$msg:Ljava/lang/String;

    iget-object v0, v0, Lcom/ss/android/ttvecamera/TECamera2;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    invoke-interface {v1, v3, v2, p0, v0}, Lcom/ss/android/ttvecamera/TECameraBase$CameraEvents;->onCameraError(IILjava/lang/String;Ljava/lang/Object;)V

    return-void

    .line 190
    :cond_22
    iget-object v2, v0, Lcom/ss/android/ttvecamera/TECameraBase;->mCameraSettings:Lcom/ss/android/ttvecamera/TECameraSettings;

    iget v2, v2, Lcom/ss/android/ttvecamera/TECameraSettings;->mCameraType:I

    iget p0, p0, Lcom/ss/android/ttvecamera/TECamera2$CameraStateCallback$3;->val$errorCode:I

    const/4 v3, 0x0

    iget-object v0, v0, Lcom/ss/android/ttvecamera/TECamera2;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    invoke-interface {v1, v2, p0, v3, v0}, Lcom/ss/android/ttvecamera/TECameraBase$CameraEvents;->onCameraOpened(IILcom/ss/android/ttvecamera/TECameraBase;Ljava/lang/Object;)V

    :cond_2e
    return-void
.end method
