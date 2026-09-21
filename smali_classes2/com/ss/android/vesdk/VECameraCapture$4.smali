.class Lcom/ss/android/vesdk/VECameraCapture$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/ss/android/ttvecamera/TECameraSettings$PictureCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ss/android/vesdk/VECameraCapture;->takePicture(Lcom/ss/android/vesdk/VECameraSettings$PictureCallback;)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ss/android/vesdk/VECameraCapture;

.field final synthetic val$callback:Lcom/ss/android/vesdk/VECameraSettings$PictureCallback;


# direct methods
.method constructor <init>(Lcom/ss/android/vesdk/VECameraCapture;Lcom/ss/android/vesdk/VECameraSettings$PictureCallback;)V
    .registers 3

    .line 739
    iput-object p1, p0, Lcom/ss/android/vesdk/VECameraCapture$4;->this$0:Lcom/ss/android/vesdk/VECameraCapture;

    iput-object p2, p0, Lcom/ss/android/vesdk/VECameraCapture$4;->val$callback:Lcom/ss/android/vesdk/VECameraSettings$PictureCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPictureTaken(Lcom/ss/android/ttvecamera/TECameraFrame;Lcom/ss/android/ttvecamera/TECameraBase;)V
    .registers 3

    .line 743
    iget-object p0, p0, Lcom/ss/android/vesdk/VECameraCapture$4;->val$callback:Lcom/ss/android/vesdk/VECameraSettings$PictureCallback;

    if-eqz p0, :cond_d

    if-eqz p1, :cond_d

    .line 744
    invoke-static {p1}, Lcom/ss/android/vesdk/utils/TEFrameUtils;->TEImageFrame2VEFrame(Lcom/ss/android/ttvecamera/TECameraFrame;)Lcom/ss/android/ttve/model/VEFrame;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/ss/android/vesdk/VECameraSettings$PictureCallback;->onPictureTaken(Lcom/ss/android/ttve/model/VEFrame;)V

    :cond_d
    return-void
.end method

.method public onTakenFail(Ljava/lang/Exception;)V
    .registers 2

    .line 750
    iget-object p0, p0, Lcom/ss/android/vesdk/VECameraCapture$4;->val$callback:Lcom/ss/android/vesdk/VECameraSettings$PictureCallback;

    if-eqz p0, :cond_7

    .line 751
    invoke-interface {p0, p1}, Lcom/ss/android/vesdk/VECameraSettings$PictureCallback;->onTakenFail(Ljava/lang/Exception;)V

    :cond_7
    return-void
.end method
