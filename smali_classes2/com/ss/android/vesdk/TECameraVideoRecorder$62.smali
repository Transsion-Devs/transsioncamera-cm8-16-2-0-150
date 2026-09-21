.class Lcom/ss/android/vesdk/TECameraVideoRecorder$62;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/ss/android/medialib/presenter/MediaRecordPresenter$OnPictureCallbackV2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ss/android/vesdk/TECameraVideoRecorder;->renderFrame(Lcom/ss/android/ttve/model/VEFrame;IILcom/ss/android/vesdk/VERecorder$VEFrameRenderCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ss/android/vesdk/TECameraVideoRecorder;

.field final synthetic val$callback:Lcom/ss/android/vesdk/VERecorder$VEFrameRenderCallback;


# direct methods
.method constructor <init>(Lcom/ss/android/vesdk/TECameraVideoRecorder;Lcom/ss/android/vesdk/VERecorder$VEFrameRenderCallback;)V
    .registers 3

    .line 4672
    iput-object p1, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder$62;->this$0:Lcom/ss/android/vesdk/TECameraVideoRecorder;

    iput-object p2, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder$62;->val$callback:Lcom/ss/android/vesdk/VERecorder$VEFrameRenderCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onImage(Landroid/graphics/Bitmap;)V
    .registers 4

    .line 4675
    iget-object v0, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder$62;->this$0:Lcom/ss/android/vesdk/TECameraVideoRecorder;

    const-string v1, "TECam_renderFrame_0"

    # invokes: Lcom/ss/android/vesdk/TECameraVideoRecorder;->condDumpBmp4Debug(Landroid/graphics/Bitmap;Ljava/lang/String;)V
    invoke-static {v0, p1, v1}, Lcom/ss/android/vesdk/TECameraVideoRecorder;->access$5500(Lcom/ss/android/vesdk/TECameraVideoRecorder;Landroid/graphics/Bitmap;Ljava/lang/String;)V

    .line 4677
    iget-object p0, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder$62;->val$callback:Lcom/ss/android/vesdk/VERecorder$VEFrameRenderCallback;

    if-eqz p0, :cond_e

    .line 4678
    invoke-interface {p0, p1}, Lcom/ss/android/vesdk/VERecorder$VEFrameRenderCallback;->onResult(Landroid/graphics/Bitmap;)V

    :cond_e
    return-void
.end method

.method public onResult(II)V
    .registers 3

    .line 4684
    iget-object p0, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder$62;->val$callback:Lcom/ss/android/vesdk/VERecorder$VEFrameRenderCallback;

    if-eqz p0, :cond_7

    .line 4685
    invoke-interface {p0, p2}, Lcom/ss/android/vesdk/VERecorder$VEFrameRenderCallback;->onState(I)V

    :cond_7
    return-void
.end method
