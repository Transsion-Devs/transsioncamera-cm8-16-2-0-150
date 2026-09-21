.class public Lcom/transsion/camera/app/ui/widget/RoundedThumbnailView;
.super Landroid/widget/ImageView;
.source "SourceFile"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "AppCompatCustomView"
    }
.end annotation


# instance fields
.field private mBitmapHeight:I

.field private mBitmapWidth:I

.field private mRoundedBitmapShader:Landroid/graphics/BitmapShader;

.field private mRoundedMatrix:Landroid/graphics/Matrix;

.field private mRoundedPaint:Landroid/graphics/Paint;

.field private mRoundedRadius:F

.field private mRoundedRectF:Landroid/graphics/RectF;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const/4 v0, 0x0

    .line 46
    invoke-direct {p0, p1, p2, v0}, Lcom/transsion/camera/app/ui/widget/RoundedThumbnailView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    .line 50
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 51
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/widget/RoundedThumbnailView;->init(Landroid/content/Context;)V

    return-void
.end method

.method private init(Landroid/content/Context;)V
    .registers 3

    .line 55
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/transsion/camera/R$dimen;->thumbnail_rounded_radius:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    iput p1, p0, Lcom/transsion/camera/app/ui/widget/RoundedThumbnailView;->mRoundedRadius:F

    return-void
.end method

.method private reset()V
    .registers 2

    const/4 v0, 0x0

    .line 121
    iput-object v0, p0, Lcom/transsion/camera/app/ui/widget/RoundedThumbnailView;->mRoundedBitmapShader:Landroid/graphics/BitmapShader;

    .line 122
    iput-object v0, p0, Lcom/transsion/camera/app/ui/widget/RoundedThumbnailView;->mRoundedRectF:Landroid/graphics/RectF;

    .line 123
    iput-object v0, p0, Lcom/transsion/camera/app/ui/widget/RoundedThumbnailView;->mRoundedMatrix:Landroid/graphics/Matrix;

    .line 124
    iput-object v0, p0, Lcom/transsion/camera/app/ui/widget/RoundedThumbnailView;->mRoundedPaint:Landroid/graphics/Paint;

    const/4 v0, 0x0

    .line 125
    iput v0, p0, Lcom/transsion/camera/app/ui/widget/RoundedThumbnailView;->mBitmapWidth:I

    .line 126
    iput v0, p0, Lcom/transsion/camera/app/ui/widget/RoundedThumbnailView;->mBitmapHeight:I

    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 10

    .line 93
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/RoundedThumbnailView;->mRoundedBitmapShader:Landroid/graphics/BitmapShader;

    if-eqz v0, :cond_6e

    iget v0, p0, Lcom/transsion/camera/app/ui/widget/RoundedThumbnailView;->mRoundedRadius:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_6e

    .line 94
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    .line 95
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v2

    .line 97
    :try_start_13
    iget v3, p0, Lcom/transsion/camera/app/ui/widget/RoundedThumbnailView;->mBitmapWidth:I

    if-ne v3, v0, :cond_1b

    iget v4, p0, Lcom/transsion/camera/app/ui/widget/RoundedThumbnailView;->mBitmapHeight:I

    if-eq v4, v2, :cond_51

    :cond_1b
    int-to-float v4, v0

    const/high16 v5, 0x3f800000    # 1.0f

    mul-float v6, v4, v5

    int-to-float v3, v3

    div-float/2addr v6, v3

    int-to-float v3, v2

    mul-float/2addr v5, v3

    .line 98
    iget v7, p0, Lcom/transsion/camera/app/ui/widget/RoundedThumbnailView;->mBitmapHeight:I

    int-to-float v7, v7

    div-float/2addr v5, v7

    invoke-static {v6, v5}, Ljava/lang/Math;->max(FF)F

    move-result v5

    .line 99
    iget v6, p0, Lcom/transsion/camera/app/ui/widget/RoundedThumbnailView;->mBitmapWidth:I

    int-to-float v6, v6

    mul-float/2addr v6, v5

    sub-float/2addr v6, v4

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v6, v4

    float-to-int v6, v6

    .line 100
    iget v7, p0, Lcom/transsion/camera/app/ui/widget/RoundedThumbnailView;->mBitmapHeight:I

    int-to-float v7, v7

    mul-float/2addr v7, v5

    sub-float/2addr v7, v3

    div-float/2addr v7, v4

    float-to-int v3, v7

    .line 101
    iget-object v4, p0, Lcom/transsion/camera/app/ui/widget/RoundedThumbnailView;->mRoundedMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v4, v5, v5}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 102
    iget-object v4, p0, Lcom/transsion/camera/app/ui/widget/RoundedThumbnailView;->mRoundedMatrix:Landroid/graphics/Matrix;

    neg-int v5, v6

    int-to-float v5, v5

    neg-int v3, v3

    int-to-float v3, v3

    invoke-virtual {v4, v5, v3}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 103
    iget-object v3, p0, Lcom/transsion/camera/app/ui/widget/RoundedThumbnailView;->mRoundedBitmapShader:Landroid/graphics/BitmapShader;

    iget-object v4, p0, Lcom/transsion/camera/app/ui/widget/RoundedThumbnailView;->mRoundedMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v3, v4}, Landroid/graphics/Shader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    .line 105
    :cond_51
    iget-object v3, p0, Lcom/transsion/camera/app/ui/widget/RoundedThumbnailView;->mRoundedPaint:Landroid/graphics/Paint;

    iget-object v4, p0, Lcom/transsion/camera/app/ui/widget/RoundedThumbnailView;->mRoundedBitmapShader:Landroid/graphics/BitmapShader;

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 106
    iget-object v3, p0, Lcom/transsion/camera/app/ui/widget/RoundedThumbnailView;->mRoundedRectF:Landroid/graphics/RectF;

    int-to-float v0, v0

    int-to-float v2, v2

    invoke-virtual {v3, v1, v1, v0, v2}, Landroid/graphics/RectF;->set(FFFF)V

    .line 107
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/RoundedThumbnailView;->mRoundedRectF:Landroid/graphics/RectF;

    iget v1, p0, Lcom/transsion/camera/app/ui/widget/RoundedThumbnailView;->mRoundedRadius:F

    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/RoundedThumbnailView;->mRoundedPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v1, p0}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V
    :try_end_68
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_68} :catch_69

    goto :goto_76

    :catch_69
    move-exception p0

    .line 109
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_76

    .line 113
    :cond_6e
    :try_start_6e
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onDraw(Landroid/graphics/Canvas;)V
    :try_end_71
    .catch Ljava/lang/Exception; {:try_start_6e .. :try_end_71} :catch_72

    return-void

    :catch_72
    move-exception p0

    .line 115
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_76
    return-void
.end method

.method public setImageBitmap(Landroid/graphics/Bitmap;)V
    .registers 4

    .line 77
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    if-eqz p1, :cond_38

    .line 79
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-eqz v0, :cond_c

    goto :goto_38

    .line 82
    :cond_c
    new-instance v0, Landroid/graphics/BitmapShader;

    sget-object v1, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct {v0, p1, v1, v1}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    iput-object v0, p0, Lcom/transsion/camera/app/ui/widget/RoundedThumbnailView;->mRoundedBitmapShader:Landroid/graphics/BitmapShader;

    .line 83
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/app/ui/widget/RoundedThumbnailView;->mRoundedRectF:Landroid/graphics/RectF;

    .line 84
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/app/ui/widget/RoundedThumbnailView;->mRoundedMatrix:Landroid/graphics/Matrix;

    .line 85
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/transsion/camera/app/ui/widget/RoundedThumbnailView;->mRoundedPaint:Landroid/graphics/Paint;

    .line 86
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/app/ui/widget/RoundedThumbnailView;->mBitmapWidth:I

    .line 87
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p1

    iput p1, p0, Lcom/transsion/camera/app/ui/widget/RoundedThumbnailView;->mBitmapHeight:I

    return-void

    .line 80
    :cond_38
    :goto_38
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/widget/RoundedThumbnailView;->reset()V

    return-void
.end method

.method public setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    .registers 2

    .line 71
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 72
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/widget/RoundedThumbnailView;->reset()V

    return-void
.end method

.method public setImageResource(I)V
    .registers 2

    .line 65
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 66
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/widget/RoundedThumbnailView;->reset()V

    return-void
.end method

.method public setRoundedRadius(F)V
    .registers 2

    .line 59
    iput p1, p0, Lcom/transsion/camera/app/ui/widget/RoundedThumbnailView;->mRoundedRadius:F

    .line 60
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method
