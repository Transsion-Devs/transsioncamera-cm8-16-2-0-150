.class Lcom/transsion/camera/feature/burstpmk/BurstPMKPreview;
.super Lcom/transsion/camera/feature/common/BasePreview;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/feature/burstpmk/IBurstPMKUI$IDirectionListener;
.implements Lcom/transsion/camera/feature/burstpmk/IBurstPMKCapture$IThumbnailListener;
.implements Lcom/transsion/camera/feature/burstpmk/IBurstPMKCapture$IMoveListener;


# static fields
.field private static final DEFAULT_OFFSET:Landroid/graphics/Point;

.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private mArrowNormal:Lcom/transsion/camera/feature/common/glrender/BitmapTexture;

.field private mArrowWarning:Lcom/transsion/camera/feature/common/glrender/BitmapTexture;

.field private final mContext:Landroid/content/Context;

.field private mDirection:I

.field private mDottedLine:Lcom/transsion/camera/feature/common/glrender/BitmapTexture;

.field private volatile mOffset:Landroid/graphics/Point;

.field private final mUISpec:Lcom/transsion/camera/feature/burstpmk/BurstPMKUISpec;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 36
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "BurstPMKPreview"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/feature/burstpmk/BurstPMKPreview;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    .line 38
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    sput-object v0, Lcom/transsion/camera/feature/burstpmk/BurstPMKPreview;->DEFAULT_OFFSET:Landroid/graphics/Point;

    return-void
.end method

.method constructor <init>(Lcom/transsion/camera/app/common/IAppUI;Lcom/transsion/camera/feature/burstpmk/BurstPMKUISpec;)V
    .registers 4

    .line 53
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/common/BasePreview;-><init>(Lcom/transsion/camera/app/common/IAppUI;)V

    const/4 v0, 0x1

    .line 40
    iput v0, p0, Lcom/transsion/camera/feature/burstpmk/BurstPMKPreview;->mDirection:I

    .line 42
    sget-object v0, Lcom/transsion/camera/feature/burstpmk/BurstPMKPreview;->DEFAULT_OFFSET:Landroid/graphics/Point;

    iput-object v0, p0, Lcom/transsion/camera/feature/burstpmk/BurstPMKPreview;->mOffset:Landroid/graphics/Point;

    .line 54
    iput-object p2, p0, Lcom/transsion/camera/feature/burstpmk/BurstPMKPreview;->mUISpec:Lcom/transsion/camera/feature/burstpmk/BurstPMKUISpec;

    .line 55
    invoke-interface {p1}, Lcom/transsion/camera/app/common/IAppUI;->getModeInflateRoot()Landroid/view/ViewGroup;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/feature/burstpmk/BurstPMKPreview;->mContext:Landroid/content/Context;

    .line 57
    new-instance p1, Lcom/transsion/camera/feature/common/glrender/GLPaint;

    invoke-direct {p1}, Lcom/transsion/camera/feature/common/glrender/GLPaint;-><init>()V

    iput-object p1, p0, Lcom/transsion/camera/feature/common/BasePreview;->mPaint:Lcom/transsion/camera/feature/common/glrender/GLPaint;

    .line 58
    iget p2, p2, Lcom/transsion/camera/feature/common/BaseUISpec;->mBorderColor:I

    invoke-virtual {p1, p2}, Lcom/transsion/camera/feature/common/glrender/GLPaint;->setColor(I)V

    .line 59
    iget-object p0, p0, Lcom/transsion/camera/feature/common/BasePreview;->mPaint:Lcom/transsion/camera/feature/common/glrender/GLPaint;

    const/high16 p1, 0x40000000    # 2.0f

    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/common/glrender/GLPaint;->setLineWidth(F)V

    return-void
.end method

.method private drawArrow(IILandroid/graphics/Point;Landroid/graphics/Point;II)V
    .registers 14

    .line 392
    iget v0, p4, Landroid/graphics/Point;->y:I

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    const/4 v1, 0x0

    .line 394
    invoke-static {v1, v1, p1, p2}, Landroid/opengl/GLES20;->glViewport(IIII)V

    const/4 p1, 0x1

    const/high16 p2, 0x40000000    # 2.0f

    if-ne p1, p5, :cond_70

    .line 397
    invoke-direct {p0, p6}, Lcom/transsion/camera/feature/burstpmk/BurstPMKPreview;->isLandscape(I)Z

    move-result p1

    if-eqz p1, :cond_42

    .line 399
    iget-object p1, p0, Lcom/transsion/camera/feature/burstpmk/BurstPMKPreview;->mUISpec:Lcom/transsion/camera/feature/burstpmk/BurstPMKUISpec;

    iget p5, p1, Lcom/transsion/camera/feature/common/BaseUISpec;->mArrowHeight:I

    .line 400
    iget p6, p1, Lcom/transsion/camera/feature/common/BaseUISpec;->mArrowWidth:I

    .line 402
    iget v1, p3, Landroid/graphics/Point;->x:I

    int-to-float v1, v1

    iget v2, p1, Lcom/transsion/camera/feature/common/BaseUISpec;->mThumbWidth:I

    sub-int/2addr v2, p6

    int-to-float v2, v2

    div-float/2addr v2, p2

    add-float/2addr v1, v2

    iget v2, p4, Landroid/graphics/Point;->y:I

    int-to-float v2, v2

    sub-float/2addr v1, v2

    int-to-float v2, p6

    div-float/2addr v2, p2

    add-float/2addr v1, v2

    float-to-int p2, v1

    .line 403
    iget p3, p3, Landroid/graphics/Point;->y:I

    iget v1, p1, Lcom/transsion/camera/feature/common/BaseUISpec;->mThumbHeight:I

    add-int/2addr p3, v1

    iget p1, p1, Lcom/transsion/camera/feature/common/BaseUISpec;->mArrowPadding:I

    add-int/2addr p3, p1

    .line 404
    iget p1, p4, Landroid/graphics/Point;->x:I

    if-lez p1, :cond_39

    add-int/2addr p3, p1

    .line 407
    :cond_39
    div-int/lit8 p1, p5, 0x2

    add-int/2addr p3, p1

    const/16 v1, 0x10e

    :goto_3e
    move v5, p5

    move v6, p6

    goto/16 :goto_d0

    .line 410
    :cond_42
    iget-object p1, p0, Lcom/transsion/camera/feature/burstpmk/BurstPMKPreview;->mUISpec:Lcom/transsion/camera/feature/burstpmk/BurstPMKUISpec;

    iget p5, p1, Lcom/transsion/camera/feature/common/BaseUISpec;->mArrowWidth:I

    .line 411
    iget p6, p1, Lcom/transsion/camera/feature/common/BaseUISpec;->mArrowHeight:I

    .line 413
    iget v1, p3, Landroid/graphics/Point;->x:I

    iget v2, p1, Lcom/transsion/camera/feature/common/BaseUISpec;->mThumbWidth:I

    add-int/2addr v1, v2

    iget v2, p1, Lcom/transsion/camera/feature/common/BaseUISpec;->mArrowPadding:I

    add-int/2addr v1, v2

    .line 414
    iget v2, p4, Landroid/graphics/Point;->x:I

    if-lez v2, :cond_55

    add-int/2addr v1, v2

    .line 417
    :cond_55
    div-int/lit8 v2, p5, 0x2

    add-int/2addr v1, v2

    .line 418
    iget p3, p3, Landroid/graphics/Point;->y:I

    int-to-float p3, p3

    iget p1, p1, Lcom/transsion/camera/feature/common/BaseUISpec;->mThumbHeight:I

    sub-int/2addr p1, p6

    int-to-float p1, p1

    div-float/2addr p1, p2

    add-float/2addr p3, p1

    iget p1, p4, Landroid/graphics/Point;->y:I

    int-to-float p1, p1

    sub-float/2addr p3, p1

    int-to-float p1, p6

    div-float/2addr p1, p2

    add-float/2addr p3, p1

    float-to-int p3, p3

    const/16 p1, 0xb4

    move v5, p5

    move v6, p6

    move p2, v1

    move v1, p1

    goto :goto_d0

    .line 421
    :cond_70
    invoke-direct {p0, p6}, Lcom/transsion/camera/feature/burstpmk/BurstPMKPreview;->isLandscape(I)Z

    move-result p1

    if-eqz p1, :cond_a3

    .line 423
    iget-object p1, p0, Lcom/transsion/camera/feature/burstpmk/BurstPMKPreview;->mUISpec:Lcom/transsion/camera/feature/burstpmk/BurstPMKUISpec;

    iget p5, p1, Lcom/transsion/camera/feature/common/BaseUISpec;->mArrowHeight:I

    .line 424
    iget p6, p1, Lcom/transsion/camera/feature/common/BaseUISpec;->mArrowWidth:I

    .line 426
    iget v1, p3, Landroid/graphics/Point;->x:I

    int-to-float v1, v1

    iget v2, p1, Lcom/transsion/camera/feature/common/BaseUISpec;->mThumbWidth:I

    sub-int/2addr v2, p6

    int-to-float v2, v2

    div-float/2addr v2, p2

    add-float/2addr v1, v2

    iget v2, p4, Landroid/graphics/Point;->y:I

    int-to-float v2, v2

    sub-float/2addr v1, v2

    int-to-float v2, p6

    div-float/2addr v2, p2

    add-float/2addr v1, v2

    float-to-int p2, v1

    .line 427
    iget p3, p3, Landroid/graphics/Point;->y:I

    iget v1, p1, Lcom/transsion/camera/feature/common/BaseUISpec;->mThumbBgHeight:I

    add-int/2addr p3, v1

    iget v1, p1, Lcom/transsion/camera/feature/common/BaseUISpec;->mThumbHeight:I

    sub-int/2addr p3, v1

    iget p1, p1, Lcom/transsion/camera/feature/common/BaseUISpec;->mArrowPadding:I

    sub-int/2addr p3, p1

    .line 428
    iget p1, p4, Landroid/graphics/Point;->x:I

    if-lez p1, :cond_9d

    sub-int/2addr p3, p1

    .line 431
    :cond_9d
    div-int/lit8 p1, p5, 0x2

    sub-int/2addr p3, p1

    const/16 v1, 0x5a

    goto :goto_3e

    .line 434
    :cond_a3
    iget-object p1, p0, Lcom/transsion/camera/feature/burstpmk/BurstPMKPreview;->mUISpec:Lcom/transsion/camera/feature/burstpmk/BurstPMKUISpec;

    iget p5, p1, Lcom/transsion/camera/feature/common/BaseUISpec;->mArrowWidth:I

    .line 435
    iget p6, p1, Lcom/transsion/camera/feature/common/BaseUISpec;->mArrowHeight:I

    .line 437
    iget v2, p3, Landroid/graphics/Point;->x:I

    iget v3, p1, Lcom/transsion/camera/feature/common/BaseUISpec;->mThumbBgWidth:I

    add-int/2addr v2, v3

    iget v3, p1, Lcom/transsion/camera/feature/common/BaseUISpec;->mThumbWidth:I

    sub-int/2addr v2, v3

    iget v3, p1, Lcom/transsion/camera/feature/common/BaseUISpec;->mArrowPadding:I

    sub-int/2addr v2, v3

    .line 438
    iget v3, p4, Landroid/graphics/Point;->x:I

    if-lez v3, :cond_b9

    sub-int/2addr v2, v3

    .line 441
    :cond_b9
    div-int/lit8 v3, p5, 0x2

    sub-int/2addr v2, v3

    .line 442
    iget p3, p3, Landroid/graphics/Point;->y:I

    int-to-float p3, p3

    iget p1, p1, Lcom/transsion/camera/feature/common/BaseUISpec;->mThumbHeight:I

    sub-int/2addr p1, p6

    int-to-float p1, p1

    div-float/2addr p1, p2

    add-float/2addr p3, p1

    iget p1, p4, Landroid/graphics/Point;->y:I

    int-to-float p1, p1

    sub-float/2addr p3, p1

    int-to-float p1, p6

    div-float/2addr p1, p2

    add-float/2addr p3, p1

    float-to-int p3, p3

    move v5, p5

    move v6, p6

    move p2, v2

    .line 446
    :goto_d0
    iget-object p1, p0, Lcom/transsion/camera/feature/common/BasePreview;->mCanvas:Lcom/transsion/camera/feature/common/glrender/GLCanvas;

    const/4 p4, -0x1

    invoke-interface {p1, p4}, Lcom/transsion/camera/feature/common/glrender/GLCanvas;->save(I)V

    .line 447
    iget-object p1, p0, Lcom/transsion/camera/feature/common/BasePreview;->mCanvas:Lcom/transsion/camera/feature/common/glrender/GLCanvas;

    int-to-float p2, p2

    int-to-float p3, p3

    invoke-interface {p1, p2, p3}, Lcom/transsion/camera/feature/common/glrender/GLCanvas;->translate(FF)V

    .line 448
    iget-object p1, p0, Lcom/transsion/camera/feature/common/BasePreview;->mCanvas:Lcom/transsion/camera/feature/common/glrender/GLCanvas;

    int-to-float p2, v1

    const/high16 p3, 0x3f800000    # 1.0f

    const/4 p4, 0x0

    invoke-interface {p1, p2, p4, p4, p3}, Lcom/transsion/camera/feature/common/glrender/GLCanvas;->rotate(FFFF)V

    .line 449
    iget-object p1, p0, Lcom/transsion/camera/feature/burstpmk/BurstPMKPreview;->mUISpec:Lcom/transsion/camera/feature/burstpmk/BurstPMKUISpec;

    iget p2, p1, Lcom/transsion/camera/feature/common/BaseUISpec;->mWarningOffset:I

    if-lez p2, :cond_100

    if-le v0, p2, :cond_100

    iget-boolean p1, p1, Lcom/transsion/camera/feature/common/BaseUISpec;->mArrowWarn:Z

    if-eqz p1, :cond_100

    .line 450
    iget-object v1, p0, Lcom/transsion/camera/feature/burstpmk/BurstPMKPreview;->mArrowWarning:Lcom/transsion/camera/feature/common/glrender/BitmapTexture;

    iget-object v2, p0, Lcom/transsion/camera/feature/common/BasePreview;->mCanvas:Lcom/transsion/camera/feature/common/glrender/GLCanvas;

    neg-int p1, v5

    div-int/lit8 v3, p1, 0x2

    neg-int p1, v6

    div-int/lit8 v4, p1, 0x2

    invoke-virtual/range {v1 .. v6}, Lcom/transsion/camera/feature/common/glrender/BasicTexture;->draw(Lcom/transsion/camera/feature/common/glrender/GLCanvas;IIII)V

    goto :goto_10d

    .line 452
    :cond_100
    iget-object v1, p0, Lcom/transsion/camera/feature/burstpmk/BurstPMKPreview;->mArrowNormal:Lcom/transsion/camera/feature/common/glrender/BitmapTexture;

    iget-object v2, p0, Lcom/transsion/camera/feature/common/BasePreview;->mCanvas:Lcom/transsion/camera/feature/common/glrender/GLCanvas;

    neg-int p1, v5

    div-int/lit8 v3, p1, 0x2

    neg-int p1, v6

    div-int/lit8 v4, p1, 0x2

    invoke-virtual/range {v1 .. v6}, Lcom/transsion/camera/feature/common/glrender/BasicTexture;->draw(Lcom/transsion/camera/feature/common/glrender/GLCanvas;IIII)V

    .line 454
    :goto_10d
    iget-object p0, p0, Lcom/transsion/camera/feature/common/BasePreview;->mCanvas:Lcom/transsion/camera/feature/common/glrender/GLCanvas;

    invoke-interface {p0}, Lcom/transsion/camera/feature/common/glrender/GLCanvas;->restore()V

    return-void
.end method

.method private drawCaptureThumbnail(Landroid/graphics/SurfaceTexture;IIILandroid/graphics/Point;Landroid/graphics/Point;II)V
    .registers 22

    move/from16 v0, p4

    move-object/from16 v1, p5

    move-object/from16 v2, p6

    move/from16 v3, p7

    .line 306
    iget-object v4, p0, Lcom/transsion/camera/feature/burstpmk/BurstPMKPreview;->mUISpec:Lcom/transsion/camera/feature/burstpmk/BurstPMKUISpec;

    iget v5, v4, Lcom/transsion/camera/feature/common/BaseUISpec;->mThumbWidth:I

    .line 307
    iget v4, v4, Lcom/transsion/camera/feature/common/BaseUISpec;->mThumbHeight:I

    move/from16 v6, p8

    .line 309
    invoke-direct {p0, v6}, Lcom/transsion/camera/feature/burstpmk/BurstPMKPreview;->isLandscape(I)Z

    move-result v6

    const/4 v7, 0x1

    if-eqz v6, :cond_61

    if-ne v7, v3, :cond_26

    .line 311
    iget v3, v1, Landroid/graphics/Point;->y:I

    iget-object v6, p0, Lcom/transsion/camera/feature/burstpmk/BurstPMKPreview;->mUISpec:Lcom/transsion/camera/feature/burstpmk/BurstPMKUISpec;

    iget v6, v6, Lcom/transsion/camera/feature/common/BaseUISpec;->mThumbHeight:I

    add-int/2addr v3, v6

    iget v6, v2, Landroid/graphics/Point;->x:I

    add-int/2addr v3, v6

    sub-int v3, v0, v3

    goto :goto_32

    .line 313
    :cond_26
    iget v3, v1, Landroid/graphics/Point;->y:I

    sub-int v3, v0, v3

    iget-object v6, p0, Lcom/transsion/camera/feature/burstpmk/BurstPMKPreview;->mUISpec:Lcom/transsion/camera/feature/burstpmk/BurstPMKUISpec;

    iget v6, v6, Lcom/transsion/camera/feature/common/BaseUISpec;->mThumbBgHeight:I

    sub-int/2addr v3, v6

    iget v6, v2, Landroid/graphics/Point;->x:I

    add-int/2addr v3, v6

    .line 316
    :goto_32
    iget v6, v1, Landroid/graphics/Point;->y:I

    sub-int v7, v0, v6

    iget-object v8, p0, Lcom/transsion/camera/feature/burstpmk/BurstPMKPreview;->mUISpec:Lcom/transsion/camera/feature/burstpmk/BurstPMKUISpec;

    iget v9, v8, Lcom/transsion/camera/feature/common/BaseUISpec;->mThumbHeight:I

    sub-int/2addr v7, v9

    if-gt v3, v7, :cond_d2

    sub-int v6, v0, v6

    iget v7, v8, Lcom/transsion/camera/feature/common/BaseUISpec;->mThumbBgHeight:I

    sub-int/2addr v6, v7

    if-ge v3, v6, :cond_46

    goto/16 :goto_d2

    .line 321
    :cond_46
    iget v6, v2, Landroid/graphics/Point;->y:I

    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v6

    sub-int/2addr v5, v6

    .line 323
    iget v2, v2, Landroid/graphics/Point;->y:I

    if-ltz v2, :cond_58

    .line 324
    iget v1, v1, Landroid/graphics/Point;->x:I

    :goto_53
    move v9, v1

    move v10, v3

    :goto_55
    move v12, v4

    move v11, v5

    goto :goto_9d

    .line 326
    :cond_58
    iget v1, v1, Landroid/graphics/Point;->x:I

    iget-object v2, p0, Lcom/transsion/camera/feature/burstpmk/BurstPMKPreview;->mUISpec:Lcom/transsion/camera/feature/burstpmk/BurstPMKUISpec;

    iget v2, v2, Lcom/transsion/camera/feature/common/BaseUISpec;->mThumbWidth:I

    add-int/2addr v1, v2

    sub-int/2addr v1, v5

    goto :goto_53

    :cond_61
    if-ne v7, v3, :cond_69

    .line 330
    iget v3, v1, Landroid/graphics/Point;->x:I

    iget v6, v2, Landroid/graphics/Point;->x:I

    add-int/2addr v3, v6

    goto :goto_74

    .line 332
    :cond_69
    iget v3, v1, Landroid/graphics/Point;->x:I

    iget-object v6, p0, Lcom/transsion/camera/feature/burstpmk/BurstPMKPreview;->mUISpec:Lcom/transsion/camera/feature/burstpmk/BurstPMKUISpec;

    iget v6, v6, Lcom/transsion/camera/feature/common/BaseUISpec;->mThumbBgWidth:I

    add-int/2addr v3, v6

    iget v6, v2, Landroid/graphics/Point;->x:I

    sub-int/2addr v3, v6

    sub-int/2addr v3, v5

    .line 335
    :goto_74
    iget v6, v1, Landroid/graphics/Point;->x:I

    if-lt v3, v6, :cond_d2

    add-int v7, v3, v5

    iget-object v8, p0, Lcom/transsion/camera/feature/burstpmk/BurstPMKPreview;->mUISpec:Lcom/transsion/camera/feature/burstpmk/BurstPMKUISpec;

    iget v8, v8, Lcom/transsion/camera/feature/common/BaseUISpec;->mThumbBgWidth:I

    add-int/2addr v6, v8

    if-le v7, v6, :cond_82

    goto :goto_d2

    .line 339
    :cond_82
    iget v6, v2, Landroid/graphics/Point;->y:I

    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v6

    sub-int/2addr v4, v6

    .line 341
    iget v2, v2, Landroid/graphics/Point;->y:I

    if-ltz v2, :cond_95

    .line 342
    iget v1, v1, Landroid/graphics/Point;->y:I

    add-int/2addr v1, v4

    :goto_90
    sub-int v1, v0, v1

    move v10, v1

    move v9, v3

    goto :goto_55

    .line 344
    :cond_95
    iget v1, v1, Landroid/graphics/Point;->y:I

    iget-object v2, p0, Lcom/transsion/camera/feature/burstpmk/BurstPMKPreview;->mUISpec:Lcom/transsion/camera/feature/burstpmk/BurstPMKUISpec;

    iget v2, v2, Lcom/transsion/camera/feature/common/BaseUISpec;->mThumbHeight:I

    add-int/2addr v1, v2

    goto :goto_90

    .line 348
    :goto_9d
    iget-object v6, p0, Lcom/transsion/camera/feature/common/BasePreview;->mSurface2dProgram:Lcom/transsion/camera/feature/common/glprogram/SurfaceTexture2dProgram;

    move-object v7, p1

    move v8, p2

    invoke-virtual/range {v6 .. v12}, Lcom/transsion/camera/feature/common/glprogram/SurfaceTexture2dProgram;->draw(Landroid/graphics/SurfaceTexture;IIIII)V

    .line 350
    iget-object p1, p0, Lcom/transsion/camera/feature/burstpmk/BurstPMKPreview;->mUISpec:Lcom/transsion/camera/feature/burstpmk/BurstPMKUISpec;

    iget-boolean p1, p1, Lcom/transsion/camera/feature/common/BaseUISpec;->mBorder:Z

    if-eqz p1, :cond_d2

    sub-int p1, v0, v10

    sub-int/2addr p1, v12

    const/4 v1, 0x0

    move/from16 v2, p3

    .line 352
    invoke-static {v1, v1, v2, v0}, Landroid/opengl/GLES20;->glViewport(IIII)V

    .line 353
    iget-object v0, p0, Lcom/transsion/camera/feature/common/BasePreview;->mPaint:Lcom/transsion/camera/feature/common/glrender/GLPaint;

    iget-object v1, p0, Lcom/transsion/camera/feature/burstpmk/BurstPMKPreview;->mUISpec:Lcom/transsion/camera/feature/burstpmk/BurstPMKUISpec;

    iget v1, v1, Lcom/transsion/camera/feature/common/BaseUISpec;->mBorderColor:I

    invoke-virtual {v0, v1}, Lcom/transsion/camera/feature/common/glrender/GLPaint;->setColor(I)V

    .line 354
    iget-object v0, p0, Lcom/transsion/camera/feature/common/BasePreview;->mCanvas:Lcom/transsion/camera/feature/common/glrender/GLCanvas;

    int-to-float v1, v9

    int-to-float p1, p1

    int-to-float v2, v11

    int-to-float v3, v12

    iget-object p0, p0, Lcom/transsion/camera/feature/common/BasePreview;->mPaint:Lcom/transsion/camera/feature/common/glrender/GLPaint;

    move-object/from16 p7, p0

    move/from16 p4, p1

    move-object p2, v0

    move/from16 p3, v1

    move/from16 p5, v2

    move/from16 p6, v3

    invoke-interface/range {p2 .. p7}, Lcom/transsion/camera/feature/common/glrender/GLCanvas;->drawRect(FFFFLcom/transsion/camera/feature/common/glrender/GLPaint;)V

    :cond_d2
    :goto_d2
    return-void
.end method

.method private drawDotted(Landroid/graphics/Point;Landroid/graphics/Point;III)V
    .registers 13

    .line 246
    iget v0, p2, Landroid/graphics/Point;->y:I

    if-nez v0, :cond_5

    return-void

    .line 256
    :cond_5
    invoke-direct {p0, p5}, Lcom/transsion/camera/feature/burstpmk/BurstPMKPreview;->isLandscape(I)Z

    move-result p5

    const/4 v0, 0x0

    const/high16 v1, 0x40000000    # 2.0f

    if-eqz p5, :cond_35

    .line 258
    iget-object p5, p0, Lcom/transsion/camera/feature/burstpmk/BurstPMKPreview;->mUISpec:Lcom/transsion/camera/feature/burstpmk/BurstPMKUISpec;

    iget p5, p5, Lcom/transsion/camera/feature/common/BaseUISpec;->mThumbBgHeight:I

    .line 259
    iget-object v2, p0, Lcom/transsion/camera/feature/burstpmk/BurstPMKPreview;->mDottedLine:Lcom/transsion/camera/feature/common/glrender/BitmapTexture;

    invoke-virtual {v2}, Lcom/transsion/camera/feature/common/glrender/UploadedTexture;->getHeight()I

    move-result v2

    .line 260
    iget v3, p1, Landroid/graphics/Point;->x:I

    int-to-float v3, v3

    iget-object v4, p0, Lcom/transsion/camera/feature/burstpmk/BurstPMKPreview;->mUISpec:Lcom/transsion/camera/feature/burstpmk/BurstPMKUISpec;

    iget v4, v4, Lcom/transsion/camera/feature/common/BaseUISpec;->mThumbWidth:I

    sub-int/2addr v4, v2

    int-to-float v4, v4

    div-float/2addr v4, v1

    add-float/2addr v3, v4

    iget p2, p2, Landroid/graphics/Point;->y:I

    int-to-float p2, p2

    sub-float/2addr v3, p2

    int-to-float p2, v2

    div-float/2addr p2, v1

    add-float/2addr v3, p2

    float-to-int p2, v3

    .line 261
    iget p1, p1, Landroid/graphics/Point;->y:I

    div-int/lit8 v1, p5, 0x2

    add-int/2addr p1, v1

    const/16 v1, 0x5a

    :goto_32
    move v5, p5

    move v6, v2

    goto :goto_5a

    .line 264
    :cond_35
    iget-object p5, p0, Lcom/transsion/camera/feature/burstpmk/BurstPMKPreview;->mUISpec:Lcom/transsion/camera/feature/burstpmk/BurstPMKUISpec;

    iget p5, p5, Lcom/transsion/camera/feature/common/BaseUISpec;->mThumbBgWidth:I

    .line 265
    iget-object v2, p0, Lcom/transsion/camera/feature/burstpmk/BurstPMKPreview;->mDottedLine:Lcom/transsion/camera/feature/common/glrender/BitmapTexture;

    invoke-virtual {v2}, Lcom/transsion/camera/feature/common/glrender/UploadedTexture;->getHeight()I

    move-result v2

    .line 266
    iget v3, p1, Landroid/graphics/Point;->x:I

    div-int/lit8 v4, p5, 0x2

    add-int/2addr v3, v4

    .line 267
    iget p1, p1, Landroid/graphics/Point;->y:I

    int-to-float p1, p1

    iget-object v4, p0, Lcom/transsion/camera/feature/burstpmk/BurstPMKPreview;->mUISpec:Lcom/transsion/camera/feature/burstpmk/BurstPMKUISpec;

    iget v4, v4, Lcom/transsion/camera/feature/common/BaseUISpec;->mThumbHeight:I

    sub-int/2addr v4, v2

    int-to-float v4, v4

    div-float/2addr v4, v1

    add-float/2addr p1, v4

    iget p2, p2, Landroid/graphics/Point;->y:I

    int-to-float p2, p2

    sub-float/2addr p1, p2

    int-to-float p2, v2

    div-float/2addr p2, v1

    add-float/2addr p1, p2

    float-to-int p1, p1

    move v1, v0

    move p2, v3

    goto :goto_32

    .line 270
    :goto_5a
    invoke-static {v0, v0, p3, p4}, Landroid/opengl/GLES20;->glViewport(IIII)V

    .line 272
    iget-object p3, p0, Lcom/transsion/camera/feature/common/BasePreview;->mCanvas:Lcom/transsion/camera/feature/common/glrender/GLCanvas;

    const/4 p4, -0x1

    invoke-interface {p3, p4}, Lcom/transsion/camera/feature/common/glrender/GLCanvas;->save(I)V

    .line 273
    iget-object p3, p0, Lcom/transsion/camera/feature/common/BasePreview;->mCanvas:Lcom/transsion/camera/feature/common/glrender/GLCanvas;

    int-to-float p2, p2

    int-to-float p1, p1

    invoke-interface {p3, p2, p1}, Lcom/transsion/camera/feature/common/glrender/GLCanvas;->translate(FF)V

    .line 274
    iget-object p1, p0, Lcom/transsion/camera/feature/common/BasePreview;->mCanvas:Lcom/transsion/camera/feature/common/glrender/GLCanvas;

    int-to-float p2, v1

    const/high16 p3, 0x3f800000    # 1.0f

    const/4 p4, 0x0

    invoke-interface {p1, p2, p4, p4, p3}, Lcom/transsion/camera/feature/common/glrender/GLCanvas;->rotate(FFFF)V

    .line 275
    iget-object v1, p0, Lcom/transsion/camera/feature/burstpmk/BurstPMKPreview;->mDottedLine:Lcom/transsion/camera/feature/common/glrender/BitmapTexture;

    iget-object v2, p0, Lcom/transsion/camera/feature/common/BasePreview;->mCanvas:Lcom/transsion/camera/feature/common/glrender/GLCanvas;

    neg-int p1, v5

    div-int/lit8 v3, p1, 0x2

    neg-int p1, v6

    div-int/lit8 v4, p1, 0x2

    invoke-virtual/range {v1 .. v6}, Lcom/transsion/camera/feature/common/glrender/BasicTexture;->draw(Lcom/transsion/camera/feature/common/glrender/GLCanvas;IIII)V

    .line 276
    iget-object p0, p0, Lcom/transsion/camera/feature/common/BasePreview;->mCanvas:Lcom/transsion/camera/feature/common/glrender/GLCanvas;

    invoke-interface {p0}, Lcom/transsion/camera/feature/common/glrender/GLCanvas;->restore()V

    return-void
.end method

.method private drawPreviewThumbnail(Landroid/graphics/SurfaceTexture;IIILandroid/graphics/Point;II)V
    .registers 19

    move-object/from16 v2, p5

    .line 361
    iget-object v3, p0, Lcom/transsion/camera/feature/burstpmk/BurstPMKPreview;->mUISpec:Lcom/transsion/camera/feature/burstpmk/BurstPMKUISpec;

    iget v9, v3, Lcom/transsion/camera/feature/common/BaseUISpec;->mThumbWidth:I

    .line 362
    iget v10, v3, Lcom/transsion/camera/feature/common/BaseUISpec;->mThumbHeight:I

    .line 363
    iget v4, v2, Landroid/graphics/Point;->x:I

    .line 364
    iget v5, v2, Landroid/graphics/Point;->y:I

    add-int/2addr v5, v10

    sub-int v5, p4, v5

    const/4 v6, 0x2

    move/from16 v7, p6

    if-ne v6, v7, :cond_2b

    .line 367
    iget v3, v3, Lcom/transsion/camera/feature/common/BaseUISpec;->mThumbBgWidth:I

    add-int/2addr v4, v3

    sub-int/2addr v4, v9

    move/from16 v3, p7

    .line 368
    invoke-direct {p0, v3}, Lcom/transsion/camera/feature/burstpmk/BurstPMKPreview;->isLandscape(I)Z

    move-result v3

    if-eqz v3, :cond_2b

    .line 369
    iget v4, v2, Landroid/graphics/Point;->x:I

    .line 370
    iget v2, v2, Landroid/graphics/Point;->y:I

    iget-object v3, p0, Lcom/transsion/camera/feature/burstpmk/BurstPMKPreview;->mUISpec:Lcom/transsion/camera/feature/burstpmk/BurstPMKUISpec;

    iget v3, v3, Lcom/transsion/camera/feature/common/BaseUISpec;->mThumbBgHeight:I

    add-int/2addr v2, v3

    sub-int v5, p4, v2

    :cond_2b
    move v7, v4

    move v8, v5

    .line 374
    iget-object v4, p0, Lcom/transsion/camera/feature/common/BasePreview;->mSurface2dProgram:Lcom/transsion/camera/feature/common/glprogram/SurfaceTexture2dProgram;

    move-object v5, p1

    move v6, p2

    invoke-virtual/range {v4 .. v10}, Lcom/transsion/camera/feature/common/glprogram/SurfaceTexture2dProgram;->draw(Landroid/graphics/SurfaceTexture;IIIII)V

    .line 376
    iget-object v2, p0, Lcom/transsion/camera/feature/burstpmk/BurstPMKPreview;->mUISpec:Lcom/transsion/camera/feature/burstpmk/BurstPMKUISpec;

    iget-boolean v2, v2, Lcom/transsion/camera/feature/common/BaseUISpec;->mBorder:Z

    if-eqz v2, :cond_5c

    sub-int v2, p4, v8

    sub-int/2addr v2, v10

    const/4 v3, 0x0

    .line 378
    invoke-static {v3, v3, p3, p4}, Landroid/opengl/GLES20;->glViewport(IIII)V

    .line 379
    iget-object v1, p0, Lcom/transsion/camera/feature/common/BasePreview;->mPaint:Lcom/transsion/camera/feature/common/glrender/GLPaint;

    iget-object v3, p0, Lcom/transsion/camera/feature/burstpmk/BurstPMKPreview;->mUISpec:Lcom/transsion/camera/feature/burstpmk/BurstPMKUISpec;

    iget v3, v3, Lcom/transsion/camera/feature/common/BaseUISpec;->mBorderColor:I

    invoke-virtual {v1, v3}, Lcom/transsion/camera/feature/common/glrender/GLPaint;->setColor(I)V

    .line 380
    iget-object v1, p0, Lcom/transsion/camera/feature/common/BasePreview;->mCanvas:Lcom/transsion/camera/feature/common/glrender/GLCanvas;

    int-to-float v3, v7

    int-to-float v2, v2

    int-to-float v4, v9

    int-to-float v5, v10

    iget-object v0, p0, Lcom/transsion/camera/feature/common/BasePreview;->mPaint:Lcom/transsion/camera/feature/common/glrender/GLPaint;

    move-object/from16 p5, v0

    move-object p0, v1

    move p2, v2

    move p1, v3

    move p3, v4

    move p4, v5

    invoke-interface/range {p0 .. p5}, Lcom/transsion/camera/feature/common/glrender/GLCanvas;->drawRect(FFFFLcom/transsion/camera/feature/common/glrender/GLPaint;)V

    :cond_5c
    return-void
.end method

.method private drawStitchThumbnail(ILandroid/graphics/Point;I)V
    .registers 10

    .line 285
    iget v3, p0, Lcom/transsion/camera/feature/common/BasePreview;->mThumbWidth:I

    .line 286
    iget v4, p0, Lcom/transsion/camera/feature/common/BasePreview;->mThumbHeight:I

    .line 288
    iget v0, p2, Landroid/graphics/Point;->x:I

    .line 289
    iget v1, p2, Landroid/graphics/Point;->y:I

    add-int/2addr v1, v3

    sub-int v1, p1, v1

    const/4 v2, 0x2

    .line 291
    iget v5, p0, Lcom/transsion/camera/feature/burstpmk/BurstPMKPreview;->mDirection:I

    if-ne v2, v5, :cond_25

    .line 292
    iget-object v2, p0, Lcom/transsion/camera/feature/burstpmk/BurstPMKPreview;->mUISpec:Lcom/transsion/camera/feature/burstpmk/BurstPMKUISpec;

    iget v2, v2, Lcom/transsion/camera/feature/common/BaseUISpec;->mThumbBgWidth:I

    sub-int/2addr v2, v4

    add-int/2addr v0, v2

    .line 293
    invoke-direct {p0, p3}, Lcom/transsion/camera/feature/burstpmk/BurstPMKPreview;->isLandscape(I)Z

    move-result p3

    if-eqz p3, :cond_25

    .line 294
    iget p2, p2, Landroid/graphics/Point;->y:I

    iget-object p3, p0, Lcom/transsion/camera/feature/burstpmk/BurstPMKPreview;->mUISpec:Lcom/transsion/camera/feature/burstpmk/BurstPMKUISpec;

    iget p3, p3, Lcom/transsion/camera/feature/common/BaseUISpec;->mThumbBgHeight:I

    add-int/2addr p2, p3

    sub-int v1, p1, p2

    :cond_25
    move v2, v1

    move v1, v0

    .line 298
    iget-object v0, p0, Lcom/transsion/camera/feature/common/BasePreview;->mBgr2dProgram:Lcom/transsion/camera/feature/common/glprogram/BgrTexture2dProgram;

    iget-object v5, p0, Lcom/transsion/camera/feature/common/BasePreview;->mBgrBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual/range {v0 .. v5}, Lcom/transsion/camera/feature/common/glprogram/BgrTexture2dProgram;->draw(IIIILjava/nio/ByteBuffer;)V

    return-void
.end method

.method private getBitmap(I)Landroid/graphics/Bitmap;
    .registers 6

    .line 108
    iget-object p0, p0, Lcom/transsion/camera/feature/burstpmk/BurstPMKPreview;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const/4 v0, 0x0

    .line 109
    invoke-virtual {p0, p1, v0}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    .line 110
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result p1

    .line 111
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 110
    invoke-static {p1, v0, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 112
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, p1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 113
    invoke-virtual {v0}, Landroid/graphics/Canvas;->getWidth()I

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/Canvas;->getHeight()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {p0, v3, v3, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 114
    invoke-virtual {p0, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    return-object p1
.end method

.method private isLandscape(I)Z
    .registers 2

    .line 175
    iget-object p0, p0, Lcom/transsion/camera/feature/burstpmk/BurstPMKPreview;->mUISpec:Lcom/transsion/camera/feature/burstpmk/BurstPMKUISpec;

    iget-boolean p0, p0, Lcom/transsion/camera/feature/burstpmk/BaseBurstPMKUISpec;->mSupportLandscape:Z

    if-eqz p0, :cond_11

    const/4 p0, -0x1

    if-eq p1, p0, :cond_11

    if-eqz p1, :cond_11

    const/16 p0, 0xb4

    if-eq p1, p0, :cond_11

    const/4 p0, 0x1

    return p0

    :cond_11
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method protected createGLProgram()V
    .registers 3

    .line 120
    invoke-super {p0}, Lcom/transsion/camera/feature/common/BasePreview;->createGLProgram()V

    .line 122
    iget-object v0, p0, Lcom/transsion/camera/feature/burstpmk/BurstPMKPreview;->mArrowNormal:Lcom/transsion/camera/feature/common/glrender/BitmapTexture;

    if-nez v0, :cond_14

    .line 123
    new-instance v0, Lcom/transsion/camera/feature/common/glrender/BitmapTexture;

    sget v1, Lcom/transsion/camera/feature/panoramawideselfie/R$drawable;->ic_left_arrow:I

    invoke-direct {p0, v1}, Lcom/transsion/camera/feature/burstpmk/BurstPMKPreview;->getBitmap(I)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/transsion/camera/feature/common/glrender/BitmapTexture;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/burstpmk/BurstPMKPreview;->mArrowNormal:Lcom/transsion/camera/feature/common/glrender/BitmapTexture;

    .line 125
    :cond_14
    iget-object v0, p0, Lcom/transsion/camera/feature/burstpmk/BurstPMKPreview;->mUISpec:Lcom/transsion/camera/feature/burstpmk/BurstPMKUISpec;

    iget-boolean v0, v0, Lcom/transsion/camera/feature/common/BaseUISpec;->mArrowWarn:Z

    if-eqz v0, :cond_27

    .line 126
    new-instance v0, Lcom/transsion/camera/feature/common/glrender/BitmapTexture;

    sget v1, Lcom/transsion/camera/feature/panoramawideselfie/R$drawable;->ic_left_arrow_warning:I

    invoke-direct {p0, v1}, Lcom/transsion/camera/feature/burstpmk/BurstPMKPreview;->getBitmap(I)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/transsion/camera/feature/common/glrender/BitmapTexture;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/burstpmk/BurstPMKPreview;->mArrowWarning:Lcom/transsion/camera/feature/common/glrender/BitmapTexture;

    .line 128
    :cond_27
    iget-object v0, p0, Lcom/transsion/camera/feature/burstpmk/BurstPMKPreview;->mUISpec:Lcom/transsion/camera/feature/burstpmk/BurstPMKUISpec;

    iget-boolean v0, v0, Lcom/transsion/camera/feature/common/BaseUISpec;->mDotted:Z

    if-eqz v0, :cond_3a

    .line 129
    new-instance v0, Lcom/transsion/camera/feature/common/glrender/BitmapTexture;

    sget v1, Lcom/transsion/camera/feature/panoramawideselfie/R$drawable;->ic_dotted_line:I

    invoke-direct {p0, v1}, Lcom/transsion/camera/feature/burstpmk/BurstPMKPreview;->getBitmap(I)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/transsion/camera/feature/common/glrender/BitmapTexture;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/burstpmk/BurstPMKPreview;->mDottedLine:Lcom/transsion/camera/feature/common/glrender/BitmapTexture;

    :cond_3a
    return-void
.end method

.method protected destroyGLProgram()V
    .registers 3

    .line 135
    iget-object v0, p0, Lcom/transsion/camera/feature/burstpmk/BurstPMKPreview;->mArrowNormal:Lcom/transsion/camera/feature/common/glrender/BitmapTexture;

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    .line 136
    invoke-virtual {v0}, Lcom/transsion/camera/feature/common/glrender/UploadedTexture;->recycle()V

    .line 137
    iput-object v1, p0, Lcom/transsion/camera/feature/burstpmk/BurstPMKPreview;->mArrowNormal:Lcom/transsion/camera/feature/common/glrender/BitmapTexture;

    .line 139
    :cond_a
    iget-object v0, p0, Lcom/transsion/camera/feature/burstpmk/BurstPMKPreview;->mArrowWarning:Lcom/transsion/camera/feature/common/glrender/BitmapTexture;

    if-eqz v0, :cond_13

    .line 140
    invoke-virtual {v0}, Lcom/transsion/camera/feature/common/glrender/UploadedTexture;->recycle()V

    .line 141
    iput-object v1, p0, Lcom/transsion/camera/feature/burstpmk/BurstPMKPreview;->mArrowWarning:Lcom/transsion/camera/feature/common/glrender/BitmapTexture;

    .line 143
    :cond_13
    iget-object v0, p0, Lcom/transsion/camera/feature/burstpmk/BurstPMKPreview;->mDottedLine:Lcom/transsion/camera/feature/common/glrender/BitmapTexture;

    if-eqz v0, :cond_1c

    .line 144
    invoke-virtual {v0}, Lcom/transsion/camera/feature/common/glrender/UploadedTexture;->recycle()V

    .line 145
    iput-object v1, p0, Lcom/transsion/camera/feature/burstpmk/BurstPMKPreview;->mDottedLine:Lcom/transsion/camera/feature/common/glrender/BitmapTexture;

    .line 148
    :cond_1c
    invoke-super {p0}, Lcom/transsion/camera/feature/common/BasePreview;->destroyGLProgram()V

    return-void
.end method

.method public draw(Landroid/graphics/SurfaceTexture;III)Z
    .registers 7

    .line 154
    iget-boolean v0, p0, Lcom/transsion/camera/feature/common/BasePreview;->mUIReady:Z

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    .line 157
    :cond_6
    iget-object v0, p0, Lcom/transsion/camera/feature/common/BasePreview;->mBgr2dProgram:Lcom/transsion/camera/feature/common/glprogram/BgrTexture2dProgram;

    if-eqz v0, :cond_1f

    iget-object v0, p0, Lcom/transsion/camera/feature/common/BasePreview;->mSurface2dProgram:Lcom/transsion/camera/feature/common/glprogram/SurfaceTexture2dProgram;

    if-nez v0, :cond_f

    goto :goto_1f

    .line 163
    :cond_f
    invoke-virtual {v0, p1, p2}, Lcom/transsion/camera/feature/common/glprogram/SurfaceTexture2dProgram;->draw(Landroid/graphics/SurfaceTexture;I)V

    .line 165
    iget-object v0, p0, Lcom/transsion/camera/feature/common/BasePreview;->mCanvas:Lcom/transsion/camera/feature/common/glrender/GLCanvas;

    invoke-interface {v0, p3, p4}, Lcom/transsion/camera/feature/common/glrender/GLCanvas;->setSize(II)V

    .line 167
    invoke-virtual {p0, p3, p4}, Lcom/transsion/camera/feature/burstpmk/BurstPMKPreview;->drawBackground(II)V

    .line 169
    invoke-virtual {p0, p1, p2}, Lcom/transsion/camera/feature/burstpmk/BurstPMKPreview;->drawThumbnail(Landroid/graphics/SurfaceTexture;I)V

    const/4 p0, 0x1

    return p0

    .line 158
    :cond_1f
    :goto_1f
    sget-object p1, Lcom/transsion/camera/feature/burstpmk/BurstPMKPreview;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "draw mBgr2dProgram: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/transsion/camera/feature/common/BasePreview;->mBgr2dProgram:Lcom/transsion/camera/feature/common/glprogram/BgrTexture2dProgram;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p3, ", mSurface2dProgram: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/transsion/camera/feature/common/BasePreview;->mSurface2dProgram:Lcom/transsion/camera/feature/common/glprogram/SurfaceTexture2dProgram;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return v1
.end method

.method protected drawBackground(II)V
    .registers 12

    .line 183
    iget-object p1, p0, Lcom/transsion/camera/feature/burstpmk/BurstPMKPreview;->mUISpec:Lcom/transsion/camera/feature/burstpmk/BurstPMKUISpec;

    iget-object p2, p1, Lcom/transsion/camera/feature/common/BaseUISpec;->mStartPoint:Landroid/graphics/Point;

    iget v0, p2, Landroid/graphics/Point;->x:I

    .line 184
    iget p2, p2, Landroid/graphics/Point;->y:I

    .line 185
    iget v1, p1, Lcom/transsion/camera/feature/common/BaseUISpec;->mThumbBgWidth:I

    .line 186
    iget v2, p1, Lcom/transsion/camera/feature/common/BaseUISpec;->mThumbBgHeight:I

    .line 188
    iget-object v3, p0, Lcom/transsion/camera/feature/common/BasePreview;->mCanvas:Lcom/transsion/camera/feature/common/glrender/GLCanvas;

    int-to-float v4, v0

    int-to-float v5, p2

    int-to-float v6, v1

    int-to-float v7, v2

    iget v8, p1, Lcom/transsion/camera/feature/common/BaseUISpec;->mBgColor:I

    invoke-interface/range {v3 .. v8}, Lcom/transsion/camera/feature/common/glrender/GLCanvas;->fillRect(FFFFI)V

    .line 194
    iget p1, p0, Lcom/transsion/camera/feature/common/BasePreview;->mOrientation:I

    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/burstpmk/BurstPMKPreview;->isLandscape(I)Z

    move-result p1

    const/high16 p2, 0x40000000    # 2.0f

    if-eqz p1, :cond_34

    .line 195
    iget-object p1, p0, Lcom/transsion/camera/feature/burstpmk/BurstPMKPreview;->mUISpec:Lcom/transsion/camera/feature/burstpmk/BurstPMKUISpec;

    iget v0, p1, Lcom/transsion/camera/feature/common/BaseUISpec;->mBorderHeight:I

    .line 196
    iget v2, p1, Lcom/transsion/camera/feature/common/BaseUISpec;->mThumbBgHeight:I

    .line 197
    iget-object p1, p1, Lcom/transsion/camera/feature/common/BaseUISpec;->mStartPoint:Landroid/graphics/Point;

    iget v3, p1, Landroid/graphics/Point;->x:I

    int-to-float v3, v3

    sub-int/2addr v1, v0

    int-to-float v1, v1

    div-float/2addr v1, p2

    add-float/2addr v3, v1

    float-to-int p2, v3

    .line 198
    iget p1, p1, Landroid/graphics/Point;->y:I

    goto :goto_48

    .line 200
    :cond_34
    iget-object p1, p0, Lcom/transsion/camera/feature/burstpmk/BurstPMKPreview;->mUISpec:Lcom/transsion/camera/feature/burstpmk/BurstPMKUISpec;

    iget v0, p1, Lcom/transsion/camera/feature/common/BaseUISpec;->mThumbBgWidth:I

    .line 201
    iget v1, p1, Lcom/transsion/camera/feature/common/BaseUISpec;->mBorderHeight:I

    .line 202
    iget-object p1, p1, Lcom/transsion/camera/feature/common/BaseUISpec;->mStartPoint:Landroid/graphics/Point;

    iget v3, p1, Landroid/graphics/Point;->x:I

    .line 203
    iget p1, p1, Landroid/graphics/Point;->y:I

    int-to-float p1, p1

    sub-int/2addr v2, v1

    int-to-float v2, v2

    div-float/2addr v2, p2

    add-float/2addr p1, v2

    float-to-int p1, p1

    move v2, v1

    move p2, v3

    .line 206
    :goto_48
    iget-object v3, p0, Lcom/transsion/camera/feature/common/BasePreview;->mCanvas:Lcom/transsion/camera/feature/common/glrender/GLCanvas;

    int-to-float v4, p2

    int-to-float v5, p1

    int-to-float v6, v0

    int-to-float v7, v2

    iget-object p0, p0, Lcom/transsion/camera/feature/burstpmk/BurstPMKPreview;->mUISpec:Lcom/transsion/camera/feature/burstpmk/BurstPMKUISpec;

    iget v8, p0, Lcom/transsion/camera/feature/common/BaseUISpec;->mLineColor:I

    invoke-interface/range {v3 .. v8}, Lcom/transsion/camera/feature/common/glrender/GLCanvas;->fillRect(FFFFI)V

    return-void
.end method

.method protected drawThumbnail(Landroid/graphics/SurfaceTexture;I)V
    .registers 13

    .line 211
    iget v5, p0, Lcom/transsion/camera/feature/common/BasePreview;->mOrientation:I

    .line 212
    iget-boolean v0, p0, Lcom/transsion/camera/feature/common/BasePreview;->mCapturing:Z

    .line 213
    iget v6, p0, Lcom/transsion/camera/feature/burstpmk/BurstPMKPreview;->mDirection:I

    .line 214
    iget-object v2, p0, Lcom/transsion/camera/feature/burstpmk/BurstPMKPreview;->mOffset:Landroid/graphics/Point;

    .line 215
    iget-object v1, p0, Lcom/transsion/camera/feature/burstpmk/BurstPMKPreview;->mUISpec:Lcom/transsion/camera/feature/burstpmk/BurstPMKUISpec;

    iget v3, v1, Lcom/transsion/camera/feature/common/BaseUISpec;->mSurfaceWidth:I

    .line 216
    iget v4, v1, Lcom/transsion/camera/feature/common/BaseUISpec;->mSurfaceHeight:I

    .line 217
    iget-object v1, v1, Lcom/transsion/camera/feature/common/BaseUISpec;->mThumbnailStartPoint:Landroid/graphics/Point;

    .line 219
    iget-object v7, p0, Lcom/transsion/camera/feature/common/BasePreview;->mLock:Ljava/lang/Object;

    monitor-enter v7

    .line 220
    :try_start_13
    iget-object v8, p0, Lcom/transsion/camera/feature/common/BasePreview;->mBgrBuffer:Ljava/nio/ByteBuffer;

    if-eqz v8, :cond_24

    iget v8, p0, Lcom/transsion/camera/feature/common/BasePreview;->mThumbWidth:I

    if-lez v8, :cond_24

    iget v8, p0, Lcom/transsion/camera/feature/common/BasePreview;->mThumbHeight:I

    if-gtz v8, :cond_25

    goto :goto_24

    :catchall_20
    move-exception v0

    move-object p0, v0

    goto/16 :goto_77

    :cond_24
    :goto_24
    const/4 v0, 0x0

    .line 223
    :cond_25
    monitor-exit v7
    :try_end_26
    .catchall {:try_start_13 .. :try_end_26} :catchall_20

    if-eqz v0, :cond_62

    .line 226
    iget-object v0, p0, Lcom/transsion/camera/feature/burstpmk/BurstPMKPreview;->mUISpec:Lcom/transsion/camera/feature/burstpmk/BurstPMKUISpec;

    iget-boolean v0, v0, Lcom/transsion/camera/feature/common/BaseUISpec;->mDotted:Z

    if-eqz v0, :cond_33

    move-object v0, p0

    .line 227
    invoke-direct/range {v0 .. v5}, Lcom/transsion/camera/feature/burstpmk/BurstPMKPreview;->drawDotted(Landroid/graphics/Point;Landroid/graphics/Point;III)V

    goto :goto_34

    :cond_33
    move-object v0, p0

    .line 229
    :goto_34
    iget-object p0, v0, Lcom/transsion/camera/feature/common/BasePreview;->mLock:Ljava/lang/Object;

    monitor-enter p0

    .line 230
    :try_start_37
    invoke-direct {v0, v4, v1, v5}, Lcom/transsion/camera/feature/burstpmk/BurstPMKPreview;->drawStitchThumbnail(ILandroid/graphics/Point;I)V

    .line 231
    monitor-exit p0
    :try_end_3b
    .catchall {:try_start_37 .. :try_end_3b} :catchall_5e

    .line 232
    iget-object p0, v0, Lcom/transsion/camera/feature/burstpmk/BurstPMKPreview;->mUISpec:Lcom/transsion/camera/feature/burstpmk/BurstPMKUISpec;

    iget-boolean p0, p0, Lcom/transsion/camera/feature/common/BaseUISpec;->mCaptureThumbnail:Z

    if-eqz p0, :cond_54

    move v8, v5

    move v7, v6

    move-object v5, v1

    move-object v6, v2

    move-object v1, p1

    move v2, p2

    .line 233
    invoke-direct/range {v0 .. v8}, Lcom/transsion/camera/feature/burstpmk/BurstPMKPreview;->drawCaptureThumbnail(Landroid/graphics/SurfaceTexture;IIILandroid/graphics/Point;Landroid/graphics/Point;II)V

    move-object v1, v5

    move-object p1, v6

    move v2, v3

    move-object v3, v1

    move v1, v2

    move v2, v4

    move v5, v7

    move v6, v8

    :goto_52
    move-object v4, p1

    goto :goto_73

    :cond_54
    move v9, v3

    move-object v3, v1

    move v1, v9

    move v9, v4

    move-object v4, v2

    move v2, v9

    move v9, v6

    move v6, v5

    move v5, v9

    goto :goto_73

    :catchall_5e
    move-exception v0

    move-object p1, v0

    .line 231
    :try_start_60
    monitor-exit p0
    :try_end_61
    .catchall {:try_start_60 .. :try_end_61} :catchall_5e

    throw p1

    :cond_62
    move-object v0, p0

    move v7, v5

    move-object v5, v1

    move-object v1, p1

    move-object p1, v2

    move v2, p2

    .line 237
    invoke-direct/range {v0 .. v7}, Lcom/transsion/camera/feature/burstpmk/BurstPMKPreview;->drawPreviewThumbnail(Landroid/graphics/SurfaceTexture;IIILandroid/graphics/Point;II)V

    move-object v1, v5

    move v2, v3

    move-object v3, v1

    move v1, v2

    move v2, v4

    move v5, v6

    move v6, v7

    goto :goto_52

    .line 241
    :goto_73
    invoke-direct/range {v0 .. v6}, Lcom/transsion/camera/feature/burstpmk/BurstPMKPreview;->drawArrow(IILandroid/graphics/Point;Landroid/graphics/Point;II)V

    return-void

    .line 223
    :goto_77
    :try_start_77
    monitor-exit v7
    :try_end_78
    .catchall {:try_start_77 .. :try_end_78} :catchall_20

    throw p0
.end method

.method public onCaptureEnd()V
    .registers 2

    .line 103
    invoke-super {p0}, Lcom/transsion/camera/feature/common/BasePreview;->onCaptureEnd()V

    .line 104
    sget-object v0, Lcom/transsion/camera/feature/burstpmk/BurstPMKPreview;->DEFAULT_OFFSET:Landroid/graphics/Point;

    iput-object v0, p0, Lcom/transsion/camera/feature/burstpmk/BurstPMKPreview;->mOffset:Landroid/graphics/Point;

    return-void
.end method

.method public onCaptureFailed()V
    .registers 2

    .line 97
    invoke-super {p0}, Lcom/transsion/camera/feature/common/BasePreview;->onCaptureFailed()V

    .line 98
    sget-object v0, Lcom/transsion/camera/feature/burstpmk/BurstPMKPreview;->DEFAULT_OFFSET:Landroid/graphics/Point;

    iput-object v0, p0, Lcom/transsion/camera/feature/burstpmk/BurstPMKPreview;->mOffset:Landroid/graphics/Point;

    return-void
.end method

.method public onCaptureStart()V
    .registers 2

    .line 85
    invoke-super {p0}, Lcom/transsion/camera/feature/common/BasePreview;->onCaptureStart()V

    .line 86
    sget-object v0, Lcom/transsion/camera/feature/burstpmk/BurstPMKPreview;->DEFAULT_OFFSET:Landroid/graphics/Point;

    iput-object v0, p0, Lcom/transsion/camera/feature/burstpmk/BurstPMKPreview;->mOffset:Landroid/graphics/Point;

    return-void
.end method

.method public onCaptureStop()V
    .registers 2

    .line 91
    invoke-super {p0}, Lcom/transsion/camera/feature/common/BasePreview;->onCaptureStop()V

    .line 92
    sget-object v0, Lcom/transsion/camera/feature/burstpmk/BurstPMKPreview;->DEFAULT_OFFSET:Landroid/graphics/Point;

    iput-object v0, p0, Lcom/transsion/camera/feature/burstpmk/BurstPMKPreview;->mOffset:Landroid/graphics/Point;

    return-void
.end method

.method public onDirectionChange(I)V
    .registers 2

    .line 64
    iput p1, p0, Lcom/transsion/camera/feature/burstpmk/BurstPMKPreview;->mDirection:I

    return-void
.end method

.method public onMoveProgress(Landroid/graphics/Point;)V
    .registers 2

    if-eqz p1, :cond_4

    .line 79
    iput-object p1, p0, Lcom/transsion/camera/feature/burstpmk/BurstPMKPreview;->mOffset:Landroid/graphics/Point;

    :cond_4
    return-void
.end method

.method public onThumbnailUpdate([BIII)V
    .registers 11

    if-eqz p1, :cond_13

    if-lez p2, :cond_13

    if-lez p3, :cond_13

    .line 71
    iget-object p4, p0, Lcom/transsion/camera/feature/burstpmk/BurstPMKPreview;->mUISpec:Lcom/transsion/camera/feature/burstpmk/BurstPMKUISpec;

    iget v4, p4, Lcom/transsion/camera/feature/common/BaseUISpec;->mThumbBgWidth:I

    iget v5, p4, Lcom/transsion/camera/feature/common/BaseUISpec;->mThumbBgHeight:I

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    invoke-virtual/range {v0 .. v5}, Lcom/transsion/camera/feature/common/BasePreview;->onThumbnailUpdate([BIIII)V

    :cond_13
    return-void
.end method
