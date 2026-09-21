.class Lcom/transsion/camera/feature/mode/aiartmuseum/AIArtMuseumMode$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/feature/mode/aiartmuseum/preview/IPreviewStream$IStreamCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/camera/feature/mode/aiartmuseum/AIArtMuseumMode;->updateHandLandmark()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mFrameNumber:J

.field final synthetic this$0:Lcom/transsion/camera/feature/mode/aiartmuseum/AIArtMuseumMode;


# direct methods
.method constructor <init>(Lcom/transsion/camera/feature/mode/aiartmuseum/AIArtMuseumMode;)V
    .registers 2

    .line 247
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/AIArtMuseumMode$2;->this$0:Lcom/transsion/camera/feature/mode/aiartmuseum/AIArtMuseumMode;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public emitFrame()Z
    .registers 8

    .line 253
    iget-wide v0, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/AIArtMuseumMode$2;->mFrameNumber:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/AIArtMuseumMode$2;->mFrameNumber:J

    const-wide v2, 0x7fffffffffffffffL

    cmp-long v0, v0, v2

    const-wide/16 v1, 0x0

    if-nez v0, :cond_14

    .line 255
    iput-wide v1, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/AIArtMuseumMode$2;->mFrameNumber:J

    .line 257
    :cond_14
    iget-wide v3, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/AIArtMuseumMode$2;->mFrameNumber:J

    const-wide/16 v5, 0x3

    rem-long/2addr v3, v5

    cmp-long p0, v3, v1

    if-nez p0, :cond_1f

    const/4 p0, 0x1

    return p0

    :cond_1f
    const/4 p0, 0x0

    return p0
.end method

.method public onStreamUpdated(Landroid/graphics/Bitmap;)V
    .registers 3

    .line 262
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/AIArtMuseumMode$2;->this$0:Lcom/transsion/camera/feature/mode/aiartmuseum/AIArtMuseumMode;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/aiartmuseum/AIArtMuseumMode;->-$$Nest$fgetmHandDetector(Lcom/transsion/camera/feature/mode/aiartmuseum/AIArtMuseumMode;)Lcom/transsion/camera/feature/mode/aiartmuseum/detector/HandDetector;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 263
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/AIArtMuseumMode$2;->this$0:Lcom/transsion/camera/feature/mode/aiartmuseum/AIArtMuseumMode;

    invoke-static {p0}, Lcom/transsion/camera/feature/mode/aiartmuseum/AIArtMuseumMode;->-$$Nest$fgetmHandDetector(Lcom/transsion/camera/feature/mode/aiartmuseum/AIArtMuseumMode;)Lcom/transsion/camera/feature/mode/aiartmuseum/detector/HandDetector;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/mode/aiartmuseum/detector/HandDetector;->detect(Landroid/graphics/Bitmap;)V

    :cond_11
    return-void
.end method
