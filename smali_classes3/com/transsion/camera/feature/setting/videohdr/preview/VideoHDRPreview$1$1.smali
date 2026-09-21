.class Lcom/transsion/camera/feature/setting/videohdr/preview/VideoHDRPreview$1$1;
.super Lcom/transsion/camera/utils/threads/WorkTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/camera/feature/setting/videohdr/preview/VideoHDRPreview$1;->draw(Landroid/graphics/SurfaceTexture;III)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/transsion/camera/feature/setting/videohdr/preview/VideoHDRPreview$1;

.field final synthetic val$captureOrientation:I

.field final synthetic val$surfaceHeight:I

.field final synthetic val$surfaceWidth:I

.field final synthetic val$textureBuffers:[[B


# direct methods
.method constructor <init>(Lcom/transsion/camera/feature/setting/videohdr/preview/VideoHDRPreview$1;Ljava/lang/String;[[BIII)V
    .registers 7

    .line 143
    iput-object p1, p0, Lcom/transsion/camera/feature/setting/videohdr/preview/VideoHDRPreview$1$1;->this$1:Lcom/transsion/camera/feature/setting/videohdr/preview/VideoHDRPreview$1;

    iput-object p3, p0, Lcom/transsion/camera/feature/setting/videohdr/preview/VideoHDRPreview$1$1;->val$textureBuffers:[[B

    iput p4, p0, Lcom/transsion/camera/feature/setting/videohdr/preview/VideoHDRPreview$1$1;->val$surfaceWidth:I

    iput p5, p0, Lcom/transsion/camera/feature/setting/videohdr/preview/VideoHDRPreview$1$1;->val$surfaceHeight:I

    iput p6, p0, Lcom/transsion/camera/feature/setting/videohdr/preview/VideoHDRPreview$1$1;->val$captureOrientation:I

    invoke-direct {p0, p2}, Lcom/transsion/camera/utils/threads/WorkTask;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public doProcess()V
    .registers 5

    .line 146
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/videohdr/preview/VideoHDRPreview$1$1;->this$1:Lcom/transsion/camera/feature/setting/videohdr/preview/VideoHDRPreview$1;

    iget-object v0, v0, Lcom/transsion/camera/feature/setting/videohdr/preview/VideoHDRPreview$1;->this$0:Lcom/transsion/camera/feature/setting/videohdr/preview/VideoHDRPreview;

    iget-object v1, p0, Lcom/transsion/camera/feature/setting/videohdr/preview/VideoHDRPreview$1$1;->val$textureBuffers:[[B

    iget v2, p0, Lcom/transsion/camera/feature/setting/videohdr/preview/VideoHDRPreview$1$1;->val$surfaceWidth:I

    iget v3, p0, Lcom/transsion/camera/feature/setting/videohdr/preview/VideoHDRPreview$1$1;->val$surfaceHeight:I

    invoke-static {v0, v1, v2, v3}, Lcom/transsion/camera/feature/setting/videohdr/preview/VideoHDRPreview;->-$$Nest$mgetJpegData(Lcom/transsion/camera/feature/setting/videohdr/preview/VideoHDRPreview;[[BII)[[B

    move-result-object v0

    .line 147
    iget-object v1, p0, Lcom/transsion/camera/feature/setting/videohdr/preview/VideoHDRPreview$1$1;->this$1:Lcom/transsion/camera/feature/setting/videohdr/preview/VideoHDRPreview$1;

    iget-object v1, v1, Lcom/transsion/camera/feature/setting/videohdr/preview/VideoHDRPreview$1;->this$0:Lcom/transsion/camera/feature/setting/videohdr/preview/VideoHDRPreview;

    invoke-static {v1}, Lcom/transsion/camera/feature/setting/videohdr/preview/VideoHDRPreview;->-$$Nest$fgetIS_DEBUG(Lcom/transsion/camera/feature/setting/videohdr/preview/VideoHDRPreview;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_30

    .line 148
    iget-object v1, p0, Lcom/transsion/camera/feature/setting/videohdr/preview/VideoHDRPreview$1$1;->this$1:Lcom/transsion/camera/feature/setting/videohdr/preview/VideoHDRPreview$1;

    iget-object v1, v1, Lcom/transsion/camera/feature/setting/videohdr/preview/VideoHDRPreview$1;->this$0:Lcom/transsion/camera/feature/setting/videohdr/preview/VideoHDRPreview;

    invoke-static {v1}, Lcom/transsion/camera/feature/setting/videohdr/preview/VideoHDRPreview;->-$$Nest$fgetmVideoHDRRecordingCallback(Lcom/transsion/camera/feature/setting/videohdr/preview/VideoHDRPreview;)Lcom/transsion/camera/app/common/mode/IVideoHDRRecordingCallback;

    move-result-object v1

    const/4 v3, 0x0

    aget-object v3, v0, v3

    aget-object v0, v0, v2

    invoke-static {}, Lcom/transsion/camera/feature/setting/videohdr/utils/HDRConfig;->isFlashFired()Z

    move-result v2

    iget p0, p0, Lcom/transsion/camera/feature/setting/videohdr/preview/VideoHDRPreview$1$1;->val$captureOrientation:I

    invoke-interface {v1, v3, v0, v2, p0}, Lcom/transsion/camera/app/common/mode/IVideoHDRRecordingCallback;->onCapture([B[BZI)V

    goto :goto_44

    .line 150
    :cond_30
    iget-object v1, p0, Lcom/transsion/camera/feature/setting/videohdr/preview/VideoHDRPreview$1$1;->this$1:Lcom/transsion/camera/feature/setting/videohdr/preview/VideoHDRPreview$1;

    iget-object v1, v1, Lcom/transsion/camera/feature/setting/videohdr/preview/VideoHDRPreview$1;->this$0:Lcom/transsion/camera/feature/setting/videohdr/preview/VideoHDRPreview;

    invoke-static {v1}, Lcom/transsion/camera/feature/setting/videohdr/preview/VideoHDRPreview;->-$$Nest$fgetmVideoHDRRecordingCallback(Lcom/transsion/camera/feature/setting/videohdr/preview/VideoHDRPreview;)Lcom/transsion/camera/app/common/mode/IVideoHDRRecordingCallback;

    move-result-object v1

    aget-object v0, v0, v2

    invoke-static {}, Lcom/transsion/camera/feature/setting/videohdr/utils/HDRConfig;->isFlashFired()Z

    move-result v2

    iget p0, p0, Lcom/transsion/camera/feature/setting/videohdr/preview/VideoHDRPreview$1$1;->val$captureOrientation:I

    const/4 v3, 0x0

    invoke-interface {v1, v3, v0, v2, p0}, Lcom/transsion/camera/app/common/mode/IVideoHDRRecordingCallback;->onCapture([B[BZI)V

    .line 152
    :goto_44
    invoke-static {}, Lcom/transsion/camera/feature/setting/videohdr/preview/VideoHDRPreview;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " captureTriggled end, Thread = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method
