.class public Lcom/transsion/camera/feature/mode/vlog/ui/FrameInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final MAX_THUMBNAIL_FRAMES:I = 0x17


# instance fields
.field private final frameDuration:I

.field private final pixelPerMs:F

.field private final thumbHeight:I

.field private final thumbWidth:I

.field private thumbnailOrientation:I


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;)V
    .registers 5

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x28c

    .line 19
    iput v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/FrameInfo;->frameDuration:I

    .line 20
    invoke-static {}, Lcom/transsion/camera/utils/ScreenUtils;->getScreenSize()Landroid/util/Size;

    move-result-object v1

    if-nez v1, :cond_10

    const/16 v1, 0x870

    goto :goto_1a

    :cond_10
    invoke-static {}, Lcom/transsion/camera/utils/ScreenUtils;->getScreenSize()Landroid/util/Size;

    move-result-object v1

    invoke-virtual {v1}, Landroid/util/Size;->getWidth()I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    :goto_1a
    int-to-float v1, v1

    const/high16 v2, 0x41b80000    # 23.0f

    div-float/2addr v1, v2

    float-to-int v1, v1

    .line 21
    iput v1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/FrameInfo;->thumbWidth:I

    .line 22
    sget v2, Lcom/transsion/camera/feature/vlog/R$dimen;->vlog_segment_frame_view_height:I

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/FrameInfo;->thumbHeight:I

    int-to-float p1, v1

    int-to-float v0, v0

    div-float/2addr p1, v0

    .line 23
    iput p1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/FrameInfo;->pixelPerMs:F

    return-void
.end method


# virtual methods
.method public getFrameDuration()I
    .registers 1

    .line 27
    iget p0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/FrameInfo;->frameDuration:I

    return p0
.end method

.method public getPixelPerMs()F
    .registers 1

    .line 39
    iget p0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/FrameInfo;->pixelPerMs:F

    return p0
.end method

.method public getThumbHeight()I
    .registers 1

    .line 35
    iget p0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/FrameInfo;->thumbHeight:I

    return p0
.end method

.method public getThumbWidth()I
    .registers 1

    .line 31
    iget p0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/FrameInfo;->thumbWidth:I

    return p0
.end method

.method public getThumbnailOrientation()I
    .registers 1

    .line 43
    iget p0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/FrameInfo;->thumbnailOrientation:I

    return p0
.end method

.method public setThumbnailOrientation(I)V
    .registers 2

    .line 47
    iput p1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/FrameInfo;->thumbnailOrientation:I

    return-void
.end method
