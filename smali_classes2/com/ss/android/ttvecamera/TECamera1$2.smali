.class Lcom/ss/android/ttvecamera/TECamera1$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/hardware/Camera$PictureCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ss/android/ttvecamera/TECamera1;->takePicture(IILcom/ss/android/ttvecamera/TECameraSettings$PictureCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ss/android/ttvecamera/TECamera1;

.field final synthetic val$callback:Lcom/ss/android/ttvecamera/TECameraSettings$PictureCallback;


# direct methods
.method constructor <init>(Lcom/ss/android/ttvecamera/TECamera1;Lcom/ss/android/ttvecamera/TECameraSettings$PictureCallback;)V
    .registers 3

    .line 724
    iput-object p1, p0, Lcom/ss/android/ttvecamera/TECamera1$2;->this$0:Lcom/ss/android/ttvecamera/TECamera1;

    iput-object p2, p0, Lcom/ss/android/ttvecamera/TECamera1$2;->val$callback:Lcom/ss/android/ttvecamera/TECameraSettings$PictureCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPictureTaken([BLandroid/hardware/Camera;)V
    .registers 10

    .line 727
    iget-object p2, p0, Lcom/ss/android/ttvecamera/TECamera1$2;->val$callback:Lcom/ss/android/ttvecamera/TECameraSettings$PictureCallback;

    if-eqz p2, :cond_66

    .line 728
    iget-object p2, p0, Lcom/ss/android/ttvecamera/TECamera1$2;->this$0:Lcom/ss/android/ttvecamera/TECamera1;

    # getter for: Lcom/ss/android/ttvecamera/TECamera1;->mParams:Landroid/hardware/Camera$Parameters;
    invoke-static {p2}, Lcom/ss/android/ttvecamera/TECamera1;->access$000(Lcom/ss/android/ttvecamera/TECamera1;)Landroid/hardware/Camera$Parameters;

    move-result-object p2

    invoke-virtual {p2}, Landroid/hardware/Camera$Parameters;->getPictureFormat()I

    move-result p2

    .line 729
    iget-object v0, p0, Lcom/ss/android/ttvecamera/TECamera1$2;->this$0:Lcom/ss/android/ttvecamera/TECamera1;

    # getter for: Lcom/ss/android/ttvecamera/TECamera1;->mParams:Landroid/hardware/Camera$Parameters;
    invoke-static {v0}, Lcom/ss/android/ttvecamera/TECamera1;->access$000(Lcom/ss/android/ttvecamera/TECamera1;)Landroid/hardware/Camera$Parameters;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getPictureSize()Landroid/hardware/Camera$Size;

    move-result-object v0

    .line 730
    iget v4, v0, Landroid/hardware/Camera$Size;->width:I

    .line 731
    iget v5, v0, Landroid/hardware/Camera$Size;->height:I

    .line 732
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "take picture format: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", w: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", h: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TECamera1"

    invoke-static {v1, v0}, Lcom/ss/android/ttvecamera/TELogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 734
    sget-object v0, Lcom/ss/android/ttvecamera/TECameraFrame$ETEPixelFormat;->PIXEL_FORMAT_JPEG:Lcom/ss/android/ttvecamera/TECameraFrame$ETEPixelFormat;

    .line 735
    iget-object v1, p0, Lcom/ss/android/ttvecamera/TECamera1$2;->this$0:Lcom/ss/android/ttvecamera/TECamera1;

    iget v1, v1, Lcom/ss/android/ttvecamera/TECameraBase;->mNewFacing:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_4f

    const/16 v1, 0x10e

    :goto_4d
    move v6, v1

    goto :goto_52

    :cond_4f
    const/16 v1, 0x5a

    goto :goto_4d

    :goto_52
    const/16 v1, 0x11

    if-ne p2, v1, :cond_58

    .line 737
    sget-object v0, Lcom/ss/android/ttvecamera/TECameraFrame$ETEPixelFormat;->PIXEL_FORMAT_NV21:Lcom/ss/android/ttvecamera/TECameraFrame$ETEPixelFormat;

    :cond_58
    move-object v3, v0

    .line 739
    new-instance v1, Lcom/ss/android/ttvecamera/TECameraFrame;

    move-object v2, p1

    invoke-direct/range {v1 .. v6}, Lcom/ss/android/ttvecamera/TECameraFrame;-><init>([BLcom/ss/android/ttvecamera/TECameraFrame$ETEPixelFormat;III)V

    .line 740
    iget-object p1, p0, Lcom/ss/android/ttvecamera/TECamera1$2;->val$callback:Lcom/ss/android/ttvecamera/TECameraSettings$PictureCallback;

    iget-object p0, p0, Lcom/ss/android/ttvecamera/TECamera1$2;->this$0:Lcom/ss/android/ttvecamera/TECamera1;

    invoke-interface {p1, v1, p0}, Lcom/ss/android/ttvecamera/TECameraSettings$PictureCallback;->onPictureTaken(Lcom/ss/android/ttvecamera/TECameraFrame;Lcom/ss/android/ttvecamera/TECameraBase;)V

    :cond_66
    return-void
.end method
