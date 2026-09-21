.class public abstract Lcom/transsion/camera/feature/mode/dualvideo/glrender/UploadedTexture;
.super Lcom/transsion/camera/feature/mode/dualvideo/glrender/BasicTexture;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/feature/mode/dualvideo/glrender/UploadedTexture$BorderKey;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "Texture"

.field private static final UPLOAD_LIMIT:I = 0x64

.field private static sBorderKey:Lcom/transsion/camera/feature/mode/dualvideo/glrender/UploadedTexture$BorderKey;

.field private static sBorderLines:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lcom/transsion/camera/feature/mode/dualvideo/glrender/UploadedTexture$BorderKey;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private static sUploadedCount:I


# instance fields
.field protected mBitmap:Landroid/graphics/Bitmap;

.field private mBorder:I

.field private mContentValid:Z

.field private mIsUploading:Z

.field private mOpaque:Z

.field private mThrottled:Z


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 33
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/transsion/camera/feature/mode/dualvideo/glrender/UploadedTexture;->sBorderLines:Ljava/util/HashMap;

    .line 35
    new-instance v0, Lcom/transsion/camera/feature/mode/dualvideo/glrender/UploadedTexture$BorderKey;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/transsion/camera/feature/mode/dualvideo/glrender/UploadedTexture$BorderKey;-><init>(Lcom/transsion/camera/feature/mode/dualvideo/glrender/UploadedTexture-IA;)V

    sput-object v0, Lcom/transsion/camera/feature/mode/dualvideo/glrender/UploadedTexture;->sBorderKey:Lcom/transsion/camera/feature/mode/dualvideo/glrender/UploadedTexture$BorderKey;

    return-void
.end method

.method protected constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    .line 46
    invoke-direct {p0, v0}, Lcom/transsion/camera/feature/mode/dualvideo/glrender/UploadedTexture;-><init>(Z)V

    return-void
.end method

.method protected constructor <init>(Z)V
    .registers 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 50
    invoke-direct {p0, v0, v1, v1}, Lcom/transsion/camera/feature/mode/dualvideo/glrender/BasicTexture;-><init>(Lcom/transsion/camera/feature/mode/dualvideo/glrender/GLCanvas;II)V

    const/4 v0, 0x1

    .line 38
    iput-boolean v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/glrender/UploadedTexture;->mContentValid:Z

    .line 40
    iput-boolean v1, p0, Lcom/transsion/camera/feature/mode/dualvideo/glrender/UploadedTexture;->mIsUploading:Z

    .line 41
    iput-boolean v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/glrender/UploadedTexture;->mOpaque:Z

    .line 42
    iput-boolean v1, p0, Lcom/transsion/camera/feature/mode/dualvideo/glrender/UploadedTexture;->mThrottled:Z

    if-eqz p1, :cond_15

    .line 52
    invoke-virtual {p0, v0}, Lcom/transsion/camera/feature/mode/dualvideo/glrender/BasicTexture;->setBorder(Z)V

    .line 53
    iput v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/glrender/UploadedTexture;->mBorder:I

    :cond_15
    return-void
.end method

.method private freeBitmap()V
    .registers 2

    .line 106
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/glrender/UploadedTexture;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p0, v0}, Lcom/transsion/camera/feature/mode/dualvideo/glrender/UploadedTexture;->onFreeBitmap(Landroid/graphics/Bitmap;)V

    const/4 v0, 0x0

    .line 107
    iput-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/glrender/UploadedTexture;->mBitmap:Landroid/graphics/Bitmap;

    return-void
.end method

.method private getBitmap()Landroid/graphics/Bitmap;
    .registers 5

    .line 94
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/glrender/UploadedTexture;->mBitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_26

    .line 95
    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/dualvideo/glrender/UploadedTexture;->onGetBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/glrender/UploadedTexture;->mBitmap:Landroid/graphics/Bitmap;

    .line 96
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iget v1, p0, Lcom/transsion/camera/feature/mode/dualvideo/glrender/UploadedTexture;->mBorder:I

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    .line 97
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/dualvideo/glrender/UploadedTexture;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    iget v2, p0, Lcom/transsion/camera/feature/mode/dualvideo/glrender/UploadedTexture;->mBorder:I

    mul-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    .line 98
    iget v2, p0, Lcom/transsion/camera/feature/mode/dualvideo/glrender/BasicTexture;->mWidth:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_26

    .line 99
    invoke-virtual {p0, v0, v1}, Lcom/transsion/camera/feature/mode/dualvideo/glrender/BasicTexture;->setSize(II)V

    .line 102
    :cond_26
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/dualvideo/glrender/UploadedTexture;->mBitmap:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method private static getBorderLine(ZLandroid/graphics/Bitmap$Config;I)Landroid/graphics/Bitmap;
    .registers 5

    .line 59
    sget-object v0, Lcom/transsion/camera/feature/mode/dualvideo/glrender/UploadedTexture;->sBorderKey:Lcom/transsion/camera/feature/mode/dualvideo/glrender/UploadedTexture$BorderKey;

    .line 60
    iput-boolean p0, v0, Lcom/transsion/camera/feature/mode/dualvideo/glrender/UploadedTexture$BorderKey;->vertical:Z

    .line 61
    iput-object p1, v0, Lcom/transsion/camera/feature/mode/dualvideo/glrender/UploadedTexture$BorderKey;->config:Landroid/graphics/Bitmap$Config;

    .line 62
    iput p2, v0, Lcom/transsion/camera/feature/mode/dualvideo/glrender/UploadedTexture$BorderKey;->length:I

    .line 63
    sget-object v1, Lcom/transsion/camera/feature/mode/dualvideo/glrender/UploadedTexture;->sBorderLines:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    if-nez v1, :cond_28

    const/4 v1, 0x1

    if-eqz p0, :cond_1a

    .line 66
    invoke-static {v1, p2, p1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p0

    goto :goto_1e

    .line 67
    :cond_1a
    invoke-static {p2, v1, p1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p0

    .line 68
    :goto_1e
    sget-object p1, Lcom/transsion/camera/feature/mode/dualvideo/glrender/UploadedTexture;->sBorderLines:Ljava/util/HashMap;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/mode/dualvideo/glrender/UploadedTexture$BorderKey;->clone()Lcom/transsion/camera/feature/mode/dualvideo/glrender/UploadedTexture$BorderKey;

    move-result-object p2

    invoke-virtual {p1, p2, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0

    :cond_28
    return-object v1
.end method

.method public static resetUploadLimit()V
    .registers 1

    const/4 v0, 0x0

    .line 74
    sput v0, Lcom/transsion/camera/feature/mode/dualvideo/glrender/UploadedTexture;->sUploadedCount:I

    return-void
.end method

.method public static uploadLimitReached()Z
    .registers 2

    .line 78
    sget v0, Lcom/transsion/camera/feature/mode/dualvideo/glrender/UploadedTexture;->sUploadedCount:I

    const/16 v1, 0x64

    if-le v0, v1, :cond_8

    const/4 v0, 0x1

    return v0

    :cond_8
    const/4 v0, 0x0

    return v0
.end method

.method private uploadToCanvas(Lcom/transsion/camera/feature/mode/dualvideo/glrender/GLCanvas;)V
    .registers 15

    .line 163
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/dualvideo/glrender/UploadedTexture;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v4

    if-eqz v4, :cond_98

    .line 166
    :try_start_6
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    .line 167
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    .line 170
    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/dualvideo/glrender/BasicTexture;->getTextureWidth()I

    move-result v9

    .line 171
    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/dualvideo/glrender/BasicTexture;->getTextureHeight()I

    move-result v10

    .line 174
    invoke-interface {p1}, Lcom/transsion/camera/feature/mode/dualvideo/glrender/GLCanvas;->getGLId()Lcom/transsion/camera/feature/mode/dualvideo/glrender/GLId;

    move-result-object v0

    invoke-interface {v0}, Lcom/transsion/camera/feature/mode/dualvideo/glrender/GLId;->generateTexture()I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/glrender/BasicTexture;->mId:I

    .line 175
    invoke-interface {p1, p0}, Lcom/transsion/camera/feature/mode/dualvideo/glrender/GLCanvas;->setTextureParameters(Lcom/transsion/camera/feature/mode/dualvideo/glrender/BasicTexture;)V
    :try_end_23
    .catchall {:try_start_6 .. :try_end_23} :catchall_91

    const/4 v11, 0x1

    if-ne v7, v9, :cond_32

    if-ne v8, v10, :cond_32

    .line 178
    :try_start_28
    invoke-interface {p1, p0, v4}, Lcom/transsion/camera/feature/mode/dualvideo/glrender/GLCanvas;->initializeTexture(Lcom/transsion/camera/feature/mode/dualvideo/glrender/BasicTexture;Landroid/graphics/Bitmap;)V
    :try_end_2b
    .catchall {:try_start_28 .. :try_end_2b} :catchall_2e

    move-object v1, p0

    move-object v0, p1

    goto :goto_86

    :catchall_2e
    move-exception v0

    move-object p1, v0

    move-object v1, p0

    goto :goto_94

    .line 180
    :cond_32
    :try_start_32
    invoke-static {v4}, Landroid/opengl/GLUtils;->getInternalFormat(Landroid/graphics/Bitmap;)I

    move-result v5

    .line 181
    invoke-static {v4}, Landroid/opengl/GLUtils;->getType(Landroid/graphics/Bitmap;)I

    move-result v6

    .line 182
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v12

    .line 184
    invoke-interface {p1, p0, v5, v6}, Lcom/transsion/camera/feature/mode/dualvideo/glrender/GLCanvas;->initializeTextureSize(Lcom/transsion/camera/feature/mode/dualvideo/glrender/BasicTexture;II)V

    .line 185
    iget v2, p0, Lcom/transsion/camera/feature/mode/dualvideo/glrender/UploadedTexture;->mBorder:I
    :try_end_43
    .catchall {:try_start_32 .. :try_end_43} :catchall_91

    move v3, v2

    move-object v1, p0

    move-object v0, p1

    :try_start_46
    invoke-interface/range {v0 .. v6}, Lcom/transsion/camera/feature/mode/dualvideo/glrender/GLCanvas;->texSubImage2D(Lcom/transsion/camera/feature/mode/dualvideo/glrender/BasicTexture;IILandroid/graphics/Bitmap;II)V

    .line 187
    iget p0, v1, Lcom/transsion/camera/feature/mode/dualvideo/glrender/UploadedTexture;->mBorder:I

    const/4 p1, 0x0

    if-lez p0, :cond_64

    .line 189
    invoke-static {v11, v12, v10}, Lcom/transsion/camera/feature/mode/dualvideo/glrender/UploadedTexture;->getBorderLine(ZLandroid/graphics/Bitmap$Config;I)Landroid/graphics/Bitmap;

    move-result-object v4

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 190
    invoke-interface/range {v0 .. v6}, Lcom/transsion/camera/feature/mode/dualvideo/glrender/GLCanvas;->texSubImage2D(Lcom/transsion/camera/feature/mode/dualvideo/glrender/BasicTexture;IILandroid/graphics/Bitmap;II)V

    .line 193
    invoke-static {p1, v12, v9}, Lcom/transsion/camera/feature/mode/dualvideo/glrender/UploadedTexture;->getBorderLine(ZLandroid/graphics/Bitmap$Config;I)Landroid/graphics/Bitmap;

    move-result-object v4

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 194
    invoke-interface/range {v0 .. v6}, Lcom/transsion/camera/feature/mode/dualvideo/glrender/GLCanvas;->texSubImage2D(Lcom/transsion/camera/feature/mode/dualvideo/glrender/BasicTexture;IILandroid/graphics/Bitmap;II)V

    goto :goto_64

    :catchall_61
    move-exception v0

    :goto_62
    move-object p1, v0

    goto :goto_94

    .line 198
    :cond_64
    :goto_64
    iget p0, v1, Lcom/transsion/camera/feature/mode/dualvideo/glrender/UploadedTexture;->mBorder:I

    add-int/2addr p0, v7

    if-ge p0, v9, :cond_75

    .line 199
    invoke-static {v11, v12, v10}, Lcom/transsion/camera/feature/mode/dualvideo/glrender/UploadedTexture;->getBorderLine(ZLandroid/graphics/Bitmap$Config;I)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 200
    iget p0, v1, Lcom/transsion/camera/feature/mode/dualvideo/glrender/UploadedTexture;->mBorder:I

    add-int v2, p0, v7

    const/4 v3, 0x0

    invoke-interface/range {v0 .. v6}, Lcom/transsion/camera/feature/mode/dualvideo/glrender/GLCanvas;->texSubImage2D(Lcom/transsion/camera/feature/mode/dualvideo/glrender/BasicTexture;IILandroid/graphics/Bitmap;II)V

    .line 204
    :cond_75
    iget p0, v1, Lcom/transsion/camera/feature/mode/dualvideo/glrender/UploadedTexture;->mBorder:I

    add-int/2addr p0, v8

    if-ge p0, v10, :cond_86

    .line 205
    invoke-static {p1, v12, v9}, Lcom/transsion/camera/feature/mode/dualvideo/glrender/UploadedTexture;->getBorderLine(ZLandroid/graphics/Bitmap$Config;I)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 206
    iget p0, v1, Lcom/transsion/camera/feature/mode/dualvideo/glrender/UploadedTexture;->mBorder:I

    add-int v3, p0, v8

    const/4 v2, 0x0

    invoke-interface/range {v0 .. v6}, Lcom/transsion/camera/feature/mode/dualvideo/glrender/GLCanvas;->texSubImage2D(Lcom/transsion/camera/feature/mode/dualvideo/glrender/BasicTexture;IILandroid/graphics/Bitmap;II)V
    :try_end_86
    .catchall {:try_start_46 .. :try_end_86} :catchall_61

    .line 210
    :cond_86
    :goto_86
    invoke-direct {v1}, Lcom/transsion/camera/feature/mode/dualvideo/glrender/UploadedTexture;->freeBitmap()V

    .line 213
    invoke-virtual {v1, v0}, Lcom/transsion/camera/feature/mode/dualvideo/glrender/BasicTexture;->setAssociatedCanvas(Lcom/transsion/camera/feature/mode/dualvideo/glrender/GLCanvas;)V

    .line 214
    iput v11, v1, Lcom/transsion/camera/feature/mode/dualvideo/glrender/BasicTexture;->mState:I

    .line 215
    iput-boolean v11, v1, Lcom/transsion/camera/feature/mode/dualvideo/glrender/UploadedTexture;->mContentValid:Z

    return-void

    :catchall_91
    move-exception v0

    move-object v1, p0

    goto :goto_62

    .line 210
    :goto_94
    invoke-direct {v1}, Lcom/transsion/camera/feature/mode/dualvideo/glrender/UploadedTexture;->freeBitmap()V

    .line 211
    throw p1

    :cond_98
    move-object v1, p0

    const/4 p0, -0x1

    .line 217
    iput p0, v1, Lcom/transsion/camera/feature/mode/dualvideo/glrender/BasicTexture;->mState:I

    .line 218
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Texture load fail, no bitmap"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public getHeight()I
    .registers 3

    .line 118
    iget v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/glrender/BasicTexture;->mWidth:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_8

    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/dualvideo/glrender/UploadedTexture;->getBitmap()Landroid/graphics/Bitmap;

    .line 119
    :cond_8
    iget p0, p0, Lcom/transsion/camera/feature/mode/dualvideo/glrender/BasicTexture;->mHeight:I

    return p0
.end method

.method protected getTarget()I
    .registers 1

    const/16 p0, 0xde1

    return p0
.end method

.method public getWidth()I
    .registers 3

    .line 112
    iget v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/glrender/BasicTexture;->mWidth:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_8

    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/dualvideo/glrender/UploadedTexture;->getBitmap()Landroid/graphics/Bitmap;

    .line 113
    :cond_8
    iget p0, p0, Lcom/transsion/camera/feature/mode/dualvideo/glrender/BasicTexture;->mWidth:I

    return p0
.end method

.method protected invalidateContent()V
    .registers 2

    .line 127
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/glrender/UploadedTexture;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_7

    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/dualvideo/glrender/UploadedTexture;->freeBitmap()V

    :cond_7
    const/4 v0, 0x0

    .line 128
    iput-boolean v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/glrender/UploadedTexture;->mContentValid:Z

    const/4 v0, -0x1

    .line 129
    iput v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/glrender/BasicTexture;->mWidth:I

    .line 130
    iput v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/glrender/BasicTexture;->mHeight:I

    return-void
.end method

.method public isContentValid()Z
    .registers 2

    .line 137
    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/dualvideo/glrender/BasicTexture;->isLoaded()Z

    move-result v0

    if-eqz v0, :cond_c

    iget-boolean p0, p0, Lcom/transsion/camera/feature/mode/dualvideo/glrender/UploadedTexture;->mContentValid:Z

    if-eqz p0, :cond_c

    const/4 p0, 0x1

    return p0

    :cond_c
    const/4 p0, 0x0

    return p0
.end method

.method public isOpaque()Z
    .registers 1

    .line 235
    iget-boolean p0, p0, Lcom/transsion/camera/feature/mode/dualvideo/glrender/UploadedTexture;->mOpaque:Z

    return p0
.end method

.method public isUploading()Z
    .registers 1

    .line 86
    iget-boolean p0, p0, Lcom/transsion/camera/feature/mode/dualvideo/glrender/UploadedTexture;->mIsUploading:Z

    return p0
.end method

.method protected onBind(Lcom/transsion/camera/feature/mode/dualvideo/glrender/GLCanvas;)Z
    .registers 2

    .line 224
    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/mode/dualvideo/glrender/UploadedTexture;->updateContent(Lcom/transsion/camera/feature/mode/dualvideo/glrender/GLCanvas;)V

    .line 225
    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/dualvideo/glrender/UploadedTexture;->isContentValid()Z

    move-result p0

    return p0
.end method

.method protected abstract onFreeBitmap(Landroid/graphics/Bitmap;)V
.end method

.method protected abstract onGetBitmap()Landroid/graphics/Bitmap;
.end method

.method public recycle()V
    .registers 2

    .line 244
    invoke-super {p0}, Lcom/transsion/camera/feature/mode/dualvideo/glrender/BasicTexture;->recycle()V

    .line 245
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/glrender/UploadedTexture;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_a

    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/dualvideo/glrender/UploadedTexture;->freeBitmap()V

    :cond_a
    return-void
.end method

.method protected setIsUploading(Z)V
    .registers 2

    .line 82
    iput-boolean p1, p0, Lcom/transsion/camera/feature/mode/dualvideo/glrender/UploadedTexture;->mIsUploading:Z

    return-void
.end method

.method public setOpaque(Z)V
    .registers 2

    .line 239
    iput-boolean p1, p0, Lcom/transsion/camera/feature/mode/dualvideo/glrender/UploadedTexture;->mOpaque:Z

    return-void
.end method

.method protected setThrottled(Z)V
    .registers 2

    .line 90
    iput-boolean p1, p0, Lcom/transsion/camera/feature/mode/dualvideo/glrender/UploadedTexture;->mThrottled:Z

    return-void
.end method

.method public updateContent(Lcom/transsion/camera/feature/mode/dualvideo/glrender/GLCanvas;)V
    .registers 11

    .line 146
    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/dualvideo/glrender/BasicTexture;->isLoaded()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_19

    .line 147
    iget-boolean v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/glrender/UploadedTexture;->mThrottled:Z

    if-eqz v0, :cond_15

    sget v0, Lcom/transsion/camera/feature/mode/dualvideo/glrender/UploadedTexture;->sUploadedCount:I

    add-int/2addr v0, v1

    sput v0, Lcom/transsion/camera/feature/mode/dualvideo/glrender/UploadedTexture;->sUploadedCount:I

    const/16 v1, 0x64

    if-le v0, v1, :cond_15

    goto :goto_36

    .line 150
    :cond_15
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/dualvideo/glrender/UploadedTexture;->uploadToCanvas(Lcom/transsion/camera/feature/mode/dualvideo/glrender/GLCanvas;)V

    return-void

    .line 151
    :cond_19
    iget-boolean v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/glrender/UploadedTexture;->mContentValid:Z

    if-nez v0, :cond_36

    .line 152
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/dualvideo/glrender/UploadedTexture;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v6

    .line 153
    invoke-static {v6}, Landroid/opengl/GLUtils;->getInternalFormat(Landroid/graphics/Bitmap;)I

    move-result v7

    .line 154
    invoke-static {v6}, Landroid/opengl/GLUtils;->getType(Landroid/graphics/Bitmap;)I

    move-result v8

    .line 155
    iget v4, p0, Lcom/transsion/camera/feature/mode/dualvideo/glrender/UploadedTexture;->mBorder:I

    move v5, v4

    move-object v3, p0

    move-object v2, p1

    invoke-interface/range {v2 .. v8}, Lcom/transsion/camera/feature/mode/dualvideo/glrender/GLCanvas;->texSubImage2D(Lcom/transsion/camera/feature/mode/dualvideo/glrender/BasicTexture;IILandroid/graphics/Bitmap;II)V

    .line 156
    invoke-direct {v3}, Lcom/transsion/camera/feature/mode/dualvideo/glrender/UploadedTexture;->freeBitmap()V

    .line 157
    iput-boolean v1, v3, Lcom/transsion/camera/feature/mode/dualvideo/glrender/UploadedTexture;->mContentValid:Z

    :cond_36
    :goto_36
    return-void
.end method
