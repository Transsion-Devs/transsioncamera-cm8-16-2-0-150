.class public Lcom/transsion/camera/feature/mode/aiartmuseum/preview/BitmapRender;
.super Lcom/transsion/camera/feature/mode/aiartmuseum/preview/BaseRender;
.source "SourceFile"


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private final mTextureMatrix:[F

.field private final mVertexMatrix:[F


# direct methods
.method static bridge synthetic -$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;
    .registers 1

    .line 0
    sget-object v0, Lcom/transsion/camera/feature/mode/aiartmuseum/preview/BitmapRender;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 31
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "BitmapRender"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/feature/mode/aiartmuseum/preview/BitmapRender;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Lcom/transsion/camera/feature/mode/aiartmuseum/preview/IGLExecutor;)V
    .registers 6

    .line 38
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/aiartmuseum/preview/BaseRender;-><init>(Lcom/transsion/camera/feature/mode/aiartmuseum/preview/IGLExecutor;)V

    const/16 p1, 0x10

    .line 33
    new-array v0, p1, [F

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/preview/BitmapRender;->mTextureMatrix:[F

    .line 35
    new-array p1, p1, [F

    iput-object p1, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/preview/BitmapRender;->mVertexMatrix:[F

    const/4 p0, 0x0

    .line 40
    invoke-static {v0, p0}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    const/high16 v1, 0x3f000000    # 0.5f

    const/4 v2, 0x0

    .line 41
    invoke-static {v0, p0, v1, v1, v2}, Landroid/opengl/Matrix;->translateM([FIFFF)V

    const/high16 v1, 0x3f800000    # 1.0f

    const/high16 v3, -0x40800000    # -1.0f

    .line 42
    invoke-static {v0, p0, v1, v3, v1}, Landroid/opengl/Matrix;->scaleM([FIFFF)V

    const/high16 v1, -0x41000000    # -0.5f

    .line 43
    invoke-static {v0, p0, v1, v1, v2}, Landroid/opengl/Matrix;->translateM([FIFFF)V

    .line 45
    invoke-static {p1, p0}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    return-void
.end method


# virtual methods
.method public draw()V
    .registers 4

    .line 84
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/preview/BaseRender;->mTextureId:[I

    if-nez v0, :cond_5

    return-void

    :cond_5
    const/4 v1, 0x0

    .line 87
    aget v0, v0, v1

    iget-object v1, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/preview/BitmapRender;->mTextureMatrix:[F

    iget-object v2, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/preview/BitmapRender;->mVertexMatrix:[F

    invoke-virtual {p0, v0, v1, v2}, Lcom/transsion/camera/feature/mode/aiartmuseum/preview/BitmapRender;->draw(I[F[F)V

    return-void
.end method

.method public bridge synthetic draw(I[F)V
    .registers 3

    .line 29
    invoke-super {p0, p1, p2}, Lcom/transsion/camera/feature/mode/aiartmuseum/preview/BaseRender;->draw(I[F)V

    return-void
.end method

.method public bridge synthetic draw(I[F[F)V
    .registers 4

    .line 29
    invoke-super {p0, p1, p2, p3}, Lcom/transsion/camera/feature/mode/aiartmuseum/preview/BaseRender;->draw(I[F[F)V

    return-void
.end method

.method public draw([F)V
    .registers 4

    .line 92
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/preview/BaseRender;->mTextureId:[I

    if-nez v0, :cond_5

    return-void

    :cond_5
    const/4 v1, 0x0

    .line 95
    aget v0, v0, v1

    iget-object v1, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/preview/BitmapRender;->mTextureMatrix:[F

    invoke-virtual {p0, v0, v1, p1}, Lcom/transsion/camera/feature/mode/aiartmuseum/preview/BitmapRender;->draw(I[F[F)V

    return-void
.end method

.method public bridge synthetic drawOffScreen(I[FI)V
    .registers 4

    .line 29
    invoke-super {p0, p1, p2, p3}, Lcom/transsion/camera/feature/mode/aiartmuseum/preview/BaseRender;->drawOffScreen(I[FI)V

    return-void
.end method

.method public bridge synthetic init(Ljava/lang/String;)V
    .registers 2

    .line 29
    invoke-super {p0, p1}, Lcom/transsion/camera/feature/mode/aiartmuseum/preview/BaseRender;->init(Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic unInit()V
    .registers 1

    .line 29
    invoke-super {p0}, Lcom/transsion/camera/feature/mode/aiartmuseum/preview/BaseRender;->unInit()V

    return-void
.end method

.method public updateBitmap(IILjava/lang/String;)V
    .registers 11

    .line 49
    invoke-static {}, Lcom/transsion/camera/utils/threads/WorkThreadPools;->getInstance()Lcom/transsion/camera/utils/threads/WorkThreadPools;

    move-result-object v0

    new-instance v1, Lcom/transsion/camera/feature/mode/aiartmuseum/preview/BitmapRender$1;

    const-string/jumbo v3, "updateBitmap"

    move-object v2, p0

    move v4, p1

    move v5, p2

    move-object v6, p3

    invoke-direct/range {v1 .. v6}, Lcom/transsion/camera/feature/mode/aiartmuseum/preview/BitmapRender$1;-><init>(Lcom/transsion/camera/feature/mode/aiartmuseum/preview/BitmapRender;Ljava/lang/String;IILjava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/transsion/camera/utils/threads/WorkThreadPools;->execute(Lcom/transsion/camera/utils/threads/WorkTask;)V

    return-void
.end method

.method public updateBitmap(Landroid/graphics/Bitmap;)V
    .registers 5

    .line 71
    sget-object v0, Lcom/transsion/camera/feature/mode/aiartmuseum/preview/BitmapRender;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string/jumbo v1, "updateBitmap"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 73
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/preview/BaseRender;->mTextureId:[I

    if-eqz v1, :cond_1d

    const/4 v2, 0x0

    aget v1, v1, v2

    if-ltz v1, :cond_1d

    if-nez p1, :cond_14

    goto :goto_1d

    :cond_14
    const/16 p0, 0xde1

    .line 78
    invoke-static {p0, v1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 79
    invoke-static {p0, v2, p1, v2}, Landroid/opengl/GLUtils;->texImage2D(IILandroid/graphics/Bitmap;I)V

    return-void

    .line 74
    :cond_1d
    :goto_1d
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateBitmap mTextureId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/preview/BaseRender;->mTextureId:[I

    invoke-static {p0}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ", bitmap: "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method
