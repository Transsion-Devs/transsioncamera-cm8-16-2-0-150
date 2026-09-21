.class Lcom/ss/android/medialib/camera/Camera1$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/hardware/Camera$PictureCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ss/android/medialib/camera/Camera1;->takePicture(IILcom/ss/android/medialib/camera/IESCameraInterface$CaptureListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ss/android/medialib/camera/Camera1;

.field final synthetic val$listener:Lcom/ss/android/medialib/camera/IESCameraInterface$CaptureListener;


# direct methods
.method constructor <init>(Lcom/ss/android/medialib/camera/Camera1;Lcom/ss/android/medialib/camera/IESCameraInterface$CaptureListener;)V
    .registers 3

    .line 899
    iput-object p1, p0, Lcom/ss/android/medialib/camera/Camera1$5;->this$0:Lcom/ss/android/medialib/camera/Camera1;

    iput-object p2, p0, Lcom/ss/android/medialib/camera/Camera1$5;->val$listener:Lcom/ss/android/medialib/camera/IESCameraInterface$CaptureListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPictureTaken([BLandroid/hardware/Camera;)V
    .registers 6

    .line 902
    iget-object p2, p0, Lcom/ss/android/medialib/camera/Camera1$5;->this$0:Lcom/ss/android/medialib/camera/Camera1;

    const/4 v0, 0x0

    # setter for: Lcom/ss/android/medialib/camera/Camera1;->mIsCapturing:Z
    invoke-static {p2, v0}, Lcom/ss/android/medialib/camera/Camera1;->access$702(Lcom/ss/android/medialib/camera/Camera1;Z)Z

    .line 903
    iget-object p2, p0, Lcom/ss/android/medialib/camera/Camera1$5;->this$0:Lcom/ss/android/medialib/camera/Camera1;

    # getter for: Lcom/ss/android/medialib/camera/Camera1;->isClosed:Z
    invoke-static {p2}, Lcom/ss/android/medialib/camera/Camera1;->access$800(Lcom/ss/android/medialib/camera/Camera1;)Z

    move-result p2

    if-nez p2, :cond_18

    .line 904
    iget-object p2, p0, Lcom/ss/android/medialib/camera/Camera1$5;->this$0:Lcom/ss/android/medialib/camera/Camera1;

    # getter for: Lcom/ss/android/medialib/camera/Camera1;->mCurrentCamera:Landroid/hardware/Camera;
    invoke-static {p2}, Lcom/ss/android/medialib/camera/Camera1;->access$400(Lcom/ss/android/medialib/camera/Camera1;)Landroid/hardware/Camera;

    move-result-object p2

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/hardware/Camera;->setPreviewCallbackWithBuffer(Landroid/hardware/Camera$PreviewCallback;)V

    .line 906
    :cond_18
    iget-object p2, p0, Lcom/ss/android/medialib/camera/Camera1$5;->val$listener:Lcom/ss/android/medialib/camera/IESCameraInterface$CaptureListener;

    if-eqz p2, :cond_39

    .line 907
    new-instance v0, Lcom/ss/android/medialib/camera/ImageFrame;

    iget-object v1, p0, Lcom/ss/android/medialib/camera/Camera1$5;->this$0:Lcom/ss/android/medialib/camera/Camera1;

    iget-object v1, v1, Lcom/ss/android/medialib/camera/Camera1;->mCameraParams:Lcom/ss/android/medialib/camera/CameraParams;

    invoke-virtual {v1}, Lcom/ss/android/medialib/camera/CameraParams;->getCameraPictureSize()Landroid/graphics/Point;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Point;->x:I

    iget-object p0, p0, Lcom/ss/android/medialib/camera/Camera1$5;->this$0:Lcom/ss/android/medialib/camera/Camera1;

    iget-object p0, p0, Lcom/ss/android/medialib/camera/Camera1;->mCameraParams:Lcom/ss/android/medialib/camera/CameraParams;

    invoke-virtual {p0}, Lcom/ss/android/medialib/camera/CameraParams;->getCameraPictureSize()Landroid/graphics/Point;

    move-result-object p0

    iget p0, p0, Landroid/graphics/Point;->y:I

    const/4 v2, 0x1

    invoke-direct {v0, p1, v2, v1, p0}, Lcom/ss/android/medialib/camera/ImageFrame;-><init>([BIII)V

    invoke-interface {p2, v0}, Lcom/ss/android/medialib/camera/IESCameraInterface$CaptureListener;->onResult(Lcom/ss/android/medialib/camera/ImageFrame;)V

    :cond_39
    return-void
.end method
