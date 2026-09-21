.class public Lcom/transsion/widgetslib/widget/shadow/ShadowLayout;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# static fields
.field public static final DEFAULT_SHADOW_COLOR:I = -0x7f777778

.field private static final DEFAULT_SHADOW_DISTANCE:F = 3.3f

.field private static final DEFAULT_SHADOW_RADIUS:F = 10.0f

.field private static final MIN_RADIUS:F = 0.1f


# instance fields
.field private mContext:Landroid/content/Context;

.field private final mPaint:Landroid/graphics/Paint;

.field private mShadowBg:Landroid/graphics/Bitmap;

.field private mShadowBgDrawable:Landroid/graphics/drawable/Drawable;

.field private mShadowColor:I

.field private mShadowDistance:F

.field private mShadowRadius:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    .line 46
    invoke-direct {p0, p1, v0}, Lcom/transsion/widgetslib/widget/shadow/ShadowLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const/4 v0, 0x0

    .line 50
    invoke-direct {p0, p1, p2, v0}, Lcom/transsion/widgetslib/widget/shadow/ShadowLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5

    const/4 v0, 0x1

    .line 88
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/transsion/widgetslib/widget/shadow/ShadowLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IZ)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;IZ)V
    .registers 7

    .line 58
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 36
    new-instance p3, Landroid/graphics/Paint;

    const/4 v0, 0x1

    invoke-direct {p3, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p3, p0, Lcom/transsion/widgetslib/widget/shadow/ShadowLayout;->mPaint:Landroid/graphics/Paint;

    .line 60
    iput-object p1, p0, Lcom/transsion/widgetslib/widget/shadow/ShadowLayout;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    .line 61
    invoke-virtual {p0, v1}, Landroid/view/View;->setWillNotDraw(Z)V

    const/4 v1, 0x2

    .line 62
    invoke-virtual {p0, v1, p3}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 65
    sget-object p3, Lcom/transsion/widgetslib/R$styleable;->ShadowLayout:[I

    invoke-virtual {p1, p2, p3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 68
    :try_start_1b
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    invoke-virtual {p3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p3

    const/high16 v1, 0x41200000    # 10.0f

    .line 67
    invoke-static {v0, v1, p3}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p3

    .line 69
    sget v1, Lcom/transsion/widgetslib/R$styleable;->ShadowLayout_os_shadow_radius:I

    invoke-virtual {p2, v1, p3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p3

    invoke-virtual {p0, p3}, Lcom/transsion/widgetslib/widget/shadow/ShadowLayout;->setShadowRadius(F)V

    .line 72
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    invoke-virtual {p3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p3

    const v1, 0x40533333    # 3.3f

    .line 71
    invoke-static {v0, v1, p3}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p3

    .line 73
    sget v0, Lcom/transsion/widgetslib/R$styleable;->ShadowLayout_os_shadow_distance:I

    invoke-virtual {p2, v0, p3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p3

    invoke-virtual {p0, p3}, Lcom/transsion/widgetslib/widget/shadow/ShadowLayout;->setShadowDistance(F)V

    .line 75
    sget p3, Lcom/transsion/widgetslib/R$drawable;->img_shadow:I

    invoke-virtual {p1, p3}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/widgetslib/widget/shadow/ShadowLayout;->mShadowBgDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz p4, :cond_65

    .line 77
    sget p1, Lcom/transsion/widgetslib/R$styleable;->ShadowLayout_os_shadow_color:I

    const p3, -0x7f777778

    invoke-virtual {p2, p1, p3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/transsion/widgetslib/widget/shadow/ShadowLayout;->setShadowColor(I)V
    :try_end_60
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_60} :catch_63
    .catchall {:try_start_1b .. :try_end_60} :catchall_61

    goto :goto_65

    :catchall_61
    move-exception p0

    goto :goto_70

    :catch_63
    move-exception p0

    goto :goto_69

    .line 83
    :cond_65
    :goto_65
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    return-void

    .line 81
    :goto_69
    :try_start_69
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_6c
    .catchall {:try_start_69 .. :try_end_6c} :catchall_61

    .line 83
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    return-void

    :goto_70
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 84
    throw p0
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;Z)V
    .registers 5

    const/4 v0, 0x0

    .line 54
    invoke-direct {p0, p1, p2, v0, p3}, Lcom/transsion/widgetslib/widget/shadow/ShadowLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IZ)V

    return-void
.end method

.method private resetShadow()V
    .registers 3

    .line 145
    iget v0, p0, Lcom/transsion/widgetslib/widget/shadow/ShadowLayout;->mShadowDistance:F

    iget v1, p0, Lcom/transsion/widgetslib/widget/shadow/ShadowLayout;->mShadowRadius:F

    add-float/2addr v0, v1

    float-to-int v0, v0

    .line 146
    invoke-virtual {p0, v0, v0, v0, v0}, Landroid/view/View;->setPadding(IIII)V

    .line 147
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    return-void
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .registers 5

    .line 154
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/shadow/ShadowLayout;->mShadowBg:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_12

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_12

    .line 155
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/shadow/ShadowLayout;->mShadowBg:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/transsion/widgetslib/widget/shadow/ShadowLayout;->mPaint:Landroid/graphics/Paint;

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2, v2, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 159
    :cond_12
    invoke-super {p0, p1}, Landroid/view/View;->dispatchDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public getShadowColor()I
    .registers 1

    .line 127
    iget p0, p0, Lcom/transsion/widgetslib/widget/shadow/ShadowLayout;->mShadowColor:I

    return p0
.end method

.method public getShadowDistance()F
    .registers 1

    .line 103
    iget p0, p0, Lcom/transsion/widgetslib/widget/shadow/ShadowLayout;->mShadowDistance:F

    return p0
.end method

.method public getShadowRadius()F
    .registers 1

    .line 112
    iget p0, p0, Lcom/transsion/widgetslib/widget/shadow/ShadowLayout;->mShadowRadius:F

    return p0
.end method

.method protected onDetachedFromWindow()V
    .registers 2

    .line 93
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 95
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/shadow/ShadowLayout;->mShadowBg:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_f

    .line 96
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    const/4 v0, 0x0

    .line 97
    iput-object v0, p0, Lcom/transsion/widgetslib/widget/shadow/ShadowLayout;->mShadowBg:Landroid/graphics/Bitmap;

    .line 98
    iput-object v0, p0, Lcom/transsion/widgetslib/widget/shadow/ShadowLayout;->mShadowBgDrawable:Landroid/graphics/drawable/Drawable;

    :cond_f
    return-void
.end method

.method public setShadowColor(I)V
    .registers 6

    .line 131
    iput p1, p0, Lcom/transsion/widgetslib/widget/shadow/ShadowLayout;->mShadowColor:I

    .line 133
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/shadow/ShadowLayout;->mShadowBgDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 134
    iget-object p1, p0, Lcom/transsion/widgetslib/widget/shadow/ShadowLayout;->mShadowBg:Landroid/graphics/Bitmap;

    if-eqz p1, :cond_e

    .line 135
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    .line 137
    :cond_e
    iget-object p1, p0, Lcom/transsion/widgetslib/widget/shadow/ShadowLayout;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/transsion/widgetslib/widget/shadow/ShadowLayout;->mShadowBgDrawable:Landroid/graphics/drawable/Drawable;

    iget v1, p0, Lcom/transsion/widgetslib/widget/shadow/ShadowLayout;->mShadowDistance:F

    iget v2, p0, Lcom/transsion/widgetslib/widget/shadow/ShadowLayout;->mShadowRadius:F

    add-float/2addr v1, v2

    const/high16 v2, 0x40000000    # 2.0f

    mul-float/2addr v1, v2

    .line 138
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/transsion/widgetslib/R$dimen;->os_fab_default_size:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v1, v2

    float-to-int v1, v1

    .line 137
    invoke-static {p1, v0, v1}, Lcom/transsion/widgetslib/util/Utils;->compressBitmap(Landroid/content/Context;Landroid/graphics/drawable/Drawable;I)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/widgetslib/widget/shadow/ShadowLayout;->mShadowBg:Landroid/graphics/Bitmap;

    .line 139
    invoke-direct {p0}, Lcom/transsion/widgetslib/widget/shadow/ShadowLayout;->resetShadow()V

    return-void
.end method

.method public setShadowDistance(F)V
    .registers 2

    .line 107
    iput p1, p0, Lcom/transsion/widgetslib/widget/shadow/ShadowLayout;->mShadowDistance:F

    .line 108
    invoke-direct {p0}, Lcom/transsion/widgetslib/widget/shadow/ShadowLayout;->resetShadow()V

    return-void
.end method

.method public setShadowRadius(F)V
    .registers 3

    const v0, 0x3dcccccd    # 0.1f

    .line 116
    invoke-static {v0, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    iput p1, p0, Lcom/transsion/widgetslib/widget/shadow/ShadowLayout;->mShadowRadius:F

    .line 118
    invoke-virtual {p0}, Landroid/view/View;->isInEditMode()Z

    move-result p1

    if-eqz p1, :cond_10

    return-void

    .line 123
    :cond_10
    invoke-direct {p0}, Lcom/transsion/widgetslib/widget/shadow/ShadowLayout;->resetShadow()V

    return-void
.end method
