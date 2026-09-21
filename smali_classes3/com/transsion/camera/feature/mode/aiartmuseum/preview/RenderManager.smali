.class public Lcom/transsion/camera/feature/mode/aiartmuseum/preview/RenderManager;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/feature/mode/aiartmuseum/preview/IPreviewShot;
.implements Lcom/transsion/camera/feature/mode/aiartmuseum/ui/IPreviewWindowController$IPreviewWindowListener;


# static fields
.field private static final DEFAULT_SKIP_FRAME_COUNT:I = 0x1

.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

.field private static final sStyleAIPreviewList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final AI_STYLE_SKIP_FRAME_COUNT:I

.field private final mAIArtRender:Lcom/transsion/camera/feature/mode/aiartmuseum/preview/AIArtRender;

.field private final mBitmapRender:Lcom/transsion/camera/feature/mode/aiartmuseum/preview/BitmapRender;

.field private mCameraId:Ljava/lang/String;

.field private mDrawStyle:Z

.field private mEffect:Ljava/lang/String;

.field private mEffectValue:Ljava/lang/String;

.field private mOrientation:I

.field private mOriginalTranslateX:F

.field private mOriginalTranslateY:F

.field private final mPreviewRender:Lcom/transsion/camera/app/ui/opengl/Texture2dProgram;

.field private mPreviewShotCallback:Lcom/transsion/camera/feature/mode/aiartmuseum/preview/IPreviewShot$IPreviewShotCallback;

.field private final mPreviewWindowController:Lcom/transsion/camera/feature/mode/aiartmuseum/ui/IPreviewWindowController;

.field private mSurfaceHeight:I

.field private mSurfaceWidth:I

.field private mTranslateX:F

.field private mTranslateY:F

.field private final mVertexMatrix:[F


# direct methods
.method static constructor <clinit>()V
    .registers 8

    .line 45
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "RenderManager"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/feature/mode/aiartmuseum/preview/RenderManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    .line 51
    const-string v6, "style_picasso"

    const-string v7, "style_wood_carve"

    const-string v2, "style_graffiti"

    const-string v3, "style_malevich"

    const-string v4, "style_monet"

    const-string v5, "style_van_gogh"

    filled-new-array/range {v2 .. v7}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/transsion/camera/feature/mode/aiartmuseum/preview/RenderManager;->sStyleAIPreviewList:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Lcom/transsion/camera/feature/mode/aiartmuseum/preview/IGLExecutor;Lcom/transsion/camera/feature/mode/aiartmuseum/ui/IPreviewWindowController;)V
    .registers 5

    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    invoke-static {}, Lcom/transsion/camera/utils/FeatureSupport;->aiArtMuseumAIStylePreviewSkip()I

    move-result v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/preview/RenderManager;->AI_STYLE_SKIP_FRAME_COUNT:I

    const/16 v0, 0x10

    .line 90
    new-array v0, v0, [F

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/preview/RenderManager;->mVertexMatrix:[F

    .line 95
    new-instance v0, Lcom/transsion/camera/feature/mode/aiartmuseum/preview/AIArtRender;

    invoke-direct {v0, p1}, Lcom/transsion/camera/feature/mode/aiartmuseum/preview/AIArtRender;-><init>(Lcom/transsion/camera/feature/mode/aiartmuseum/preview/IGLExecutor;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/preview/RenderManager;->mAIArtRender:Lcom/transsion/camera/feature/mode/aiartmuseum/preview/AIArtRender;

    .line 96
    new-instance v0, Lcom/transsion/camera/feature/mode/aiartmuseum/preview/BitmapRender;

    invoke-direct {v0, p1}, Lcom/transsion/camera/feature/mode/aiartmuseum/preview/BitmapRender;-><init>(Lcom/transsion/camera/feature/mode/aiartmuseum/preview/IGLExecutor;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/preview/RenderManager;->mBitmapRender:Lcom/transsion/camera/feature/mode/aiartmuseum/preview/BitmapRender;

    .line 97
    new-instance p1, Lcom/transsion/camera/app/ui/opengl/Texture2dProgram;

    sget-object v0, Lcom/transsion/camera/app/ui/opengl/Texture2dProgram$ProgramType;->TEXTURE_EXT:Lcom/transsion/camera/app/ui/opengl/Texture2dProgram$ProgramType;

    invoke-direct {p1, v0}, Lcom/transsion/camera/app/ui/opengl/Texture2dProgram;-><init>(Lcom/transsion/camera/app/ui/opengl/Texture2dProgram$ProgramType;)V

    iput-object p1, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/preview/RenderManager;->mPreviewRender:Lcom/transsion/camera/app/ui/opengl/Texture2dProgram;

    .line 98
    iput-object p2, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/preview/RenderManager;->mPreviewWindowController:Lcom/transsion/camera/feature/mode/aiartmuseum/ui/IPreviewWindowController;

    return-void
.end method

.method private drawOtherPreview(Landroid/graphics/SurfaceTexture;III)V
    .registers 13

    .line 216
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/preview/RenderManager;->mPreviewShotCallback:Lcom/transsion/camera/feature/mode/aiartmuseum/preview/IPreviewShot$IPreviewShotCallback;

    if-eqz v0, :cond_c

    .line 217
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/preview/RenderManager;->mAIArtRender:Lcom/transsion/camera/feature/mode/aiartmuseum/preview/AIArtRender;

    invoke-virtual {v1, v0}, Lcom/transsion/camera/feature/mode/aiartmuseum/preview/AIArtRender;->previewShot(Lcom/transsion/camera/feature/mode/aiartmuseum/preview/IPreviewShot$IPreviewShotCallback;)V

    const/4 v0, 0x0

    .line 218
    iput-object v0, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/preview/RenderManager;->mPreviewShotCallback:Lcom/transsion/camera/feature/mode/aiartmuseum/preview/IPreviewShot$IPreviewShotCallback;

    .line 221
    :cond_c
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/preview/RenderManager;->mVertexMatrix:[F

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 222
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/preview/RenderManager;->mAIArtRender:Lcom/transsion/camera/feature/mode/aiartmuseum/preview/AIArtRender;

    iget-object v1, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/preview/RenderManager;->mVertexMatrix:[F

    invoke-virtual {v0, v1}, Lcom/transsion/camera/feature/mode/aiartmuseum/preview/AIArtRender;->updateVertexMatrix([F)V

    .line 224
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 225
    iget-object v2, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/preview/RenderManager;->mAIArtRender:Lcom/transsion/camera/feature/mode/aiartmuseum/preview/AIArtRender;

    iget v7, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/preview/RenderManager;->mOrientation:I

    move-object v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    invoke-virtual/range {v2 .. v7}, Lcom/transsion/camera/feature/mode/aiartmuseum/preview/AIArtRender;->draw(Landroid/graphics/SurfaceTexture;IIII)Z

    .line 226
    sget-object p0, Lcom/transsion/camera/feature/mode/aiartmuseum/preview/RenderManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "previewRenderDraw cost: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p2

    sub-long/2addr p2, v0

    invoke-virtual {p1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p2, "ms"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->logDrawing(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method private drawStylePreview(Landroid/graphics/SurfaceTexture;III)V
    .registers 16

    .line 187
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/preview/RenderManager;->mPreviewRender:Lcom/transsion/camera/app/ui/opengl/Texture2dProgram;

    invoke-virtual {v0, p1, p2}, Lcom/transsion/camera/app/ui/opengl/Texture2dProgram;->draw(Landroid/graphics/SurfaceTexture;I)V

    .line 189
    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/aiartmuseum/preview/RenderManager;->updateVertexMatrix()V

    .line 190
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/preview/RenderManager;->mAIArtRender:Lcom/transsion/camera/feature/mode/aiartmuseum/preview/AIArtRender;

    iget-object v1, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/preview/RenderManager;->mVertexMatrix:[F

    invoke-virtual {v0, v1}, Lcom/transsion/camera/feature/mode/aiartmuseum/preview/AIArtRender;->updateVertexMatrix([F)V

    .line 192
    iget-boolean v0, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/preview/RenderManager;->mDrawStyle:Z

    const-string v1, "ms"

    const-string v2, "previewRenderDraw cost: "

    const/4 v3, 0x0

    if-eqz v0, :cond_4f

    .line 193
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/preview/RenderManager;->mPreviewShotCallback:Lcom/transsion/camera/feature/mode/aiartmuseum/preview/IPreviewShot$IPreviewShotCallback;

    if-eqz v0, :cond_23

    .line 194
    iget-object v4, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/preview/RenderManager;->mAIArtRender:Lcom/transsion/camera/feature/mode/aiartmuseum/preview/AIArtRender;

    invoke-virtual {v4, v0}, Lcom/transsion/camera/feature/mode/aiartmuseum/preview/AIArtRender;->previewShot(Lcom/transsion/camera/feature/mode/aiartmuseum/preview/IPreviewShot$IPreviewShotCallback;)V

    .line 195
    iput-object v3, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/preview/RenderManager;->mPreviewShotCallback:Lcom/transsion/camera/feature/mode/aiartmuseum/preview/IPreviewShot$IPreviewShotCallback;

    .line 198
    :cond_23
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 199
    iget-object v5, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/preview/RenderManager;->mAIArtRender:Lcom/transsion/camera/feature/mode/aiartmuseum/preview/AIArtRender;

    iget v10, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/preview/RenderManager;->mOrientation:I

    move-object v6, p1

    move v7, p2

    move v8, p3

    move v9, p4

    invoke-virtual/range {v5 .. v10}, Lcom/transsion/camera/feature/mode/aiartmuseum/preview/AIArtRender;->draw(Landroid/graphics/SurfaceTexture;IIII)Z

    .line 200
    sget-object p0, Lcom/transsion/camera/feature/mode/aiartmuseum/preview/RenderManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p2

    sub-long/2addr p2, v3

    invoke-virtual {p1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->logDrawing(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    :cond_4f
    move-object v4, p1

    move v5, p2

    move v6, p3

    move v7, p4

    .line 202
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/preview/RenderManager;->mPreviewShotCallback:Lcom/transsion/camera/feature/mode/aiartmuseum/preview/IPreviewShot$IPreviewShotCallback;

    if-eqz p1, :cond_85

    .line 203
    iget-object p2, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/preview/RenderManager;->mAIArtRender:Lcom/transsion/camera/feature/mode/aiartmuseum/preview/AIArtRender;

    invoke-virtual {p2, p1}, Lcom/transsion/camera/feature/mode/aiartmuseum/preview/AIArtRender;->previewShot(Lcom/transsion/camera/feature/mode/aiartmuseum/preview/IPreviewShot$IPreviewShotCallback;)V

    .line 204
    iput-object v3, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/preview/RenderManager;->mPreviewShotCallback:Lcom/transsion/camera/feature/mode/aiartmuseum/preview/IPreviewShot$IPreviewShotCallback;

    .line 206
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    .line 207
    iget-object v3, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/preview/RenderManager;->mAIArtRender:Lcom/transsion/camera/feature/mode/aiartmuseum/preview/AIArtRender;

    iget v8, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/preview/RenderManager;->mOrientation:I

    invoke-virtual/range {v3 .. v8}, Lcom/transsion/camera/feature/mode/aiartmuseum/preview/AIArtRender;->draw(Landroid/graphics/SurfaceTexture;IIII)Z

    .line 208
    sget-object p3, Lcom/transsion/camera/feature/mode/aiartmuseum/preview/RenderManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, p1

    invoke-virtual {p4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p3, p1}, Lcom/transsion/camera/utils/debug/Log;->logDrawing(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 211
    :cond_85
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/preview/RenderManager;->mBitmapRender:Lcom/transsion/camera/feature/mode/aiartmuseum/preview/BitmapRender;

    iget-object p0, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/preview/RenderManager;->mVertexMatrix:[F

    invoke-virtual {p1, p0}, Lcom/transsion/camera/feature/mode/aiartmuseum/preview/BitmapRender;->draw([F)V

    return-void
.end method

.method private updateRender()V
    .registers 5

    .line 117
    sget-object v0, Lcom/transsion/camera/feature/mode/aiartmuseum/preview/RenderManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateRender mEffect: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/preview/RenderManager;->mEffect:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", mEffectValue: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/preview/RenderManager;->mEffectValue:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", mSurfaceWidth: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/preview/RenderManager;->mSurfaceWidth:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", mSurfaceHeight: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/preview/RenderManager;->mSurfaceHeight:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 119
    const-string v0, "key_ai_art_museum_style"

    iget-object v1, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/preview/RenderManager;->mEffect:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4c

    .line 120
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/preview/RenderManager;->mBitmapRender:Lcom/transsion/camera/feature/mode/aiartmuseum/preview/BitmapRender;

    iget v1, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/preview/RenderManager;->mSurfaceWidth:I

    iget v2, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/preview/RenderManager;->mSurfaceHeight:I

    iget-object v3, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/preview/RenderManager;->mEffectValue:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Lcom/transsion/camera/feature/mode/aiartmuseum/preview/BitmapRender;->updateBitmap(IILjava/lang/String;)V

    .line 122
    :cond_4c
    sget-object v0, Lcom/transsion/camera/feature/mode/aiartmuseum/preview/RenderManager;->sStyleAIPreviewList:Ljava/util/List;

    iget-object v1, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/preview/RenderManager;->mEffectValue:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5e

    .line 123
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/preview/RenderManager;->mAIArtRender:Lcom/transsion/camera/feature/mode/aiartmuseum/preview/AIArtRender;

    iget v1, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/preview/RenderManager;->AI_STYLE_SKIP_FRAME_COUNT:I

    invoke-virtual {v0, v1}, Lcom/transsion/camera/feature/mode/aiartmuseum/preview/AIArtRender;->updateSkipFrameCount(I)V

    goto :goto_64

    .line 125
    :cond_5e
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/preview/RenderManager;->mAIArtRender:Lcom/transsion/camera/feature/mode/aiartmuseum/preview/AIArtRender;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/transsion/camera/feature/mode/aiartmuseum/preview/AIArtRender;->updateSkipFrameCount(I)V

    .line 127
    :goto_64
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/preview/RenderManager;->mAIArtRender:Lcom/transsion/camera/feature/mode/aiartmuseum/preview/AIArtRender;

    iget-object v1, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/preview/RenderManager;->mEffect:Ljava/lang/String;

    iget-object p0, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/preview/RenderManager;->mEffectValue:Ljava/lang/String;

    invoke-virtual {v0, v1, p0}, Lcom/transsion/camera/feature/mode/aiartmuseum/preview/AIArtRender;->updatePreview(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/SurfaceTexture;III)Z
    .registers 8

    .line 160
    iget v0, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/preview/RenderManager;->mSurfaceWidth:I

    if-ne v0, p3, :cond_8

    iget v0, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/preview/RenderManager;->mSurfaceHeight:I

    if-eq v0, p4, :cond_5a

    .line 161
    :cond_8
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/preview/RenderManager;->mPreviewWindowController:Lcom/transsion/camera/feature/mode/aiartmuseum/ui/IPreviewWindowController;

    if-eqz v0, :cond_f

    .line 162
    invoke-interface {v0, p3, p4}, Lcom/transsion/camera/feature/mode/aiartmuseum/ui/IPreviewWindowController;->previewSizeChanged(II)V

    .line 165
    :cond_f
    sget-object v0, Lcom/transsion/camera/feature/mode/aiartmuseum/preview/RenderManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "surfaceSizeChanged mSurfaceWidth: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/preview/RenderManager;->mSurfaceWidth:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", mSurfaceHeight: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/preview/RenderManager;->mSurfaceHeight:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", surfaceWidth: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", surfaceHeight: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 168
    iput p3, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/preview/RenderManager;->mSurfaceWidth:I

    .line 169
    iput p4, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/preview/RenderManager;->mSurfaceHeight:I

    .line 171
    iget v0, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/preview/RenderManager;->mOriginalTranslateX:F

    const v1, 0x3e8e38e4

    div-float/2addr v0, v1

    iput v0, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/preview/RenderManager;->mTranslateX:F

    .line 172
    invoke-static {p3, p4}, Lcom/transsion/camera/feature/mode/aiartmuseum/preview/spec/PreviewRenderSpec;->getPreviewWindowTopMargin(II)F

    move-result v0

    iget v2, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/preview/RenderManager;->mOriginalTranslateY:F

    div-float/2addr v2, v1

    add-float/2addr v0, v2

    iput v0, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/preview/RenderManager;->mTranslateY:F

    .line 174
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/aiartmuseum/preview/RenderManager;->updateRender()V

    .line 177
    :cond_5a
    const-string v0, "key_ai_art_museum_style"

    iget-object v1, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/preview/RenderManager;->mEffect:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_68

    .line 178
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/transsion/camera/feature/mode/aiartmuseum/preview/RenderManager;->drawStylePreview(Landroid/graphics/SurfaceTexture;III)V

    goto :goto_6b

    .line 180
    :cond_68
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/transsion/camera/feature/mode/aiartmuseum/preview/RenderManager;->drawOtherPreview(Landroid/graphics/SurfaceTexture;III)V

    :goto_6b
    const/4 p0, 0x1

    return p0
.end method

.method public drawOffScreen(Landroid/graphics/SurfaceTexture;IIII)Z
    .registers 13

    .line 230
    const-string v0, "key_ai_art_museum_style"

    iget-object v1, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/preview/RenderManager;->mEffect:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 p0, 0x0

    return p0

    .line 233
    :cond_c
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/preview/RenderManager;->mAIArtRender:Lcom/transsion/camera/feature/mode/aiartmuseum/preview/AIArtRender;

    iget v5, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/preview/RenderManager;->mOrientation:I

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v6, p5

    invoke-virtual/range {v0 .. v6}, Lcom/transsion/camera/feature/mode/aiartmuseum/preview/AIArtRender;->drawOffScreen(Landroid/graphics/SurfaceTexture;IIIII)Z

    move-result p0

    return p0
.end method

.method public init(Ljava/lang/String;)V
    .registers 4

    .line 103
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/preview/RenderManager;->mCameraId:Ljava/lang/String;

    .line 104
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/preview/RenderManager;->mPreviewRender:Lcom/transsion/camera/app/ui/opengl/Texture2dProgram;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/ui/opengl/Texture2dProgram;->setUseMatrixFromTexture(Z)V

    .line 105
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/preview/RenderManager;->mAIArtRender:Lcom/transsion/camera/feature/mode/aiartmuseum/preview/AIArtRender;

    invoke-virtual {v0, p1}, Lcom/transsion/camera/feature/mode/aiartmuseum/preview/AIArtRender;->init(Ljava/lang/String;)V

    .line 106
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/preview/RenderManager;->mBitmapRender:Lcom/transsion/camera/feature/mode/aiartmuseum/preview/BitmapRender;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/mode/aiartmuseum/preview/BitmapRender;->init(Ljava/lang/String;)V

    return-void
.end method

.method public onPreviewChange()V
    .registers 4

    .line 247
    iget-boolean v0, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/preview/RenderManager;->mDrawStyle:Z

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/preview/RenderManager;->mDrawStyle:Z

    .line 248
    sget-object v0, Lcom/transsion/camera/feature/mode/aiartmuseum/preview/RenderManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPreviewChange mDrawStyle: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/preview/RenderManager;->mDrawStyle:Z

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method public onPreviewWindowTranslate(FF)V
    .registers 6

    .line 253
    iput p1, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/preview/RenderManager;->mOriginalTranslateX:F

    .line 254
    iput p2, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/preview/RenderManager;->mOriginalTranslateY:F

    .line 255
    iget v0, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/preview/RenderManager;->mSurfaceWidth:I

    if-lez v0, :cond_1b

    iget v1, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/preview/RenderManager;->mSurfaceHeight:I

    if-gtz v1, :cond_d

    goto :goto_1b

    :cond_d
    const v2, 0x3e8e38e4

    div-float/2addr p1, v2

    .line 258
    iput p1, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/preview/RenderManager;->mTranslateX:F

    .line 259
    invoke-static {v0, v1}, Lcom/transsion/camera/feature/mode/aiartmuseum/preview/spec/PreviewRenderSpec;->getPreviewWindowTopMargin(II)F

    move-result p1

    div-float/2addr p2, v2

    add-float/2addr p1, p2

    iput p1, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/preview/RenderManager;->mTranslateY:F

    :cond_1b
    :goto_1b
    return-void
.end method

.method public previewShot(Lcom/transsion/camera/feature/mode/aiartmuseum/preview/IPreviewShot$IPreviewShotCallback;)V
    .registers 2

    .line 238
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/preview/RenderManager;->mPreviewShotCallback:Lcom/transsion/camera/feature/mode/aiartmuseum/preview/IPreviewShot$IPreviewShotCallback;

    return-void
.end method

.method public previewStream(Lcom/transsion/camera/feature/mode/aiartmuseum/preview/IPreviewStream$IStreamCallback;)V
    .registers 2

    .line 242
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/preview/RenderManager;->mAIArtRender:Lcom/transsion/camera/feature/mode/aiartmuseum/preview/AIArtRender;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/mode/aiartmuseum/preview/AIArtRender;->previewStream(Lcom/transsion/camera/feature/mode/aiartmuseum/preview/IPreviewStream$IStreamCallback;)V

    return-void
.end method

.method public unInit()V
    .registers 2

    .line 264
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/preview/RenderManager;->mAIArtRender:Lcom/transsion/camera/feature/mode/aiartmuseum/preview/AIArtRender;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/mode/aiartmuseum/preview/AIArtRender;->unInit()V

    .line 265
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/preview/RenderManager;->mBitmapRender:Lcom/transsion/camera/feature/mode/aiartmuseum/preview/BitmapRender;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/mode/aiartmuseum/preview/BitmapRender;->unInit()V

    .line 266
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/preview/RenderManager;->mPreviewRender:Lcom/transsion/camera/app/ui/opengl/Texture2dProgram;

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/opengl/Texture2dProgram;->release()V

    return-void
.end method

.method public updateEffect(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 110
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/preview/RenderManager;->mEffect:Ljava/lang/String;

    .line 111
    iput-object p2, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/preview/RenderManager;->mEffectValue:Ljava/lang/String;

    const/4 p1, 0x0

    .line 112
    iput-boolean p1, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/preview/RenderManager;->mDrawStyle:Z

    .line 113
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/aiartmuseum/preview/RenderManager;->updateRender()V

    return-void
.end method

.method public updateOrientation(I)V
    .registers 5

    .line 139
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/preview/RenderManager;->mCameraId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 140
    sget-object p0, Lcom/transsion/camera/feature/mode/aiartmuseum/preview/RenderManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string/jumbo p1, "updateOrientation mCameraId is empty!"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 144
    :cond_11
    invoke-static {}, Lcom/transsion/camera/adapter/CameraAgentFactory;->getCameraAgent()Lcom/transsion/camera/adapter/CameraAgent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/camera/adapter/CameraAgent;->getCameraDeviceInfo()Lcom/transsion/camera/adapter/ICameraDeviceInfo;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/preview/RenderManager;->mCameraId:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/transsion/camera/adapter/ICameraDeviceInfo;->getCameraInfo(Ljava/lang/String;)Lcom/transsion/camera/adapter/ICameraInfo;

    move-result-object v0

    if-nez v0, :cond_3b

    .line 146
    sget-object p1, Lcom/transsion/camera/feature/mode/aiartmuseum/preview/RenderManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "updateOrientation cameraInfo is null, mCameraId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/preview/RenderManager;->mCameraId:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 149
    :cond_3b
    invoke-interface {v0}, Lcom/transsion/camera/adapter/ICameraInfo;->getSensorOrientation()I

    move-result v1

    const/4 v2, 0x1

    .line 150
    invoke-interface {v0}, Lcom/transsion/camera/adapter/ICameraInfo;->getFacing()I

    move-result v0

    if-ne v2, v0, :cond_4f

    if-gez p1, :cond_49

    goto :goto_4c

    :cond_49
    sub-int/2addr v1, p1

    .line 151
    rem-int/lit16 v1, v1, 0x168

    :goto_4c
    iput v1, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/preview/RenderManager;->mOrientation:I

    return-void

    :cond_4f
    if-gez p1, :cond_52

    goto :goto_55

    :cond_52
    add-int/2addr v1, p1

    .line 153
    rem-int/lit16 v1, v1, 0x168

    :goto_55
    iput v1, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/preview/RenderManager;->mOrientation:I

    return-void
.end method

.method public updateVertexMatrix()V
    .registers 6

    .line 131
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/preview/RenderManager;->mVertexMatrix:[F

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 132
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/preview/RenderManager;->mVertexMatrix:[F

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v2, v3}, Landroid/opengl/Matrix;->translateM([FIFFF)V

    .line 133
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/preview/RenderManager;->mVertexMatrix:[F

    const v4, 0x3e8e38e4

    invoke-static {v0, v1, v4, v4, v2}, Landroid/opengl/Matrix;->scaleM([FIFFF)V

    .line 134
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/preview/RenderManager;->mVertexMatrix:[F

    const/high16 v2, -0x40800000    # -1.0f

    invoke-static {v0, v1, v2, v2, v3}, Landroid/opengl/Matrix;->translateM([FIFFF)V

    .line 135
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/preview/RenderManager;->mVertexMatrix:[F

    iget v2, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/preview/RenderManager;->mTranslateX:F

    sget v4, Lcom/transsion/camera/feature/mode/aiartmuseum/preview/spec/PreviewRenderSpec;->PREVIEW_WINDOW_RIGHT_MARGIN:F

    add-float/2addr v2, v4

    iget p0, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/preview/RenderManager;->mTranslateY:F

    invoke-static {v0, v1, v2, p0, v3}, Landroid/opengl/Matrix;->translateM([FIFFF)V

    return-void
.end method
