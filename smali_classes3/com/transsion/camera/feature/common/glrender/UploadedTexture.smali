.class public abstract Lcom/transsion/camera/feature/common/glrender/UploadedTexture;
.super Lcom/transsion/camera/feature/common/glrender/BasicTexture;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/feature/common/glrender/UploadedTexture$BorderKey;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "Texture"

.field private static final UPLOAD_LIMIT:I = 0x64

.field private static sBorderKey:Lcom/transsion/camera/feature/common/glrender/UploadedTexture$BorderKey;

.field private static sBorderLines:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lcom/transsion/camera/feature/common/glrender/UploadedTexture$BorderKey;",
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

    .line 35
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/transsion/camera/feature/common/glrender/UploadedTexture;->sBorderLines:Ljava/util/HashMap;

    .line 37
    new-instance v0, Lcom/transsion/camera/feature/common/glrender/UploadedTexture$BorderKey;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/transsion/camera/feature/common/glrender/UploadedTexture$BorderKey;-><init>(Lcom/transsion/camera/feature/common/glrender/UploadedTexture-IA;)V

    sput-object v0, Lcom/transsion/camera/feature/common/glrender/UploadedTexture;->sBorderKey:Lcom/transsion/camera/feature/common/glrender/UploadedTexture$BorderKey;

    return-void
.end method

.method protected constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    .line 48
    invoke-direct {p0, v0}, Lcom/transsion/camera/feature/common/glrender/UploadedTexture;-><init>(Z)V

    return-void
.end method

.method protected constructor <init>(Z)V
    .registers 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 52
    invoke-direct {p0, v0, v1, v1}, Lcom/transsion/camera/feature/common/glrender/BasicTexture;-><init>(Lcom/transsion/camera/feature/common/glrender/GLCanvas;II)V

    const/4 v0, 0x1

    .line 40
    iput-boolean v0, p0, Lcom/transsion/camera/feature/common/glrender/UploadedTexture;->mContentValid:Z

    .line 42
    iput-boolean v1, p0, Lcom/transsion/camera/feature/common/glrender/UploadedTexture;->mIsUploading:Z

    .line 43
    iput-boolean v0, p0, Lcom/transsion/camera/feature/common/glrender/UploadedTexture;->mOpaque:Z

    .line 44
    iput-boolean v1, p0, Lcom/transsion/camera/feature/common/glrender/UploadedTexture;->mThrottled:Z

    if-eqz p1, :cond_15

    .line 54
    invoke-virtual {p0, v0}, Lcom/transsion/camera/feature/common/glrender/BasicTexture;->setBorder(Z)V

    .line 55
    iput v0, p0, Lcom/transsion/camera/feature/common/glrender/UploadedTexture;->mBorder:I

    :cond_15
    return-void
.end method

.method private freeBitmap()V
    .registers 2

    .line 108
    iget-object v0, p0, Lcom/transsion/camera/feature/common/glrender/UploadedTexture;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    invoke-static {v0}, Lcom/transsion/camera/feature/common/utils/Assert;->assertTrue(Z)V

    .line 109
    iget-object v0, p0, Lcom/transsion/camera/feature/common/glrender/UploadedTexture;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p0, v0}, Lcom/transsion/camera/feature/common/glrender/UploadedTexture;->onFreeBitmap(Landroid/graphics/Bitmap;)V

    const/4 v0, 0x0

    .line 110
    iput-object v0, p0, Lcom/transsion/camera/feature/common/glrender/UploadedTexture;->mBitmap:Landroid/graphics/Bitmap;

    return-void
.end method

.method private getBitmap()Landroid/graphics/Bitmap;
    .registers 5

    .line 96
    iget-object v0, p0, Lcom/transsion/camera/feature/common/glrender/UploadedTexture;->mBitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_26

    .line 97
    invoke-virtual {p0}, Lcom/transsion/camera/feature/common/glrender/UploadedTexture;->onGetBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/feature/common/glrender/UploadedTexture;->mBitmap:Landroid/graphics/Bitmap;

    .line 98
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iget v1, p0, Lcom/transsion/camera/feature/common/glrender/UploadedTexture;->mBorder:I

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    .line 99
    iget-object v1, p0, Lcom/transsion/camera/feature/common/glrender/UploadedTexture;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    iget v2, p0, Lcom/transsion/camera/feature/common/glrender/UploadedTexture;->mBorder:I

    mul-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    .line 100
    iget v2, p0, Lcom/transsion/camera/feature/common/glrender/BasicTexture;->mWidth:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_26

    .line 101
    invoke-virtual {p0, v0, v1}, Lcom/transsion/camera/feature/common/glrender/BasicTexture;->setSize(II)V

    .line 104
    :cond_26
    iget-object p0, p0, Lcom/transsion/camera/feature/common/glrender/UploadedTexture;->mBitmap:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method private static getBorderLine(ZLandroid/graphics/Bitmap$Config;I)Landroid/graphics/Bitmap;
    .registers 5

    .line 61
    sget-object v0, Lcom/transsion/camera/feature/common/glrender/UploadedTexture;->sBorderKey:Lcom/transsion/camera/feature/common/glrender/UploadedTexture$BorderKey;

    .line 62
    iput-boolean p0, v0, Lcom/transsion/camera/feature/common/glrender/UploadedTexture$BorderKey;->vertical:Z

    .line 63
    iput-object p1, v0, Lcom/transsion/camera/feature/common/glrender/UploadedTexture$BorderKey;->config:Landroid/graphics/Bitmap$Config;

    .line 64
    iput p2, v0, Lcom/transsion/camera/feature/common/glrender/UploadedTexture$BorderKey;->length:I

    .line 65
    sget-object v1, Lcom/transsion/camera/feature/common/glrender/UploadedTexture;->sBorderLines:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    if-nez v1, :cond_28

    const/4 v1, 0x1

    if-eqz p0, :cond_1a

    .line 68
    invoke-static {v1, p2, p1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p0

    goto :goto_1e

    .line 69
    :cond_1a
    invoke-static {p2, v1, p1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p0

    .line 70
    :goto_1e
    sget-object p1, Lcom/transsion/camera/feature/common/glrender/UploadedTexture;->sBorderLines:Ljava/util/HashMap;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/common/glrender/UploadedTexture$BorderKey;->clone()Lcom/transsion/camera/feature/common/glrender/UploadedTexture$BorderKey;

    move-result-object p2

    invoke-virtual {p1, p2, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0

    :cond_28
    return-object v1
.end method

.method public static resetUploadLimit()V
    .registers 1

    const/4 v0, 0x0

    .line 76
    sput v0, Lcom/transsion/camera/feature/common/glrender/UploadedTexture;->sUploadedCount:I

    return-void
.end method

.method public static uploadLimitReached()Z
    .registers 2

    .line 80
    sget v0, Lcom/transsion/camera/feature/common/glrender/UploadedTexture;->sUploadedCount:I

    const/16 v1, 0x64

    if-le v0, v1, :cond_8

    const/4 v0, 0x1

    return v0

    :cond_8
    const/4 v0, 0x0

    return v0
.end method

.method private uploadToCanvas(Lcom/transsion/camera/feature/common/glrender/GLCanvas;)V
    .registers 16

    .line 166
    invoke-direct {p0}, Lcom/transsion/camera/feature/common/glrender/UploadedTexture;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v4

    if-eqz v4, :cond_a2

    .line 169
    :try_start_6
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    .line 170
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    .line 173
    invoke-virtual {p0}, Lcom/transsion/camera/feature/common/glrender/BasicTexture;->getTextureWidth()I

    move-result v9

    .line 174
    invoke-virtual {p0}, Lcom/transsion/camera/feature/common/glrender/BasicTexture;->getTextureHeight()I

    move-result v10

    const/4 v11, 0x0

    const/4 v12, 0x1

    if-gt v7, v9, :cond_1e

    if-gt v8, v10, :cond_1e

    move v0, v12

    goto :goto_1f

    :cond_1e
    move v0, v11

    .line 176
    :goto_1f
    invoke-static {v0}, Lcom/transsion/camera/feature/common/utils/Assert;->assertTrue(Z)V

    .line 179
    invoke-interface {p1}, Lcom/transsion/camera/feature/common/glrender/GLCanvas;->getGLId()Lcom/transsion/camera/feature/common/glrender/GLId;

    move-result-object v0

    invoke-interface {v0}, Lcom/transsion/camera/feature/common/glrender/GLId;->generateTexture()I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/feature/common/glrender/BasicTexture;->mId:I

    .line 180
    invoke-interface {p1, p0}, Lcom/transsion/camera/feature/common/glrender/GLCanvas;->setTextureParameters(Lcom/transsion/camera/feature/common/glrender/BasicTexture;)V
    :try_end_2f
    .catchall {:try_start_6 .. :try_end_2f} :catchall_9b

    if-ne v7, v9, :cond_3d

    if-ne v8, v10, :cond_3d

    .line 183
    :try_start_33
    invoke-interface {p1, p0, v4}, Lcom/transsion/camera/feature/common/glrender/GLCanvas;->initializeTexture(Lcom/transsion/camera/feature/common/glrender/BasicTexture;Landroid/graphics/Bitmap;)V
    :try_end_36
    .catchall {:try_start_33 .. :try_end_36} :catchall_39

    move-object v1, p0

    move-object v0, p1

    goto :goto_90

    :catchall_39
    move-exception v0

    move-object p1, v0

    move-object v1, p0

    goto :goto_9e

    .line 185
    :cond_3d
    :try_start_3d
    invoke-static {v4}, Landroid/opengl/GLUtils;->getInternalFormat(Landroid/graphics/Bitmap;)I

    move-result v5

    .line 186
    invoke-static {v4}, Landroid/opengl/GLUtils;->getType(Landroid/graphics/Bitmap;)I

    move-result v6

    .line 187
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v13

    .line 189
    invoke-interface {p1, p0, v5, v6}, Lcom/transsion/camera/feature/common/glrender/GLCanvas;->initializeTextureSize(Lcom/transsion/camera/feature/common/glrender/BasicTexture;II)V

    .line 190
    iget v2, p0, Lcom/transsion/camera/feature/common/glrender/UploadedTexture;->mBorder:I
    :try_end_4e
    .catchall {:try_start_3d .. :try_end_4e} :catchall_9b

    move v3, v2

    move-object v1, p0

    move-object v0, p1

    :try_start_51
    invoke-interface/range {v0 .. v6}, Lcom/transsion/camera/feature/common/glrender/GLCanvas;->texSubImage2D(Lcom/transsion/camera/feature/common/glrender/BasicTexture;IILandroid/graphics/Bitmap;II)V

    .line 192
    iget p0, v1, Lcom/transsion/camera/feature/common/glrender/UploadedTexture;->mBorder:I

    if-lez p0, :cond_6e

    .line 194
    invoke-static {v12, v13, v10}, Lcom/transsion/camera/feature/common/glrender/UploadedTexture;->getBorderLine(ZLandroid/graphics/Bitmap$Config;I)Landroid/graphics/Bitmap;

    move-result-object v4

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 195
    invoke-interface/range {v0 .. v6}, Lcom/transsion/camera/feature/common/glrender/GLCanvas;->texSubImage2D(Lcom/transsion/camera/feature/common/glrender/BasicTexture;IILandroid/graphics/Bitmap;II)V

    .line 198
    invoke-static {v11, v13, v9}, Lcom/transsion/camera/feature/common/glrender/UploadedTexture;->getBorderLine(ZLandroid/graphics/Bitmap$Config;I)Landroid/graphics/Bitmap;

    move-result-object v4

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 199
    invoke-interface/range {v0 .. v6}, Lcom/transsion/camera/feature/common/glrender/GLCanvas;->texSubImage2D(Lcom/transsion/camera/feature/common/glrender/BasicTexture;IILandroid/graphics/Bitmap;II)V

    goto :goto_6e

    :catchall_6b
    move-exception v0

    :goto_6c
    move-object p1, v0

    goto :goto_9e

    .line 203
    :cond_6e
    :goto_6e
    iget p0, v1, Lcom/transsion/camera/feature/common/glrender/UploadedTexture;->mBorder:I

    add-int/2addr p0, v7

    if-ge p0, v9, :cond_7f

    .line 204
    invoke-static {v12, v13, v10}, Lcom/transsion/camera/feature/common/glrender/UploadedTexture;->getBorderLine(ZLandroid/graphics/Bitmap$Config;I)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 205
    iget p0, v1, Lcom/transsion/camera/feature/common/glrender/UploadedTexture;->mBorder:I

    add-int v2, p0, v7

    const/4 v3, 0x0

    invoke-interface/range {v0 .. v6}, Lcom/transsion/camera/feature/common/glrender/GLCanvas;->texSubImage2D(Lcom/transsion/camera/feature/common/glrender/BasicTexture;IILandroid/graphics/Bitmap;II)V

    .line 209
    :cond_7f
    iget p0, v1, Lcom/transsion/camera/feature/common/glrender/UploadedTexture;->mBorder:I

    add-int/2addr p0, v8

    if-ge p0, v10, :cond_90

    .line 210
    invoke-static {v11, v13, v9}, Lcom/transsion/camera/feature/common/glrender/UploadedTexture;->getBorderLine(ZLandroid/graphics/Bitmap$Config;I)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 211
    iget p0, v1, Lcom/transsion/camera/feature/common/glrender/UploadedTexture;->mBorder:I

    add-int v3, p0, v8

    const/4 v2, 0x0

    invoke-interface/range {v0 .. v6}, Lcom/transsion/camera/feature/common/glrender/GLCanvas;->texSubImage2D(Lcom/transsion/camera/feature/common/glrender/BasicTexture;IILandroid/graphics/Bitmap;II)V
    :try_end_90
    .catchall {:try_start_51 .. :try_end_90} :catchall_6b

    .line 215
    :cond_90
    :goto_90
    invoke-direct {v1}, Lcom/transsion/camera/feature/common/glrender/UploadedTexture;->freeBitmap()V

    .line 218
    invoke-virtual {v1, v0}, Lcom/transsion/camera/feature/common/glrender/BasicTexture;->setAssociatedCanvas(Lcom/transsion/camera/feature/common/glrender/GLCanvas;)V

    .line 219
    iput v12, v1, Lcom/transsion/camera/feature/common/glrender/BasicTexture;->mState:I

    .line 220
    iput-boolean v12, v1, Lcom/transsion/camera/feature/common/glrender/UploadedTexture;->mContentValid:Z

    return-void

    :catchall_9b
    move-exception v0

    move-object v1, p0

    goto :goto_6c

    .line 215
    :goto_9e
    invoke-direct {v1}, Lcom/transsion/camera/feature/common/glrender/UploadedTexture;->freeBitmap()V

    .line 216
    throw p1

    :cond_a2
    move-object v1, p0

    const/4 p0, -0x1

    .line 222
    iput p0, v1, Lcom/transsion/camera/feature/common/glrender/BasicTexture;->mState:I

    .line 223
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Texture load fail, no bitmap"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public getHeight()I
    .registers 3

    .line 121
    iget v0, p0, Lcom/transsion/camera/feature/common/glrender/BasicTexture;->mWidth:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_8

    invoke-direct {p0}, Lcom/transsion/camera/feature/common/glrender/UploadedTexture;->getBitmap()Landroid/graphics/Bitmap;

    .line 122
    :cond_8
    iget p0, p0, Lcom/transsion/camera/feature/common/glrender/BasicTexture;->mHeight:I

    return p0
.end method

.method protected getTarget()I
    .registers 1

    const/16 p0, 0xde1

    return p0
.end method

.method public getWidth()I
    .registers 3

    .line 115
    iget v0, p0, Lcom/transsion/camera/feature/common/glrender/BasicTexture;->mWidth:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_8

    invoke-direct {p0}, Lcom/transsion/camera/feature/common/glrender/UploadedTexture;->getBitmap()Landroid/graphics/Bitmap;

    .line 116
    :cond_8
    iget p0, p0, Lcom/transsion/camera/feature/common/glrender/BasicTexture;->mWidth:I

    return p0
.end method

.method protected invalidateContent()V
    .registers 2

    .line 130
    iget-object v0, p0, Lcom/transsion/camera/feature/common/glrender/UploadedTexture;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_7

    invoke-direct {p0}, Lcom/transsion/camera/feature/common/glrender/UploadedTexture;->freeBitmap()V

    :cond_7
    const/4 v0, 0x0

    .line 131
    iput-boolean v0, p0, Lcom/transsion/camera/feature/common/glrender/UploadedTexture;->mContentValid:Z

    const/4 v0, -0x1

    .line 132
    iput v0, p0, Lcom/transsion/camera/feature/common/glrender/BasicTexture;->mWidth:I

    .line 133
    iput v0, p0, Lcom/transsion/camera/feature/common/glrender/BasicTexture;->mHeight:I

    return-void
.end method

.method public isContentValid()Z
    .registers 2

    .line 140
    invoke-virtual {p0}, Lcom/transsion/camera/feature/common/glrender/BasicTexture;->isLoaded()Z

    move-result v0

    if-eqz v0, :cond_c

    iget-boolean p0, p0, Lcom/transsion/camera/feature/common/glrender/UploadedTexture;->mContentValid:Z

    if-eqz p0, :cond_c

    const/4 p0, 0x1

    return p0

    :cond_c
    const/4 p0, 0x0

    return p0
.end method

.method public isOpaque()Z
    .registers 1

    .line 240
    iget-boolean p0, p0, Lcom/transsion/camera/feature/common/glrender/UploadedTexture;->mOpaque:Z

    return p0
.end method

.method public isUploading()Z
    .registers 1

    .line 88
    iget-boolean p0, p0, Lcom/transsion/camera/feature/common/glrender/UploadedTexture;->mIsUploading:Z

    return p0
.end method

.method protected onBind(Lcom/transsion/camera/feature/common/glrender/GLCanvas;)Z
    .registers 2

    .line 229
    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/common/glrender/UploadedTexture;->updateContent(Lcom/transsion/camera/feature/common/glrender/GLCanvas;)V

    .line 230
    invoke-virtual {p0}, Lcom/transsion/camera/feature/common/glrender/UploadedTexture;->isContentValid()Z

    move-result p0

    return p0
.end method

.method protected abstract onFreeBitmap(Landroid/graphics/Bitmap;)V
.end method

.method protected abstract onGetBitmap()Landroid/graphics/Bitmap;
.end method

.method public recycle()V
    .registers 2

    .line 249
    invoke-super {p0}, Lcom/transsion/camera/feature/common/glrender/BasicTexture;->recycle()V

    .line 250
    iget-object v0, p0, Lcom/transsion/camera/feature/common/glrender/UploadedTexture;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_a

    invoke-direct {p0}, Lcom/transsion/camera/feature/common/glrender/UploadedTexture;->freeBitmap()V

    :cond_a
    return-void
.end method

.method protected setIsUploading(Z)V
    .registers 2

    .line 84
    iput-boolean p1, p0, Lcom/transsion/camera/feature/common/glrender/UploadedTexture;->mIsUploading:Z

    return-void
.end method

.method public setOpaque(Z)V
    .registers 2

    .line 244
    iput-boolean p1, p0, Lcom/transsion/camera/feature/common/glrender/UploadedTexture;->mOpaque:Z

    return-void
.end method

.method protected setThrottled(Z)V
    .registers 2

    .line 92
    iput-boolean p1, p0, Lcom/transsion/camera/feature/common/glrender/UploadedTexture;->mThrottled:Z

    return-void
.end method

.method public updateContent(Lcom/transsion/camera/feature/common/glrender/GLCanvas;)V
    .registers 11

    .line 149
    invoke-virtual {p0}, Lcom/transsion/camera/feature/common/glrender/BasicTexture;->isLoaded()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_19

    .line 150
    iget-boolean v0, p0, Lcom/transsion/camera/feature/common/glrender/UploadedTexture;->mThrottled:Z

    if-eqz v0, :cond_15

    sget v0, Lcom/transsion/camera/feature/common/glrender/UploadedTexture;->sUploadedCount:I

    add-int/2addr v0, v1

    sput v0, Lcom/transsion/camera/feature/common/glrender/UploadedTexture;->sUploadedCount:I

    const/16 v1, 0x64

    if-le v0, v1, :cond_15

    goto :goto_36

    .line 153
    :cond_15
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/common/glrender/UploadedTexture;->uploadToCanvas(Lcom/transsion/camera/feature/common/glrender/GLCanvas;)V

    return-void

    .line 154
    :cond_19
    iget-boolean v0, p0, Lcom/transsion/camera/feature/common/glrender/UploadedTexture;->mContentValid:Z

    if-nez v0, :cond_36

    .line 155
    invoke-direct {p0}, Lcom/transsion/camera/feature/common/glrender/UploadedTexture;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v6

    .line 156
    invoke-static {v6}, Landroid/opengl/GLUtils;->getInternalFormat(Landroid/graphics/Bitmap;)I

    move-result v7

    .line 157
    invoke-static {v6}, Landroid/opengl/GLUtils;->getType(Landroid/graphics/Bitmap;)I

    move-result v8

    .line 158
    iget v4, p0, Lcom/transsion/camera/feature/common/glrender/UploadedTexture;->mBorder:I

    move v5, v4

    move-object v3, p0

    move-object v2, p1

    invoke-interface/range {v2 .. v8}, Lcom/transsion/camera/feature/common/glrender/GLCanvas;->texSubImage2D(Lcom/transsion/camera/feature/common/glrender/BasicTexture;IILandroid/graphics/Bitmap;II)V

    .line 159
    invoke-direct {v3}, Lcom/transsion/camera/feature/common/glrender/UploadedTexture;->freeBitmap()V

    .line 160
    iput-boolean v1, v3, Lcom/transsion/camera/feature/common/glrender/UploadedTexture;->mContentValid:Z

    :cond_36
    :goto_36
    return-void
.end method
