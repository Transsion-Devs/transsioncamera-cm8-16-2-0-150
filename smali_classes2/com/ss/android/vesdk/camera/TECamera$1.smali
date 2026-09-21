.class Lcom/ss/android/vesdk/camera/TECamera$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/ss/android/vesdk/frame/TECapturePipeline$CaptureListenerWithAR;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ss/android/vesdk/camera/TECamera;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ss/android/vesdk/camera/TECamera;


# direct methods
.method constructor <init>(Lcom/ss/android/vesdk/camera/TECamera;)V
    .registers 2

    .line 216
    iput-object p1, p0, Lcom/ss/android/vesdk/camera/TECamera$1;->this$0:Lcom/ss/android/vesdk/camera/TECamera;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onExtFrameDataAttached(Ljava/lang/Object;)V
    .registers 4

    .line 274
    iget-object p0, p0, Lcom/ss/android/vesdk/camera/TECamera$1;->this$0:Lcom/ss/android/vesdk/camera/TECamera;

    # getter for: Lcom/ss/android/vesdk/camera/TECamera;->mHandle:J
    invoke-static {p0}, Lcom/ss/android/vesdk/camera/TECamera;->access$1100(Lcom/ss/android/vesdk/camera/TECamera;)J

    move-result-wide v0

    # invokes: Lcom/ss/android/vesdk/camera/TECamera;->nativeExtFrameDataAttached(JLjava/lang/Object;)V
    invoke-static {p0, v0, v1, p1}, Lcom/ss/android/vesdk/camera/TECamera;->access$1400(Lcom/ss/android/vesdk/camera/TECamera;JLjava/lang/Object;)V

    return-void
.end method

.method public onFrameCaptured(Lcom/ss/android/ttvecamera/TECameraFrame;)V
    .registers 8

    .line 240
    iget-object v0, p0, Lcom/ss/android/vesdk/camera/TECamera$1;->this$0:Lcom/ss/android/vesdk/camera/TECamera;

    invoke-virtual {p1}, Lcom/ss/android/ttvecamera/TECameraFrame;->getFacing()I

    move-result v1

    # setter for: Lcom/ss/android/vesdk/camera/TECamera;->mUseFront:I
    invoke-static {v0, v1}, Lcom/ss/android/vesdk/camera/TECamera;->access$302(Lcom/ss/android/vesdk/camera/TECamera;I)I

    .line 241
    iget-object v0, p0, Lcom/ss/android/vesdk/camera/TECamera$1;->this$0:Lcom/ss/android/vesdk/camera/TECamera;

    # getter for: Lcom/ss/android/vesdk/camera/TECamera;->isFirstOpen:Z
    invoke-static {v0}, Lcom/ss/android/vesdk/camera/TECamera;->access$400(Lcom/ss/android/vesdk/camera/TECamera;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_3d

    .line 242
    iget-object v0, p0, Lcom/ss/android/vesdk/camera/TECamera$1;->this$0:Lcom/ss/android/vesdk/camera/TECamera;

    # getter for: Lcom/ss/android/vesdk/camera/TECamera;->mUseFront:I
    invoke-static {v0}, Lcom/ss/android/vesdk/camera/TECamera;->access$300(Lcom/ss/android/vesdk/camera/TECamera;)I

    move-result v2

    # setter for: Lcom/ss/android/vesdk/camera/TECamera;->originFacing:I
    invoke-static {v0, v2}, Lcom/ss/android/vesdk/camera/TECamera;->access$502(Lcom/ss/android/vesdk/camera/TECamera;I)I

    .line 243
    iget-object v0, p0, Lcom/ss/android/vesdk/camera/TECamera$1;->this$0:Lcom/ss/android/vesdk/camera/TECamera;

    invoke-virtual {p1}, Lcom/ss/android/ttvecamera/TECameraFrame;->getSize()Lcom/ss/android/ttvecamera/TEFrameSizei;

    move-result-object v2

    iget v2, v2, Lcom/ss/android/ttvecamera/TEFrameSizei;->width:I

    # setter for: Lcom/ss/android/vesdk/camera/TECamera;->originFrameWidth:I
    invoke-static {v0, v2}, Lcom/ss/android/vesdk/camera/TECamera;->access$602(Lcom/ss/android/vesdk/camera/TECamera;I)I

    .line 244
    iget-object v0, p0, Lcom/ss/android/vesdk/camera/TECamera$1;->this$0:Lcom/ss/android/vesdk/camera/TECamera;

    invoke-virtual {p1}, Lcom/ss/android/ttvecamera/TECameraFrame;->getSize()Lcom/ss/android/ttvecamera/TEFrameSizei;

    move-result-object v2

    iget v2, v2, Lcom/ss/android/ttvecamera/TEFrameSizei;->height:I

    # setter for: Lcom/ss/android/vesdk/camera/TECamera;->originFrameHeight:I
    invoke-static {v0, v2}, Lcom/ss/android/vesdk/camera/TECamera;->access$702(Lcom/ss/android/vesdk/camera/TECamera;I)I

    .line 245
    iget-object v0, p0, Lcom/ss/android/vesdk/camera/TECamera$1;->this$0:Lcom/ss/android/vesdk/camera/TECamera;

    # invokes: Lcom/ss/android/vesdk/camera/TECamera;->setCameraParams(Lcom/ss/android/ttvecamera/TECameraFrame;)V
    invoke-static {v0, p1}, Lcom/ss/android/vesdk/camera/TECamera;->access$800(Lcom/ss/android/vesdk/camera/TECamera;Lcom/ss/android/ttvecamera/TECameraFrame;)V

    .line 246
    iget-object p1, p0, Lcom/ss/android/vesdk/camera/TECamera$1;->this$0:Lcom/ss/android/vesdk/camera/TECamera;

    const/4 v0, 0x0

    # setter for: Lcom/ss/android/vesdk/camera/TECamera;->isFirstOpen:Z
    invoke-static {p1, v0}, Lcom/ss/android/vesdk/camera/TECamera;->access$402(Lcom/ss/android/vesdk/camera/TECamera;Z)Z

    goto :goto_a0

    .line 248
    :cond_3d
    iget-object v0, p0, Lcom/ss/android/vesdk/camera/TECamera$1;->this$0:Lcom/ss/android/vesdk/camera/TECamera;

    # getter for: Lcom/ss/android/vesdk/camera/TECamera;->mUseFront:I
    invoke-static {v0}, Lcom/ss/android/vesdk/camera/TECamera;->access$300(Lcom/ss/android/vesdk/camera/TECamera;)I

    move-result v0

    iget-object v2, p0, Lcom/ss/android/vesdk/camera/TECamera$1;->this$0:Lcom/ss/android/vesdk/camera/TECamera;

    # getter for: Lcom/ss/android/vesdk/camera/TECamera;->originFacing:I
    invoke-static {v2}, Lcom/ss/android/vesdk/camera/TECamera;->access$500(Lcom/ss/android/vesdk/camera/TECamera;)I

    move-result v2

    if-ne v0, v2, :cond_6e

    invoke-virtual {p1}, Lcom/ss/android/ttvecamera/TECameraFrame;->getSize()Lcom/ss/android/ttvecamera/TEFrameSizei;

    move-result-object v0

    iget v0, v0, Lcom/ss/android/ttvecamera/TEFrameSizei;->width:I

    iget-object v2, p0, Lcom/ss/android/vesdk/camera/TECamera$1;->this$0:Lcom/ss/android/vesdk/camera/TECamera;

    # getter for: Lcom/ss/android/vesdk/camera/TECamera;->originFrameWidth:I
    invoke-static {v2}, Lcom/ss/android/vesdk/camera/TECamera;->access$600(Lcom/ss/android/vesdk/camera/TECamera;)I

    move-result v2

    if-ne v0, v2, :cond_6e

    .line 249
    invoke-virtual {p1}, Lcom/ss/android/ttvecamera/TECameraFrame;->getSize()Lcom/ss/android/ttvecamera/TEFrameSizei;

    move-result-object v0

    iget v0, v0, Lcom/ss/android/ttvecamera/TEFrameSizei;->height:I

    iget-object v2, p0, Lcom/ss/android/vesdk/camera/TECamera$1;->this$0:Lcom/ss/android/vesdk/camera/TECamera;

    # getter for: Lcom/ss/android/vesdk/camera/TECamera;->originFrameHeight:I
    invoke-static {v2}, Lcom/ss/android/vesdk/camera/TECamera;->access$700(Lcom/ss/android/vesdk/camera/TECamera;)I

    move-result v2

    if-eq v0, v2, :cond_68

    goto :goto_6e

    .line 257
    :cond_68
    iget-object v0, p0, Lcom/ss/android/vesdk/camera/TECamera$1;->this$0:Lcom/ss/android/vesdk/camera/TECamera;

    # invokes: Lcom/ss/android/vesdk/camera/TECamera;->setCameraParams(Lcom/ss/android/ttvecamera/TECameraFrame;)V
    invoke-static {v0, p1}, Lcom/ss/android/vesdk/camera/TECamera;->access$800(Lcom/ss/android/vesdk/camera/TECamera;Lcom/ss/android/ttvecamera/TECameraFrame;)V

    goto :goto_a0

    .line 250
    :cond_6e
    :goto_6e
    # getter for: Lcom/ss/android/vesdk/camera/TECamera;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/ss/android/vesdk/camera/TECamera;->access$900()Ljava/lang/String;

    move-result-object v0

    const-string v2, "facing change..."

    invoke-static {v0, v2}, Lcom/ss/android/vesdk/VELogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 251
    iget-object v0, p0, Lcom/ss/android/vesdk/camera/TECamera$1;->this$0:Lcom/ss/android/vesdk/camera/TECamera;

    # invokes: Lcom/ss/android/vesdk/camera/TECamera;->setCameraParams(Lcom/ss/android/ttvecamera/TECameraFrame;)V
    invoke-static {v0, p1}, Lcom/ss/android/vesdk/camera/TECamera;->access$800(Lcom/ss/android/vesdk/camera/TECamera;Lcom/ss/android/ttvecamera/TECameraFrame;)V

    .line 252
    iget-object v0, p0, Lcom/ss/android/vesdk/camera/TECamera$1;->this$0:Lcom/ss/android/vesdk/camera/TECamera;

    # getter for: Lcom/ss/android/vesdk/camera/TECamera;->mUseFront:I
    invoke-static {v0}, Lcom/ss/android/vesdk/camera/TECamera;->access$300(Lcom/ss/android/vesdk/camera/TECamera;)I

    move-result v2

    # setter for: Lcom/ss/android/vesdk/camera/TECamera;->originFacing:I
    invoke-static {v0, v2}, Lcom/ss/android/vesdk/camera/TECamera;->access$502(Lcom/ss/android/vesdk/camera/TECamera;I)I

    .line 253
    iget-object v0, p0, Lcom/ss/android/vesdk/camera/TECamera$1;->this$0:Lcom/ss/android/vesdk/camera/TECamera;

    invoke-virtual {p1}, Lcom/ss/android/ttvecamera/TECameraFrame;->getSize()Lcom/ss/android/ttvecamera/TEFrameSizei;

    move-result-object v2

    iget v2, v2, Lcom/ss/android/ttvecamera/TEFrameSizei;->width:I

    # setter for: Lcom/ss/android/vesdk/camera/TECamera;->originFrameWidth:I
    invoke-static {v0, v2}, Lcom/ss/android/vesdk/camera/TECamera;->access$602(Lcom/ss/android/vesdk/camera/TECamera;I)I

    .line 254
    iget-object v0, p0, Lcom/ss/android/vesdk/camera/TECamera$1;->this$0:Lcom/ss/android/vesdk/camera/TECamera;

    invoke-virtual {p1}, Lcom/ss/android/ttvecamera/TECameraFrame;->getSize()Lcom/ss/android/ttvecamera/TEFrameSizei;

    move-result-object p1

    iget p1, p1, Lcom/ss/android/ttvecamera/TEFrameSizei;->height:I

    # setter for: Lcom/ss/android/vesdk/camera/TECamera;->originFrameHeight:I
    invoke-static {v0, p1}, Lcom/ss/android/vesdk/camera/TECamera;->access$702(Lcom/ss/android/vesdk/camera/TECamera;I)I

    .line 255
    iget-object p1, p0, Lcom/ss/android/vesdk/camera/TECamera$1;->this$0:Lcom/ss/android/vesdk/camera/TECamera;

    # setter for: Lcom/ss/android/vesdk/camera/TECamera;->mDropFrame:I
    invoke-static {p1, v1}, Lcom/ss/android/vesdk/camera/TECamera;->access$1002(Lcom/ss/android/vesdk/camera/TECamera;I)I

    .line 260
    :goto_a0
    iget-object p1, p0, Lcom/ss/android/vesdk/camera/TECamera$1;->this$0:Lcom/ss/android/vesdk/camera/TECamera;

    # getter for: Lcom/ss/android/vesdk/camera/TECamera;->mDropFrame:I
    invoke-static {p1}, Lcom/ss/android/vesdk/camera/TECamera;->access$1000(Lcom/ss/android/vesdk/camera/TECamera;)I

    move-result p1

    const-wide/16 v2, 0x0

    if-lez p1, :cond_c3

    .line 261
    iget-object p1, p0, Lcom/ss/android/vesdk/camera/TECamera$1;->this$0:Lcom/ss/android/vesdk/camera/TECamera;

    # getter for: Lcom/ss/android/vesdk/camera/TECamera;->mHandle:J
    invoke-static {p1}, Lcom/ss/android/vesdk/camera/TECamera;->access$1100(Lcom/ss/android/vesdk/camera/TECamera;)J

    move-result-wide v4

    cmp-long p1, v4, v2

    if-eqz p1, :cond_bd

    .line 262
    iget-object p1, p0, Lcom/ss/android/vesdk/camera/TECamera$1;->this$0:Lcom/ss/android/vesdk/camera/TECamera;

    # getter for: Lcom/ss/android/vesdk/camera/TECamera;->mHandle:J
    invoke-static {p1}, Lcom/ss/android/vesdk/camera/TECamera;->access$1100(Lcom/ss/android/vesdk/camera/TECamera;)J

    move-result-wide v2

    # invokes: Lcom/ss/android/vesdk/camera/TECamera;->nativeNotifyCameraFrameAvailable(JZ)I
    invoke-static {p1, v2, v3, v1}, Lcom/ss/android/vesdk/camera/TECamera;->access$1200(Lcom/ss/android/vesdk/camera/TECamera;JZ)I

    .line 264
    :cond_bd
    iget-object p0, p0, Lcom/ss/android/vesdk/camera/TECamera$1;->this$0:Lcom/ss/android/vesdk/camera/TECamera;

    # operator-- for: Lcom/ss/android/vesdk/camera/TECamera;->mDropFrame:I
    invoke-static {p0}, Lcom/ss/android/vesdk/camera/TECamera;->access$1010(Lcom/ss/android/vesdk/camera/TECamera;)I

    return-void

    .line 266
    :cond_c3
    iget-object p1, p0, Lcom/ss/android/vesdk/camera/TECamera$1;->this$0:Lcom/ss/android/vesdk/camera/TECamera;

    # getter for: Lcom/ss/android/vesdk/camera/TECamera;->mHandle:J
    invoke-static {p1}, Lcom/ss/android/vesdk/camera/TECamera;->access$1100(Lcom/ss/android/vesdk/camera/TECamera;)J

    move-result-wide v4

    cmp-long p1, v4, v2

    if-eqz p1, :cond_dd

    .line 267
    iget-object p1, p0, Lcom/ss/android/vesdk/camera/TECamera$1;->this$0:Lcom/ss/android/vesdk/camera/TECamera;

    # getter for: Lcom/ss/android/vesdk/camera/TECamera;->mHandle:J
    invoke-static {p1}, Lcom/ss/android/vesdk/camera/TECamera;->access$1100(Lcom/ss/android/vesdk/camera/TECamera;)J

    move-result-wide v2

    iget-object p0, p0, Lcom/ss/android/vesdk/camera/TECamera$1;->this$0:Lcom/ss/android/vesdk/camera/TECamera;

    # getter for: Lcom/ss/android/vesdk/camera/TECamera;->mEnableNotify:Z
    invoke-static {p0}, Lcom/ss/android/vesdk/camera/TECamera;->access$1300(Lcom/ss/android/vesdk/camera/TECamera;)Z

    move-result p0

    xor-int/2addr p0, v1

    # invokes: Lcom/ss/android/vesdk/camera/TECamera;->nativeNotifyCameraFrameAvailable(JZ)I
    invoke-static {p1, v2, v3, p0}, Lcom/ss/android/vesdk/camera/TECamera;->access$1200(Lcom/ss/android/vesdk/camera/TECamera;JZ)I

    :cond_dd
    return-void
.end method

.method public onFrameSize(Lcom/ss/android/ttvecamera/TEFrameSizei;)V
    .registers 3

    .line 233
    iget-object v0, p0, Lcom/ss/android/vesdk/camera/TECamera$1;->this$0:Lcom/ss/android/vesdk/camera/TECamera;

    # getter for: Lcom/ss/android/vesdk/camera/TECamera;->mOnCameraInfoListener:Lcom/ss/android/vesdk/camera/TECamera$OnCameraInfoListener;
    invoke-static {v0}, Lcom/ss/android/vesdk/camera/TECamera;->access$200(Lcom/ss/android/vesdk/camera/TECamera;)Lcom/ss/android/vesdk/camera/TECamera$OnCameraInfoListener;

    move-result-object v0

    if-eqz v0, :cond_15

    .line 234
    iget-object p0, p0, Lcom/ss/android/vesdk/camera/TECamera$1;->this$0:Lcom/ss/android/vesdk/camera/TECamera;

    # getter for: Lcom/ss/android/vesdk/camera/TECamera;->mOnCameraInfoListener:Lcom/ss/android/vesdk/camera/TECamera$OnCameraInfoListener;
    invoke-static {p0}, Lcom/ss/android/vesdk/camera/TECamera;->access$200(Lcom/ss/android/vesdk/camera/TECamera;)Lcom/ss/android/vesdk/camera/TECamera$OnCameraInfoListener;

    move-result-object p0

    iget v0, p1, Lcom/ss/android/ttvecamera/TEFrameSizei;->width:I

    iget p1, p1, Lcom/ss/android/ttvecamera/TEFrameSizei;->height:I

    invoke-interface {p0, v0, p1}, Lcom/ss/android/vesdk/camera/TECamera$OnCameraInfoListener;->onCameraPreviewSizeChanged(II)V

    :cond_15
    return-void
.end method

.method public onNewSurfaceTexture(Landroid/graphics/SurfaceTexture;)V
    .registers 3

    .line 220
    iget-object v0, p0, Lcom/ss/android/vesdk/camera/TECamera$1;->this$0:Lcom/ss/android/vesdk/camera/TECamera;

    # getter for: Lcom/ss/android/vesdk/camera/TECamera;->mTextureHolder:Lcom/ss/android/vesdk/TextureHolder;
    invoke-static {v0}, Lcom/ss/android/vesdk/camera/TECamera;->access$000(Lcom/ss/android/vesdk/camera/TECamera;)Lcom/ss/android/vesdk/TextureHolder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/ss/android/vesdk/TextureHolder;->setSurfaceTexture(Landroid/graphics/SurfaceTexture;)V

    .line 221
    iget-object p0, p0, Lcom/ss/android/vesdk/camera/TECamera$1;->this$0:Lcom/ss/android/vesdk/camera/TECamera;

    # setter for: Lcom/ss/android/vesdk/camera/TECamera;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;
    invoke-static {p0, p1}, Lcom/ss/android/vesdk/camera/TECamera;->access$102(Lcom/ss/android/vesdk/camera/TECamera;Landroid/graphics/SurfaceTexture;)Landroid/graphics/SurfaceTexture;

    return-void
.end method

.method public onNewSurfaceTexture(Landroid/graphics/SurfaceTexture;Z)V
    .registers 3

    .line 226
    invoke-virtual {p0, p1}, Lcom/ss/android/vesdk/camera/TECamera$1;->onNewSurfaceTexture(Landroid/graphics/SurfaceTexture;)V

    .line 227
    iget-object p0, p0, Lcom/ss/android/vesdk/camera/TECamera$1;->this$0:Lcom/ss/android/vesdk/camera/TECamera;

    # getter for: Lcom/ss/android/vesdk/camera/TECamera;->mTextureHolder:Lcom/ss/android/vesdk/TextureHolder;
    invoke-static {p0}, Lcom/ss/android/vesdk/camera/TECamera;->access$000(Lcom/ss/android/vesdk/camera/TECamera;)Lcom/ss/android/vesdk/TextureHolder;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/ss/android/vesdk/TextureHolder;->setNeedAttachToGLContext(Z)V

    return-void
.end method
