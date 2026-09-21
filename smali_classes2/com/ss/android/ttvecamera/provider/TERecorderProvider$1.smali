.class Lcom/ss/android/ttvecamera/provider/TERecorderProvider$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ss/android/ttvecamera/provider/TERecorderProvider;->init(Ljava/util/List;Lcom/ss/android/ttvecamera/TEFrameSizei;)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ss/android/ttvecamera/provider/TERecorderProvider;


# direct methods
.method constructor <init>(Lcom/ss/android/ttvecamera/provider/TERecorderProvider;)V
    .registers 2

    .line 86
    iput-object p1, p0, Lcom/ss/android/ttvecamera/provider/TERecorderProvider$1;->this$0:Lcom/ss/android/ttvecamera/provider/TERecorderProvider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFrameAvailable(Landroid/graphics/SurfaceTexture;)V
    .registers 9

    .line 89
    iget-object v0, p0, Lcom/ss/android/ttvecamera/provider/TERecorderProvider$1;->this$0:Lcom/ss/android/ttvecamera/provider/TERecorderProvider;

    iget-object v1, v0, Lcom/ss/android/ttvecamera/provider/TECameraProvider;->mCamera:Lcom/ss/android/ttvecamera/TECameraBase;

    if-nez v1, :cond_7

    return-void

    .line 90
    :cond_7
    # getter for: Lcom/ss/android/ttvecamera/provider/TERecorderProvider;->mMVPMatrix:[F
    invoke-static {v0}, Lcom/ss/android/ttvecamera/provider/TERecorderProvider;->access$000(Lcom/ss/android/ttvecamera/provider/TERecorderProvider;)[F

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/SurfaceTexture;->getTransformMatrix([F)V

    .line 91
    new-instance v1, Lcom/ss/android/ttvecamera/TECameraFrame;

    iget-object v0, p0, Lcom/ss/android/ttvecamera/provider/TERecorderProvider$1;->this$0:Lcom/ss/android/ttvecamera/provider/TERecorderProvider;

    iget-object v0, v0, Lcom/ss/android/ttvecamera/provider/TECameraProvider;->mSize:Lcom/ss/android/ttvecamera/TEFrameSizei;

    iget v2, v0, Lcom/ss/android/ttvecamera/TEFrameSizei;->width:I

    iget v0, v0, Lcom/ss/android/ttvecamera/TEFrameSizei;->height:I

    invoke-virtual {p1}, Landroid/graphics/SurfaceTexture;->getTimestamp()J

    move-result-wide v3

    invoke-direct {v1, v2, v0, v3, v4}, Lcom/ss/android/ttvecamera/TECameraFrame;-><init>(IIJ)V

    .line 92
    iget-object p1, p0, Lcom/ss/android/ttvecamera/provider/TERecorderProvider$1;->this$0:Lcom/ss/android/ttvecamera/provider/TERecorderProvider;

    iget v2, p1, Lcom/ss/android/ttvecamera/provider/TERecorderProvider;->mTextureID:I

    iget-object p1, p1, Lcom/ss/android/ttvecamera/provider/TECameraProvider;->mCamera:Lcom/ss/android/ttvecamera/TECameraBase;

    invoke-virtual {p1}, Lcom/ss/android/ttvecamera/TECameraBase;->getFrameRotation()I

    move-result v3

    iget-object p1, p0, Lcom/ss/android/ttvecamera/provider/TERecorderProvider$1;->this$0:Lcom/ss/android/ttvecamera/provider/TERecorderProvider;

    # getter for: Lcom/ss/android/ttvecamera/provider/TERecorderProvider;->mMVPMatrix:[F
    invoke-static {p1}, Lcom/ss/android/ttvecamera/provider/TERecorderProvider;->access$000(Lcom/ss/android/ttvecamera/provider/TERecorderProvider;)[F

    move-result-object v4

    iget-object p1, p0, Lcom/ss/android/ttvecamera/provider/TERecorderProvider$1;->this$0:Lcom/ss/android/ttvecamera/provider/TERecorderProvider;

    iget-object v5, p1, Lcom/ss/android/ttvecamera/provider/TECameraProvider;->mFormat:Lcom/ss/android/ttvecamera/TECameraFrame$ETEPixelFormat;

    iget-object p1, p1, Lcom/ss/android/ttvecamera/provider/TECameraProvider;->mCamera:Lcom/ss/android/ttvecamera/TECameraBase;

    invoke-virtual {p1}, Lcom/ss/android/ttvecamera/TECameraBase;->getFacing()I

    move-result v6

    invoke-virtual/range {v1 .. v6}, Lcom/ss/android/ttvecamera/TECameraFrame;->initTextureFrame(II[FLcom/ss/android/ttvecamera/TECameraFrame$ETEPixelFormat;I)V

    .line 93
    iget-object p0, p0, Lcom/ss/android/ttvecamera/provider/TERecorderProvider$1;->this$0:Lcom/ss/android/ttvecamera/provider/TERecorderProvider;

    invoke-virtual {p0, v1}, Lcom/ss/android/ttvecamera/provider/TECameraProvider;->onFrameCaptured(Lcom/ss/android/ttvecamera/TECameraFrame;)V

    return-void
.end method
