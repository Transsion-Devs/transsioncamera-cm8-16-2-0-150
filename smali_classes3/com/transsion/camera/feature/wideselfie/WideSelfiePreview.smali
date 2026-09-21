.class Lcom/transsion/camera/feature/wideselfie/WideSelfiePreview;
.super Lcom/transsion/camera/feature/common/BasePreview;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/feature/wideselfie/IWideSelfieCapture$IThumbnailListener;


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private final mFacingFront:Z

.field private volatile mOffset:Landroid/graphics/Point;

.field private volatile mThumbLocation:Landroid/graphics/Rect;

.field private final mUISpec:Lcom/transsion/camera/feature/wideselfie/WideSelfieUISpec;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 28
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "WideSelfieCapture"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/feature/wideselfie/WideSelfiePreview;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method constructor <init>(Lcom/transsion/camera/app/common/IAppUI;Lcom/transsion/camera/feature/wideselfie/WideSelfieUISpec;Z)V
    .registers 4

    .line 36
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/common/BasePreview;-><init>(Lcom/transsion/camera/app/common/IAppUI;)V

    .line 37
    iput-object p2, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfiePreview;->mUISpec:Lcom/transsion/camera/feature/wideselfie/WideSelfieUISpec;

    .line 38
    iput-boolean p3, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfiePreview;->mFacingFront:Z

    .line 39
    new-instance p1, Lcom/transsion/camera/feature/common/glrender/GLPaint;

    invoke-direct {p1}, Lcom/transsion/camera/feature/common/glrender/GLPaint;-><init>()V

    iput-object p1, p0, Lcom/transsion/camera/feature/common/BasePreview;->mPaint:Lcom/transsion/camera/feature/common/glrender/GLPaint;

    .line 40
    iget p2, p2, Lcom/transsion/camera/feature/common/BaseUISpec;->mBorderColor:I

    invoke-virtual {p1, p2}, Lcom/transsion/camera/feature/common/glrender/GLPaint;->setColor(I)V

    .line 41
    iget-object p0, p0, Lcom/transsion/camera/feature/common/BasePreview;->mPaint:Lcom/transsion/camera/feature/common/glrender/GLPaint;

    const/high16 p1, 0x40000000    # 2.0f

    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/common/glrender/GLPaint;->setLineWidth(F)V

    return-void
.end method

.method private drawCaptureThumbnail(Landroid/graphics/SurfaceTexture;ILandroid/graphics/Point;Landroid/graphics/Rect;I)V
    .registers 16

    .line 209
    invoke-direct {p0, p5}, Lcom/transsion/camera/feature/wideselfie/WideSelfiePreview;->isLand(I)Z

    move-result v0

    if-nez v0, :cond_64

    .line 212
    invoke-virtual {p4}, Landroid/graphics/Rect;->width()I

    move-result v0

    .line 213
    invoke-virtual {p4}, Landroid/graphics/Rect;->height()I

    move-result v1

    .line 214
    iget-boolean v2, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfiePreview;->mFacingFront:Z

    if-eqz v2, :cond_40

    if-nez p5, :cond_29

    .line 216
    iget p5, p3, Landroid/graphics/Point;->x:I

    iget v2, p4, Landroid/graphics/Rect;->left:I

    add-int/2addr p5, v2

    .line 217
    iget-object v2, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfiePreview;->mUISpec:Lcom/transsion/camera/feature/wideselfie/WideSelfieUISpec;

    iget v2, v2, Lcom/transsion/camera/feature/common/BaseUISpec;->mSurfaceHeight:I

    iget p3, p3, Landroid/graphics/Point;->y:I

    iget p4, p4, Landroid/graphics/Rect;->bottom:I

    :goto_21
    add-int/2addr p3, p4

    sub-int/2addr v2, p3

    :goto_23
    move v6, p5

    move v8, v0

    move v9, v1

    move v7, v2

    goto/16 :goto_bb

    .line 219
    :cond_29
    iget p5, p3, Landroid/graphics/Point;->x:I

    iget-object v2, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfiePreview;->mUISpec:Lcom/transsion/camera/feature/wideselfie/WideSelfieUISpec;

    iget v3, v2, Lcom/transsion/camera/feature/common/BaseUISpec;->mThumbBgWidth:I

    iget v4, p4, Landroid/graphics/Rect;->right:I

    sub-int/2addr v3, v4

    add-int/2addr p5, v3

    .line 220
    iget v3, v2, Lcom/transsion/camera/feature/common/BaseUISpec;->mSurfaceHeight:I

    iget p3, p3, Landroid/graphics/Point;->y:I

    iget v2, v2, Lcom/transsion/camera/feature/common/BaseUISpec;->mThumbBgHeight:I

    add-int/2addr p3, v2

    iget p4, p4, Landroid/graphics/Rect;->top:I

    :goto_3c
    sub-int/2addr p3, p4

    sub-int v2, v3, p3

    goto :goto_23

    :cond_40
    if-nez p5, :cond_56

    .line 225
    iget p5, p3, Landroid/graphics/Point;->x:I

    iget-object v2, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfiePreview;->mUISpec:Lcom/transsion/camera/feature/wideselfie/WideSelfieUISpec;

    iget v3, v2, Lcom/transsion/camera/feature/common/BaseUISpec;->mThumbBgWidth:I

    iget v4, p4, Landroid/graphics/Rect;->right:I

    sub-int/2addr v3, v4

    add-int/2addr p5, v3

    .line 226
    iget v3, v2, Lcom/transsion/camera/feature/common/BaseUISpec;->mSurfaceHeight:I

    iget p3, p3, Landroid/graphics/Point;->y:I

    iget v2, v2, Lcom/transsion/camera/feature/common/BaseUISpec;->mThumbBgHeight:I

    add-int/2addr p3, v2

    iget p4, p4, Landroid/graphics/Rect;->top:I

    goto :goto_3c

    .line 229
    :cond_56
    iget p5, p3, Landroid/graphics/Point;->x:I

    iget v2, p4, Landroid/graphics/Rect;->left:I

    add-int/2addr p5, v2

    .line 230
    iget-object v2, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfiePreview;->mUISpec:Lcom/transsion/camera/feature/wideselfie/WideSelfieUISpec;

    iget v2, v2, Lcom/transsion/camera/feature/common/BaseUISpec;->mSurfaceHeight:I

    iget p3, p3, Landroid/graphics/Point;->y:I

    iget p4, p4, Landroid/graphics/Rect;->bottom:I

    goto :goto_21

    .line 234
    :cond_64
    invoke-virtual {p4}, Landroid/graphics/Rect;->height()I

    move-result v0

    .line 235
    invoke-virtual {p4}, Landroid/graphics/Rect;->width()I

    move-result v1

    .line 236
    iget-boolean v2, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfiePreview;->mFacingFront:Z

    const/16 v3, 0x5a

    if-eqz v2, :cond_96

    if-ne p5, v3, :cond_85

    .line 238
    iget p5, p3, Landroid/graphics/Point;->x:I

    iget v2, p4, Landroid/graphics/Rect;->top:I

    add-int/2addr p5, v2

    .line 239
    iget-object v2, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfiePreview;->mUISpec:Lcom/transsion/camera/feature/wideselfie/WideSelfieUISpec;

    iget v3, v2, Lcom/transsion/camera/feature/common/BaseUISpec;->mSurfaceHeight:I

    iget p3, p3, Landroid/graphics/Point;->y:I

    iget v2, v2, Lcom/transsion/camera/feature/common/BaseUISpec;->mThumbBgHeight:I

    add-int/2addr p3, v2

    iget p4, p4, Landroid/graphics/Rect;->left:I

    goto :goto_3c

    .line 242
    :cond_85
    iget p5, p3, Landroid/graphics/Point;->x:I

    iget-object v2, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfiePreview;->mUISpec:Lcom/transsion/camera/feature/wideselfie/WideSelfieUISpec;

    iget v3, v2, Lcom/transsion/camera/feature/common/BaseUISpec;->mThumbBgWidth:I

    iget v4, p4, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v3, v4

    add-int/2addr p5, v3

    .line 243
    iget v2, v2, Lcom/transsion/camera/feature/common/BaseUISpec;->mSurfaceHeight:I

    iget p3, p3, Landroid/graphics/Point;->y:I

    iget p4, p4, Landroid/graphics/Rect;->right:I

    goto :goto_21

    :cond_96
    if-ne p5, v3, :cond_aa

    .line 248
    iget p5, p3, Landroid/graphics/Point;->x:I

    iget-object v2, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfiePreview;->mUISpec:Lcom/transsion/camera/feature/wideselfie/WideSelfieUISpec;

    iget v3, v2, Lcom/transsion/camera/feature/common/BaseUISpec;->mThumbBgWidth:I

    iget v4, p4, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v3, v4

    add-int/2addr p5, v3

    .line 249
    iget v2, v2, Lcom/transsion/camera/feature/common/BaseUISpec;->mSurfaceHeight:I

    iget p3, p3, Landroid/graphics/Point;->y:I

    iget p4, p4, Landroid/graphics/Rect;->right:I

    goto/16 :goto_21

    .line 252
    :cond_aa
    iget p5, p3, Landroid/graphics/Point;->x:I

    iget v2, p4, Landroid/graphics/Rect;->top:I

    add-int/2addr p5, v2

    .line 253
    iget-object v2, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfiePreview;->mUISpec:Lcom/transsion/camera/feature/wideselfie/WideSelfieUISpec;

    iget v3, v2, Lcom/transsion/camera/feature/common/BaseUISpec;->mSurfaceHeight:I

    iget p3, p3, Landroid/graphics/Point;->y:I

    iget v2, v2, Lcom/transsion/camera/feature/common/BaseUISpec;->mThumbBgHeight:I

    add-int/2addr p3, v2

    iget p4, p4, Landroid/graphics/Rect;->left:I

    goto :goto_3c

    .line 259
    :goto_bb
    iget-object v3, p0, Lcom/transsion/camera/feature/common/BasePreview;->mSurface2dProgram:Lcom/transsion/camera/feature/common/glprogram/SurfaceTexture2dProgram;

    move-object v4, p1

    move v5, p2

    invoke-virtual/range {v3 .. v9}, Lcom/transsion/camera/feature/common/glprogram/SurfaceTexture2dProgram;->draw(Landroid/graphics/SurfaceTexture;IIIII)V

    .line 261
    iget-object p1, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfiePreview;->mUISpec:Lcom/transsion/camera/feature/wideselfie/WideSelfieUISpec;

    iget-boolean p2, p1, Lcom/transsion/camera/feature/common/BaseUISpec;->mBorder:Z

    if-eqz p2, :cond_e7

    .line 262
    iget p2, p1, Lcom/transsion/camera/feature/common/BaseUISpec;->mSurfaceHeight:I

    add-int/2addr v7, v9

    sub-int p3, p2, v7

    .line 263
    iget p1, p1, Lcom/transsion/camera/feature/common/BaseUISpec;->mSurfaceWidth:I

    const/4 p4, 0x0

    invoke-static {p4, p4, p1, p2}, Landroid/opengl/GLES20;->glViewport(IIII)V

    .line 265
    iget-object p1, p0, Lcom/transsion/camera/feature/common/BasePreview;->mPaint:Lcom/transsion/camera/feature/common/glrender/GLPaint;

    iget-object p2, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfiePreview;->mUISpec:Lcom/transsion/camera/feature/wideselfie/WideSelfieUISpec;

    iget p2, p2, Lcom/transsion/camera/feature/common/BaseUISpec;->mBorderColor:I

    invoke-virtual {p1, p2}, Lcom/transsion/camera/feature/common/glrender/GLPaint;->setColor(I)V

    .line 266
    iget-object v0, p0, Lcom/transsion/camera/feature/common/BasePreview;->mCanvas:Lcom/transsion/camera/feature/common/glrender/GLCanvas;

    int-to-float v1, v6

    int-to-float v2, p3

    int-to-float v3, v8

    int-to-float v4, v9

    iget-object v5, p0, Lcom/transsion/camera/feature/common/BasePreview;->mPaint:Lcom/transsion/camera/feature/common/glrender/GLPaint;

    invoke-interface/range {v0 .. v5}, Lcom/transsion/camera/feature/common/glrender/GLCanvas;->drawRect(FFFFLcom/transsion/camera/feature/common/glrender/GLPaint;)V

    :cond_e7
    return-void
.end method

.method private drawPreviewThumbnail(Landroid/graphics/SurfaceTexture;ILandroid/graphics/Point;I)V
    .registers 21

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    .line 274
    iget-object v2, v0, Lcom/transsion/camera/feature/wideselfie/WideSelfiePreview;->mUISpec:Lcom/transsion/camera/feature/wideselfie/WideSelfieUISpec;

    iget v8, v2, Lcom/transsion/camera/feature/common/BaseUISpec;->mThumbWidth:I

    .line 275
    iget v9, v2, Lcom/transsion/camera/feature/common/BaseUISpec;->mThumbHeight:I

    move/from16 v2, p4

    .line 277
    invoke-direct {v0, v2}, Lcom/transsion/camera/feature/wideselfie/WideSelfiePreview;->isLand(I)Z

    move-result v2

    .line 279
    iget v3, v1, Landroid/graphics/Point;->x:I

    iget-object v4, v0, Lcom/transsion/camera/feature/wideselfie/WideSelfiePreview;->mUISpec:Lcom/transsion/camera/feature/wideselfie/WideSelfieUISpec;

    iget v5, v4, Lcom/transsion/camera/feature/common/BaseUISpec;->mThumbBgWidth:I

    iget v6, v4, Lcom/transsion/camera/feature/common/BaseUISpec;->mThumbWidth:I

    sub-int/2addr v5, v6

    div-int/lit8 v5, v5, 0x2

    add-int v6, v3, v5

    const/high16 v10, 0x40000000    # 2.0f

    if-nez v2, :cond_2b

    .line 281
    iget v3, v4, Lcom/transsion/camera/feature/common/BaseUISpec;->mSurfaceHeight:I

    iget v4, v4, Lcom/transsion/camera/feature/common/BaseUISpec;->mThumbHeight:I

    sub-int/2addr v3, v4

    iget v4, v1, Landroid/graphics/Point;->y:I

    sub-int/2addr v3, v4

    :goto_29
    move v7, v3

    goto :goto_3b

    .line 283
    :cond_2b
    iget v3, v4, Lcom/transsion/camera/feature/common/BaseUISpec;->mSurfaceHeight:I

    iget v5, v1, Landroid/graphics/Point;->y:I

    sub-int/2addr v3, v5

    int-to-float v3, v3

    iget v5, v4, Lcom/transsion/camera/feature/common/BaseUISpec;->mThumbBgHeight:I

    iget v4, v4, Lcom/transsion/camera/feature/common/BaseUISpec;->mThumbHeight:I

    add-int/2addr v5, v4

    int-to-float v4, v5

    div-float/2addr v4, v10

    sub-float/2addr v3, v4

    float-to-int v3, v3

    goto :goto_29

    .line 287
    :goto_3b
    iget-object v3, v0, Lcom/transsion/camera/feature/common/BasePreview;->mSurface2dProgram:Lcom/transsion/camera/feature/common/glprogram/SurfaceTexture2dProgram;

    move-object/from16 v4, p1

    move/from16 v5, p2

    invoke-virtual/range {v3 .. v9}, Lcom/transsion/camera/feature/common/glprogram/SurfaceTexture2dProgram;->draw(Landroid/graphics/SurfaceTexture;IIIII)V

    .line 289
    iget-object v3, v0, Lcom/transsion/camera/feature/wideselfie/WideSelfiePreview;->mUISpec:Lcom/transsion/camera/feature/wideselfie/WideSelfieUISpec;

    iget-boolean v4, v3, Lcom/transsion/camera/feature/common/BaseUISpec;->mBorder:Z

    if-eqz v4, :cond_77

    if-nez v2, :cond_4f

    .line 291
    iget v1, v1, Landroid/graphics/Point;->y:I

    goto :goto_5b

    .line 293
    :cond_4f
    iget v1, v1, Landroid/graphics/Point;->y:I

    int-to-float v1, v1

    iget v2, v3, Lcom/transsion/camera/feature/common/BaseUISpec;->mThumbBgHeight:I

    iget v4, v3, Lcom/transsion/camera/feature/common/BaseUISpec;->mThumbHeight:I

    sub-int/2addr v2, v4

    int-to-float v2, v2

    div-float/2addr v2, v10

    add-float/2addr v1, v2

    float-to-int v1, v1

    .line 295
    :goto_5b
    iget v2, v3, Lcom/transsion/camera/feature/common/BaseUISpec;->mSurfaceWidth:I

    iget v3, v3, Lcom/transsion/camera/feature/common/BaseUISpec;->mSurfaceHeight:I

    const/4 v4, 0x0

    invoke-static {v4, v4, v2, v3}, Landroid/opengl/GLES20;->glViewport(IIII)V

    .line 296
    iget-object v2, v0, Lcom/transsion/camera/feature/common/BasePreview;->mPaint:Lcom/transsion/camera/feature/common/glrender/GLPaint;

    iget-object v3, v0, Lcom/transsion/camera/feature/wideselfie/WideSelfiePreview;->mUISpec:Lcom/transsion/camera/feature/wideselfie/WideSelfieUISpec;

    iget v3, v3, Lcom/transsion/camera/feature/common/BaseUISpec;->mBorderColor:I

    invoke-virtual {v2, v3}, Lcom/transsion/camera/feature/common/glrender/GLPaint;->setColor(I)V

    .line 297
    iget-object v10, v0, Lcom/transsion/camera/feature/common/BasePreview;->mCanvas:Lcom/transsion/camera/feature/common/glrender/GLCanvas;

    int-to-float v11, v6

    int-to-float v12, v1

    int-to-float v13, v8

    int-to-float v14, v9

    iget-object v15, v0, Lcom/transsion/camera/feature/common/BasePreview;->mPaint:Lcom/transsion/camera/feature/common/glrender/GLPaint;

    invoke-interface/range {v10 .. v15}, Lcom/transsion/camera/feature/common/glrender/GLCanvas;->drawRect(FFFFLcom/transsion/camera/feature/common/glrender/GLPaint;)V

    :cond_77
    return-void
.end method

.method private drawStitchThumbnail(Landroid/graphics/Point;Landroid/graphics/Point;I)V
    .registers 13

    .line 140
    iget-object v1, p0, Lcom/transsion/camera/feature/common/BasePreview;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 141
    :try_start_3
    iget-object v0, p0, Lcom/transsion/camera/feature/common/BasePreview;->mBgrBuffer:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_af

    iget v0, p0, Lcom/transsion/camera/feature/common/BasePreview;->mThumbWidth:I

    if-lez v0, :cond_af

    iget v0, p0, Lcom/transsion/camera/feature/common/BasePreview;->mThumbHeight:I

    if-lez v0, :cond_af

    if-nez p2, :cond_13

    goto/16 :goto_af

    .line 149
    :cond_13
    invoke-direct {p0, p3}, Lcom/transsion/camera/feature/wideselfie/WideSelfiePreview;->isLand(I)Z

    move-result v0

    if-nez v0, :cond_5f

    .line 150
    iget-object v0, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfiePreview;->mUISpec:Lcom/transsion/camera/feature/wideselfie/WideSelfieUISpec;

    iget v2, v0, Lcom/transsion/camera/feature/common/BaseUISpec;->mSurfaceHeight:I

    iget v3, p1, Landroid/graphics/Point;->y:I

    sub-int/2addr v2, v3

    iget v3, v0, Lcom/transsion/camera/feature/common/BaseUISpec;->mThumbHeight:I

    sub-int/2addr v2, v3

    .line 151
    iget v0, v0, Lcom/transsion/camera/feature/common/BaseUISpec;->mThumbBgWidth:I

    iget v3, p0, Lcom/transsion/camera/feature/common/BasePreview;->mThumbHeight:I

    sub-int/2addr v0, v3

    int-to-float v0, v0

    .line 152
    iget v3, p2, Landroid/graphics/Point;->x:I

    int-to-float v3, v3

    cmpl-float v3, v3, v0

    if-lez v3, :cond_38

    float-to-int v3, v0

    .line 153
    iput v3, p2, Landroid/graphics/Point;->x:I

    goto :goto_38

    :catchall_34
    move-exception v0

    move-object p0, v0

    goto/16 :goto_b8

    .line 155
    :cond_38
    :goto_38
    iget-boolean v3, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfiePreview;->mFacingFront:Z

    if-eqz v3, :cond_4e

    if-nez p3, :cond_44

    .line 157
    iget p1, p1, Landroid/graphics/Point;->x:I

    iget p2, p2, Landroid/graphics/Point;->x:I

    :goto_42
    add-int/2addr p1, p2

    goto :goto_5c

    .line 159
    :cond_44
    iget p1, p1, Landroid/graphics/Point;->x:I

    int-to-float p1, p1

    add-float/2addr p1, v0

    iget p2, p2, Landroid/graphics/Point;->x:I

    :goto_4a
    int-to-float p2, p2

    sub-float/2addr p1, p2

    float-to-int p1, p1

    goto :goto_5c

    :cond_4e
    if-nez p3, :cond_57

    .line 163
    iget p1, p1, Landroid/graphics/Point;->x:I

    int-to-float p1, p1

    add-float/2addr p1, v0

    iget p2, p2, Landroid/graphics/Point;->x:I

    goto :goto_4a

    .line 165
    :cond_57
    iget p1, p1, Landroid/graphics/Point;->x:I

    iget p2, p2, Landroid/graphics/Point;->x:I

    goto :goto_42

    :goto_5c
    move v4, p1

    :goto_5d
    move v5, v2

    goto :goto_a2

    .line 169
    :cond_5f
    iget v0, p1, Landroid/graphics/Point;->x:I

    .line 170
    iget-object v2, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfiePreview;->mUISpec:Lcom/transsion/camera/feature/wideselfie/WideSelfieUISpec;

    iget v3, v2, Lcom/transsion/camera/feature/common/BaseUISpec;->mThumbBgHeight:I

    iget v4, p0, Lcom/transsion/camera/feature/common/BasePreview;->mThumbWidth:I

    sub-int v5, v3, v4

    int-to-float v5, v5

    .line 171
    iget v6, p2, Landroid/graphics/Point;->x:I

    int-to-float v6, v6

    cmpl-float v6, v6, v5

    if-lez v6, :cond_74

    float-to-int v5, v5

    .line 172
    iput v5, p2, Landroid/graphics/Point;->x:I

    .line 174
    :cond_74
    iget-boolean v5, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfiePreview;->mFacingFront:Z

    const/16 v6, 0x5a

    if-eqz v5, :cond_91

    if-ne p3, v6, :cond_88

    .line 176
    iget p3, v2, Lcom/transsion/camera/feature/common/BaseUISpec;->mSurfaceHeight:I

    iget p1, p1, Landroid/graphics/Point;->y:I

    add-int/2addr p1, v3

    iget p2, p2, Landroid/graphics/Point;->x:I

    :goto_83
    sub-int/2addr p1, p2

    :goto_84
    sub-int v2, p3, p1

    move v4, v0

    goto :goto_5d

    .line 179
    :cond_88
    iget p3, v2, Lcom/transsion/camera/feature/common/BaseUISpec;->mSurfaceHeight:I

    iget p1, p1, Landroid/graphics/Point;->y:I

    iget p2, p2, Landroid/graphics/Point;->x:I

    :goto_8e
    add-int/2addr p1, p2

    add-int/2addr p1, v4

    goto :goto_84

    :cond_91
    if-ne p3, v6, :cond_9a

    .line 184
    iget p3, v2, Lcom/transsion/camera/feature/common/BaseUISpec;->mSurfaceHeight:I

    iget p1, p1, Landroid/graphics/Point;->y:I

    iget p2, p2, Landroid/graphics/Point;->x:I

    goto :goto_8e

    .line 187
    :cond_9a
    iget p3, v2, Lcom/transsion/camera/feature/common/BaseUISpec;->mSurfaceHeight:I

    iget p1, p1, Landroid/graphics/Point;->y:I

    add-int/2addr p1, v3

    iget p2, p2, Landroid/graphics/Point;->x:I

    goto :goto_83

    .line 192
    :goto_a2
    iget-object v3, p0, Lcom/transsion/camera/feature/common/BasePreview;->mBgr2dProgram:Lcom/transsion/camera/feature/common/glprogram/BgrTexture2dProgram;

    iget v6, p0, Lcom/transsion/camera/feature/common/BasePreview;->mThumbWidth:I

    iget v7, p0, Lcom/transsion/camera/feature/common/BasePreview;->mThumbHeight:I

    iget-object v8, p0, Lcom/transsion/camera/feature/common/BasePreview;->mBgrBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual/range {v3 .. v8}, Lcom/transsion/camera/feature/common/glprogram/BgrTexture2dProgram;->draw(IIIILjava/nio/ByteBuffer;)V

    .line 193
    monitor-exit v1

    return-void

    .line 142
    :cond_af
    :goto_af
    sget-object p0, Lcom/transsion/camera/feature/wideselfie/WideSelfiePreview;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "drawThumbnail failed"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 143
    monitor-exit v1

    return-void

    .line 193
    :goto_b8
    monitor-exit v1
    :try_end_b9
    .catchall {:try_start_3 .. :try_end_b9} :catchall_34

    throw p0
.end method

.method private isLand(I)Z
    .registers 2

    const/4 p0, -0x1

    if-eq p1, p0, :cond_b

    if-eqz p1, :cond_b

    const/16 p0, 0xb4

    if-eq p1, p0, :cond_b

    const/4 p0, 0x1

    return p0

    :cond_b
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method protected createGLProgram()V
    .registers 3

    .line 78
    invoke-super {p0}, Lcom/transsion/camera/feature/common/BasePreview;->createGLProgram()V

    .line 79
    iget-object v0, p0, Lcom/transsion/camera/feature/common/BasePreview;->mBgr2dProgram:Lcom/transsion/camera/feature/common/glprogram/BgrTexture2dProgram;

    iget-boolean p0, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfiePreview;->mFacingFront:Z

    xor-int/lit8 p0, p0, 0x1

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/transsion/camera/feature/common/glprogram/BgrTexture2dProgram;->flip(ZZ)V

    return-void
.end method

.method public draw(Landroid/graphics/SurfaceTexture;III)Z
    .registers 7

    .line 85
    iget-boolean v0, p0, Lcom/transsion/camera/feature/common/BasePreview;->mUIReady:Z

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    .line 88
    :cond_6
    iget-object v0, p0, Lcom/transsion/camera/feature/common/BasePreview;->mBgr2dProgram:Lcom/transsion/camera/feature/common/glprogram/BgrTexture2dProgram;

    if-eqz v0, :cond_1f

    iget-object v0, p0, Lcom/transsion/camera/feature/common/BasePreview;->mSurface2dProgram:Lcom/transsion/camera/feature/common/glprogram/SurfaceTexture2dProgram;

    if-nez v0, :cond_f

    goto :goto_1f

    .line 93
    :cond_f
    invoke-virtual {v0, p1, p2}, Lcom/transsion/camera/feature/common/glprogram/SurfaceTexture2dProgram;->draw(Landroid/graphics/SurfaceTexture;I)V

    .line 95
    iget-object v0, p0, Lcom/transsion/camera/feature/common/BasePreview;->mCanvas:Lcom/transsion/camera/feature/common/glrender/GLCanvas;

    invoke-interface {v0, p3, p4}, Lcom/transsion/camera/feature/common/glrender/GLCanvas;->setSize(II)V

    .line 97
    invoke-virtual {p0, p3, p4}, Lcom/transsion/camera/feature/wideselfie/WideSelfiePreview;->drawBackground(II)V

    .line 99
    invoke-virtual {p0, p1, p2}, Lcom/transsion/camera/feature/wideselfie/WideSelfiePreview;->drawThumbnail(Landroid/graphics/SurfaceTexture;I)V

    const/4 p0, 0x1

    return p0

    .line 89
    :cond_1f
    :goto_1f
    sget-object p0, Lcom/transsion/camera/feature/wideselfie/WideSelfiePreview;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "draw mBgr2dProgram or mSurface2dProgram is null"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return v1
.end method

.method protected drawBackground(II)V
    .registers 13

    .line 106
    iget-object p1, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfiePreview;->mUISpec:Lcom/transsion/camera/feature/wideselfie/WideSelfieUISpec;

    iget-object p2, p1, Lcom/transsion/camera/feature/common/BaseUISpec;->mStartPoint:Landroid/graphics/Point;

    iget v0, p2, Landroid/graphics/Point;->x:I

    .line 107
    iget p2, p2, Landroid/graphics/Point;->y:I

    .line 108
    iget v1, p1, Lcom/transsion/camera/feature/common/BaseUISpec;->mThumbBgWidth:I

    .line 109
    iget v2, p1, Lcom/transsion/camera/feature/common/BaseUISpec;->mThumbBgHeight:I

    .line 111
    iget-object v3, p0, Lcom/transsion/camera/feature/common/BasePreview;->mCanvas:Lcom/transsion/camera/feature/common/glrender/GLCanvas;

    int-to-float v4, v0

    int-to-float v5, p2

    int-to-float v6, v1

    int-to-float v7, v2

    iget v8, p1, Lcom/transsion/camera/feature/common/BaseUISpec;->mBgColor:I

    invoke-interface/range {v3 .. v8}, Lcom/transsion/camera/feature/common/glrender/GLCanvas;->fillRect(FFFFI)V

    .line 113
    iget-object p1, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfiePreview;->mUISpec:Lcom/transsion/camera/feature/wideselfie/WideSelfieUISpec;

    iget-boolean p2, p1, Lcom/transsion/camera/feature/wideselfie/WideSelfieUISpec;->mBgBorder:Z

    if-eqz p2, :cond_2f

    .line 114
    iget-object p2, p0, Lcom/transsion/camera/feature/common/BasePreview;->mPaint:Lcom/transsion/camera/feature/common/glrender/GLPaint;

    iget p1, p1, Lcom/transsion/camera/feature/wideselfie/WideSelfieUISpec;->mBgBorderColor:I

    invoke-virtual {p2, p1}, Lcom/transsion/camera/feature/common/glrender/GLPaint;->setColor(I)V

    move v8, v7

    move v7, v6

    move v6, v5

    move v5, v4

    .line 115
    iget-object v4, p0, Lcom/transsion/camera/feature/common/BasePreview;->mCanvas:Lcom/transsion/camera/feature/common/glrender/GLCanvas;

    iget-object v9, p0, Lcom/transsion/camera/feature/common/BasePreview;->mPaint:Lcom/transsion/camera/feature/common/glrender/GLPaint;

    invoke-interface/range {v4 .. v9}, Lcom/transsion/camera/feature/common/glrender/GLCanvas;->drawRect(FFFFLcom/transsion/camera/feature/common/glrender/GLPaint;)V

    :cond_2f
    return-void
.end method

.method protected drawThumbnail(Landroid/graphics/SurfaceTexture;I)V
    .registers 9

    .line 121
    iget v5, p0, Lcom/transsion/camera/feature/common/BasePreview;->mOrientation:I

    .line 122
    iget-boolean v0, p0, Lcom/transsion/camera/feature/common/BasePreview;->mCapturing:Z

    .line 123
    iget-object v1, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfiePreview;->mUISpec:Lcom/transsion/camera/feature/wideselfie/WideSelfieUISpec;

    iget-object v3, v1, Lcom/transsion/camera/feature/common/BaseUISpec;->mStartPoint:Landroid/graphics/Point;

    .line 124
    iget-object v1, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfiePreview;->mOffset:Landroid/graphics/Point;

    .line 125
    iget-object v4, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfiePreview;->mThumbLocation:Landroid/graphics/Rect;

    if-eqz v0, :cond_11

    .line 128
    invoke-direct {p0, v3, v1, v5}, Lcom/transsion/camera/feature/wideselfie/WideSelfiePreview;->drawStitchThumbnail(Landroid/graphics/Point;Landroid/graphics/Point;I)V

    :cond_11
    if-eqz v0, :cond_22

    if-eqz v4, :cond_22

    .line 130
    invoke-virtual {v4}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_22

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    .line 131
    invoke-direct/range {v0 .. v5}, Lcom/transsion/camera/feature/wideselfie/WideSelfiePreview;->drawCaptureThumbnail(Landroid/graphics/SurfaceTexture;ILandroid/graphics/Point;Landroid/graphics/Rect;I)V

    return-void

    :cond_22
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    .line 134
    invoke-direct {v0, v1, v2, v3, v5}, Lcom/transsion/camera/feature/wideselfie/WideSelfiePreview;->drawPreviewThumbnail(Landroid/graphics/SurfaceTexture;ILandroid/graphics/Point;I)V

    return-void
.end method

.method public onCaptureEnd()V
    .registers 2

    .line 71
    invoke-super {p0}, Lcom/transsion/camera/feature/common/BasePreview;->onCaptureEnd()V

    const/4 v0, 0x0

    .line 72
    iput-object v0, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfiePreview;->mOffset:Landroid/graphics/Point;

    .line 73
    iput-object v0, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfiePreview;->mThumbLocation:Landroid/graphics/Rect;

    return-void
.end method

.method public onCaptureFailed()V
    .registers 2

    .line 64
    invoke-super {p0}, Lcom/transsion/camera/feature/common/BasePreview;->onCaptureFailed()V

    const/4 v0, 0x0

    .line 65
    iput-object v0, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfiePreview;->mOffset:Landroid/graphics/Point;

    .line 66
    iput-object v0, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfiePreview;->mThumbLocation:Landroid/graphics/Rect;

    return-void
.end method

.method public onCaptureStart()V
    .registers 2

    .line 57
    invoke-super {p0}, Lcom/transsion/camera/feature/common/BasePreview;->onCaptureStart()V

    const/4 v0, 0x0

    .line 58
    iput-object v0, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfiePreview;->mOffset:Landroid/graphics/Point;

    .line 59
    iput-object v0, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfiePreview;->mThumbLocation:Landroid/graphics/Rect;

    return-void
.end method

.method public onThumbnailUpdate(Lcom/transsion/camera/feature/wideselfie/ThumbnailInfo;)V
    .registers 9

    .line 46
    iget-object v0, p1, Lcom/transsion/camera/feature/wideselfie/ThumbnailInfo;->mThumbnail:[B

    if-eqz v0, :cond_21

    iget v0, p1, Lcom/transsion/camera/feature/wideselfie/ThumbnailInfo;->mWidth:I

    if-lez v0, :cond_21

    iget v0, p1, Lcom/transsion/camera/feature/wideselfie/ThumbnailInfo;->mHeight:I

    if-lez v0, :cond_21

    .line 48
    iget-object v0, p1, Lcom/transsion/camera/feature/wideselfie/ThumbnailInfo;->mOffset:Landroid/graphics/Point;

    iput-object v0, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfiePreview;->mOffset:Landroid/graphics/Point;

    .line 49
    iget-object v2, p1, Lcom/transsion/camera/feature/wideselfie/ThumbnailInfo;->mThumbnail:[B

    iget v3, p1, Lcom/transsion/camera/feature/wideselfie/ThumbnailInfo;->mWidth:I

    iget v4, p1, Lcom/transsion/camera/feature/wideselfie/ThumbnailInfo;->mHeight:I

    iget-object v0, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfiePreview;->mUISpec:Lcom/transsion/camera/feature/wideselfie/WideSelfieUISpec;

    iget v5, v0, Lcom/transsion/camera/feature/common/BaseUISpec;->mThumbBgWidth:I

    iget v6, v0, Lcom/transsion/camera/feature/common/BaseUISpec;->mThumbBgHeight:I

    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Lcom/transsion/camera/feature/common/BasePreview;->onThumbnailUpdate([BIIII)V

    goto :goto_22

    :cond_21
    move-object v1, p0

    .line 52
    :goto_22
    iget-object p0, p1, Lcom/transsion/camera/feature/wideselfie/ThumbnailInfo;->mThumbLocation:Landroid/graphics/Rect;

    iput-object p0, v1, Lcom/transsion/camera/feature/wideselfie/WideSelfiePreview;->mThumbLocation:Landroid/graphics/Rect;

    return-void
.end method
