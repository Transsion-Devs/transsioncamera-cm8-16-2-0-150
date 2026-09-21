.class Lcom/ss/android/ttvecamera/TECamera2$CameraStateCallback$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ss/android/ttvecamera/TECamera2$CameraStateCallback;->onOpened(Ljava/lang/Object;)Z
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

    .line 116
    iput-object p1, p0, Lcom/ss/android/ttvecamera/TECamera2$CameraStateCallback$1;->this$0:Lcom/ss/android/ttvecamera/TECamera2$CameraStateCallback;

    iput-object p2, p0, Lcom/ss/android/ttvecamera/TECamera2$CameraStateCallback$1;->val$cameraHolder:Lcom/ss/android/ttvecamera/TECamera2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .line 119
    iget-object p0, p0, Lcom/ss/android/ttvecamera/TECamera2$CameraStateCallback$1;->val$cameraHolder:Lcom/ss/android/ttvecamera/TECamera2;

    iget-object v0, p0, Lcom/ss/android/ttvecamera/TECameraBase;->mCameraEvents:Lcom/ss/android/ttvecamera/TECameraBase$CameraEvents;

    if-eqz v0, :cond_12

    .line 120
    iget-object v1, p0, Lcom/ss/android/ttvecamera/TECameraBase;->mCameraSettings:Lcom/ss/android/ttvecamera/TECameraSettings;

    iget v1, v1, Lcom/ss/android/ttvecamera/TECameraSettings;->mCameraType:I

    const/4 v2, 0x0

    iget-object p0, p0, Lcom/ss/android/ttvecamera/TECamera2;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    const/4 v3, 0x0

    invoke-interface {v0, v1, v3, v2, p0}, Lcom/ss/android/ttvecamera/TECameraBase$CameraEvents;->onCameraOpened(IILcom/ss/android/ttvecamera/TECameraBase;Ljava/lang/Object;)V

    return-void

    .line 122
    :cond_12
    const-string p0, "TECamera2"

    const-string v0, "mCameraEvents is null!"

    invoke-static {p0, v0}, Lcom/ss/android/ttvecamera/TELogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
