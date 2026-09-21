.class Lcom/ss/android/vesdk/TECameraVideoRecorder$64;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/ss/android/medialib/presenter/MediaRecordPresenter$OnPictureCallbackV2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ss/android/vesdk/TECameraVideoRecorder;->renderFrame(Landroid/graphics/Bitmap;IIZLcom/ss/android/vesdk/VERecorder$VEFrameRenderCallback;)V
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

    .line 4732
    iput-object p1, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder$64;->this$0:Lcom/ss/android/vesdk/TECameraVideoRecorder;

    iput-object p2, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder$64;->val$callback:Lcom/ss/android/vesdk/VERecorder$VEFrameRenderCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onImage(Landroid/graphics/Bitmap;)V
    .registers 2

    .line 4735
    iget-object p0, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder$64;->val$callback:Lcom/ss/android/vesdk/VERecorder$VEFrameRenderCallback;

    invoke-interface {p0, p1}, Lcom/ss/android/vesdk/VERecorder$VEFrameRenderCallback;->onResult(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public onResult(II)V
    .registers 3

    .line 4740
    iget-object p0, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder$64;->val$callback:Lcom/ss/android/vesdk/VERecorder$VEFrameRenderCallback;

    invoke-interface {p0, p2}, Lcom/ss/android/vesdk/VERecorder$VEFrameRenderCallback;->onState(I)V

    return-void
.end method
