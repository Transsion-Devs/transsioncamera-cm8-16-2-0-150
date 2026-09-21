.class Lcom/transsion/camera/feature/supernightfilter/algorithm/AbstractFilterRender$My2DTexture;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/supernightfilter/algorithm/AbstractFilterRender;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "My2DTexture"
.end annotation


# instance fields
.field private textureHeight:I

.field private final textureId:I

.field private textureWidth:I

.field private videoEncodeTexture:Z


# direct methods
.method static bridge synthetic -$$Nest$fgettextureId(Lcom/transsion/camera/feature/supernightfilter/algorithm/AbstractFilterRender$My2DTexture;)I
    .registers 1

    .line 0
    iget p0, p0, Lcom/transsion/camera/feature/supernightfilter/algorithm/AbstractFilterRender$My2DTexture;->textureId:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetvideoEncodeTexture(Lcom/transsion/camera/feature/supernightfilter/algorithm/AbstractFilterRender$My2DTexture;)Z
    .registers 1

    .line 0
    iget-boolean p0, p0, Lcom/transsion/camera/feature/supernightfilter/algorithm/AbstractFilterRender$My2DTexture;->videoEncodeTexture:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$mdestroy(Lcom/transsion/camera/feature/supernightfilter/algorithm/AbstractFilterRender$My2DTexture;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/feature/supernightfilter/algorithm/AbstractFilterRender$My2DTexture;->destroy()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateTextureSize(Lcom/transsion/camera/feature/supernightfilter/algorithm/AbstractFilterRender$My2DTexture;II)V
    .registers 3

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/feature/supernightfilter/algorithm/AbstractFilterRender$My2DTexture;->updateTextureSize(II)V

    return-void
.end method

.method public constructor <init>(II)V
    .registers 5

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    invoke-static {}, Lcom/transsion/camera/feature/supernightfilter/algorithm/FilterRenderUtil;->createTexture()I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/feature/supernightfilter/algorithm/AbstractFilterRender$My2DTexture;->textureId:I

    .line 31
    iput p1, p0, Lcom/transsion/camera/feature/supernightfilter/algorithm/AbstractFilterRender$My2DTexture;->textureWidth:I

    .line 32
    iput p2, p0, Lcom/transsion/camera/feature/supernightfilter/algorithm/AbstractFilterRender$My2DTexture;->textureHeight:I

    const/4 v1, 0x0

    .line 33
    iput-boolean v1, p0, Lcom/transsion/camera/feature/supernightfilter/algorithm/AbstractFilterRender$My2DTexture;->videoEncodeTexture:Z

    .line 34
    invoke-static {p1, p2, v0}, Lcom/transsion/camera/feature/supernightfilter/algorithm/AbstractFilterRender;->-$$Nest$sminitTextureParameter(III)V

    return-void
.end method

.method private destroy()V
    .registers 1

    .line 46
    iget p0, p0, Lcom/transsion/camera/feature/supernightfilter/algorithm/AbstractFilterRender$My2DTexture;->textureId:I

    invoke-static {p0}, Lcom/transsion/camera/feature/supernightfilter/algorithm/FilterRenderUtil;->destroyTexture(I)V

    return-void
.end method

.method private updateTextureSize(II)V
    .registers 4

    .line 38
    iget v0, p0, Lcom/transsion/camera/feature/supernightfilter/algorithm/AbstractFilterRender$My2DTexture;->textureWidth:I

    if-ne v0, p1, :cond_a

    iget v0, p0, Lcom/transsion/camera/feature/supernightfilter/algorithm/AbstractFilterRender$My2DTexture;->textureHeight:I

    if-eq v0, p2, :cond_9

    goto :goto_a

    :cond_9
    return-void

    .line 39
    :cond_a
    :goto_a
    iput p1, p0, Lcom/transsion/camera/feature/supernightfilter/algorithm/AbstractFilterRender$My2DTexture;->textureWidth:I

    .line 40
    iput p2, p0, Lcom/transsion/camera/feature/supernightfilter/algorithm/AbstractFilterRender$My2DTexture;->textureHeight:I

    .line 41
    iget p0, p0, Lcom/transsion/camera/feature/supernightfilter/algorithm/AbstractFilterRender$My2DTexture;->textureId:I

    invoke-static {p1, p2, p0}, Lcom/transsion/camera/feature/supernightfilter/algorithm/AbstractFilterRender;->-$$Nest$smupdateTextureSize(III)V

    return-void
.end method
