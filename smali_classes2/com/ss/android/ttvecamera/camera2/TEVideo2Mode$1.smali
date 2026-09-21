.class Lcom/ss/android/ttvecamera/camera2/TEVideo2Mode$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ss/android/ttvecamera/camera2/TEVideo2Mode;->startPreview()I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ss/android/ttvecamera/camera2/TEVideo2Mode;

.field final synthetic val$previewRet:I


# direct methods
.method constructor <init>(Lcom/ss/android/ttvecamera/camera2/TEVideo2Mode;I)V
    .registers 3

    .line 115
    iput-object p1, p0, Lcom/ss/android/ttvecamera/camera2/TEVideo2Mode$1;->this$0:Lcom/ss/android/ttvecamera/camera2/TEVideo2Mode;

    iput p2, p0, Lcom/ss/android/ttvecamera/camera2/TEVideo2Mode$1;->val$previewRet:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .line 118
    iget-object v0, p0, Lcom/ss/android/ttvecamera/camera2/TEVideo2Mode$1;->this$0:Lcom/ss/android/ttvecamera/camera2/TEVideo2Mode;

    # getter for: Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mCameraEvents:Lcom/ss/android/ttvecamera/TECameraBase$CameraEvents;
    invoke-static {v0}, Lcom/ss/android/ttvecamera/camera2/TEVideo2Mode;->access$200(Lcom/ss/android/ttvecamera/camera2/TEVideo2Mode;)Lcom/ss/android/ttvecamera/TECameraBase$CameraEvents;

    move-result-object v0

    iget-object v1, p0, Lcom/ss/android/ttvecamera/camera2/TEVideo2Mode$1;->this$0:Lcom/ss/android/ttvecamera/camera2/TEVideo2Mode;

    # getter for: Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mCameraSettings:Lcom/ss/android/ttvecamera/TECameraSettings;
    invoke-static {v1}, Lcom/ss/android/ttvecamera/camera2/TEVideo2Mode;->access$000(Lcom/ss/android/ttvecamera/camera2/TEVideo2Mode;)Lcom/ss/android/ttvecamera/TECameraSettings;

    move-result-object v1

    iget v1, v1, Lcom/ss/android/ttvecamera/TECameraSettings;->mCameraType:I

    iget v2, p0, Lcom/ss/android/ttvecamera/camera2/TEVideo2Mode$1;->val$previewRet:I

    iget-object p0, p0, Lcom/ss/android/ttvecamera/camera2/TEVideo2Mode$1;->this$0:Lcom/ss/android/ttvecamera/camera2/TEVideo2Mode;

    # getter for: Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;
    invoke-static {p0}, Lcom/ss/android/ttvecamera/camera2/TEVideo2Mode;->access$100(Lcom/ss/android/ttvecamera/camera2/TEVideo2Mode;)Landroid/hardware/camera2/CameraDevice;

    move-result-object p0

    const-string v3, "updateCapture : something wrong."

    invoke-interface {v0, v1, v2, v3, p0}, Lcom/ss/android/ttvecamera/TECameraBase$CameraEvents;->onCameraError(IILjava/lang/String;Ljava/lang/Object;)V

    return-void
.end method
