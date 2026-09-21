.class public Lcom/transsion/widgetslib/drawable/OSRadioDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/widgetslib/drawable/ReversibleDrawable;


# static fields
.field private static final FRAMES_INNER_MAX_RADIUS_RATIO:F = 0.2f

.field private static final FRAMES_INNER_MIN_RADIUS_RATIO:F = 0.2f

.field private static final FRAMES_INNER_RADIUS_RATIO:F = 0.23333333f

.field private static final FRAMES_OUTER_RADIUS_RATIO:F = 0.2f

.field private static final FRAMES_STROKE_COLOR_RATIO:F = 0.16666667f

.field private static final FRAMES_TOTAL:I = 0x1e

.field private static final OUTER_MIN_RADIUS:F = 0.1f

.field private static final PVH_INNER_RADIUS:Ljava/lang/String; = "pvh_inner_radius"

.field private static final PVH_OUTER_RADIUS:Ljava/lang/String; = "pvh_outer_radius"

.field private static final PVH_STROKE_COLOR:Ljava/lang/String; = "pvh_stroke_color"


# instance fields
.field private mChecked:Z

.field private mCheckedBitmap:Landroid/graphics/Bitmap;

.field private final mContext:Landroid/content/Context;

.field private mEndColor:I

.field private mExecFraction:F

.field private mInnerEndRadius:F

.field private mInnerMaxRadius:F

.field private mInnerMinRadius:F

.field private mInnerRadius:F

.field private mNormalBitmap:Landroid/graphics/Bitmap;

.field private mOuterRadius:F

.field private mOuterStartRadius:F

.field private final mPaint:Landroid/graphics/Paint;

.field private final mPathCheckedInner:Landroid/graphics/Path;

.field private final mPathCheckedOuter:Landroid/graphics/Path;

.field private final mRectF:Landroid/graphics/RectF;

.field private mStartColor:I

.field private mStrokeColor:I

.field private final mValueAnimator:Landroid/animation/ValueAnimator;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    .line 90
    invoke-direct {p0, p1, v0}, Lcom/transsion/widgetslib/drawable/OSRadioDrawable;-><init>(Landroid/content/Context;Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Z)V
    .registers 5

    .line 73
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    const/high16 v0, 0x3f800000    # 1.0f

    .line 68
    iput v0, p0, Lcom/transsion/widgetslib/drawable/OSRadioDrawable;->mExecFraction:F

    .line 69
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/transsion/widgetslib/drawable/OSRadioDrawable;->mRectF:Landroid/graphics/RectF;

    .line 74
    iput-object p1, p0, Lcom/transsion/widgetslib/drawable/OSRadioDrawable;->mContext:Landroid/content/Context;

    .line 75
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/transsion/widgetslib/drawable/OSRadioDrawable;->mPaint:Landroid/graphics/Paint;

    .line 77
    sget v0, Lcom/transsion/widgetslib/R$attr;->os_fill_base:I

    sget v1, Lcom/transsion/widgetslib/R$color;->os_fill_base_hios:I

    invoke-static {p1, v0, v1}, Lcom/transsion/widgetslib/util/Utils;->getAttrColor(Landroid/content/Context;II)I

    move-result v0

    iput v0, p0, Lcom/transsion/widgetslib/drawable/OSRadioDrawable;->mStartColor:I

    .line 78
    invoke-static {p1}, Lcom/transsion/widgetslib/util/Utils;->getOsPlatformBasicColor(Landroid/content/Context;)I

    move-result p1

    iput p1, p0, Lcom/transsion/widgetslib/drawable/OSRadioDrawable;->mEndColor:I

    .line 80
    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Lcom/transsion/widgetslib/drawable/OSRadioDrawable;->mPathCheckedOuter:Landroid/graphics/Path;

    .line 81
    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Lcom/transsion/widgetslib/drawable/OSRadioDrawable;->mPathCheckedInner:Landroid/graphics/Path;

    const/4 p1, 0x0

    .line 83
    new-array p1, p1, [F

    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/widgetslib/drawable/OSRadioDrawable;->mValueAnimator:Landroid/animation/ValueAnimator;

    .line 85
    invoke-direct {p0}, Lcom/transsion/widgetslib/drawable/OSRadioDrawable;->setBitmap()V

    .line 86
    invoke-direct {p0, p2}, Lcom/transsion/widgetslib/drawable/OSRadioDrawable;->setChecked(Z)V

    return-void
.end method

.method static synthetic access$000(Lcom/transsion/widgetslib/drawable/OSRadioDrawable;)F
    .registers 1

    .line 44
    iget p0, p0, Lcom/transsion/widgetslib/drawable/OSRadioDrawable;->mExecFraction:F

    return p0
.end method

.method static synthetic access$002(Lcom/transsion/widgetslib/drawable/OSRadioDrawable;F)F
    .registers 2

    .line 44
    iput p1, p0, Lcom/transsion/widgetslib/drawable/OSRadioDrawable;->mExecFraction:F

    return p1
.end method

.method static synthetic access$100(Lcom/transsion/widgetslib/drawable/OSRadioDrawable;)I
    .registers 1

    .line 44
    iget p0, p0, Lcom/transsion/widgetslib/drawable/OSRadioDrawable;->mStrokeColor:I

    return p0
.end method

.method static synthetic access$102(Lcom/transsion/widgetslib/drawable/OSRadioDrawable;I)I
    .registers 2

    .line 44
    iput p1, p0, Lcom/transsion/widgetslib/drawable/OSRadioDrawable;->mStrokeColor:I

    return p1
.end method

.method static synthetic access$200(Lcom/transsion/widgetslib/drawable/OSRadioDrawable;)F
    .registers 1

    .line 44
    iget p0, p0, Lcom/transsion/widgetslib/drawable/OSRadioDrawable;->mOuterRadius:F

    return p0
.end method

.method static synthetic access$202(Lcom/transsion/widgetslib/drawable/OSRadioDrawable;F)F
    .registers 2

    .line 44
    iput p1, p0, Lcom/transsion/widgetslib/drawable/OSRadioDrawable;->mOuterRadius:F

    return p1
.end method

.method static synthetic access$300(Lcom/transsion/widgetslib/drawable/OSRadioDrawable;)F
    .registers 1

    .line 44
    iget p0, p0, Lcom/transsion/widgetslib/drawable/OSRadioDrawable;->mInnerRadius:F

    return p0
.end method

.method static synthetic access$302(Lcom/transsion/widgetslib/drawable/OSRadioDrawable;F)F
    .registers 2

    .line 44
    iput p1, p0, Lcom/transsion/widgetslib/drawable/OSRadioDrawable;->mInnerRadius:F

    return p1
.end method

.method static synthetic access$400(Lcom/transsion/widgetslib/drawable/OSRadioDrawable;)Landroid/graphics/Path;
    .registers 1

    .line 44
    iget-object p0, p0, Lcom/transsion/widgetslib/drawable/OSRadioDrawable;->mPathCheckedOuter:Landroid/graphics/Path;

    return-object p0
.end method

.method static synthetic access$500(Lcom/transsion/widgetslib/drawable/OSRadioDrawable;)Landroid/graphics/Path;
    .registers 1

    .line 44
    iget-object p0, p0, Lcom/transsion/widgetslib/drawable/OSRadioDrawable;->mPathCheckedInner:Landroid/graphics/Path;

    return-object p0
.end method

.method static synthetic access$600(Lcom/transsion/widgetslib/drawable/OSRadioDrawable;)Landroid/animation/ValueAnimator;
    .registers 1

    .line 44
    iget-object p0, p0, Lcom/transsion/widgetslib/drawable/OSRadioDrawable;->mValueAnimator:Landroid/animation/ValueAnimator;

    return-object p0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/transsion/widgetslib/drawable/OSRadioDrawable;
    .registers 2

    const/4 v0, 0x0

    .line 491
    invoke-static {p0, v0}, Lcom/transsion/widgetslib/drawable/OSRadioDrawable;->getInstance(Landroid/content/Context;Z)Lcom/transsion/widgetslib/drawable/OSRadioDrawable;

    move-result-object p0

    return-object p0
.end method

.method public static getInstance(Landroid/content/Context;Z)Lcom/transsion/widgetslib/drawable/OSRadioDrawable;
    .registers 3

    .line 487
    new-instance v0, Lcom/transsion/widgetslib/drawable/OSRadioDrawable;

    invoke-direct {v0, p0, p1}, Lcom/transsion/widgetslib/drawable/OSRadioDrawable;-><init>(Landroid/content/Context;Z)V

    return-object v0
.end method

.method private setAnimParams(IFFF)V
    .registers 39

    move-object/from16 v1, p0

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    .line 199
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v5

    .line 200
    invoke-virtual {v5}, Landroid/graphics/Rect;->centerX()I

    move-result v6

    .line 201
    invoke-virtual {v5}, Landroid/graphics/Rect;->centerY()I

    move-result v7

    .line 202
    sget-object v8, Lcom/transsion/widgetslib/view/OSRadioButton;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "startAnim, centerX: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", centerY: "

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", bounds: "

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 203
    invoke-virtual {v5}, Landroid/graphics/Rect;->toShortString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", mChecked: "

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v5, v1, Lcom/transsion/widgetslib/drawable/OSRadioDrawable;->mChecked:Z

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ", execFraction: "

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v5, ", this:"

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 202
    invoke-static {v8, v5}, Lcom/transsion/widgetscore/utils/LogUtil;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 205
    invoke-static/range {p1 .. p1}, Landroid/graphics/Color;->red(I)I

    move-result v5

    invoke-static/range {p1 .. p1}, Landroid/graphics/Color;->green(I)I

    move-result v4

    invoke-static/range {p1 .. p1}, Landroid/graphics/Color;->blue(I)I

    move-result v6

    .line 207
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    const/4 v9, 0x0

    .line 209
    invoke-static {v9, v9}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v10

    const/high16 v11, 0x3f800000    # 1.0f

    invoke-static {v11, v11}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v12

    .line 211
    iget-boolean v13, v1, Lcom/transsion/widgetslib/drawable/OSRadioDrawable;->mChecked:Z

    const-string v15, ")"

    const-string v14, "), startInnerRadius-endInnerRadius: ("

    const-string v11, "), startOuterRadius-endOuterRadius: ("

    const-string v9, ")-("

    move/from16 v17, v4

    const-string v4, ", startStrokeColor-endStrokeColor: ("

    move/from16 v18, v5

    const-string v5, "-"

    move/from16 v20, v6

    const-string v6, "pvh_stroke_color"

    move/from16 v21, v13

    const-string v13, "pvh_outer_radius"

    move-object/from16 v23, v10

    const-string v10, "pvh_inner_radius"

    const v24, 0x3e4ccccd    # 0.2f

    move-object/from16 v25, v12

    if-eqz v21, :cond_299

    .line 212
    iget v12, v1, Lcom/transsion/widgetslib/drawable/OSRadioDrawable;->mEndColor:I

    invoke-static {v12}, Landroid/graphics/Color;->red(I)I

    move-result v12

    sub-int v12, v12, v18

    move/from16 v23, v12

    .line 213
    iget v12, v1, Lcom/transsion/widgetslib/drawable/OSRadioDrawable;->mEndColor:I

    invoke-static {v12}, Landroid/graphics/Color;->green(I)I

    move-result v12

    sub-int v12, v12, v17

    move/from16 v25, v12

    .line 214
    iget v12, v1, Lcom/transsion/widgetslib/drawable/OSRadioDrawable;->mEndColor:I

    invoke-static {v12}, Landroid/graphics/Color;->blue(I)I

    move-result v12

    sub-int v12, v12, v20

    const v26, 0x3e6eeeef

    cmpl-float v27, p4, v26

    if-lez v27, :cond_bf

    const/16 v27, 0x2

    goto :goto_c1

    :cond_bf
    const/16 v27, 0x1

    :goto_c1
    const v28, 0x3eddddde

    cmpl-float v28, p4, v28

    if-lez v28, :cond_ca

    add-int/lit8 v27, v27, 0x1

    :cond_ca
    const v28, 0x3f222222

    cmpl-float v28, p4, v28

    if-lez v28, :cond_d3

    add-int/lit8 v27, v27, 0x1

    :cond_d3
    const v28, 0x3f555555

    cmpl-float v28, p4, v28

    if-lez v28, :cond_dc

    add-int/lit8 v27, v27, 0x1

    :cond_dc
    move/from16 v28, v12

    move/from16 v12, v27

    move-object/from16 v27, v8

    .line 229
    iget-object v8, v1, Lcom/transsion/widgetslib/drawable/OSRadioDrawable;->mPathCheckedOuter:Landroid/graphics/Path;

    invoke-virtual {v8}, Landroid/graphics/Path;->reset()V

    .line 230
    iget-object v8, v1, Lcom/transsion/widgetslib/drawable/OSRadioDrawable;->mPathCheckedOuter:Landroid/graphics/Path;

    move-object/from16 v29, v15

    iget v15, v1, Lcom/transsion/widgetslib/drawable/OSRadioDrawable;->mOuterStartRadius:F

    move-object/from16 v30, v14

    sget-object v14, Landroid/graphics/Path$Direction;->CCW:Landroid/graphics/Path$Direction;

    move-object/from16 v31, v5

    const/4 v5, 0x0

    invoke-virtual {v8, v5, v5, v15, v14}, Landroid/graphics/Path;->addCircle(FFFLandroid/graphics/Path$Direction;)V

    .line 231
    iget-object v8, v1, Lcom/transsion/widgetslib/drawable/OSRadioDrawable;->mPathCheckedInner:Landroid/graphics/Path;

    invoke-virtual {v8}, Landroid/graphics/Path;->reset()V

    const/4 v8, 0x1

    if-ne v12, v8, :cond_11b

    .line 234
    invoke-static {v5, v3}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v5

    iget v6, v1, Lcom/transsion/widgetslib/drawable/OSRadioDrawable;->mInnerEndRadius:F

    const/high16 v8, 0x3f800000    # 1.0f

    .line 235
    invoke-static {v8, v6}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v6

    filled-new-array {v5, v6}, [Landroid/animation/Keyframe;

    move-result-object v5

    .line 233
    invoke-static {v10, v5}, Landroid/animation/PropertyValuesHolder;->ofKeyframe(Ljava/lang/String;[Landroid/animation/Keyframe;)Landroid/animation/PropertyValuesHolder;

    move-result-object v5

    :goto_113
    move-object/from16 v26, v4

    move-object/from16 v32, v9

    move-object/from16 v21, v11

    goto/16 :goto_23b

    :cond_11b
    const/high16 v8, 0x3f800000    # 1.0f

    const/4 v14, 0x2

    if-ne v12, v14, :cond_13d

    sub-float v6, p4, v26

    div-float v6, v6, p4

    .line 240
    invoke-static {v5, v3}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v5

    iget v13, v1, Lcom/transsion/widgetslib/drawable/OSRadioDrawable;->mInnerMinRadius:F

    .line 241
    invoke-static {v6, v13}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v6

    iget v13, v1, Lcom/transsion/widgetslib/drawable/OSRadioDrawable;->mInnerEndRadius:F

    .line 242
    invoke-static {v8, v13}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v8

    filled-new-array {v5, v6, v8}, [Landroid/animation/Keyframe;

    move-result-object v5

    .line 239
    invoke-static {v10, v5}, Landroid/animation/PropertyValuesHolder;->ofKeyframe(Ljava/lang/String;[Landroid/animation/Keyframe;)Landroid/animation/PropertyValuesHolder;

    move-result-object v5

    goto :goto_113

    :cond_13d
    const/4 v5, 0x3

    if-ne v12, v5, :cond_16f

    sub-float v5, p4, v26

    sub-float v5, v5, v24

    div-float v5, v5, p4

    div-float v24, v24, p4

    add-float v6, v24, v5

    const/4 v8, 0x0

    .line 248
    invoke-static {v8, v3}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v8

    iget v13, v1, Lcom/transsion/widgetslib/drawable/OSRadioDrawable;->mInnerMaxRadius:F

    .line 249
    invoke-static {v5, v13}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v5

    iget v13, v1, Lcom/transsion/widgetslib/drawable/OSRadioDrawable;->mInnerMinRadius:F

    .line 250
    invoke-static {v6, v13}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v6

    iget v13, v1, Lcom/transsion/widgetslib/drawable/OSRadioDrawable;->mInnerEndRadius:F

    const/high16 v14, 0x3f800000    # 1.0f

    .line 251
    invoke-static {v14, v13}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v13

    filled-new-array {v8, v5, v6, v13}, [Landroid/animation/Keyframe;

    move-result-object v5

    .line 247
    invoke-static {v10, v5}, Landroid/animation/PropertyValuesHolder;->ofKeyframe(Ljava/lang/String;[Landroid/animation/Keyframe;)Landroid/animation/PropertyValuesHolder;

    move-result-object v5

    .line 252
    invoke-interface {v7, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_113

    :cond_16f
    const/4 v5, 0x4

    if-ne v12, v5, :cond_1c7

    sub-float v5, p4, v26

    sub-float v5, v5, v24

    sub-float v5, v5, v24

    div-float v5, v5, p4

    div-float v24, v24, p4

    add-float v6, v24, v5

    add-float v8, v24, v6

    const/4 v14, 0x0

    .line 259
    invoke-static {v14, v2}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v15

    move-object/from16 v21, v11

    const v14, 0x3dcccccd    # 0.1f

    .line 260
    invoke-static {v5, v14}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v11

    move-object/from16 v32, v9

    const/high16 v9, 0x3f800000    # 1.0f

    .line 261
    invoke-static {v9, v14}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v0

    filled-new-array {v15, v11, v0}, [Landroid/animation/Keyframe;

    move-result-object v0

    .line 258
    invoke-static {v13, v0}, Landroid/animation/PropertyValuesHolder;->ofKeyframe(Ljava/lang/String;[Landroid/animation/Keyframe;)Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    .line 262
    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v14, 0x0

    .line 265
    invoke-static {v14, v3}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v0

    .line 266
    invoke-static {v5, v3}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v5

    iget v11, v1, Lcom/transsion/widgetslib/drawable/OSRadioDrawable;->mInnerMaxRadius:F

    .line 267
    invoke-static {v6, v11}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v6

    iget v11, v1, Lcom/transsion/widgetslib/drawable/OSRadioDrawable;->mInnerMinRadius:F

    .line 268
    invoke-static {v8, v11}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v8

    iget v11, v1, Lcom/transsion/widgetslib/drawable/OSRadioDrawable;->mInnerEndRadius:F

    .line 269
    invoke-static {v9, v11}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v9

    filled-new-array {v0, v5, v6, v8, v9}, [Landroid/animation/Keyframe;

    move-result-object v0

    .line 264
    invoke-static {v10, v0}, Landroid/animation/PropertyValuesHolder;->ofKeyframe(Ljava/lang/String;[Landroid/animation/Keyframe;)Landroid/animation/PropertyValuesHolder;

    move-result-object v5

    move-object/from16 v26, v4

    goto :goto_23b

    :cond_1c7
    move-object/from16 v32, v9

    move-object/from16 v21, v11

    sub-float v0, p4, v26

    sub-float v0, v0, v24

    sub-float v0, v0, v24

    sub-float v0, v0, v24

    div-float v0, v0, p4

    div-float v24, v24, p4

    add-float v5, v24, v0

    add-float v8, v24, v5

    add-float v9, v24, v8

    const/4 v14, 0x0

    .line 277
    invoke-static {v14, v14}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v11

    const/high16 v15, 0x3f800000    # 1.0f

    .line 278
    invoke-static {v0, v15}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v14

    move-object/from16 v26, v4

    .line 279
    invoke-static {v15, v15}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v4

    filled-new-array {v11, v14, v4}, [Landroid/animation/Keyframe;

    move-result-object v4

    .line 276
    invoke-static {v6, v4}, Landroid/animation/PropertyValuesHolder;->ofKeyframe(Ljava/lang/String;[Landroid/animation/Keyframe;)Landroid/animation/PropertyValuesHolder;

    move-result-object v4

    .line 280
    invoke-interface {v7, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v14, 0x0

    .line 283
    invoke-static {v14, v2}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v4

    .line 284
    invoke-static {v0, v2}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v0

    const v6, 0x3dcccccd    # 0.1f

    .line 285
    invoke-static {v5, v6}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v11

    .line 286
    invoke-static {v15, v6}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v14

    filled-new-array {v4, v0, v11, v14}, [Landroid/animation/Keyframe;

    move-result-object v0

    .line 282
    invoke-static {v13, v0}, Landroid/animation/PropertyValuesHolder;->ofKeyframe(Ljava/lang/String;[Landroid/animation/Keyframe;)Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    .line 287
    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v14, 0x0

    .line 290
    invoke-static {v14, v3}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v0

    .line 291
    invoke-static {v5, v3}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v4

    iget v5, v1, Lcom/transsion/widgetslib/drawable/OSRadioDrawable;->mInnerMaxRadius:F

    .line 292
    invoke-static {v8, v5}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v5

    iget v6, v1, Lcom/transsion/widgetslib/drawable/OSRadioDrawable;->mInnerMinRadius:F

    .line 293
    invoke-static {v9, v6}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v6

    iget v8, v1, Lcom/transsion/widgetslib/drawable/OSRadioDrawable;->mInnerEndRadius:F

    .line 294
    invoke-static {v15, v8}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v8

    filled-new-array {v0, v4, v5, v6, v8}, [Landroid/animation/Keyframe;

    move-result-object v0

    .line 289
    invoke-static {v10, v0}, Landroid/animation/PropertyValuesHolder;->ofKeyframe(Ljava/lang/String;[Landroid/animation/Keyframe;)Landroid/animation/PropertyValuesHolder;

    move-result-object v5

    .line 296
    :goto_23b
    invoke-interface {v7, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 298
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "checked anim, keyframeCount: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-object/from16 v4, v26

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v5, p1

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-object/from16 v9, v32

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v1, Lcom/transsion/widgetslib/drawable/OSRadioDrawable;->mEndColor:I

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-object/from16 v11, v21

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-object/from16 v12, v31

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v14, 0x3dcccccd    # 0.1f

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-object/from16 v14, v30

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v1, Lcom/transsion/widgetslib/drawable/OSRadioDrawable;->mInnerEndRadius:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-object/from16 v15, v29

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v2, v27

    invoke-static {v2, v0}, Lcom/transsion/widgetscore/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    move/from16 v3, v23

    move/from16 v5, v25

    move/from16 v12, v28

    const/4 v0, 0x0

    goto/16 :goto_4d3

    :cond_299
    move-object v12, v5

    move-object v0, v8

    const/4 v8, 0x1

    move/from16 v5, p1

    .line 302
    iput v5, v1, Lcom/transsion/widgetslib/drawable/OSRadioDrawable;->mStrokeColor:I

    .line 303
    iget v8, v1, Lcom/transsion/widgetslib/drawable/OSRadioDrawable;->mStartColor:I

    invoke-static {v8}, Landroid/graphics/Color;->red(I)I

    move-result v8

    sub-int v8, v8, v18

    move/from16 v26, v8

    .line 304
    iget v8, v1, Lcom/transsion/widgetslib/drawable/OSRadioDrawable;->mStartColor:I

    invoke-static {v8}, Landroid/graphics/Color;->green(I)I

    move-result v8

    sub-int v8, v8, v17

    move/from16 v27, v8

    .line 305
    iget v8, v1, Lcom/transsion/widgetslib/drawable/OSRadioDrawable;->mStartColor:I

    invoke-static {v8}, Landroid/graphics/Color;->blue(I)I

    move-result v8

    sub-int v8, v8, v20

    const v28, 0x3e2aaaab

    cmpl-float v29, p4, v28

    if-lez v29, :cond_2de

    move/from16 v29, v8

    .line 309
    iget-object v8, v1, Lcom/transsion/widgetslib/drawable/OSRadioDrawable;->mPathCheckedOuter:Landroid/graphics/Path;

    invoke-virtual {v8}, Landroid/graphics/Path;->reset()V

    .line 310
    iget-object v8, v1, Lcom/transsion/widgetslib/drawable/OSRadioDrawable;->mPathCheckedOuter:Landroid/graphics/Path;

    move-object/from16 v30, v0

    sget-object v0, Landroid/graphics/Path$Direction;->CCW:Landroid/graphics/Path$Direction;

    move-object/from16 v22, v14

    move-object/from16 v31, v15

    const/4 v14, 0x0

    const v15, 0x3dcccccd    # 0.1f

    invoke-virtual {v8, v14, v14, v15, v0}, Landroid/graphics/Path;->addCircle(FFFLandroid/graphics/Path$Direction;)V

    const/16 v21, 0x2

    goto :goto_2e8

    :cond_2de
    move-object/from16 v30, v0

    move/from16 v29, v8

    move-object/from16 v22, v14

    move-object/from16 v31, v15

    const/16 v21, 0x1

    :goto_2e8
    const v0, 0x3ebbbbbc

    cmpl-float v0, p4, v0

    if-lez v0, :cond_2f1

    add-int/lit8 v21, v21, 0x1

    :cond_2f1
    const v0, 0x3f111111

    cmpl-float v0, p4, v0

    if-lez v0, :cond_2fa

    add-int/lit8 v21, v21, 0x1

    :cond_2fa
    const v0, 0x3f444444

    cmpl-float v0, p4, v0

    if-lez v0, :cond_303

    add-int/lit8 v21, v21, 0x1

    :cond_303
    move/from16 v0, v21

    const/4 v8, 0x5

    if-ne v0, v8, :cond_37a

    sub-float v8, p4, v28

    sub-float v8, v8, v24

    sub-float v8, v8, v24

    sub-float v8, v8, v24

    div-float v8, v8, p4

    div-float v24, v24, p4

    add-float v14, v24, v8

    add-float v15, v24, v14

    move-object/from16 v19, v12

    add-float v12, v24, v15

    move-object/from16 v32, v9

    move-object/from16 v21, v11

    const/4 v11, 0x0

    .line 329
    invoke-static {v11, v3}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v9

    iget v11, v1, Lcom/transsion/widgetslib/drawable/OSRadioDrawable;->mInnerMinRadius:F

    .line 330
    invoke-static {v8, v11}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v8

    iget v11, v1, Lcom/transsion/widgetslib/drawable/OSRadioDrawable;->mInnerMaxRadius:F

    .line 331
    invoke-static {v14, v11}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v11

    const/4 v14, 0x0

    .line 332
    invoke-static {v15, v14}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v5

    move-object/from16 v33, v4

    const/high16 v4, 0x3f800000    # 1.0f

    .line 333
    invoke-static {v4, v14}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v3

    filled-new-array {v9, v8, v11, v5, v3}, [Landroid/animation/Keyframe;

    move-result-object v3

    .line 328
    invoke-static {v10, v3}, Landroid/animation/PropertyValuesHolder;->ofKeyframe(Ljava/lang/String;[Landroid/animation/Keyframe;)Landroid/animation/PropertyValuesHolder;

    move-result-object v3

    .line 334
    invoke-interface {v7, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 337
    invoke-static {v14, v2}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v3

    .line 338
    invoke-static {v15, v2}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v5

    iget v8, v1, Lcom/transsion/widgetslib/drawable/OSRadioDrawable;->mOuterStartRadius:F

    .line 339
    invoke-static {v12, v8}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v8

    iget v9, v1, Lcom/transsion/widgetslib/drawable/OSRadioDrawable;->mOuterStartRadius:F

    .line 340
    invoke-static {v4, v9}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v4

    filled-new-array {v3, v5, v8, v4}, [Landroid/animation/Keyframe;

    move-result-object v3

    .line 336
    invoke-static {v13, v3}, Landroid/animation/PropertyValuesHolder;->ofKeyframe(Ljava/lang/String;[Landroid/animation/Keyframe;)Landroid/animation/PropertyValuesHolder;

    move-result-object v3

    .line 341
    invoke-interface {v7, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 345
    invoke-static {v12, v14}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v3

    move-object/from16 v4, v23

    move-object/from16 v5, v25

    filled-new-array {v4, v3, v5}, [Landroid/animation/Keyframe;

    move-result-object v3

    .line 343
    invoke-static {v6, v3}, Landroid/animation/PropertyValuesHolder;->ofKeyframe(Ljava/lang/String;[Landroid/animation/Keyframe;)Landroid/animation/PropertyValuesHolder;

    move-result-object v3

    goto/16 :goto_478

    :cond_37a
    move-object/from16 v33, v4

    move-object/from16 v32, v9

    move-object/from16 v21, v11

    move-object/from16 v19, v12

    move-object/from16 v4, v23

    move-object/from16 v5, v25

    const/4 v3, 0x4

    if-ne v0, v3, :cond_3ea

    sub-float v3, p4, v28

    sub-float v3, v3, v24

    sub-float v3, v3, v24

    div-float v3, v3, p4

    div-float v24, v24, p4

    add-float v8, v24, v3

    add-float v9, v24, v8

    move/from16 v11, p3

    const/4 v14, 0x0

    .line 353
    invoke-static {v14, v11}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v12

    iget v15, v1, Lcom/transsion/widgetslib/drawable/OSRadioDrawable;->mInnerMaxRadius:F

    .line 354
    invoke-static {v3, v15}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v3

    .line 355
    invoke-static {v8, v14}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v15

    move/from16 v16, v0

    const/high16 v11, 0x3f800000    # 1.0f

    .line 356
    invoke-static {v11, v14}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v0

    filled-new-array {v12, v3, v15, v0}, [Landroid/animation/Keyframe;

    move-result-object v0

    .line 352
    invoke-static {v10, v0}, Landroid/animation/PropertyValuesHolder;->ofKeyframe(Ljava/lang/String;[Landroid/animation/Keyframe;)Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    .line 357
    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 360
    invoke-static {v14, v2}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v0

    .line 361
    invoke-static {v8, v2}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v3

    iget v8, v1, Lcom/transsion/widgetslib/drawable/OSRadioDrawable;->mOuterStartRadius:F

    .line 362
    invoke-static {v9, v8}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v8

    iget v10, v1, Lcom/transsion/widgetslib/drawable/OSRadioDrawable;->mOuterStartRadius:F

    .line 363
    invoke-static {v11, v10}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v10

    filled-new-array {v0, v3, v8, v10}, [Landroid/animation/Keyframe;

    move-result-object v0

    .line 359
    invoke-static {v13, v0}, Landroid/animation/PropertyValuesHolder;->ofKeyframe(Ljava/lang/String;[Landroid/animation/Keyframe;)Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    .line 364
    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 368
    invoke-static {v9, v14}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v0

    filled-new-array {v4, v0, v5}, [Landroid/animation/Keyframe;

    move-result-object v0

    .line 366
    invoke-static {v6, v0}, Landroid/animation/PropertyValuesHolder;->ofKeyframe(Ljava/lang/String;[Landroid/animation/Keyframe;)Landroid/animation/PropertyValuesHolder;

    move-result-object v3

    move/from16 v0, v16

    goto/16 :goto_478

    :cond_3ea
    const/4 v3, 0x3

    const/4 v14, 0x0

    if-ne v0, v3, :cond_43f

    sub-float v3, p4, v28

    sub-float v3, v3, v24

    div-float v3, v3, p4

    div-float v24, v24, p4

    add-float v8, v24, v3

    move/from16 v11, p3

    .line 375
    invoke-static {v14, v11}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v9

    .line 376
    invoke-static {v3, v14}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v12

    const/high16 v15, 0x3f800000    # 1.0f

    .line 377
    invoke-static {v15, v14}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v11

    filled-new-array {v9, v12, v11}, [Landroid/animation/Keyframe;

    move-result-object v9

    .line 374
    invoke-static {v10, v9}, Landroid/animation/PropertyValuesHolder;->ofKeyframe(Ljava/lang/String;[Landroid/animation/Keyframe;)Landroid/animation/PropertyValuesHolder;

    move-result-object v9

    .line 378
    invoke-interface {v7, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 381
    invoke-static {v14, v2}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v9

    .line 382
    invoke-static {v3, v2}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v3

    iget v10, v1, Lcom/transsion/widgetslib/drawable/OSRadioDrawable;->mOuterStartRadius:F

    .line 383
    invoke-static {v8, v10}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v10

    iget v11, v1, Lcom/transsion/widgetslib/drawable/OSRadioDrawable;->mOuterStartRadius:F

    .line 384
    invoke-static {v15, v11}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v11

    filled-new-array {v9, v3, v10, v11}, [Landroid/animation/Keyframe;

    move-result-object v3

    .line 380
    invoke-static {v13, v3}, Landroid/animation/PropertyValuesHolder;->ofKeyframe(Ljava/lang/String;[Landroid/animation/Keyframe;)Landroid/animation/PropertyValuesHolder;

    move-result-object v3

    .line 385
    invoke-interface {v7, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 389
    invoke-static {v8, v14}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v3

    filled-new-array {v4, v3, v5}, [Landroid/animation/Keyframe;

    move-result-object v3

    .line 387
    invoke-static {v6, v3}, Landroid/animation/PropertyValuesHolder;->ofKeyframe(Ljava/lang/String;[Landroid/animation/Keyframe;)Landroid/animation/PropertyValuesHolder;

    move-result-object v3

    goto :goto_478

    :cond_43f
    const/4 v3, 0x2

    if-ne v0, v3, :cond_470

    sub-float v3, p4, v28

    div-float v3, v3, p4

    .line 395
    invoke-static {v14, v2}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v8

    iget v9, v1, Lcom/transsion/widgetslib/drawable/OSRadioDrawable;->mOuterStartRadius:F

    .line 396
    invoke-static {v3, v9}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v9

    iget v10, v1, Lcom/transsion/widgetslib/drawable/OSRadioDrawable;->mOuterStartRadius:F

    const/high16 v15, 0x3f800000    # 1.0f

    .line 397
    invoke-static {v15, v10}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v10

    filled-new-array {v8, v9, v10}, [Landroid/animation/Keyframe;

    move-result-object v8

    .line 394
    invoke-static {v13, v8}, Landroid/animation/PropertyValuesHolder;->ofKeyframe(Ljava/lang/String;[Landroid/animation/Keyframe;)Landroid/animation/PropertyValuesHolder;

    move-result-object v8

    .line 398
    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 402
    invoke-static {v3, v14}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v3

    filled-new-array {v4, v3, v5}, [Landroid/animation/Keyframe;

    move-result-object v3

    .line 400
    invoke-static {v6, v3}, Landroid/animation/PropertyValuesHolder;->ofKeyframe(Ljava/lang/String;[Landroid/animation/Keyframe;)Landroid/animation/PropertyValuesHolder;

    move-result-object v3

    goto :goto_478

    .line 405
    :cond_470
    filled-new-array {v4, v5}, [Landroid/animation/Keyframe;

    move-result-object v3

    invoke-static {v6, v3}, Landroid/animation/PropertyValuesHolder;->ofKeyframe(Ljava/lang/String;[Landroid/animation/Keyframe;)Landroid/animation/PropertyValuesHolder;

    move-result-object v3

    .line 407
    :goto_478
    invoke-interface {v7, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 409
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "unchecked anim, keyframeCount: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-object/from16 v4, v33

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-object/from16 v9, v32

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, v1, Lcom/transsion/widgetslib/drawable/OSRadioDrawable;->mStartColor:I

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-object/from16 v11, v21

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-object/from16 v12, v19

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, v1, Lcom/transsion/widgetslib/drawable/OSRadioDrawable;->mOuterStartRadius:F

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-object/from16 v14, v22

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v11, p3

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-object/from16 v15, v31

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v3, v30

    invoke-static {v3, v2}, Lcom/transsion/widgetscore/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    move/from16 v3, v26

    move/from16 v5, v27

    move/from16 v12, v29

    .line 414
    :goto_4d3
    iget-object v2, v1, Lcom/transsion/widgetslib/drawable/OSRadioDrawable;->mValueAnimator:Landroid/animation/ValueAnimator;

    new-array v0, v0, [Landroid/animation/PropertyValuesHolder;

    invoke-interface {v7, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/animation/PropertyValuesHolder;

    invoke-virtual {v2, v0}, Landroid/animation/ValueAnimator;->setValues([Landroid/animation/PropertyValuesHolder;)V

    .line 416
    iget-object v0, v1, Lcom/transsion/widgetslib/drawable/OSRadioDrawable;->mValueAnimator:Landroid/animation/ValueAnimator;

    const/high16 v2, 0x43960000    # 300.0f

    mul-float v2, v2, p4

    float-to-long v6, v2

    invoke-virtual {v0, v6, v7}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 417
    new-instance v0, Lcom/transsion/widgetslib/drawable/OSRadioDrawable$1;

    move v7, v12

    move/from16 v4, v17

    move/from16 v2, v18

    move/from16 v6, v20

    invoke-direct/range {v0 .. v7}, Lcom/transsion/widgetslib/drawable/OSRadioDrawable$1;-><init>(Lcom/transsion/widgetslib/drawable/OSRadioDrawable;IIIIII)V

    .line 452
    iget-object v2, v1, Lcom/transsion/widgetslib/drawable/OSRadioDrawable;->mValueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v2, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 453
    iget-object v2, v1, Lcom/transsion/widgetslib/drawable/OSRadioDrawable;->mValueAnimator:Landroid/animation/ValueAnimator;

    new-instance v3, Lcom/transsion/widgetslib/drawable/OSRadioDrawable$2;

    invoke-direct {v3, v1, v0}, Lcom/transsion/widgetslib/drawable/OSRadioDrawable$2;-><init>(Lcom/transsion/widgetslib/drawable/OSRadioDrawable;Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    invoke-virtual {v2, v3}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-void
.end method

.method private setAnimParams(Lcom/transsion/widgetslib/drawable/OSRadioDrawable;)V
    .registers 5

    .line 195
    iget v0, p1, Lcom/transsion/widgetslib/drawable/OSRadioDrawable;->mStrokeColor:I

    iget v1, p1, Lcom/transsion/widgetslib/drawable/OSRadioDrawable;->mOuterRadius:F

    iget v2, p1, Lcom/transsion/widgetslib/drawable/OSRadioDrawable;->mInnerRadius:F

    iget p1, p1, Lcom/transsion/widgetslib/drawable/OSRadioDrawable;->mExecFraction:F

    invoke-direct {p0, v0, v1, v2, p1}, Lcom/transsion/widgetslib/drawable/OSRadioDrawable;->setAnimParams(IFFF)V

    return-void
.end method

.method private setBitmap()V
    .registers 9

    .line 110
    iget-object v0, p0, Lcom/transsion/widgetslib/drawable/OSRadioDrawable;->mContext:Landroid/content/Context;

    sget v1, Lcom/transsion/widgetslib/R$drawable;->os_radio_drawable_start_unchecked:I

    invoke-static {v0, v1}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_b

    return-void

    .line 114
    :cond_b
    iget v1, p0, Lcom/transsion/widgetslib/drawable/OSRadioDrawable;->mStartColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 116
    invoke-static {v0}, Lcom/transsion/widgetslib/util/ImageUtils;->drawable2Bitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/widgetslib/drawable/OSRadioDrawable;->mNormalBitmap:Landroid/graphics/Bitmap;

    .line 117
    sget-object v0, Lcom/transsion/widgetslib/view/OSRadioButton;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setBitmap, width--height: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/widgetslib/drawable/OSRadioDrawable;->mNormalBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "--"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/widgetslib/drawable/OSRadioDrawable;->mNormalBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/widgetscore/utils/LogUtil;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    iget-object v0, p0, Lcom/transsion/widgetslib/drawable/OSRadioDrawable;->mNormalBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    .line 119
    iget-object v1, p0, Lcom/transsion/widgetslib/drawable/OSRadioDrawable;->mNormalBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    int-to-float v2, v0

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    int-to-float v4, v1

    div-float/2addr v4, v3

    .line 123
    invoke-static {v2, v4}, Ljava/lang/Math;->min(FF)F

    move-result v3

    .line 124
    iget-object v5, p0, Lcom/transsion/widgetslib/drawable/OSRadioDrawable;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    const/4 v6, 0x1

    const/high16 v7, 0x40400000    # 3.0f

    invoke-static {v6, v7, v5}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v5

    sub-float/2addr v3, v5

    iput v3, p0, Lcom/transsion/widgetslib/drawable/OSRadioDrawable;->mOuterStartRadius:F

    .line 126
    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/widgetslib/drawable/OSRadioDrawable;->mCheckedBitmap:Landroid/graphics/Bitmap;

    .line 127
    new-instance v0, Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/transsion/widgetslib/drawable/OSRadioDrawable;->mCheckedBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 128
    new-instance v1, Landroid/graphics/Paint;

    iget-object v3, p0, Lcom/transsion/widgetslib/drawable/OSRadioDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-direct {v1, v3}, Landroid/graphics/Paint;-><init>(Landroid/graphics/Paint;)V

    .line 129
    iget v3, p0, Lcom/transsion/widgetslib/drawable/OSRadioDrawable;->mEndColor:I

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 130
    iget v3, p0, Lcom/transsion/widgetslib/drawable/OSRadioDrawable;->mOuterStartRadius:F

    invoke-virtual {v0, v2, v4, v3, v1}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 132
    iget v0, p0, Lcom/transsion/widgetslib/drawable/OSRadioDrawable;->mOuterStartRadius:F

    const v1, 0x3f333333    # 0.7f

    mul-float/2addr v1, v0

    iput v1, p0, Lcom/transsion/widgetslib/drawable/OSRadioDrawable;->mInnerMaxRadius:F

    const v1, 0x3ee66666    # 0.45f

    mul-float/2addr v1, v0

    .line 133
    iput v1, p0, Lcom/transsion/widgetslib/drawable/OSRadioDrawable;->mInnerMinRadius:F

    const v1, 0x3f0ccccd    # 0.55f

    mul-float/2addr v0, v1

    .line 134
    iput v0, p0, Lcom/transsion/widgetslib/drawable/OSRadioDrawable;->mInnerEndRadius:F

    return-void
.end method

.method private setChecked(Z)V
    .registers 8

    .line 94
    iput-boolean p1, p0, Lcom/transsion/widgetslib/drawable/OSRadioDrawable;->mChecked:Z

    if-eqz p1, :cond_7

    .line 96
    iget v0, p0, Lcom/transsion/widgetslib/drawable/OSRadioDrawable;->mEndColor:I

    goto :goto_9

    :cond_7
    iget v0, p0, Lcom/transsion/widgetslib/drawable/OSRadioDrawable;->mStartColor:I

    :goto_9
    iput v0, p0, Lcom/transsion/widgetslib/drawable/OSRadioDrawable;->mStrokeColor:I

    const v0, 0x3dcccccd    # 0.1f

    if-eqz p1, :cond_12

    move v1, v0

    goto :goto_14

    .line 97
    :cond_12
    iget v1, p0, Lcom/transsion/widgetslib/drawable/OSRadioDrawable;->mOuterStartRadius:F

    :goto_14
    iput v1, p0, Lcom/transsion/widgetslib/drawable/OSRadioDrawable;->mOuterRadius:F

    const/4 v1, 0x0

    if-eqz p1, :cond_1c

    .line 98
    iget v2, p0, Lcom/transsion/widgetslib/drawable/OSRadioDrawable;->mInnerEndRadius:F

    goto :goto_1d

    :cond_1c
    move v2, v1

    :goto_1d
    iput v2, p0, Lcom/transsion/widgetslib/drawable/OSRadioDrawable;->mInnerRadius:F

    .line 99
    sget-object v2, Lcom/transsion/widgetslib/view/OSRadioButton;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setChecked, mStrokeColor-mStartColor-mEndColor: ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/transsion/widgetslib/drawable/OSRadioDrawable;->mStrokeColor:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ")-("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/transsion/widgetslib/drawable/OSRadioDrawable;->mStartColor:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/transsion/widgetslib/drawable/OSRadioDrawable;->mEndColor:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "), checked: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, ", this: "

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/transsion/widgetscore/utils/LogUtil;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setChecked, mOuterRadius-mStartRadius-mEndRadius: ("

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/transsion/widgetslib/drawable/OSRadioDrawable;->mOuterRadius:F

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/transsion/widgetslib/drawable/OSRadioDrawable;->mOuterStartRadius:F

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/transsion/widgetscore/utils/LogUtil;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setChecked, mInnerRadius-mStartRadius-mEndRadius: ("

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/transsion/widgetslib/drawable/OSRadioDrawable;->mInnerRadius:F

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/transsion/widgetslib/drawable/OSRadioDrawable;->mOuterStartRadius:F

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v3, v5

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v3, 0x0

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/transsion/widgetscore/utils/LogUtil;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    iget-object p1, p0, Lcom/transsion/widgetslib/drawable/OSRadioDrawable;->mPathCheckedOuter:Landroid/graphics/Path;

    invoke-virtual {p1}, Landroid/graphics/Path;->reset()V

    .line 104
    iget-object p1, p0, Lcom/transsion/widgetslib/drawable/OSRadioDrawable;->mPathCheckedOuter:Landroid/graphics/Path;

    iget v0, p0, Lcom/transsion/widgetslib/drawable/OSRadioDrawable;->mOuterRadius:F

    sget-object v2, Landroid/graphics/Path$Direction;->CCW:Landroid/graphics/Path$Direction;

    invoke-virtual {p1, v1, v1, v0, v2}, Landroid/graphics/Path;->addCircle(FFFLandroid/graphics/Path$Direction;)V

    .line 105
    iget-object p1, p0, Lcom/transsion/widgetslib/drawable/OSRadioDrawable;->mPathCheckedInner:Landroid/graphics/Path;

    invoke-virtual {p1}, Landroid/graphics/Path;->reset()V

    .line 106
    iget-object p1, p0, Lcom/transsion/widgetslib/drawable/OSRadioDrawable;->mPathCheckedInner:Landroid/graphics/Path;

    iget p0, p0, Lcom/transsion/widgetslib/drawable/OSRadioDrawable;->mInnerRadius:F

    invoke-virtual {p1, v1, v1, p0, v2}, Landroid/graphics/Path;->addCircle(FFFLandroid/graphics/Path$Direction;)V

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .registers 8

    .line 162
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 163
    iget-object v1, p0, Lcom/transsion/widgetslib/drawable/OSRadioDrawable;->mNormalBitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_78

    iget-object v1, p0, Lcom/transsion/widgetslib/drawable/OSRadioDrawable;->mCheckedBitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_78

    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_13

    goto :goto_78

    .line 167
    :cond_13
    invoke-virtual {v0}, Landroid/graphics/Rect;->centerX()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerY()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 168
    iget-object v1, p0, Lcom/transsion/widgetslib/drawable/OSRadioDrawable;->mRectF:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v2

    neg-int v2, v2

    int-to-float v2, v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v4

    neg-int v4, v4

    int-to-float v4, v4

    div-float/2addr v4, v3

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v5, v3

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v3

    invoke-virtual {v1, v2, v4, v5, v0}, Landroid/graphics/RectF;->set(FFFF)V

    .line 170
    iget-object v0, p0, Lcom/transsion/widgetslib/drawable/OSRadioDrawable;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/transsion/widgetslib/drawable/OSRadioDrawable;->mStrokeColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 171
    iget-object v0, p0, Lcom/transsion/widgetslib/drawable/OSRadioDrawable;->mNormalBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->extractAlpha()Landroid/graphics/Bitmap;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/widgetslib/drawable/OSRadioDrawable;->mRectF:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/transsion/widgetslib/drawable/OSRadioDrawable;->mPaint:Landroid/graphics/Paint;

    const/4 v3, 0x0

    invoke-virtual {p1, v0, v3, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 184
    iget-object v0, p0, Lcom/transsion/widgetslib/drawable/OSRadioDrawable;->mRectF:Landroid/graphics/RectF;

    const/16 v1, 0x1f

    invoke-virtual {p1, v0, v3, v1}, Landroid/graphics/Canvas;->saveLayer(Landroid/graphics/RectF;Landroid/graphics/Paint;I)I

    move-result v0

    .line 185
    iget-object v1, p0, Lcom/transsion/widgetslib/drawable/OSRadioDrawable;->mPathCheckedOuter:Landroid/graphics/Path;

    sget-object v2, Landroid/graphics/Region$Op;->DIFFERENCE:Landroid/graphics/Region$Op;

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;Landroid/graphics/Region$Op;)Z

    .line 186
    iget-object v1, p0, Lcom/transsion/widgetslib/drawable/OSRadioDrawable;->mCheckedBitmap:Landroid/graphics/Bitmap;

    iget-object v2, p0, Lcom/transsion/widgetslib/drawable/OSRadioDrawable;->mRectF:Landroid/graphics/RectF;

    invoke-virtual {p1, v1, v3, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 188
    iget-object p0, p0, Lcom/transsion/widgetslib/drawable/OSRadioDrawable;->mPathCheckedInner:Landroid/graphics/Path;

    invoke-virtual {p1, p0}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    const/4 p0, -0x1

    .line 189
    invoke-virtual {p1, p0}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 191
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    :cond_78
    :goto_78
    return-void
.end method

.method public getIntrinsicHeight()I
    .registers 2

    .line 152
    iget-object v0, p0, Lcom/transsion/widgetslib/drawable/OSRadioDrawable;->mNormalBitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_11

    iget-object p0, p0, Lcom/transsion/widgetslib/drawable/OSRadioDrawable;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v0, Lcom/transsion/widgetslib/R$dimen;->os_ctm_radio_btn_wh:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    return p0

    :cond_11
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p0

    return p0
.end method

.method public getIntrinsicWidth()I
    .registers 2

    .line 157
    iget-object v0, p0, Lcom/transsion/widgetslib/drawable/OSRadioDrawable;->mNormalBitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_11

    iget-object p0, p0, Lcom/transsion/widgetslib/drawable/OSRadioDrawable;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v0, Lcom/transsion/widgetslib/R$dimen;->os_ctm_radio_btn_wh:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    return p0

    :cond_11
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p0

    return p0
.end method

.method public getOpacity()I
    .registers 1

    const/4 p0, -0x3

    return p0
.end method

.method public isRunning()Z
    .registers 1

    .line 483
    iget-object p0, p0, Lcom/transsion/widgetslib/drawable/OSRadioDrawable;->mValueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result p0

    return p0
.end method

.method public setAlpha(I)V
    .registers 2

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .registers 2

    return-void
.end method

.method public start(Lcom/transsion/widgetslib/drawable/ReversibleDrawable;)V
    .registers 3

    .line 467
    instance-of v0, p1, Lcom/transsion/widgetslib/drawable/OSRadioDrawable;

    if-eqz v0, :cond_11

    .line 468
    invoke-interface {p1}, Lcom/transsion/widgetslib/drawable/ReversibleDrawable;->stop()V

    .line 469
    check-cast p1, Lcom/transsion/widgetslib/drawable/OSRadioDrawable;

    invoke-direct {p0, p1}, Lcom/transsion/widgetslib/drawable/OSRadioDrawable;->setAnimParams(Lcom/transsion/widgetslib/drawable/OSRadioDrawable;)V

    .line 470
    iget-object p0, p0, Lcom/transsion/widgetslib/drawable/OSRadioDrawable;->mValueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    :cond_11
    return-void
.end method

.method public stop()V
    .registers 2

    .line 476
    invoke-virtual {p0}, Lcom/transsion/widgetslib/drawable/OSRadioDrawable;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 477
    iget-object p0, p0, Lcom/transsion/widgetslib/drawable/OSRadioDrawable;->mValueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_b
    return-void
.end method
