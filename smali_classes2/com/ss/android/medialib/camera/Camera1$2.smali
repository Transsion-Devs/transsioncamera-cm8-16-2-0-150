.class Lcom/ss/android/medialib/camera/Camera1$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/hardware/Camera$PreviewCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ss/android/medialib/camera/Camera1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ss/android/medialib/camera/Camera1;


# direct methods
.method constructor <init>(Lcom/ss/android/medialib/camera/Camera1;)V
    .registers 2

    .line 289
    iput-object p1, p0, Lcom/ss/android/medialib/camera/Camera1$2;->this$0:Lcom/ss/android/medialib/camera/Camera1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreviewFrame([BLandroid/hardware/Camera;)V
    .registers 7

    .line 292
    iget-object p2, p0, Lcom/ss/android/medialib/camera/Camera1$2;->this$0:Lcom/ss/android/medialib/camera/Camera1;

    # getter for: Lcom/ss/android/medialib/camera/Camera1;->mFrameCallback:Lcom/ss/android/medialib/camera/IESCameraInterface$FrameCallback;
    invoke-static {p2}, Lcom/ss/android/medialib/camera/Camera1;->access$100(Lcom/ss/android/medialib/camera/Camera1;)Lcom/ss/android/medialib/camera/IESCameraInterface$FrameCallback;

    move-result-object p2

    if-eqz p2, :cond_24

    .line 293
    iget-object p2, p0, Lcom/ss/android/medialib/camera/Camera1$2;->this$0:Lcom/ss/android/medialib/camera/Camera1;

    # getter for: Lcom/ss/android/medialib/camera/Camera1;->mFrameCallback:Lcom/ss/android/medialib/camera/IESCameraInterface$FrameCallback;
    invoke-static {p2}, Lcom/ss/android/medialib/camera/Camera1;->access$100(Lcom/ss/android/medialib/camera/Camera1;)Lcom/ss/android/medialib/camera/IESCameraInterface$FrameCallback;

    move-result-object p2

    new-instance v0, Lcom/ss/android/medialib/camera/ImageFrame;

    iget-object v1, p0, Lcom/ss/android/medialib/camera/Camera1$2;->this$0:Lcom/ss/android/medialib/camera/Camera1;

    # getter for: Lcom/ss/android/medialib/camera/Camera1;->sWidth:I
    invoke-static {v1}, Lcom/ss/android/medialib/camera/Camera1;->access$200(Lcom/ss/android/medialib/camera/Camera1;)I

    move-result v1

    iget-object v2, p0, Lcom/ss/android/medialib/camera/Camera1$2;->this$0:Lcom/ss/android/medialib/camera/Camera1;

    # getter for: Lcom/ss/android/medialib/camera/Camera1;->sHeight:I
    invoke-static {v2}, Lcom/ss/android/medialib/camera/Camera1;->access$300(Lcom/ss/android/medialib/camera/Camera1;)I

    move-result v2

    const/4 v3, -0x3

    invoke-direct {v0, p1, v3, v1, v2}, Lcom/ss/android/medialib/camera/ImageFrame;-><init>([BIII)V

    const/4 v1, 0x1

    invoke-interface {p2, v1, v0}, Lcom/ss/android/medialib/camera/IESCameraInterface$FrameCallback;->onPreviewFrame(ILcom/ss/android/medialib/camera/ImageFrame;)V

    .line 296
    :cond_24
    iget-object p2, p0, Lcom/ss/android/medialib/camera/Camera1$2;->this$0:Lcom/ss/android/medialib/camera/Camera1;

    # getter for: Lcom/ss/android/medialib/camera/Camera1;->mCurrentCamera:Landroid/hardware/Camera;
    invoke-static {p2}, Lcom/ss/android/medialib/camera/Camera1;->access$400(Lcom/ss/android/medialib/camera/Camera1;)Landroid/hardware/Camera;

    move-result-object p2

    if-eqz p2, :cond_35

    .line 297
    iget-object p0, p0, Lcom/ss/android/medialib/camera/Camera1$2;->this$0:Lcom/ss/android/medialib/camera/Camera1;

    # getter for: Lcom/ss/android/medialib/camera/Camera1;->mCurrentCamera:Landroid/hardware/Camera;
    invoke-static {p0}, Lcom/ss/android/medialib/camera/Camera1;->access$400(Lcom/ss/android/medialib/camera/Camera1;)Landroid/hardware/Camera;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/hardware/Camera;->addCallbackBuffer([B)V

    :cond_35
    return-void
.end method
