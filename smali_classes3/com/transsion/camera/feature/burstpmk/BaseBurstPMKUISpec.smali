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

    .line 33
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "BaseBurstPMKUISpec"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/feature/burstpmk/BaseBurstPMKUISpec;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method constructor <init>(Lcom/transsion/camera/app/common/IAppUI;)V
    .registers 3

    .line 43
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/common/BaseUISpec;-><init>(Lcom/transsion/camera/app/common/IAppUI;)V

    .line 44
    iget-object p1, p0, Lcom/transsion/camera/feature/common/BaseUISpec;->mResources:Landroid/content/res/Resources;

    sget v0, Lcom/transsion/camera/feature/panoramawideselfie/R$bool;->panorama_support_landscape:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p1

    iput-boolean p1, p0, Lcom/transsion/camera/feature/burstpmk/BaseBurstPMKUISpec;->mSupportLandscape:Z

    .line 45
    iget-object p1, p0, Lcom/transsion/camera/feature/common/BaseUISpec;->mResources:Landroid/content/res/Resources;

    sget v0, Lcom/transsion/camera/feature/panoramawideselfie/R$dimen;->arrow_width:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/transsion/camera/feature/burstpmk/BaseBurstPMKUISpec;->mOriginalArrowWidth:I

    .line 46
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

    .line 55
    sget-object v0, Lcom/transsion/camera/feature/burstpmk/BaseBurstPMKUISpec;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "calculateThumbnailSize previewSize is null!"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 59
    :cond_c
    invoke-virtual/range {p2 .. p2}, Landroid/util/Size;->getWidth()I

    move-result v1

    .line 60
    invoke-virtual/range {p2 .. p2}, Landroid/util/Size;->getHeight()I

    move-result v2

    .line 61
    invoke-virtual/range {p1 .. p1}, Landroid/util/Size;->getWidth()I

    move-result v3

    .line 62
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

    .line 67
    iput v1, v0, Lcom/transsion/camera/feature/common/BaseUISpec;->mVRatio:F

    int-to-float v1, v2

    mul-float/2addr v1, v7

    int-to-float v2, v4

    div-float/2addr v1, v2

    .line 68
    iput v1, v0, Lcom/transsion/camera/feature/common/BaseUISpec;->mHRatio:F

    .line 70
    iput v4, v0, Lcom/transsion/camera/feature/common/BaseUISpec;->mSurfaceWidth:I

    .line 71
    iput v3, v0, Lcom/transsion/camera/feature/common/BaseUISpec;->mSurfaceHeight:I

    .line 74
    iget-object v1, v0, Lcom/transsion/camera/feature/common/BaseUISpec;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 76
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

    if-eq v2, v11, :cond_309

    move/from16 p1, v7

    const/4 v7, 0x0

    if-eq v2, v13, :cond_2a8

    const/high16 p2, 0x40b40000    # 5.625f

    const/4 v8, 0x3

    if-eq v2, v8, :cond_1b2

    move/from16 v17, v8

    const/4 v8, 0x4

    if-eq v2, v8, :cond_131

    const/4 v8, 0x5

    if-eq v2, v8, :cond_131

    .line 229
    iget v1, v0, Lcom/transsion/camera/feature/burstpmk/BaseBurstPMKUISpec;->mOrientation:I

    invoke-virtual {v0, v1}, Lcom/transsion/camera/feature/burstpmk/BaseBurstPMKUISpec;->isLandscape(I)Z

    move-result v1

    if-eqz v1, :cond_bc

    .line 230
    iget v1, v0, Lcom/transsion/camera/feature/common/BaseUISpec;->mSurfaceWidth:I

    int-to-float v2, v1

    div-float v2, v2, p2

    float-to-int v2, v2

    iput v2, v0, Lcom/transsion/camera/feature/common/BaseUISpec;->mThumbWidth:I

    .line 231
    iget v3, v0, Lcom/transsion/camera/feature/common/BaseUISpec;->mSurfaceHeight:I

    mul-int v4, v2, v3

    div-int/2addr v4, v1

    iput v4, v0, Lcom/transsion/camera/feature/common/BaseUISpec;->mThumbHeight:I

    .line 232
    iput v2, v0, Lcom/transsion/camera/feature/common/BaseUISpec;->mThumbBgWidth:I

    mul-int/lit8 v4, v4, 0x3

    .line 233
    iput v4, v0, Lcom/transsion/camera/feature/common/BaseUISpec;->mThumbBgHeight:I

    int-to-float v4, v2

    const v5, 0x400a0c4a    # 2.157f

    div-float/2addr v4, v5

    float-to-int v4, v4

    .line 236
    iget v5, v0, Lcom/transsion/camera/feature/burstpmk/BaseBurstPMKUISpec;->mOriginalArrowWidth:I

    mul-int/2addr v5, v4

    iget v6, v0, Lcom/transsion/camera/feature/burstpmk/BaseBurstPMKUISpec;->mOriginalArrowHeight:I

    div-int/2addr v5, v6

    iput v5, v0, Lcom/transsion/camera/feature/common/BaseUISpec;->mArrowHeight:I

    .line 237
    iput v4, v0, Lcom/transsion/camera/feature/common/BaseUISpec;->mArrowWidth:I

    .line 239
    iget v4, v0, Lcom/transsion/camera/feature/burstpmk/BaseBurstPMKUISpec;->mOrientation:I

    if-ne v4, v12, :cond_9d

    .line 240
    iget-object v4, v0, Lcom/transsion/camera/feature/common/BaseUISpec;->mStartPoint:Landroid/graphics/Point;

    shr-int/2addr v1, v11

    iput v1, v4, Landroid/graphics/Point;->x:I

    goto :goto_a3

    .line 242
    :cond_9d
    iget-object v4, v0, Lcom/transsion/camera/feature/common/BaseUISpec;->mStartPoint:Landroid/graphics/Point;

    shr-int/2addr v1, v11

    sub-int/2addr v1, v2

    iput v1, v4, Landroid/graphics/Point;->x:I

    .line 244
    :goto_a3
    iget-object v1, v0, Lcom/transsion/camera/feature/common/BaseUISpec;->mStartPoint:Landroid/graphics/Point;

    int-to-float v3, v3

    const/high16 v4, 0x3e000000    # 0.125f

    mul-float/2addr v3, v4

    float-to-int v3, v3

    iput v3, v1, Landroid/graphics/Point;->y:I

    .line 246
    iget-object v4, v0, Lcom/transsion/camera/feature/common/BaseUISpec;->mThumbnailStartPoint:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    iput v1, v4, Landroid/graphics/Point;->x:I

    .line 247
    iput v3, v4, Landroid/graphics/Point;->y:I

    int-to-float v1, v2

    mul-float/2addr v1, v15

    sub-float/2addr v1, v14

    float-to-int v1, v1

    .line 249
    iput v1, v0, Lcom/transsion/camera/feature/common/BaseUISpec;->mWarningOffset:I

    goto/16 :goto_453

    .line 251
    :cond_bc
    iget v1, v0, Lcom/transsion/camera/feature/common/BaseUISpec;->mSurfaceHeight:I

    int-to-float v1, v1

    mul-float v1, v1, p1

    const/high16 v2, 0x41000000    # 8.0f

    div-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, v0, Lcom/transsion/camera/feature/common/BaseUISpec;->mThumbHeight:I

    mul-int/2addr v4, v1

    .line 252
    div-int/2addr v4, v3

    iput v4, v0, Lcom/transsion/camera/feature/common/BaseUISpec;->mThumbWidth:I

    .line 253
    iput v1, v0, Lcom/transsion/camera/feature/common/BaseUISpec;->mThumbBgHeight:I

    .line 254
    iget v2, v0, Lcom/transsion/camera/feature/common/BaseUISpec;->mSurfaceWidth:I

    iput v2, v0, Lcom/transsion/camera/feature/common/BaseUISpec;->mThumbBgWidth:I

    int-to-float v1, v1

    const v2, 0x4049999a    # 3.15f

    div-float/2addr v1, v2

    float-to-int v1, v1

    .line 257
    iget v2, v0, Lcom/transsion/camera/feature/burstpmk/BaseBurstPMKUISpec;->mOriginalArrowWidth:I

    mul-int/2addr v2, v1

    iget v3, v0, Lcom/transsion/camera/feature/burstpmk/BaseBurstPMKUISpec;->mOriginalArrowHeight:I

    div-int/2addr v2, v3

    iput v2, v0, Lcom/transsion/camera/feature/common/BaseUISpec;->mArrowWidth:I

    .line 258
    iput v1, v0, Lcom/transsion/camera/feature/common/BaseUISpec;->mArrowHeight:I

    .line 260
    iget-object v1, v0, Lcom/transsion/camera/feature/common/BaseUISpec;->mStartPoint:Landroid/graphics/Point;

    iput v7, v1, Landroid/graphics/Point;->x:I

    sub-double/2addr v5, v9

    .line 261
    invoke-static {v5, v6}, Ljava/lang/Math;->abs(D)D

    move-result-wide v1

    const-wide v3, 0x3f947ae147ae147bL    # 0.02

    cmpl-double v1, v1, v3

    if-lez v1, :cond_105

    .line 262
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

    goto :goto_11b

    .line 265
    :cond_105
    iget v1, v0, Lcom/transsion/camera/feature/common/BaseUISpec;->mThumbBgHeight:I

    int-to-float v1, v1

    iget v2, v0, Lcom/transsion/camera/feature/common/BaseUISpec;->mVRatio:F

    mul-float/2addr v1, v2

    .line 266
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

    .line 270
    :goto_11b
    iget-object v1, v0, Lcom/transsion/camera/feature/common/BaseUISpec;->mThumbnailStartPoint:Landroid/graphics/Point;

    iget-object v2, v0, Lcom/transsion/camera/feature/common/BaseUISpec;->mStartPoint:Landroid/graphics/Point;

    iget v3, v2, Landroid/graphics/Point;->x:I

    iput v3, v1, Landroid/graphics/Point;->x:I

    .line 271
    iget v2, v2, Landroid/graphics/Point;->y:I

    iput v2, v1, Landroid/graphics/Point;->y:I

    .line 273
    iget v1, v0, Lcom/transsion/camera/feature/common/BaseUISpec;->mThumbHeight:I

    int-to-float v1, v1

    mul-float/2addr v1, v15

    sub-float/2addr v1, v14

    float-to-int v1, v1

    iput v1, v0, Lcom/transsion/camera/feature/common/BaseUISpec;->mWarningOffset:I

    goto/16 :goto_453

    .line 148
    :cond_131
    iget v2, v0, Lcom/transsion/camera/feature/common/BaseUISpec;->mVRatio:F

    div-float v2, v2, v16

    iput v2, v0, Lcom/transsion/camera/feature/common/BaseUISpec;->mVRatio:F

    .line 149
    iget v2, v0, Lcom/transsion/camera/feature/common/BaseUISpec;->mHRatio:F

    div-float v2, v2, v16

    iput v2, v0, Lcom/transsion/camera/feature/common/BaseUISpec;->mHRatio:F

    .line 151
    sget v2, Lcom/transsion/camera/feature/panoramawideselfie/R$dimen;->panorama_fold_column_land_thumb_height:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    int-to-float v2, v2

    iget v3, v0, Lcom/transsion/camera/feature/common/BaseUISpec;->mHRatio:F

    div-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, v0, Lcom/transsion/camera/feature/common/BaseUISpec;->mThumbWidth:I

    .line 152
    iget v3, v0, Lcom/transsion/camera/feature/common/BaseUISpec;->mSurfaceHeight:I

    mul-int v4, v2, v3

    iget v5, v0, Lcom/transsion/camera/feature/common/BaseUISpec;->mSurfaceWidth:I

    div-int/2addr v4, v5

    iput v4, v0, Lcom/transsion/camera/feature/common/BaseUISpec;->mThumbHeight:I

    .line 153
    iput v3, v0, Lcom/transsion/camera/feature/common/BaseUISpec;->mThumbBgHeight:I

    int-to-float v2, v2

    .line 154
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

    .line 156
    iget v2, v0, Lcom/transsion/camera/feature/common/BaseUISpec;->mThumbWidth:I

    int-to-float v3, v2

    const v4, 0x3feeb1c4    # 1.8648f

    div-float/2addr v3, v4

    float-to-int v3, v3

    .line 157
    iget v4, v0, Lcom/transsion/camera/feature/burstpmk/BaseBurstPMKUISpec;->mOriginalArrowWidth:I

    mul-int/2addr v4, v3

    iget v5, v0, Lcom/transsion/camera/feature/burstpmk/BaseBurstPMKUISpec;->mOriginalArrowHeight:I

    div-int/2addr v4, v5

    iput v4, v0, Lcom/transsion/camera/feature/common/BaseUISpec;->mArrowHeight:I

    .line 158
    iput v3, v0, Lcom/transsion/camera/feature/common/BaseUISpec;->mArrowWidth:I

    .line 160
    iget v3, v0, Lcom/transsion/camera/feature/burstpmk/BaseBurstPMKUISpec;->mOrientation:I

    const v4, 0x4016a7f0    # 2.354f

    if-ne v3, v12, :cond_18e

    .line 161
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

    goto :goto_197

    .line 163
    :cond_18e
    iget-object v3, v0, Lcom/transsion/camera/feature/common/BaseUISpec;->mStartPoint:Landroid/graphics/Point;

    iget v5, v0, Lcom/transsion/camera/feature/common/BaseUISpec;->mThumbHeight:I

    int-to-float v5, v5

    mul-float/2addr v5, v4

    float-to-int v4, v5

    iput v4, v3, Landroid/graphics/Point;->x:I

    .line 165
    :goto_197
    iget-object v3, v0, Lcom/transsion/camera/feature/common/BaseUISpec;->mStartPoint:Landroid/graphics/Point;

    iput v7, v3, Landroid/graphics/Point;->y:I

    .line 167
    iget-object v4, v0, Lcom/transsion/camera/feature/common/BaseUISpec;->mThumbnailStartPoint:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->x:I

    int-to-float v3, v3

    sub-int/2addr v1, v2

    int-to-float v1, v1

    div-float v1, v1, v16

    add-float/2addr v3, v1

    float-to-int v1, v3

    iput v1, v4, Landroid/graphics/Point;->x:I

    .line 168
    iput v7, v4, Landroid/graphics/Point;->y:I

    int-to-float v1, v2

    mul-float/2addr v1, v15

    sub-float/2addr v1, v14

    float-to-int v1, v1

    .line 170
    iput v1, v0, Lcom/transsion/camera/feature/common/BaseUISpec;->mWarningOffset:I

    goto/16 :goto_453

    .line 174
    :cond_1b2
    iget v1, v0, Lcom/transsion/camera/feature/common/BaseUISpec;->mVRatio:F

    div-float v1, v1, v16

    iput v1, v0, Lcom/transsion/camera/feature/common/BaseUISpec;->mVRatio:F

    .line 175
    iget v1, v0, Lcom/transsion/camera/feature/common/BaseUISpec;->mHRatio:F

    div-float v1, v1, v16

    iput v1, v0, Lcom/transsion/camera/feature/common/BaseUISpec;->mHRatio:F

    .line 177
    iget v1, v0, Lcom/transsion/camera/feature/burstpmk/BaseBurstPMKUISpec;->mOrientation:I

    invoke-virtual {v0, v1}, Lcom/transsion/camera/feature/burstpmk/BaseBurstPMKUISpec;->isLandscape(I)Z

    move-result v1

    const-string v2, "on"

    if-eqz v1, :cond_249

    .line 178
    iget v1, v0, Lcom/transsion/camera/feature/common/BaseUISpec;->mSurfaceWidth:I

    int-to-float v3, v1

    div-float v3, v3, p2

    float-to-int v3, v3

    iput v3, v0, Lcom/transsion/camera/feature/common/BaseUISpec;->mThumbWidth:I

    .line 179
    iget v4, v0, Lcom/transsion/camera/feature/common/BaseUISpec;->mSurfaceHeight:I

    mul-int/2addr v4, v3

    int-to-float v4, v4

    mul-float v4, v4, p1

    int-to-float v5, v1

    div-float/2addr v4, v5

    float-to-int v4, v4

    iput v4, v0, Lcom/transsion/camera/feature/common/BaseUISpec;->mThumbHeight:I

    .line 180
    iput v3, v0, Lcom/transsion/camera/feature/common/BaseUISpec;->mThumbBgWidth:I

    int-to-float v4, v4

    const/high16 v5, 0x40480000    # 3.125f

    mul-float/2addr v4, v5

    float-to-int v4, v4

    .line 181
    iput v4, v0, Lcom/transsion/camera/feature/common/BaseUISpec;->mThumbBgHeight:I

    int-to-float v4, v3

    const v5, 0x400ca8c1    # 2.1978f

    div-float/2addr v4, v5

    float-to-int v4, v4

    .line 184
    iput v4, v0, Lcom/transsion/camera/feature/common/BaseUISpec;->mArrowWidth:I

    .line 185
    iget v5, v0, Lcom/transsion/camera/feature/burstpmk/BaseBurstPMKUISpec;->mOriginalArrowWidth:I

    mul-int/2addr v4, v5

    int-to-float v4, v4

    mul-float v4, v4, p1

    iget v5, v0, Lcom/transsion/camera/feature/burstpmk/BaseBurstPMKUISpec;->mOriginalArrowHeight:I

    int-to-float v5, v5

    div-float/2addr v4, v5

    float-to-int v4, v4

    iput v4, v0, Lcom/transsion/camera/feature/common/BaseUISpec;->mArrowHeight:I

    .line 187
    iget v4, v0, Lcom/transsion/camera/feature/burstpmk/BaseBurstPMKUISpec;->mOrientation:I

    const/high16 v5, 0x40520000    # 3.28125f

    if-ne v4, v12, :cond_207

    .line 188
    iget-object v1, v0, Lcom/transsion/camera/feature/common/BaseUISpec;->mStartPoint:Landroid/graphics/Point;

    int-to-float v3, v3

    mul-float/2addr v3, v5

    float-to-int v3, v3

    iput v3, v1, Landroid/graphics/Point;->x:I

    goto :goto_212

    .line 190
    :cond_207
    iget-object v4, v0, Lcom/transsion/camera/feature/common/BaseUISpec;->mStartPoint:Landroid/graphics/Point;

    int-to-float v1, v1

    int-to-float v6, v3

    mul-float/2addr v6, v5

    sub-float/2addr v1, v6

    int-to-float v3, v3

    sub-float/2addr v1, v3

    float-to-int v1, v1

    iput v1, v4, Landroid/graphics/Point;->x:I

    .line 193
    :goto_212
    iget-object v1, v0, Lcom/transsion/camera/feature/common/BaseUISpec;->mSwitchPreviewValue:Ljava/lang/String;

    invoke-static {v2, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_227

    .line 194
    iget-object v1, v0, Lcom/transsion/camera/feature/common/BaseUISpec;->mStartPoint:Landroid/graphics/Point;

    iget v2, v0, Lcom/transsion/camera/feature/common/BaseUISpec;->mThumbHeight:I

    int-to-float v2, v2

    const v3, 0x3e6e978d    # 0.233f

    mul-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, v1, Landroid/graphics/Point;->y:I

    goto :goto_233

    .line 196
    :cond_227
    iget-object v1, v0, Lcom/transsion/camera/feature/common/BaseUISpec;->mStartPoint:Landroid/graphics/Point;

    iget v2, v0, Lcom/transsion/camera/feature/common/BaseUISpec;->mThumbHeight:I

    int-to-float v2, v2

    const v3, 0x3fb1dd1a

    mul-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, v1, Landroid/graphics/Point;->y:I

    .line 199
    :goto_233
    iget-object v1, v0, Lcom/transsion/camera/feature/common/BaseUISpec;->mThumbnailStartPoint:Landroid/graphics/Point;

    iget-object v2, v0, Lcom/transsion/camera/feature/common/BaseUISpec;->mStartPoint:Landroid/graphics/Point;

    iget v3, v2, Landroid/graphics/Point;->x:I

    iput v3, v1, Landroid/graphics/Point;->x:I

    .line 200
    iget v2, v2, Landroid/graphics/Point;->y:I

    iput v2, v1, Landroid/graphics/Point;->y:I

    .line 202
    iget v1, v0, Lcom/transsion/camera/feature/common/BaseUISpec;->mThumbWidth:I

    int-to-float v1, v1

    mul-float/2addr v1, v15

    sub-float/2addr v1, v14

    float-to-int v1, v1

    iput v1, v0, Lcom/transsion/camera/feature/common/BaseUISpec;->mWarningOffset:I

    goto/16 :goto_453

    .line 204
    :cond_249
    iget v1, v0, Lcom/transsion/camera/feature/common/BaseUISpec;->mSurfaceHeight:I

    int-to-float v1, v1

    const v5, 0x410284b6

    div-float/2addr v1, v5

    float-to-int v1, v1

    iput v1, v0, Lcom/transsion/camera/feature/common/BaseUISpec;->mThumbHeight:I

    mul-int/2addr v4, v1

    .line 205
    div-int/2addr v4, v3

    iput v4, v0, Lcom/transsion/camera/feature/common/BaseUISpec;->mThumbWidth:I

    .line 206
    iput v1, v0, Lcom/transsion/camera/feature/common/BaseUISpec;->mThumbBgHeight:I

    .line 207
    iget v3, v0, Lcom/transsion/camera/feature/common/BaseUISpec;->mSurfaceWidth:I

    iput v3, v0, Lcom/transsion/camera/feature/common/BaseUISpec;->mThumbBgWidth:I

    int-to-float v1, v1

    const v3, 0x406d5cd1

    div-float/2addr v1, v3

    float-to-int v1, v1

    .line 210
    iget v3, v0, Lcom/transsion/camera/feature/burstpmk/BaseBurstPMKUISpec;->mOriginalArrowWidth:I

    mul-int/2addr v3, v1

    iget v4, v0, Lcom/transsion/camera/feature/burstpmk/BaseBurstPMKUISpec;->mOriginalArrowHeight:I

    div-int/2addr v3, v4

    iput v3, v0, Lcom/transsion/camera/feature/common/BaseUISpec;->mArrowWidth:I

    .line 211
    iput v1, v0, Lcom/transsion/camera/feature/common/BaseUISpec;->mArrowHeight:I

    .line 213
    iget-object v1, v0, Lcom/transsion/camera/feature/common/BaseUISpec;->mStartPoint:Landroid/graphics/Point;

    iput v7, v1, Landroid/graphics/Point;->x:I

    .line 214
    iget-object v1, v0, Lcom/transsion/camera/feature/common/BaseUISpec;->mSwitchPreviewValue:Ljava/lang/String;

    invoke-static {v2, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_286

    .line 215
    iget-object v1, v0, Lcom/transsion/camera/feature/common/BaseUISpec;->mStartPoint:Landroid/graphics/Point;

    iget v2, v0, Lcom/transsion/camera/feature/common/BaseUISpec;->mThumbHeight:I

    int-to-float v2, v2

    const v3, 0x3fbda123    # 1.48148f

    mul-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, v1, Landroid/graphics/Point;->y:I

    goto :goto_292

    .line 217
    :cond_286
    iget-object v1, v0, Lcom/transsion/camera/feature/common/BaseUISpec;->mStartPoint:Landroid/graphics/Point;

    iget v2, v0, Lcom/transsion/camera/feature/common/BaseUISpec;->mThumbHeight:I

    int-to-float v2, v2

    const v3, 0x403c71b4

    mul-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, v1, Landroid/graphics/Point;->y:I

    .line 220
    :goto_292
    iget-object v1, v0, Lcom/transsion/camera/feature/common/BaseUISpec;->mThumbnailStartPoint:Landroid/graphics/Point;

    iget-object v2, v0, Lcom/transsion/camera/feature/common/BaseUISpec;->mStartPoint:Landroid/graphics/Point;

    iget v3, v2, Landroid/graphics/Point;->x:I

    iput v3, v1, Landroid/graphics/Point;->x:I

    .line 221
    iget v2, v2, Landroid/graphics/Point;->y:I

    iput v2, v1, Landroid/graphics/Point;->y:I

    .line 223
    iget v1, v0, Lcom/transsion/camera/feature/common/BaseUISpec;->mThumbHeight:I

    int-to-float v1, v1

    mul-float/2addr v1, v15

    sub-float/2addr v1, v14

    float-to-int v1, v1

    iput v1, v0, Lcom/transsion/camera/feature/common/BaseUISpec;->mWarningOffset:I

    goto/16 :goto_453

    .line 125
    :cond_2a8
    iget v2, v0, Lcom/transsion/camera/feature/common/BaseUISpec;->mVRatio:F

    const v5, 0x3ff9fbe7    # 1.953f

    div-float/2addr v2, v5

    iput v2, v0, Lcom/transsion/camera/feature/common/BaseUISpec;->mVRatio:F

    .line 126
    iget v2, v0, Lcom/transsion/camera/feature/common/BaseUISpec;->mHRatio:F

    div-float/2addr v2, v5

    iput v2, v0, Lcom/transsion/camera/feature/common/BaseUISpec;->mHRatio:F

    .line 128
    sget v2, Lcom/transsion/camera/feature/panoramawideselfie/R$dimen;->panorama_fold_column_thumb_height:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    int-to-float v2, v2

    iget v5, v0, Lcom/transsion/camera/feature/common/BaseUISpec;->mVRatio:F

    div-float/2addr v2, v5

    float-to-int v2, v2

    iput v2, v0, Lcom/transsion/camera/feature/common/BaseUISpec;->mThumbHeight:I

    mul-int/2addr v4, v2

    .line 129
    div-int/2addr v4, v3

    iput v4, v0, Lcom/transsion/camera/feature/common/BaseUISpec;->mThumbWidth:I

    int-to-float v2, v2

    .line 130
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

    .line 131
    iget v2, v0, Lcom/transsion/camera/feature/common/BaseUISpec;->mSurfaceWidth:I

    iput v2, v0, Lcom/transsion/camera/feature/common/BaseUISpec;->mThumbBgWidth:I

    .line 133
    iget v2, v0, Lcom/transsion/camera/feature/common/BaseUISpec;->mThumbHeight:I

    int-to-float v3, v2

    div-float/2addr v3, v8

    float-to-int v3, v3

    .line 134
    iget v4, v0, Lcom/transsion/camera/feature/burstpmk/BaseBurstPMKUISpec;->mOriginalArrowWidth:I

    mul-int/2addr v4, v3

    iget v5, v0, Lcom/transsion/camera/feature/burstpmk/BaseBurstPMKUISpec;->mOriginalArrowHeight:I

    div-int/2addr v4, v5

    iput v4, v0, Lcom/transsion/camera/feature/common/BaseUISpec;->mArrowWidth:I

    .line 135
    iput v3, v0, Lcom/transsion/camera/feature/common/BaseUISpec;->mArrowHeight:I

    .line 137
    iget-object v3, v0, Lcom/transsion/camera/feature/common/BaseUISpec;->mStartPoint:Landroid/graphics/Point;

    iput v7, v3, Landroid/graphics/Point;->x:I

    int-to-float v4, v2

    const/high16 v5, 0x40200000    # 2.5f

    mul-float/2addr v4, v5

    float-to-int v4, v4

    .line 138
    iput v4, v3, Landroid/graphics/Point;->y:I

    .line 140
    iget-object v3, v0, Lcom/transsion/camera/feature/common/BaseUISpec;->mThumbnailStartPoint:Landroid/graphics/Point;

    iput v7, v3, Landroid/graphics/Point;->x:I

    int-to-float v4, v4

    sub-int/2addr v1, v2

    int-to-float v1, v1

    div-float v1, v1, v16

    add-float/2addr v4, v1

    float-to-int v1, v4

    .line 141
    iput v1, v3, Landroid/graphics/Point;->y:I

    int-to-float v1, v2

    mul-float/2addr v1, v15

    sub-float/2addr v1, v14

    float-to-int v1, v1

    .line 143
    iput v1, v0, Lcom/transsion/camera/feature/common/BaseUISpec;->mWarningOffset:I

    goto/16 :goto_453

    .line 78
    :cond_309
    iget v2, v0, Lcom/transsion/camera/feature/burstpmk/BaseBurstPMKUISpec;->mOrientation:I

    invoke-virtual {v0, v2}, Lcom/transsion/camera/feature/burstpmk/BaseBurstPMKUISpec;->isLandscape(I)Z

    move-result v2

    if-eqz v2, :cond_3bd

    .line 79
    sget v2, Lcom/transsion/camera/feature/panoramawideselfie/R$dimen;->panorama_fold_thumb_width_land:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    int-to-float v2, v2

    iget v3, v0, Lcom/transsion/camera/feature/common/BaseUISpec;->mHRatio:F

    div-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, v0, Lcom/transsion/camera/feature/common/BaseUISpec;->mThumbWidth:I

    .line 80
    iget v3, v0, Lcom/transsion/camera/feature/common/BaseUISpec;->mSurfaceHeight:I

    mul-int/2addr v3, v2

    iget v4, v0, Lcom/transsion/camera/feature/common/BaseUISpec;->mSurfaceWidth:I

    div-int/2addr v3, v4

    iput v3, v0, Lcom/transsion/camera/feature/common/BaseUISpec;->mThumbHeight:I

    int-to-float v2, v2

    .line 81
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

    .line 82
    sget v2, Lcom/transsion/camera/feature/panoramawideselfie/R$dimen;->panorama_fold_thumb_bg_height_land:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    int-to-float v2, v2

    iget v3, v0, Lcom/transsion/camera/feature/common/BaseUISpec;->mVRatio:F

    div-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, v0, Lcom/transsion/camera/feature/common/BaseUISpec;->mThumbBgHeight:I

    .line 84
    iget v2, v0, Lcom/transsion/camera/feature/common/BaseUISpec;->mThumbWidth:I

    int-to-float v2, v2

    const v3, 0x3fed4fdf    # 1.854f

    div-float/2addr v2, v3

    float-to-int v2, v2

    .line 85
    iget v3, v0, Lcom/transsion/camera/feature/burstpmk/BaseBurstPMKUISpec;->mOriginalArrowWidth:I

    mul-int/2addr v3, v2

    iget v4, v0, Lcom/transsion/camera/feature/burstpmk/BaseBurstPMKUISpec;->mOriginalArrowHeight:I

    div-int/2addr v3, v4

    iput v3, v0, Lcom/transsion/camera/feature/common/BaseUISpec;->mArrowHeight:I

    .line 86
    iput v2, v0, Lcom/transsion/camera/feature/common/BaseUISpec;->mArrowWidth:I

    .line 88
    iget v2, v0, Lcom/transsion/camera/feature/burstpmk/BaseBurstPMKUISpec;->mOrientation:I

    if-ne v2, v12, :cond_378

    .line 89
    iget-object v2, v0, Lcom/transsion/camera/feature/common/BaseUISpec;->mStartPoint:Landroid/graphics/Point;

    sget v3, Lcom/transsion/camera/feature/panoramawideselfie/R$dimen;->panorama_fold_thumb_bg_margin_start_270:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    int-to-float v3, v3

    iget v4, v0, Lcom/transsion/camera/feature/common/BaseUISpec;->mHRatio:F

    div-float/2addr v3, v4

    float-to-int v3, v3

    iput v3, v2, Landroid/graphics/Point;->x:I

    .line 90
    iget-object v2, v0, Lcom/transsion/camera/feature/common/BaseUISpec;->mStartPoint:Landroid/graphics/Point;

    sget v3, Lcom/transsion/camera/feature/panoramawideselfie/R$dimen;->panorama_fold_thumb_bg_margin_land:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    iget v3, v0, Lcom/transsion/camera/feature/common/BaseUISpec;->mVRatio:F

    div-float/2addr v1, v3

    float-to-int v1, v1

    iput v1, v2, Landroid/graphics/Point;->y:I

    goto :goto_39e

    .line 92
    :cond_378
    iget-object v2, v0, Lcom/transsion/camera/feature/common/BaseUISpec;->mStartPoint:Landroid/graphics/Point;

    sget v3, Lcom/transsion/camera/feature/panoramawideselfie/R$dimen;->panorama_fold_thumb_bg_margin_start_90:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    int-to-float v3, v3

    iget v4, v0, Lcom/transsion/camera/feature/common/BaseUISpec;->mHRatio:F

    div-float/2addr v3, v4

    float-to-int v3, v3

    iput v3, v2, Landroid/graphics/Point;->x:I

    .line 93
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

    .line 96
    :goto_39e
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

    .line 97
    iget v2, v2, Landroid/graphics/Point;->y:I

    iput v2, v1, Landroid/graphics/Point;->y:I

    int-to-float v1, v5

    mul-float/2addr v1, v15

    sub-float/2addr v1, v14

    float-to-int v1, v1

    .line 99
    iput v1, v0, Lcom/transsion/camera/feature/common/BaseUISpec;->mWarningOffset:I

    goto/16 :goto_453

    .line 101
    :cond_3bd
    sget v2, Lcom/transsion/camera/feature/panoramawideselfie/R$dimen;->panorama_fold_thumb_height:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    int-to-float v2, v2

    iget v5, v0, Lcom/transsion/camera/feature/common/BaseUISpec;->mVRatio:F

    div-float/2addr v2, v5

    float-to-int v2, v2

    iput v2, v0, Lcom/transsion/camera/feature/common/BaseUISpec;->mThumbHeight:I

    mul-int/2addr v4, v2

    .line 102
    div-int/2addr v4, v3

    iput v4, v0, Lcom/transsion/camera/feature/common/BaseUISpec;->mThumbWidth:I

    int-to-float v2, v2

    .line 103
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

    .line 104
    sget v2, Lcom/transsion/camera/feature/panoramawideselfie/R$dimen;->panorama_fold_thumb_bg_width:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    int-to-float v2, v2

    iget v3, v0, Lcom/transsion/camera/feature/common/BaseUISpec;->mHRatio:F

    div-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, v0, Lcom/transsion/camera/feature/common/BaseUISpec;->mThumbBgWidth:I

    .line 106
    iget v2, v0, Lcom/transsion/camera/feature/common/BaseUISpec;->mThumbHeight:I

    int-to-float v2, v2

    div-float/2addr v2, v8

    float-to-int v2, v2

    .line 107
    iget v3, v0, Lcom/transsion/camera/feature/burstpmk/BaseBurstPMKUISpec;->mOriginalArrowWidth:I

    mul-int/2addr v3, v2

    iget v4, v0, Lcom/transsion/camera/feature/burstpmk/BaseBurstPMKUISpec;->mOriginalArrowHeight:I

    div-int/2addr v3, v4

    iput v3, v0, Lcom/transsion/camera/feature/common/BaseUISpec;->mArrowWidth:I

    .line 108
    iput v2, v0, Lcom/transsion/camera/feature/common/BaseUISpec;->mArrowHeight:I

    .line 110
    iget v2, v0, Lcom/transsion/camera/feature/burstpmk/BaseBurstPMKUISpec;->mOrientation:I

    const/16 v3, 0xb4

    if-ne v2, v3, :cond_418

    .line 111
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

    goto :goto_427

    .line 113
    :cond_418
    iget-object v2, v0, Lcom/transsion/camera/feature/common/BaseUISpec;->mStartPoint:Landroid/graphics/Point;

    sget v3, Lcom/transsion/camera/feature/panoramawideselfie/R$dimen;->panorama_fold_thumb_bg_margin_start:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    int-to-float v3, v3

    iget v4, v0, Lcom/transsion/camera/feature/common/BaseUISpec;->mHRatio:F

    div-float/2addr v3, v4

    float-to-int v3, v3

    iput v3, v2, Landroid/graphics/Point;->x:I

    .line 115
    :goto_427
    iget-object v2, v0, Lcom/transsion/camera/feature/common/BaseUISpec;->mStartPoint:Landroid/graphics/Point;

    sget v3, Lcom/transsion/camera/feature/panoramawideselfie/R$dimen;->panorama_fold_thumb_bg_margin_top:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    iget v3, v0, Lcom/transsion/camera/feature/common/BaseUISpec;->mVRatio:F

    div-float/2addr v1, v3

    float-to-int v1, v1

    iput v1, v2, Landroid/graphics/Point;->y:I

    .line 117
    iget-object v1, v0, Lcom/transsion/camera/feature/common/BaseUISpec;->mThumbnailStartPoint:Landroid/graphics/Point;

    iget-object v2, v0, Lcom/transsion/camera/feature/common/BaseUISpec;->mStartPoint:Landroid/graphics/Point;

    iget v3, v2, Landroid/graphics/Point;->x:I

    iput v3, v1, Landroid/graphics/Point;->x:I

    .line 118
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

    .line 120
    iput v1, v0, Lcom/transsion/camera/feature/common/BaseUISpec;->mWarningOffset:I

    .line 278
    :goto_453
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

    .line 287
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

    .line 50
    iput p1, p0, Lcom/transsion/camera/feature/burstpmk/BaseBurstPMKUISpec;->mOrientation:I

    return-void
.end method
