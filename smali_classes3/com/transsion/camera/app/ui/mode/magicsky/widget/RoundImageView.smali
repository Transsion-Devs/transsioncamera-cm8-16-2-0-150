.class public Lcom/transsion/camera/app/ui/mode/magicsky/widget/RoundImageView;
.super Landroidx/appcompat/widget/AppCompatImageView;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/app/ui/mode/magicsky/widget/RoundImageView$OutlineProvider;
    }
.end annotation


# static fields
.field private static final BITMAP_CONFIG:Landroid/graphics/Bitmap$Config;

.field private static final SCALE_TYPE:Landroid/widget/ImageView$ScaleType;


# instance fields
.field private mBitmap:Landroid/graphics/Bitmap;

.field private mBitmapHeight:I

.field private final mBitmapPaint:Landroid/graphics/Paint;

.field private mBitmapShader:Landroid/graphics/BitmapShader;

.field private mBitmapWidth:I

.field private mBorderOverlay:Z

.field private mColorFilter:Landroid/graphics/ColorFilter;

.field private mDisableCircularTransformation:Z

.field private final mDrawableRect:Landroid/graphics/RectF;

.field private mReady:Z

.field private mRoundRadius:I

.field private mSetupPending:Z

.field private final mShaderMatrix:Landroid/graphics/Matrix;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 32
    sget-object v0, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    sput-object v0, Lcom/transsion/camera/app/ui/mode/magicsky/widget/RoundImageView;->SCALE_TYPE:Landroid/widget/ImageView$ScaleType;

    .line 34
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    sput-object v0, Lcom/transsion/camera/app/ui/mode/magicsky/widget/RoundImageView;->BITMAP_CONFIG:Landroid/graphics/Bitmap$Config;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const/4 v0, 0x0

    .line 66
    invoke-direct {p0, p1, p2, v0}, Lcom/transsion/camera/app/ui/mode/magicsky/widget/RoundImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 7

    .line 70
    invoke-direct {p0, p1, p2, p3}, Landroidx/appcompat/widget/AppCompatImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 40
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/app/ui/mode/magicsky/widget/RoundImageView;->mDrawableRect:Landroid/graphics/RectF;

    .line 42
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/app/ui/mode/magicsky/widget/RoundImageView;->mShaderMatrix:Landroid/graphics/Matrix;

    .line 43
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/app/ui/mode/magicsky/widget/RoundImageView;->mBitmapPaint:Landroid/graphics/Paint;

    const/16 v0, 0x10

    .line 45
    iput v0, p0, Lcom/transsion/camera/app/ui/mode/magicsky/widget/RoundImageView;->mRoundRadius:I

    .line 72
    sget-object v1, Lcom/transsion/camera/feature/mode/magicsky/R$styleable;->RoundImageView:[I

    const/4 v2, 0x0

    invoke-virtual {p1, p2, v1, p3, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 74
    sget p2, Lcom/transsion/camera/feature/mode/magicsky/R$styleable;->RoundImageView_round_radius:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lcom/transsion/camera/app/ui/mode/magicsky/widget/RoundImageView;->mRoundRadius:I

    .line 75
    sget p2, Lcom/transsion/camera/feature/mode/magicsky/R$styleable;->RoundImageView_round_border_overlay:I

    invoke-virtual {p1, p2, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/transsion/camera/app/ui/mode/magicsky/widget/RoundImageView;->mBorderOverlay:Z

    .line 77
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 79
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/mode/magicsky/widget/RoundImageView;->init()V

    return-void
.end method

.method private applyColorFilter()V
    .registers 2

    .line 210
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/magicsky/widget/RoundImageView;->mBitmapPaint:Landroid/graphics/Paint;

    if-eqz v0, :cond_9

    .line 211
    iget-object p0, p0, Lcom/transsion/camera/app/ui/mode/magicsky/widget/RoundImageView;->mColorFilter:Landroid/graphics/ColorFilter;

    invoke-virtual {v0, p0}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    :cond_9
    return-void
.end method

.method private calculateBounds()Landroid/graphics/RectF;
    .registers 5

    .line 283
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    .line 284
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v2

    sub-int/2addr v1, v2

    .line 286
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v2

    int-to-float v2, v2

    .line 287
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result p0

    int-to-float p0, p0

    .line 289
    new-instance v3, Landroid/graphics/RectF;

    int-to-float v0, v0

    add-float/2addr v0, v2

    int-to-float v1, v1

    add-float/2addr v1, p0

    invoke-direct {v3, v2, p0, v0, v1}, Landroid/graphics/RectF;-><init>(FFFF)V

    return-object v3
.end method

.method private getBitmapFromDrawable(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;
    .registers 7

    const/4 p0, 0x0

    if-nez p1, :cond_4

    return-object p0

    .line 220
    :cond_4
    instance-of v0, p1, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v0, :cond_f

    .line 221
    check-cast p1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0

    .line 227
    :cond_f
    :try_start_f
    instance-of v0, p1, Landroid/graphics/drawable/ColorDrawable;

    if-eqz v0, :cond_1d

    .line 228
    sget-object v0, Lcom/transsion/camera/app/ui/mode/magicsky/widget/RoundImageView;->BITMAP_CONFIG:Landroid/graphics/Bitmap$Config;

    const/4 v1, 0x2

    invoke-static {v1, v1, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_2b

    :catch_1b
    move-exception p1

    goto :goto_40

    .line 230
    :cond_1d
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    sget-object v2, Lcom/transsion/camera/app/ui/mode/magicsky/widget/RoundImageView;->BITMAP_CONFIG:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 233
    :goto_2b
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 234
    invoke-virtual {v1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v2

    invoke-virtual {v1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {p1, v4, v4, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 235
    invoke-virtual {p1, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V
    :try_end_3f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_3f} :catch_1b

    return-object v0

    .line 238
    :goto_40
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    return-object p0
.end method

.method private init()V
    .registers 3

    .line 83
    sget-object v0, Lcom/transsion/camera/app/ui/mode/magicsky/widget/RoundImageView;->SCALE_TYPE:Landroid/widget/ImageView$ScaleType;

    invoke-super {p0, v0}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    const/4 v0, 0x1

    .line 84
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/mode/magicsky/widget/RoundImageView;->mReady:Z

    .line 85
    new-instance v0, Lcom/transsion/camera/app/ui/mode/magicsky/widget/RoundImageView$OutlineProvider;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/transsion/camera/app/ui/mode/magicsky/widget/RoundImageView$OutlineProvider;-><init>(Lcom/transsion/camera/app/ui/mode/magicsky/widget/RoundImageView;Lcom/transsion/camera/app/ui/mode/magicsky/widget/RoundImageView-IA;)V

    invoke-virtual {p0, v0}, Landroid/view/View;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    .line 86
    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/mode/magicsky/widget/RoundImageView;->mSetupPending:Z

    if-eqz v0, :cond_1b

    .line 87
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/mode/magicsky/widget/RoundImageView;->setup()V

    const/4 v0, 0x0

    .line 88
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/mode/magicsky/widget/RoundImageView;->mSetupPending:Z

    :cond_1b
    return-void
.end method

.method private initializeBitmap()V
    .registers 2

    .line 244
    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/mode/magicsky/widget/RoundImageView;->mDisableCircularTransformation:Z

    if-eqz v0, :cond_8

    const/4 v0, 0x0

    .line 245
    iput-object v0, p0, Lcom/transsion/camera/app/ui/mode/magicsky/widget/RoundImageView;->mBitmap:Landroid/graphics/Bitmap;

    goto :goto_12

    .line 247
    :cond_8
    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/transsion/camera/app/ui/mode/magicsky/widget/RoundImageView;->getBitmapFromDrawable(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/app/ui/mode/magicsky/widget/RoundImageView;->mBitmap:Landroid/graphics/Bitmap;

    .line 249
    :goto_12
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/mode/magicsky/widget/RoundImageView;->setup()V

    return-void
.end method

.method private setup()V
    .registers 5

    .line 253
    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/mode/magicsky/widget/RoundImageView;->mReady:Z

    const/4 v1, 0x1

    if-nez v0, :cond_8

    .line 254
    iput-boolean v1, p0, Lcom/transsion/camera/app/ui/mode/magicsky/widget/RoundImageView;->mSetupPending:Z

    return-void

    .line 258
    :cond_8
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    if-nez v0, :cond_15

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    if-nez v0, :cond_15

    return-void

    .line 262
    :cond_15
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/magicsky/widget/RoundImageView;->mBitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_1d

    .line 263
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void

    .line 267
    :cond_1d
    new-instance v0, Landroid/graphics/BitmapShader;

    iget-object v2, p0, Lcom/transsion/camera/app/ui/mode/magicsky/widget/RoundImageView;->mBitmap:Landroid/graphics/Bitmap;

    sget-object v3, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct {v0, v2, v3, v3}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    iput-object v0, p0, Lcom/transsion/camera/app/ui/mode/magicsky/widget/RoundImageView;->mBitmapShader:Landroid/graphics/BitmapShader;

    .line 269
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/magicsky/widget/RoundImageView;->mBitmapPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 270
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/magicsky/widget/RoundImageView;->mBitmapPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/transsion/camera/app/ui/mode/magicsky/widget/RoundImageView;->mBitmapShader:Landroid/graphics/BitmapShader;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 272
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/magicsky/widget/RoundImageView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/app/ui/mode/magicsky/widget/RoundImageView;->mBitmapHeight:I

    .line 273
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/magicsky/widget/RoundImageView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/app/ui/mode/magicsky/widget/RoundImageView;->mBitmapWidth:I

    .line 275
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/magicsky/widget/RoundImageView;->mDrawableRect:Landroid/graphics/RectF;

    invoke-direct {p0}, Lcom/transsion/camera/app/ui/mode/magicsky/widget/RoundImageView;->calculateBounds()Landroid/graphics/RectF;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 277
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/mode/magicsky/widget/RoundImageView;->applyColorFilter()V

    .line 278
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/mode/magicsky/widget/RoundImageView;->updateShaderMatrix()V

    .line 279
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method private updateShaderMatrix()V
    .registers 8

    .line 297
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/magicsky/widget/RoundImageView;->mShaderMatrix:Landroid/graphics/Matrix;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 299
    iget v0, p0, Lcom/transsion/camera/app/ui/mode/magicsky/widget/RoundImageView;->mBitmapWidth:I

    int-to-float v0, v0

    iget-object v1, p0, Lcom/transsion/camera/app/ui/mode/magicsky/widget/RoundImageView;->mDrawableRect:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    move-result v1

    mul-float/2addr v0, v1

    iget-object v1, p0, Lcom/transsion/camera/app/ui/mode/magicsky/widget/RoundImageView;->mDrawableRect:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v1

    iget v2, p0, Lcom/transsion/camera/app/ui/mode/magicsky/widget/RoundImageView;->mBitmapHeight:I

    int-to-float v2, v2

    mul-float/2addr v1, v2

    cmpl-float v0, v0, v1

    const/high16 v1, 0x3f000000    # 0.5f

    const/4 v2, 0x0

    if-lez v0, :cond_3b

    .line 300
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/magicsky/widget/RoundImageView;->mDrawableRect:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v0

    iget v3, p0, Lcom/transsion/camera/app/ui/mode/magicsky/widget/RoundImageView;->mBitmapHeight:I

    int-to-float v3, v3

    div-float/2addr v0, v3

    .line 301
    iget-object v3, p0, Lcom/transsion/camera/app/ui/mode/magicsky/widget/RoundImageView;->mDrawableRect:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    move-result v3

    iget v4, p0, Lcom/transsion/camera/app/ui/mode/magicsky/widget/RoundImageView;->mBitmapWidth:I

    int-to-float v4, v4

    mul-float/2addr v4, v0

    sub-float/2addr v3, v4

    mul-float/2addr v3, v1

    move v6, v3

    move v3, v2

    move v2, v6

    goto :goto_51

    .line 303
    :cond_3b
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/magicsky/widget/RoundImageView;->mDrawableRect:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    iget v3, p0, Lcom/transsion/camera/app/ui/mode/magicsky/widget/RoundImageView;->mBitmapWidth:I

    int-to-float v3, v3

    div-float/2addr v0, v3

    .line 304
    iget-object v3, p0, Lcom/transsion/camera/app/ui/mode/magicsky/widget/RoundImageView;->mDrawableRect:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->height()F

    move-result v3

    iget v4, p0, Lcom/transsion/camera/app/ui/mode/magicsky/widget/RoundImageView;->mBitmapHeight:I

    int-to-float v4, v4

    mul-float/2addr v4, v0

    sub-float/2addr v3, v4

    mul-float/2addr v3, v1

    .line 307
    :goto_51
    iget-object v4, p0, Lcom/transsion/camera/app/ui/mode/magicsky/widget/RoundImageView;->mShaderMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v4, v0, v0}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 308
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/magicsky/widget/RoundImageView;->mShaderMatrix:Landroid/graphics/Matrix;

    add-float/2addr v2, v1

    float-to-int v2, v2

    int-to-float v2, v2

    iget-object v4, p0, Lcom/transsion/camera/app/ui/mode/magicsky/widget/RoundImageView;->mDrawableRect:Landroid/graphics/RectF;

    iget v5, v4, Landroid/graphics/RectF;->left:F

    add-float/2addr v2, v5

    add-float/2addr v3, v1

    float-to-int v1, v3

    int-to-float v1, v1

    iget v3, v4, Landroid/graphics/RectF;->top:F

    add-float/2addr v1, v3

    invoke-virtual {v0, v2, v1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 310
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/magicsky/widget/RoundImageView;->mBitmapShader:Landroid/graphics/BitmapShader;

    iget-object p0, p0, Lcom/transsion/camera/app/ui/mode/magicsky/widget/RoundImageView;->mShaderMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, p0}, Landroid/graphics/Shader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    return-void
.end method


# virtual methods
.method public getColorFilter()Landroid/graphics/ColorFilter;
    .registers 1

    .line 206
    iget-object p0, p0, Lcom/transsion/camera/app/ui/mode/magicsky/widget/RoundImageView;->mColorFilter:Landroid/graphics/ColorFilter;

    return-object p0
.end method

.method public getScaleType()Landroid/widget/ImageView$ScaleType;
    .registers 1

    .line 94
    sget-object p0, Lcom/transsion/camera/app/ui/mode/magicsky/widget/RoundImageView;->SCALE_TYPE:Landroid/widget/ImageView$ScaleType;

    return-object p0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 5

    .line 113
    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/mode/magicsky/widget/RoundImageView;->mDisableCircularTransformation:Z

    if-eqz v0, :cond_8

    .line 114
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    return-void

    .line 118
    :cond_8
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/magicsky/widget/RoundImageView;->mBitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_d

    return-void

    .line 122
    :cond_d
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/magicsky/widget/RoundImageView;->mDrawableRect:Landroid/graphics/RectF;

    iget v1, p0, Lcom/transsion/camera/app/ui/mode/magicsky/widget/RoundImageView;->mRoundRadius:I

    int-to-float v2, v1

    int-to-float v1, v1

    iget-object p0, p0, Lcom/transsion/camera/app/ui/mode/magicsky/widget/RoundImageView;->mBitmapPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2, v1, p0}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    return-void
.end method

.method protected onSizeChanged(IIII)V
    .registers 5

    .line 127
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    .line 128
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/mode/magicsky/widget/RoundImageView;->setup()V

    return-void
.end method

.method public setAdjustViewBounds(Z)V
    .registers 2

    if-nez p1, :cond_3

    return-void

    .line 107
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "adjustViewBounds not supported."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setBorderOverlay(Z)V
    .registers 3

    .line 148
    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/mode/magicsky/widget/RoundImageView;->mBorderOverlay:Z

    if-ne p1, v0, :cond_5

    return-void

    .line 152
    :cond_5
    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/mode/magicsky/widget/RoundImageView;->mBorderOverlay:Z

    .line 153
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/mode/magicsky/widget/RoundImageView;->setup()V

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .registers 3

    .line 195
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/magicsky/widget/RoundImageView;->mColorFilter:Landroid/graphics/ColorFilter;

    if-ne p1, v0, :cond_5

    return-void

    .line 199
    :cond_5
    iput-object p1, p0, Lcom/transsion/camera/app/ui/mode/magicsky/widget/RoundImageView;->mColorFilter:Landroid/graphics/ColorFilter;

    .line 200
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/mode/magicsky/widget/RoundImageView;->applyColorFilter()V

    .line 201
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setDisableCircularTransformation(Z)V
    .registers 3

    .line 161
    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/mode/magicsky/widget/RoundImageView;->mDisableCircularTransformation:Z

    if-ne v0, p1, :cond_5

    return-void

    .line 165
    :cond_5
    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/mode/magicsky/widget/RoundImageView;->mDisableCircularTransformation:Z

    .line 166
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/mode/magicsky/widget/RoundImageView;->initializeBitmap()V

    return-void
.end method

.method public setImageBitmap(Landroid/graphics/Bitmap;)V
    .registers 2

    .line 171
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 172
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/mode/magicsky/widget/RoundImageView;->initializeBitmap()V

    return-void
.end method

.method public setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    .registers 2

    .line 177
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 178
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/mode/magicsky/widget/RoundImageView;->initializeBitmap()V

    return-void
.end method

.method public setImageResource(I)V
    .registers 2

    .line 183
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatImageView;->setImageResource(I)V

    .line 184
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/mode/magicsky/widget/RoundImageView;->initializeBitmap()V

    return-void
.end method

.method public setImageURI(Landroid/net/Uri;)V
    .registers 2

    .line 189
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatImageView;->setImageURI(Landroid/net/Uri;)V

    .line 190
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/mode/magicsky/widget/RoundImageView;->initializeBitmap()V

    return-void
.end method

.method public setPadding(IIII)V
    .registers 5

    .line 133
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->setPadding(IIII)V

    .line 134
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/mode/magicsky/widget/RoundImageView;->setup()V

    return-void
.end method

.method public setPaddingRelative(IIII)V
    .registers 5

    .line 139
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->setPaddingRelative(IIII)V

    .line 140
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/mode/magicsky/widget/RoundImageView;->setup()V

    return-void
.end method

.method public setScaleType(Landroid/widget/ImageView$ScaleType;)V
    .registers 3

    .line 99
    sget-object p0, Lcom/transsion/camera/app/ui/mode/magicsky/widget/RoundImageView;->SCALE_TYPE:Landroid/widget/ImageView$ScaleType;

    if-ne p1, p0, :cond_5

    return-void

    .line 100
    :cond_5
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "ScaleType %s not supported."

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
