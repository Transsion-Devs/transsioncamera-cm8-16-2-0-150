.class Lcom/transsion/camera/feature/burstpmk/BaseBurstPMKUISpec;
.super Lcom/transsion/camera/feature/common/BaseUISpec;
.source "SourceFile"


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field protected mOrientation:I

.field protected mOriginalArrowHeight:I

.field protected mOriginalArrowWidth:I

.field public mSupportLandscape:Z


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 34
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "BaseBurstPMKUISpec"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/feature/burstpmk/BaseBurstPMKUISpec;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method constructor <init>(Lcom/transsion/camera/app/common/IAppUI;)V
    .registers 3

    .line 44
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/common/BaseUISpec;-><init>(Lcom/transsion/camera/app/common/IAppUI;)V

    .line 45
    iget-object p1, p0, Lcom/transsion/camera/feature/common/BaseUISpec;->mResources:Landroid/content/res/Resources;

    sget v0, Lcom/transsion/camera/feature/panoramawideselfie/R$bool;->panorama_support_landscape:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p1

    iput-boolean p1, p0, Lcom/transsion/camera/feature/burstpmk/BaseBurstPMKUISpec;->mSupportLandscape:Z

    .line 46
    iget-object p1, p0, Lcom/transsion/camera/feature/common/BaseUISpec;->mResources:Landroid/content/res/Resources;

    sget v0, Lcom/transsion/camera/feature/panoramawideselfie/R$dimen;->arrow_width:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/transsion/camera/feature/burstpmk/BaseBurstPMKUISpec;->mOriginalArrowWidth:I

    .line 47
    iget-object p1, p0, Lcom/transsion/camera/feature/common/BaseUISpec;->mResources:Landroid/content/res/Resources;

    sget v0, Lcom/transsion/camera/feature/panoramawideselfie/R$dimen;->arrow_height:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/transsion/camera/feature/burstpmk/BaseBurstPMKUISpec;->mOriginalArrowHeight:I

    return-void
.end method


# virtual methods
.method public calculateThumbnailSize(Landroid/util/Size;Landroid/util/Size;)V
    .registers 21

    move-object/from16 v0, p0

    if-nez p1, :cond_c

    .line 56
    sget-object v0, Lcom/transsion/camera/feature/burstpmk/BaseBurstPMKUISpec;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "calculateThumbnailSize previewSize is null!"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 60
    :cond_c
    invoke-virtual/range {p2 .. p2}, Landroid/util/Size;->getWidth()I

    move-result v1

    .line 61
    invoke-virtual/range {p2 .. p2}, Landroid/util/Size;->getHeight()I

    move-result v2

    .line 62
    invoke-virtual/range {p1 .. p1}, Landroid/util/Size;->getWidth()I

    move-result v3

    .line 63
    invoke-virtual/range {p1 .. p1}, Landroid/util/Size;->getHeight()I

    move-result v4

    int-to-double v5, v1

    const-wide/high16 v7, 0x3ff0000000000000L    # 1.0

    mul-double/2addr v5, v7

    int-to-double v9, v2

    div-double/2addr v5, v9

    int-to-double v9, v3

    mul-double/2addr v9, v7

    int-to-double v7, v4

    div-double/2addr v9, v7

    int-to-float v1, v1

    const/high16 v7, 0x3f800000    # 1.0f

    mul-float/2addr v1, v7

    int-to-float v8, v3

    div-float/2addr v1, v8

    .line 68
    iput v1, v0, Lcom/transsion/camera/feature/common/BaseUISpec;->mVRatio:F

    int-to-float v1, v2

    mul-float/2addr v1, v7

    int-to-float v2, v4

    div-float/2addr v1, v2

    .line 69
    iput v1, v0, Lcom/transsion/camera/feature/common/BaseUISpec;->mHRatio:F

    .line 71
    iput v4, v0, Lcom/transsion/camera/feature/common/BaseUISpec;->mSurfaceWidth:I

    .line 72
    iput v3, v0, Lcom/transsion/camera/feature/common/BaseUISpec;->mSurfaceHeight:I

    .line 75
    iget-object v1, v0, Lcom/transsion/camera/feature/common/BaseUISpec;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 77
    iget-object v2, v0, Lcom/transsion/camera/feature/common/BaseUISpec;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {v2}, Lcom/transsion/camera/app/common/IAppUI;->getScreenFormType()I

    move-result v2

    const v8, 0x4007e5c9    # 2.1234f

    const/4 v11, 0x1

    const/16 v12, 0x10e

    const/4 v13, 0x2

    const/high16 v14, 0x41700000    # 15.0f

    const v15, 0x3eb33333    # 0.35f

    const/high16 v16, 0x40000000    # 2.0f

    if-eq v2, v11, :cond_315

    move/from16 p1, v7

    const/4 v7, 0x0

    if-eq v2, v13, :cond_2b4

    const/high16 p2, 0x40b40000    # 5.625f

    const/4 v8, 0x3

    if-eq v2, v8, :cond_1be

    move/from16 v17, v8

    const/4 v8, 0x4

    if-eq v2, v8, :cond_13d

    const/4 v8, 0x5

    if-eq v2, v8, :cond_13d

    .line 230
    invoke-static {}, Lcom/transsion/camera/utils/FeatureSupport;->isTabletDevice()Z

    move-result v1

    .line 231
    iget v2, v0, Lcom/transsion/camera/feature/burstpmk/BaseBurstPMKUISpec;->mOrientation:I

    invoke-virtual {v0, v2}, Lcom/transsion/camera/feature/burstpmk/BaseBurstPMKUISpec;->isLandscape(I)Z

    move-result v2

    if-eqz v2, :cond_c6

    .line 232
    iget v2, v0, Lcom/transsion/camera/feature/common/BaseUISpec;->mSurfaceWidth:I

    int-to-float v3, v2

    div-float v3, v3, p2

    float-to-int v3, v3

    iput v3, v0, Lcom/transsion/camera/feature/common/BaseUISpec;->mThumbWidth:I

    .line 233
    iget v4, v0, Lcom/transsion/camera/feature/common/BaseUISpec;->mSurfaceHeight:I

    mul-int v5, v3, v4

    div-int/2addr v5, v2

    iput v5, v0, Lcom/transsion/camera/feature/common/BaseUISpec;->mThumbHeight:I

    .line 234
    iput v3, v0, Lcom/transsion/camera/feature/common/BaseUISpec;->mThumbBgWidth:I

    mul-int/lit8 v5, v5, 0x3

    .line 235
    iput v5, v0, Lcom/transsion/camera/feature/common/BaseUISpec;->mThumbBgHeight:I

    int-to-float v5, v3

    const v6, 0x400a0c4a    # 2.157f

    div-float/2addr v5, v6

    float-to-int v5, v5

    .line 238
    iget v6, v0, Lcom/transsion/camera/feature/burstpmk/BaseBurstPMKUISpec;->mOriginalArrowWidth:I

    mul-int/2addr v6, v5

    iget v7, v0, Lcom/transsion/camera/feature/burstpmk/BaseBurstPMKUISpec;->mOriginalArrowHeight:I

    div-int/2addr v6, v7

    iput v6, v0, Lcom/transsion/camera/feature/common/BaseUISpec;->mArrowHeight:I

    .line 239
    iput v5, v0, Lcom/transsion/camera/feature/common/BaseUISpec;->mArrowWidth:I

    .line 241
    iget v5, v0, Lcom/transsion/camera/feature/burstpmk/BaseBurstPMKUISpec;->mOrientation:I

    if-ne v5, v12, :cond_a1

    .line 242
    iget-object v5, v0, Lcom/transsion/camera/feature/common/BaseUISpec;->mStartPoint:Landroid/graphics/Point;

    shr-int/2addr v2, v11

    iput v2, v5, Landroid/graphics/Point;->x:I

    goto :goto_a7

    .line 244
    :cond_a1
    iget-object v5, v0, Lcom/transsion/camera/feature/common/BaseUISpec;->mStartPoint:Landroid/graphics/Point;

    shr-int/2addr v2, v11

    sub-int/2addr v2, v3

    iput v2, v5, Landroid/graphics/Point;->x:I

    .line 246
    :goto_a7
    iget-object v2, v0, Lcom/transsion/camera/feature/common/BaseUISpec;->mStartPoint:Landroid/graphics/Point;

    int-to-float v4, v4

    if-eqz v1, :cond_b0

    const v1, 0x3e666666    # 0.225f

    goto :goto_b2

    :cond_b0
    const/high16 v1, 0x3e000000    # 0.125f

    :goto_b2
    mul-float/2addr v4, v1

    float-to-int v1, v4

    iput v1, v2, Landroid/graphics/Point;->y:I

    .line 248
    iget-object v4, v0, Lcom/transsion/camera/feature/common/BaseUISpec;->mThumbnailStartPoint:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->x:I

    iput v2, v4, Landroid/graphics/Point;->x:I

    .line 249
    iput v1, v4, Landroid/graphics/Point;->y:I

    int-to-float v1, v3

    mul-float/2addr v1, v15

    sub-float/2addr v1, v14

    float-to-int v1, v1

    .line 251
    iput v1, v0, Lcom/transsion/camera/feature/common/BaseUISpec;->mWarningOffset:I

    goto/16 :goto_45f

    .line 253
    :cond_c6
    iget v2, v0, Lcom/transsion/camera/feature/common/BaseUISpec;->mSurfaceHeight:I

    int-to-float v2, v2

    mul-float v2, v2, p1

    const/high16 v8, 0x41000000    # 8.0f

    div-float/2addr v2, v8

    float-to-int v2, v2

    iput v2, v0, Lcom/transsion/camera/feature/common/BaseUISpec;->mThumbHeight:I

    mul-int/2addr v4, v2

    .line 254
    div-int/2addr v4, v3

    iput v4, v0, Lcom/transsion/camera/feature/common/BaseUISpec;->mThumbWidth:I

    .line 255
    iput v2, v0, Lcom/transsion/camera/feature/common/BaseUISpec;->mThumbBgHeight:I

    .line 256
    iget v3, v0, Lcom/transsion/camera/feature/common/BaseUISpec;->mSurfaceWidth:I

    iput v3, v0, Lcom/transsion/camera/feature/common/BaseUISpec;->mThumbBgWidth:I

    int-to-float v2, v2

    const v3, 0x4049999a    # 3.15f

    div-float/2addr v2, v3

    float-to-int v2, v2

    .line 259
    iget v3, v0, Lcom/transsion/camera/feature/burstpmk/BaseBurstPMKUISpec;->mOriginalArrowWidth:I

    mul-int/2addr v3, v2

    iget v4, v0, Lcom/transsion/camera/feature/burstpmk/BaseBurstPMKUISpec;->mOriginalArrowHeight:I

    div-int/2addr v3, v4

    iput v3, v0, Lcom/transsion/camera/feature/common/BaseUISpec;->mArrowWidth:I

    .line 260
    iput v2, v0, Lcom/transsion/camera/feature/common/BaseUISpec;->mArrowHeight:I

    .line 262
    iget-object v2, v0, Lcom/transsion/camera/feature/common/BaseUISpec;->mStartPoint:Landroid/graphics/Point;

    iput v7, v2, Landroid/graphics/Point;->x:I

    if-nez v1, :cond_111

    sub-double/2addr v5, v9

    .line 263
    invoke-static {v5, v6}, Ljava/lang/Math;->abs(D)D

    move-result-wide v1

    const-wide v3, 0x3f947ae147ae147bL    # 0.02

    cmpl-double v1, v1, v3

    if-lez v1, :cond_111

    .line 264
    iget-object v1, v0, Lcom/transsion/camera/feature/common/BaseUISpec;->mStartPoint:Landroid/graphics/Point;

    iget v2, v0, Lcom/transsion/camera/feature/common/BaseUISpec;->mTopBarHeight:I

    int-to-float v2, v2

    iget v3, v0, Lcom/transsion/camera/feature/common/BaseUISpec;->mPreview4_3Height:I

    iget v4, v0, Lcom/transsion/camera/feature/common/BaseUISpec;->mThumbBgHeight:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    div-float v3, v3, v16

    add-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, v1, Landroid/graphics/Point;->y:I

    goto :goto_127

    .line 267
    :cond_111
    iget v1, v0, Lcom/transsion/camera/feature/common/BaseUISpec;->mThumbBgHeight:I

    int-to-float v1, v1

    iget v2, v0, Lcom/transsion/camera/feature/common/BaseUISpec;->mVRatio:F

    mul-float/2addr v1, v2

    .line 268
    iget-object v3, v0, Lcom/transsion/camera/feature/common/BaseUISpec;->mStartPoint:Landroid/graphics/Point;

    iget v4, v0, Lcom/transsion/camera/feature/common/BaseUISpec;->mTopBarHeight:I

    int-to-float v4, v4

    iget v5, v0, Lcom/transsion/camera/feature/common/BaseUISpec;->mPreview4_3Height:I

    int-to-float v5, v5

    sub-float/2addr v5, v1

    div-float v5, v5, v16

    add-float/2addr v4, v5

    div-float/2addr v4, v2

    float-to-int v1, v4

    iput v1, v3, Landroid/graphics/Point;->y:I

    .line 272
    :goto_127
    iget-object v1, v0, Lcom/transsion/camera/feature/common/BaseUISpec;->mThumbnailStartPoint:Landroid/graphics/Point;

    iget-object v2, v0, Lcom/transsion/camera/feature/common/BaseUISpec;->mStartPoint:Landroid/graphics/Point;

    iget v3, v2, Landroid/graphics/Point;->x:I

    iput v3, v1, Landroid/graphics/Point;->x:I

    .line 273
    iget v2, v2, Landroid/graphics/Point;->y:I

    iput v2, v1, Landroid/graphics/Point;->y:I

    .line 275
    iget v1, v0, Lcom/transsion/camera/feature/common/BaseUISpec;->mThumbHeight:I

    int-to-float v1, v1

    mul-float/2addr v1, v15

    sub-float/2addr v1, v14

    float-to-int v1, v1

    iput v1, v0, Lcom/transsion/camera/feature/common/BaseUISpec;->mWarningOffset:I

    goto/16 :goto_45f

    .line 149
    :cond_13d
    iget v2, v0, Lcom/transsion/camera/feature/common/BaseUISpec;->mVRatio:F

    div-float v2, v2, v16

    iput v2, v0, Lcom/transsion/camera/feature/common/BaseUISpec;->mVRatio:F

    .line 150
    iget v2, v0, Lcom/transsion/camera/feature/common/BaseUISpec;->mHRatio:F

    div-float v2, v2, v16

    iput v2, v0, Lcom/transsion/camera/feature/common/BaseUISpec;->mHRatio:F

    .line 152
    sget v2, Lcom/transsion/camera/feature/panoramawideselfie/R$dimen;->panorama_fold_column_land_thumb_height:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    int-to-float v2, v2

    iget v3, v0, Lcom/transsion/camera/feature/common/BaseUISpec;->mHRatio:F

    div-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, v0, Lcom/transsion/camera/feature/common/BaseUISpec;->mThumbWidth:I

    .line 153
    iget v3, v0, Lcom/transsion/camera/feature/common/BaseUISpec;->mSurfaceHeight:I

    mul-int v4, v2, v3

    iget v5, v0, Lcom/transsion/camera/feature/common/BaseUISpec;->mSurfaceWidth:I

    div-int/2addr v4, v5

    iput v4, v0, Lcom/transsion/camera/feature/common/BaseUISpec;->mThumbHeight:I

    .line 154
    iput v3, v0, Lcom/transsion/camera/feature/common/BaseUISpec;->mThumbBgHeight:I

    int-to-float v2, v2

    .line 155
    sget v3, Lcom/transsion/camera/feature/panoramawideselfie/R$dimen;->panorama_fold_thumb_margin:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    mul-int/2addr v1, v13

    int-to-float v1, v1

    iget v3, v0, Lcom/transsion/camera/feature/common/BaseUISpec;->mHRatio:F

    div-float/2addr v1, v3

    add-float/2addr v2, v1

    float-to-int v1, v2

    iput v1, v0, Lcom/transsion/camera/feature/common/BaseUISpec;->mThumbBgWidth:I

    .line 157
    iget v2, v0, Lcom/transsion/camera/feature/common/BaseUISpec;->mThumbWidth:I

    int-to-float v3, v2

    const v4, 0x3feeb1c4    # 1.8648f

    div-float/2addr v3, v4

    float-to-int v3, v3

    .line 158
    iget v4, v0, Lcom/transsion/camera/feature/burstpmk/BaseBurstPMKUISpec;->mOriginalArrowWidth:I

    mul-int/2addr v4, v3

    iget v5, v0, Lcom/transsion/camera/feature/burstpmk/BaseBurstPMKUISpec;->mOriginalArrowHeight:I

    div-int/2addr v4, v5

    iput v4, v0, Lcom/transsion/camera/feature/common/BaseUISpec;->mArrowHeight:I

    .line 159
    iput v3, v0, Lcom/transsion/camera/feature/common/BaseUISpec;->mArrowWidth:I

    .line 161
    iget v3, v0, Lcom/transsion/camera/feature/burstpmk/BaseBurstPMKUISpec;->mOrientation:I

    const v4, 0x4016a7f0    # 2.354f

    if-ne v3, v12, :cond_19a

    .line 162
    iget-object v3, v0, Lcom/transsion/camera/feature/common/BaseUISpec;->mStartPoint:Landroid/graphics/Point;

    iget v5, v0, Lcom/transsion/camera/feature/common/BaseUISpec;->mSurfaceWidth:I

    int-to-float v5, v5

    iget v6, v0, Lcom/transsion/camera/feature/common/BaseUISpec;->mThumbHeight:I

    int-to-float v6, v6

    mul-float/2addr v6, v4

    sub-float/2addr v5, v6

    int-to-float v4, v2

    sub-float/2addr v5, v4

    float-to-int v4, v5

    iput v4, v3, Landroid/graphics/Point;->x:I

    goto :goto_1a3

    .line 164
    :cond_19a
    iget-object v3, v0, Lcom/transsion/camera/feature/common/BaseUISpec;->mStartPoint:Landroid/graphics/Point;

    iget v5, v0, Lcom/transsion/camera/feature/common/BaseUISpec;->mThumbHeight:I

    int-to-float v5, v5

    mul-float/2addr v5, v4

    float-to-int v4, v5

    iput v4, v3, Landroid/graphics/Point;->x:I

    .line 166
    :goto_1a3
    iget-object v3, v0, Lcom/transsion/camera/feature/common/BaseUISpec;->mStartPoint:Landroid/graphics/Point;

    iput v7, v3, Landroid/graphics/Point;->y:I

    .line 168
    iget-object v4, v0, Lcom/transsion/camera/feature/common/BaseUISpec;->mThumbnailStartPoint:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->x:I

    int-to-float v3, v3

    sub-int/2addr v1, v2

    int-to-float v1, v1

    div-float v1, v1, v16

    add-float/2addr v3, v1

    float-to-int v1, v3

    iput v1, v4, Landroid/graphics/Point;->x:I

    .line 169
    iput v7, v4, Landroid/graphics/Point;->y:I

    int-to-float v1, v2

    mul-float/2addr v1, v15

    sub-float/2addr v1, v14

    float-to-int v1, v1

    .line 171
    iput v1, v0, Lcom/transsion/camera/feature/common/BaseUISpec;->mWarningOffset:I

    goto/16 :goto_45f

    .line 175
    :cond_1be
    iget v1, v0, Lcom/transsion/camera/feature/common/BaseUISpec;->mVRatio:F

    div-float v1, v1, v16

    iput v1, v0, Lcom/transsion/camera/feature/common/BaseUISpec;->mVRatio:F

    .line 176
    iget v1, v0, Lcom/transsion/camera/feature/common/BaseUISpec;->mHRatio:F

    div-float v1, v1, v16

    iput v1, v0, Lcom/transsion/camera/feature/common/BaseUISpec;->mHRatio:F

    .line 178
    iget v1, v0, Lcom/transsion/camera/feature/burstpmk/BaseBurstPMKUISpec;->mOrientation:I

    invoke-virtual {v0, v1}, Lcom/transsion/camera/feature/burstpmk/BaseBurstPMKUISpec;->isLandscape(I)Z

    move-result v1

    const-string v2, "on"

    if-eqz v1, :cond_255

    .line 179
    iget v1, v0, Lcom/transsion/camera/feature/common/BaseUISpec;->mSurfaceWidth:I

    int-to-float v3, v1

    div-float v3, v3, p2

    float-to-int v3, v3

    iput v3, v0, Lcom/transsion/camera/feature/common/BaseUISpec;->mThumbWidth:I

    .line 180
    iget v4, v0, Lcom/transsion/camera/feature/common/BaseUISpec;->mSurfaceHeight:I

    mul-int/2addr v4, v3

    int-to-float v4, v4

    mul-float v4, v4, p1

    int-to-float v5, v1

    div-float/2addr v4, v5

    float-to-int v4, v4

    iput v4, v0, Lcom/transsion/camera/feature/common/BaseUISpec;->mThumbHeight:I

    .line 181
    iput v3, v0, Lcom/transsion/camera/feature/common/BaseUISpec;->mThumbBgWidth:I

    int-to-float v4, v4

    const/high16 v5, 0x40480000    # 3.125f

    mul-float/2addr v4, v5

    float-to-int v4, v4

    .line 182
    iput v4, v0, Lcom/transsion/camera/feature/common/BaseUISpec;->mThumbBgHeight:I

    int-to-float v4, v3

    const v5, 0x400ca8c1    # 2.1978f

    div-float/2addr v4, v5

    float-to-int v4, v4

    .line 185
    iput v4, v0, Lcom/transsion/camera/feature/common/BaseUISpec;->mArrowWidth:I

    .line 186
    iget v5, v0, Lcom/transsion/camera/feature/burstpmk/BaseBurstPMKUISpec;->mOriginalArrowWidth:I

    mul-int/2addr v4, v5

    int-to-float v4, v4

    mul-float v4, v4, p1

    iget v5, v0, Lcom/transsion/camera/feature/burstpmk/BaseBurstPMKUISpec;->mOriginalArrowHeight:I

    int-to-float v5, v5

    div-float/2addr v4, v5

    float-to-int v4, v4

    iput v4, v0, Lcom/transsion/camera/feature/common/BaseUISpec;->mArrowHeight:I

    .line 188
    iget v4, v0, Lcom/transsion/camera/feature/burstpmk/BaseBurstPMKUISpec;->mOrientation:I

    const/high16 v5, 0x40520000    # 3.28125f

    if-ne v4, v12, :cond_213

    .line 189
    iget-object v1, v0, Lcom/transsion/camera/feature/common/BaseUISpec;->mStartPoint:Landroid/graphics/Point;

    int-to-float v3, v3

    mul-float/2addr v3, v5

    float-to-int v3, v3

    iput v3, v1, Landroid/graphics/Point;->x:I

    goto :goto_21e

    .line 191
    :cond_213
    iget-object v4, v0, Lcom/transsion/camera/feature/common/BaseUISpec;->mStartPoint:Landroid/graphics/Point;

    int-to-float v1, v1

    int-to-float v6, v3

    mul-float/2addr v6, v5

    sub-float/2addr v1, v6

    int-to-float v3, v3

    sub-float/2addr v1, v3

    float-to-int v1, v1

    iput v1, v4, Landroid/graphics/Point;->x:I

    .line 194
    :goto_21e
    iget-object v1, v0, Lcom/transsion/camera/feature/common/BaseUISpec;->mSwitchPreviewValue:Ljava/lang/String;

    invoke-static {v2, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_233

    .line 195
    iget-object v1, v0, Lcom/transsion/camera/feature/common/BaseUISpec;->mStartPoint:Landroid/graphics/Point;

    iget v2, v0, Lcom/transsion/camera/feature/common/BaseUISpec;->mThumbHeight:I

    int-to-float v2, v2

    const v3, 0x3e6e978d    # 0.233f

    mul-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, v1, Landroid/graphics/Point;->y:I

    goto :goto_23f

    .line 197
    :cond_233
    iget-object v1, v0, Lcom/transsion/camera/feature/common/BaseUISpec;->mStartPoint:Landroid/graphics/Point;

    iget v2, v0, Lcom/transsion/camera/feature/common/BaseUISpec;->mThumbHeight:I

    int-to-float v2, v2

    const v3, 0x3fb1dd1a

    mul-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, v1, Landroid/graphics/Point;->y:I

    .line 200
    :goto_23f
    iget-object v1, v0, Lcom/transsion/camera/feature/common/BaseUISpec;->mThumbnailStartPoint:Landroid/graphics/Point;

    iget-object v2, v0, Lcom/transsion/camera/feature/common/BaseUISpec;->mStartPoint:Landroid/graphics/Point;

    iget v3, v2, Landroid/graphics/Point;->x:I

    iput v3, v1, Landroid/graphics/Point;->x:I

    .line 201
    iget v2, v2, Landroid/graphics/Point;->y:I

    iput v2, v1, Landroid/graphics/Point;->y:I

    .line 203
    iget v1, v0, Lcom/transsion/camera/feature/common/BaseUISpec;->mThumbWidth:I

    int-to-float v1, v1

    mul-float/2addr v1, v15

    sub-float/2addr v1, v14

    float-to-int v1, v1

    iput v1, v0, Lcom/transsion/camera/feature/common/BaseUISpec;->mWarningOffset:I

    goto/16 :goto_45f

    .line 205
    :cond_255
    iget v1, v0, Lcom/transsion/camera/feature/common/BaseUISpec;->mSurfaceHeight:I

    int-to-float v1, v1

    const v5, 0x410284b6

    div-float/2addr v1, v5

    float-to-int v1, v1

    iput v1, v0, Lcom/transsion/camera/feature/common/BaseUISpec;->mThumbHeight:I

    mul-int/2addr v4, v1

    .line 206
    div-int/2addr v4, v3

    iput v4, v0, Lcom/transsion/camera/feature/common/BaseUISpec;->mThumbWidth:I

    .line 207
    iput v1, v0, Lcom/transsion/camera/feature/common/BaseUISpec;->mThumbBgHeight:I

    .line 208
    iget v3, v0, Lcom/transsion/camera/feature/common/BaseUISpec;->mSurfaceWidth:I

    iput v3, v0, Lcom/transsion/camera/feature/common/BaseUISpec;->mThumbBgWidth:I

    int-to-float v1, v1

    const v3, 0x406d5cd1

    div-float/2addr v1, v3

    float-to-int v1, v1

    .line 211
    iget v3, v0, Lcom/transsion/camera/feature/burstpmk/BaseBurstPMKUISpec;->mOriginalArrowWidth:I

    mul-int/2addr v3, v1

    iget v4, v0, Lcom/transsion/camera/feature/burstpmk/BaseBurstPMKUISpec;->mOriginalArrowHeight:I

    div-int/2addr v3, v4

    iput v3, v0, Lcom/transsion/camera/feature/common/BaseUISpec;->mArrowWidth:I

    .line 212
    iput v1, v0, Lcom/transsion/camera/feature/common/BaseUISpec;->mArrowHeight:I

    .line 214
    iget-object v1, v0, Lcom/transsion/camera/feature/common/BaseUISpec;->mStartPoint:Landroid/graphics/Point;

    iput v7, v1, Landroid/graphics/Point;->x:I

    .line 215
    iget-object v1, v0, Lcom/transsion/camera/feature/common/BaseUISpec;->mSwitchPreviewValue:Ljava/lang/String;

    invoke-static {v2, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_292

    .line 216
    iget-object v1, v0, Lcom/transsion/camera/feature/common/BaseUISpec;->mStartPoint:Landroid/graphics/Point;

    iget v2, v0, Lcom/transsion/camera/feature/common/BaseUISpec;->mThumbHeight:I

    int-to-float v2, v2

    const v3, 0x3fbda123    # 1.48148f

    mul-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, v1, Landroid/graphics/Point;->y:I

    goto :goto_29e

    .line 218
    :cond_292
    iget-object v1, v0, Lcom/transsion/camera/feature/common/BaseUISpec;->mStartPoint:Landroid/graphics/Point;

    iget v2, v0, Lcom/transsion/camera/feature/common/BaseUISpec;->mThumbHeight:I

    int-to-float v2, v2

    const v3, 0x403c71b4

    mul-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, v1, Landroid/graphics/Point;->y:I

    .line 221
    :goto_29e
    iget-object v1, v0, Lcom/transsion/camera/feature/common/BaseUISpec;->mThumbnailStartPoint:Landroid/graphics/Point;

    iget-object v2, v0, Lcom/transsion/camera/feature/common/BaseUISpec;->mStartPoint:Landroid/graphics/Point;

    iget v3, v2, Landroid/graphics/Point;->x:I

    iput v3, v1, Landroid/graphics/Point;->x:I

    .line 222
    iget v2, v2, Landroid/graphics/Point;->y:I

    iput v2, v1, Landroid/graphics/Point;->y:I

    .line 224
    iget v1, v0, Lcom/transsion/camera/feature/common/BaseUISpec;->mThumbHeight:I

    int-to-float v1, v1

    mul-float/2addr v1, v15

    sub-float/2addr v1, v14

    float-to-int v1, v1

    iput v1, v0, Lcom/transsion/camera/feature/common/BaseUISpec;->mWarningOffset:I

    goto/16 :goto_45f

    .line 126
    :cond_2b4
    iget v2, v0, Lcom/transsion/camera/feature/common/BaseUISpec;->mVRatio:F

    const v5, 0x3ff9fbe7    # 1.953f

    div-float/2addr v2, v5

    iput v2, v0, Lcom/transsion/camera/feature/common/BaseUISpec;->mVRatio:F

    .line 127
    iget v2, v0, Lcom/transsion/camera/feature/common/BaseUISpec;->mHRatio:F

    div-float/2addr v2, v5

    iput v2, v0, Lcom/transsion/camera/feature/common/BaseUISpec;->mHRatio:F

    .line 129
    sget v2, Lcom/transsion/camera/feature/panoramawideselfie/R$dimen;->panorama_fold_column_thumb_height:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    int-to-float v2, v2

    iget v5, v0, Lcom/transsion/camera/feature/common/BaseUISpec;->mVRatio:F

    div-float/2addr v2, v5

    float-to-int v2, v2

    iput v2, v0, Lcom/transsion/camera/feature/common/BaseUISpec;->mThumbHeight:I

    mul-int/2addr v4, v2

    .line 130
    div-int/2addr v4, v3

    iput v4, v0, Lcom/transsion/camera/feature/common/BaseUISpec;->mThumbWidth:I

    int-to-float v2, v2

    .line 131
    sget v3, Lcom/transsion/camera/feature/panoramawideselfie/R$dimen;->panorama_fold_thumb_margin:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    mul-int/2addr v1, v13

    int-to-float v1, v1

    iget v3, v0, Lcom/transsion/camera/feature/common/BaseUISpec;->mVRatio:F

    div-float/2addr v1, v3

    add-float/2addr v2, v1

    float-to-int v1, v2

    iput v1, v0, Lcom/transsion/camera/feature/common/BaseUISpec;->mThumbBgHeight:I

    .line 132
    iget v2, v0, Lcom/transsion/camera/feature/common/BaseUISpec;->mSurfaceWidth:I

    iput v2, v0, Lcom/transsion/camera/feature/common/BaseUISpec;->mThumbBgWidth:I

    .line 134
    iget v2, v0, Lcom/transsion/camera/feature/common/BaseUISpec;->mThumbHeight:I

    int-to-float v3, v2

    div-float/2addr v3, v8

    float-to-int v3, v3

    .line 135
    iget v4, v0, Lcom/transsion/camera/feature/burstpmk/BaseBurstPMKUISpec;->mOriginalArrowWidth:I

    mul-int/2addr v4, v3

    iget v5, v0, Lcom/transsion/camera/feature/burstpmk/BaseBurstPMKUISpec;->mOriginalArrowHeight:I

    div-int/2addr v4, v5

    iput v4, v0, Lcom/transsion/camera/feature/common/BaseUISpec;->mArrowWidth:I

    .line 136
    iput v3, v0, Lcom/transsion/camera/feature/common/BaseUISpec;->mArrowHeight:I

    .line 138
    iget-object v3, v0, Lcom/transsion/camera/feature/common/BaseUISpec;->mStartPoint:Landroid/graphics/Point;

    iput v7, v3, Landroid/graphics/Point;->x:I

    int-to-float v4, v2

    const/high16 v5, 0x40200000    # 2.5f

    mul-float/2addr v4, v5

    float-to-int v4, v4

    .line 139
    iput v4, v3, Landroid/graphics/Point;->y:I

    .line 141
    iget-object v3, v0, Lcom/transsion/camera/feature/common/BaseUISpec;->mThumbnailStartPoint:Landroid/graphics/Point;

    iput v7, v3, Landroid/graphics/Point;->x:I

    int-to-float v4, v4

    sub-int/2addr v1, v2

    int-to-float v1, v1

    div-float v1, v1, v16

    add-float/2addr v4, v1

    float-to-int v1, v4

    .line 142
    iput v1, v3, Landroid/graphics/Point;->y:I

    int-to-float v1, v2

    mul-float/2addr v1, v15

    sub-float/2addr v1, v14

    float-to-int v1, v1

    .line 144
    iput v1, v0, Lcom/transsion/camera/feature/common/BaseUISpec;->mWarningOffset:I

    goto/16 :goto_45f

    .line 79
    :cond_315
    iget v2, v0, Lcom/transsion/camera/feature/burstpmk/BaseBurstPMKUISpec;->mOrientation:I

    invoke-virtual {v0, v2}, Lcom/transsion/camera/feature/burstpmk/BaseBurstPMKUISpec;->isLandscape(I)Z

    move-result v2

    if-eqz v2, :cond_3c9

    .line 80
    sget v2, Lcom/transsion/camera/feature/panoramawideselfie/R$dimen;->panorama_fold_thumb_width_land:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    int-to-float v2, v2

    iget v3, v0, Lcom/transsion/camera/feature/common/BaseUISpec;->mHRatio:F

    div-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, v0, Lcom/transsion/camera/feature/common/BaseUISpec;->mThumbWidth:I

    .line 81
    iget v3, v0, Lcom/transsion/camera/feature/common/BaseUISpec;->mSurfaceHeight:I

    mul-int/2addr v3, v2

    iget v4, v0, Lcom/transsion/camera/feature/common/BaseUISpec;->mSurfaceWidth:I

    div-int/2addr v3, v4

    iput v3, v0, Lcom/transsion/camera/feature/common/BaseUISpec;->mThumbHeight:I

    int-to-float v2, v2

    .line 82
    sget v3, Lcom/transsion/camera/feature/panoramawideselfie/R$dimen;->panorama_fold_thumb_margin:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    mul-int/2addr v3, v13

    int-to-float v3, v3

    iget v4, v0, Lcom/transsion/camera/feature/common/BaseUISpec;->mHRatio:F

    div-float/2addr v3, v4

    add-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, v0, Lcom/transsion/camera/feature/common/BaseUISpec;->mThumbBgWidth:I

    .line 83
    sget v2, Lcom/transsion/camera/feature/panoramawideselfie/R$dimen;->panorama_fold_thumb_bg_height_land:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    int-to-float v2, v2

    iget v3, v0, Lcom/transsion/camera/feature/common/BaseUISpec;->mVRatio:F

    div-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, v0, Lcom/transsion/camera/feature/common/BaseUISpec;->mThumbBgHeight:I

    .line 85
    iget v2, v0, Lcom/transsion/camera/feature/common/BaseUISpec;->mThumbWidth:I

    int-to-float v2, v2

    const v3, 0x3fed4fdf    # 1.854f

    div-float/2addr v2, v3

    float-to-int v2, v2

    .line 86
    iget v3, v0, Lcom/transsion/camera/feature/burstpmk/BaseBurstPMKUISpec;->mOriginalArrowWidth:I

    mul-int/2addr v3, v2

    iget v4, v0, Lcom/transsion/camera/feature/burstpmk/BaseBurstPMKUISpec;->mOriginalArrowHeight:I

    div-int/2addr v3, v4

    iput v3, v0, Lcom/transsion/camera/feature/common/BaseUISpec;->mArrowHeight:I

    .line 87
    iput v2, v0, Lcom/transsion/camera/feature/common/BaseUISpec;->mArrowWidth:I

    .line 89
    iget v2, v0, Lcom/transsion/camera/feature/burstpmk/BaseBurstPMKUISpec;->mOrientation:I

    if-ne v2, v12, :cond_384

    .line 90
    iget-object v2, v0, Lcom/transsion/camera/feature/common/BaseUISpec;->mStartPoint:Landroid/graphics/Point;

    sget v3, Lcom/transsion/camera/feature/panoramawideselfie/R$dimen;->panorama_fold_thumb_bg_margin_start_270:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    int-to-float v3, v3

    iget v4, v0, Lcom/transsion/camera/feature/common/BaseUISpec;->mHRatio:F

    div-float/2addr v3, v4

    float-to-int v3, v3

    iput v3, v2, Landroid/graphics/Point;->x:I

    .line 91
    iget-object v2, v0, Lcom/transsion/camera/feature/common/BaseUISpec;->mStartPoint:Landroid/graphics/Point;

    sget v3, Lcom/transsion/camera/feature/panoramawideselfie/R$dimen;->panorama_fold_thumb_bg_margin_land:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    iget v3, v0, Lcom/transsion/camera/feature/common/BaseUISpec;->mVRatio:F

    div-float/2addr v1, v3

    float-to-int v1, v1

    iput v1, v2, Landroid/graphics/Point;->y:I

    goto :goto_3aa

    .line 93
    :cond_384
    iget-object v2, v0, Lcom/transsion/camera/feature/common/BaseUISpec;->mStartPoint:Landroid/graphics/Point;

    sget v3, Lcom/transsion/camera/feature/panoramawideselfie/R$dimen;->panorama_fold_thumb_bg_margin_start_90:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    int-to-float v3, v3

    iget v4, v0, Lcom/transsion/camera/feature/common/BaseUISpec;->mHRatio:F

    div-float/2addr v3, v4

    float-to-int v3, v3

    iput v3, v2, Landroid/graphics/Point;->x:I

    .line 94
    iget-object v2, v0, Lcom/transsion/camera/feature/common/BaseUISpec;->mStartPoint:Landroid/graphics/Point;

    iget v3, v0, Lcom/transsion/camera/feature/common/BaseUISpec;->mSurfaceHeight:I

    int-to-float v3, v3

    sget v4, Lcom/transsion/camera/feature/panoramawideselfie/R$dimen;->panorama_fold_thumb_bg_margin_land:I

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    iget v4, v0, Lcom/transsion/camera/feature/common/BaseUISpec;->mVRatio:F

    div-float/2addr v1, v4

    sub-float/2addr v3, v1

    iget v1, v0, Lcom/transsion/camera/feature/common/BaseUISpec;->mThumbBgHeight:I

    int-to-float v1, v1

    sub-float/2addr v3, v1

    float-to-int v1, v3

    iput v1, v2, Landroid/graphics/Point;->y:I

    .line 97
    :goto_3aa
    iget-object v1, v0, Lcom/transsion/camera/feature/common/BaseUISpec;->mThumbnailStartPoint:Landroid/graphics/Point;

    iget-object v2, v0, Lcom/transsion/camera/feature/common/BaseUISpec;->mStartPoint:Landroid/graphics/Point;

    iget v3, v2, Landroid/graphics/Point;->x:I

    int-to-float v3, v3

    iget v4, v0, Lcom/transsion/camera/feature/common/BaseUISpec;->mThumbBgWidth:I

    iget v5, v0, Lcom/transsion/camera/feature/common/BaseUISpec;->mThumbWidth:I

    sub-int/2addr v4, v5

    int-to-float v4, v4

    div-float v4, v4, v16

    add-float/2addr v3, v4

    float-to-int v3, v3

    iput v3, v1, Landroid/graphics/Point;->x:I

    .line 98
    iget v2, v2, Landroid/graphics/Point;->y:I

    iput v2, v1, Landroid/graphics/Point;->y:I

    int-to-float v1, v5

    mul-float/2addr v1, v15

    sub-float/2addr v1, v14

    float-to-int v1, v1

    .line 100
    iput v1, v0, Lcom/transsion/camera/feature/common/BaseUISpec;->mWarningOffset:I

    goto/16 :goto_45f

    .line 102
    :cond_3c9
    sget v2, Lcom/transsion/camera/feature/panoramawideselfie/R$dimen;->panorama_fold_thumb_height:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    int-to-float v2, v2

    iget v5, v0, Lcom/transsion/camera/feature/common/BaseUISpec;->mVRatio:F

    div-float/2addr v2, v5

    float-to-int v2, v2

    iput v2, v0, Lcom/transsion/camera/feature/common/BaseUISpec;->mThumbHeight:I

    mul-int/2addr v4, v2

    .line 103
    div-int/2addr v4, v3

    iput v4, v0, Lcom/transsion/camera/feature/common/BaseUISpec;->mThumbWidth:I

    int-to-float v2, v2

    .line 104
    sget v3, Lcom/transsion/camera/feature/panoramawideselfie/R$dimen;->panorama_fold_thumb_margin:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    mul-int/2addr v3, v13

    int-to-float v3, v3

    iget v4, v0, Lcom/transsion/camera/feature/common/BaseUISpec;->mVRatio:F

    div-float/2addr v3, v4

    add-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, v0, Lcom/transsion/camera/feature/common/BaseUISpec;->mThumbBgHeight:I

    .line 105
    sget v2, Lcom/transsion/camera/feature/panoramawideselfie/R$dimen;->panorama_fold_thumb_bg_width:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    int-to-float v2, v2

    iget v3, v0, Lcom/transsion/camera/feature/common/BaseUISpec;->mHRatio:F

    div-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, v0, Lcom/transsion/camera/feature/common/BaseUISpec;->mThumbBgWidth:I

    .line 107
    iget v2, v0, Lcom/transsion/camera/feature/common/BaseUISpec;->mThumbHeight:I

    int-to-float v2, v2

    div-float/2addr v2, v8

    float-to-int v2, v2

    .line 108
    iget v3, v0, Lcom/transsion/camera/feature/burstpmk/BaseBurstPMKUISpec;->mOriginalArrowWidth:I

    mul-int/2addr v3, v2

    iget v4, v0, Lcom/transsion/camera/feature/burstpmk/BaseBurstPMKUISpec;->mOriginalArrowHeight:I

    div-int/2addr v3, v4

    iput v3, v0, Lcom/transsion/camera/feature/common/BaseUISpec;->mArrowWidth:I

    .line 109
    iput v2, v0, Lcom/transsion/camera/feature/common/BaseUISpec;->mArrowHeight:I

    .line 111
    iget v2, v0, Lcom/transsion/camera/feature/burstpmk/BaseBurstPMKUISpec;->mOrientation:I

    const/16 v3, 0xb4

    if-ne v2, v3, :cond_424

    .line 112
    iget-object v2, v0, Lcom/transsion/camera/feature/common/BaseUISpec;->mStartPoint:Landroid/graphics/Point;

    iget v3, v0, Lcom/transsion/camera/feature/common/BaseUISpec;->mSurfaceWidth:I

    int-to-float v3, v3

    sget v4, Lcom/transsion/camera/feature/panoramawideselfie/R$dimen;->panorama_fold_thumb_bg_margin_start:I

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    int-to-float v4, v4

    iget v5, v0, Lcom/transsion/camera/feature/common/BaseUISpec;->mHRatio:F

    div-float/2addr v4, v5

    sub-float/2addr v3, v4

    iget v4, v0, Lcom/transsion/camera/feature/common/BaseUISpec;->mThumbBgWidth:I

    int-to-float v4, v4

    sub-float/2addr v3, v4

    float-to-int v3, v3

    iput v3, v2, Landroid/graphics/Point;->x:I

    goto :goto_433

    .line 114
    :cond_424
    iget-object v2, v0, Lcom/transsion/camera/feature/common/BaseUISpec;->mStartPoint:Landroid/graphics/Point;

    sget v3, Lcom/transsion/camera/feature/panoramawideselfie/R$dimen;->panorama_fold_thumb_bg_margin_start:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    int-to-float v3, v3

    iget v4, v0, Lcom/transsion/camera/feature/common/BaseUISpec;->mHRatio:F

    div-float/2addr v3, v4

    float-to-int v3, v3

    iput v3, v2, Landroid/graphics/Point;->x:I

    .line 116
    :goto_433
    iget-object v2, v0, Lcom/transsion/camera/feature/common/BaseUISpec;->mStartPoint:Landroid/graphics/Point;

    sget v3, Lcom/transsion/camera/feature/panoramawideselfie/R$dimen;->panorama_fold_thumb_bg_margin_top:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    iget v3, v0, Lcom/transsion/camera/feature/common/BaseUISpec;->mVRatio:F

    div-float/2addr v1, v3

    float-to-int v1, v1

    iput v1, v2, Landroid/graphics/Point;->y:I

    .line 118
    iget-object v1, v0, Lcom/transsion/camera/feature/common/BaseUISpec;->mThumbnailStartPoint:Landroid/graphics/Point;

    iget-object v2, v0, Lcom/transsion/camera/feature/common/BaseUISpec;->mStartPoint:Landroid/graphics/Point;

    iget v3, v2, Landroid/graphics/Point;->x:I

    iput v3, v1, Landroid/graphics/Point;->x:I

    .line 119
    iget v2, v2, Landroid/graphics/Point;->y:I

    int-to-float v2, v2

    iget v3, v0, Lcom/transsion/camera/feature/common/BaseUISpec;->mThumbBgHeight:I

    iget v4, v0, Lcom/transsion/camera/feature/common/BaseUISpec;->mThumbHeight:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    div-float v3, v3, v16

    add-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, v1, Landroid/graphics/Point;->y:I

    int-to-float v1, v4

    mul-float/2addr v1, v15

    sub-float/2addr v1, v14

    float-to-int v1, v1

    .line 121
    iput v1, v0, Lcom/transsion/camera/feature/common/BaseUISpec;->mWarningOffset:I

    .line 280
    :goto_45f
    sget-object v1, Lcom/transsion/camera/feature/burstpmk/BaseBurstPMKUISpec;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "calculateThumbnailSize ScreenFormType: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/transsion/camera/feature/common/BaseUISpec;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {v3}, Lcom/transsion/camera/app/common/IAppUI;->getScreenFormType()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", mThumbWidth: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v0, Lcom/transsion/camera/feature/common/BaseUISpec;->mThumbWidth:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", mThumbHeight: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v0, Lcom/transsion/camera/feature/common/BaseUISpec;->mThumbHeight:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", mThumbBgWidth: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v0, Lcom/transsion/camera/feature/common/BaseUISpec;->mThumbBgWidth:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", mThumbBgHeight: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v0, Lcom/transsion/camera/feature/common/BaseUISpec;->mThumbBgHeight:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", mArrowWidth: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v0, Lcom/transsion/camera/feature/common/BaseUISpec;->mArrowWidth:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", mArrowHeight: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v0, Lcom/transsion/camera/feature/common/BaseUISpec;->mArrowHeight:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", mStartPoint: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/transsion/camera/feature/common/BaseUISpec;->mStartPoint:Landroid/graphics/Point;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", mThumbnailStartPoint: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/transsion/camera/feature/common/BaseUISpec;->mThumbnailStartPoint:Landroid/graphics/Point;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", mWarningOffset: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, v0, Lcom/transsion/camera/feature/common/BaseUISpec;->mWarningOffset:I

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method protected isLandscape(I)Z
    .registers 2

    .line 289
    iget-boolean p0, p0, Lcom/transsion/camera/feature/burstpmk/BaseBurstPMKUISpec;->mSupportLandscape:Z

    if-eqz p0, :cond_f

    const/4 p0, -0x1

    if-eq p1, p0, :cond_f

    if-eqz p1, :cond_f

    const/16 p0, 0xb4

    if-eq p1, p0, :cond_f

    const/4 p0, 0x1

    return p0

    :cond_f
    const/4 p0, 0x0

    return p0
.end method

.method public onOrientationChanged(I)V
    .registers 2

    .line 51
    iput p1, p0, Lcom/transsion/camera/feature/burstpmk/BaseBurstPMKUISpec;->mOrientation:I

    return-void
.end method
