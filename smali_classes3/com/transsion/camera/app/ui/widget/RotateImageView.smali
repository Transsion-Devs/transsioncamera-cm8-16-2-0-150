.class public Lcom/transsion/camera/app/ui/widget/RotateImageView;
.super Landroid/widget/ImageView;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/app/ui/widget/IRotatable;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "AppCompatCustomView"
    }
.end annotation


# instance fields
.field private mAnimationEndTime:J

.field private mAnimationStartTime:J

.field private mClockwise:Z

.field private mCurrentDegree:I

.field private mEnableAnimation:Z

.field private mStartDegree:I

.field private mTargetDegree:I

.field private mThumbs:[Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    .line 59
    invoke-direct {p0, p1, v0}, Lcom/transsion/camera/app/ui/widget/RotateImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const/4 v0, 0x0

    .line 55
    invoke-direct {p0, p1, p2, v0}, Lcom/transsion/camera/app/ui/widget/RotateImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5

    const/4 v0, 0x0

    .line 51
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/transsion/camera/app/ui/widget/RotateImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 5

    .line 47
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 p1, 0x0

    .line 36
    iput p1, p0, Lcom/transsion/camera/app/ui/widget/RotateImageView;->mCurrentDegree:I

    .line 37
    iput p1, p0, Lcom/transsion/camera/app/ui/widget/RotateImageView;->mStartDegree:I

    .line 38
    iput p1, p0, Lcom/transsion/camera/app/ui/widget/RotateImageView;->mTargetDegree:I

    .line 40
    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/widget/RotateImageView;->mClockwise:Z

    const/4 p1, 0x1

    .line 41
    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/widget/RotateImageView;->mEnableAnimation:Z

    const-wide/16 p1, 0x0

    .line 43
    iput-wide p1, p0, Lcom/transsion/camera/app/ui/widget/RotateImageView;->mAnimationStartTime:J

    .line 44
    iput-wide p1, p0, Lcom/transsion/camera/app/ui/widget/RotateImageView;->mAnimationEndTime:J

    return-void
.end method


# virtual methods
.method protected getDegree()I
    .registers 1

    .line 63
    iget p0, p0, Lcom/transsion/camera/app/ui/widget/RotateImageView;->mTargetDegree:I

    return p0
.end method

.method protected onDetachedFromWindow()V
    .registers 1

    .line 155
    invoke-super {p0}, Landroid/widget/ImageView;->onDetachedFromWindow()V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 14

    .line 104
    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_8

    goto/16 :goto_b2

    .line 110
    :cond_8
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    .line 111
    iget v2, v1, Landroid/graphics/Rect;->right:I

    iget v3, v1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v2, v3

    .line 112
    iget v3, v1, Landroid/graphics/Rect;->bottom:I

    iget v1, v1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v3, v1

    if-eqz v2, :cond_b2

    if-nez v3, :cond_1c

    goto/16 :goto_b2

    .line 118
    :cond_1c
    iget v1, p0, Lcom/transsion/camera/app/ui/widget/RotateImageView;->mCurrentDegree:I

    iget v4, p0, Lcom/transsion/camera/app/ui/widget/RotateImageView;->mTargetDegree:I

    if-eq v1, v4, :cond_50

    .line 119
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v4

    .line 120
    iget-wide v6, p0, Lcom/transsion/camera/app/ui/widget/RotateImageView;->mAnimationEndTime:J

    cmp-long v1, v4, v6

    if-gez v1, :cond_4c

    .line 121
    iget-wide v6, p0, Lcom/transsion/camera/app/ui/widget/RotateImageView;->mAnimationStartTime:J

    sub-long/2addr v4, v6

    long-to-int v1, v4

    .line 122
    iget v4, p0, Lcom/transsion/camera/app/ui/widget/RotateImageView;->mStartDegree:I

    iget-boolean v5, p0, Lcom/transsion/camera/app/ui/widget/RotateImageView;->mClockwise:Z

    if-eqz v5, :cond_37

    goto :goto_38

    :cond_37
    neg-int v1, v1

    :goto_38
    mul-int/lit16 v1, v1, 0x10e

    div-int/lit16 v1, v1, 0x3e8

    add-int/2addr v4, v1

    if-ltz v4, :cond_42

    .line 124
    rem-int/lit16 v4, v4, 0x168

    goto :goto_46

    :cond_42
    rem-int/lit16 v4, v4, 0x168

    add-int/lit16 v4, v4, 0x168

    .line 125
    :goto_46
    iput v4, p0, Lcom/transsion/camera/app/ui/widget/RotateImageView;->mCurrentDegree:I

    .line 126
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    goto :goto_50

    .line 128
    :cond_4c
    iget v1, p0, Lcom/transsion/camera/app/ui/widget/RotateImageView;->mTargetDegree:I

    iput v1, p0, Lcom/transsion/camera/app/ui/widget/RotateImageView;->mCurrentDegree:I

    .line 132
    :cond_50
    :goto_50
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    .line 133
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v4

    .line 134
    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v5

    .line 135
    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v6

    .line 136
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v7

    sub-int/2addr v7, v1

    sub-int/2addr v7, v5

    .line 137
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v5

    sub-int/2addr v5, v4

    sub-int/2addr v5, v6

    .line 139
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getSaveCount()I

    move-result v6

    .line 142
    invoke-virtual {p0}, Landroid/widget/ImageView;->getScaleType()Landroid/widget/ImageView$ScaleType;

    move-result-object v8

    sget-object v9, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    if-ne v8, v9, :cond_8f

    if-lt v7, v2, :cond_7c

    if-ge v5, v3, :cond_8f

    :cond_7c
    int-to-float v8, v7

    int-to-float v9, v2

    div-float v9, v8, v9

    int-to-float v10, v5

    int-to-float v11, v3

    div-float v11, v10, v11

    .line 143
    invoke-static {v9, v11}, Ljava/lang/Math;->min(FF)F

    move-result v9

    const/high16 v11, 0x40000000    # 2.0f

    div-float/2addr v8, v11

    div-float/2addr v10, v11

    .line 144
    invoke-virtual {p1, v9, v9, v8, v10}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 146
    :cond_8f
    div-int/lit8 v7, v7, 0x2

    add-int/2addr v1, v7

    int-to-float v1, v1

    div-int/lit8 v5, v5, 0x2

    add-int/2addr v4, v5

    int-to-float v4, v4

    invoke-virtual {p1, v1, v4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 147
    iget p0, p0, Lcom/transsion/camera/app/ui/widget/RotateImageView;->mCurrentDegree:I

    neg-int p0, p0

    int-to-float p0, p0

    invoke-virtual {p1, p0}, Landroid/graphics/Canvas;->rotate(F)V

    neg-int p0, v2

    .line 148
    div-int/lit8 p0, p0, 0x2

    int-to-float p0, p0

    neg-int v1, v3

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    invoke-virtual {p1, p0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 149
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 150
    invoke-virtual {p1, v6}, Landroid/graphics/Canvas;->restoreToCount(I)V

    :cond_b2
    :goto_b2
    return-void
.end method

.method public onScreenStateChanged(I)V
    .registers 2

    .line 160
    invoke-super {p0, p1}, Landroid/view/View;->onScreenStateChanged(I)V

    if-nez p1, :cond_9

    const/4 p1, 0x0

    .line 162
    invoke-virtual {p0, p1}, Landroid/view/View;->setPressed(Z)V

    :cond_9
    return-void
.end method

.method public setBitmap(Landroid/graphics/Bitmap;)V
    .registers 7

    if-nez p1, :cond_9

    const/4 p1, 0x0

    .line 175
    iput-object p1, p0, Lcom/transsion/camera/app/ui/widget/RotateImageView;->mThumbs:[Landroid/graphics/drawable/Drawable;

    .line 176
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void

    .line 181
    :cond_9
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 182
    iget v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v2

    sub-int/2addr v1, v2

    .line 183
    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v2

    sub-int/2addr v0, v2

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v2

    sub-int/2addr v0, v2

    .line 184
    invoke-static {p1, v1, v0}, Landroid/media/ThumbnailUtils;->extractThumbnail(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 185
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/RotateImageView;->mThumbs:[Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_57

    iget-boolean v3, p0, Lcom/transsion/camera/app/ui/widget/RotateImageView;->mEnableAnimation:Z

    if-nez v3, :cond_34

    goto :goto_57

    .line 190
    :cond_34
    aget-object v3, v0, v2

    aput-object v3, v0, v1

    .line 191
    new-instance v3, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-direct {v3, v4, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    aput-object v3, v0, v2

    .line 192
    new-instance p1, Landroid/graphics/drawable/TransitionDrawable;

    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/RotateImageView;->mThumbs:[Landroid/graphics/drawable/Drawable;

    invoke-direct {p1, v0}, Landroid/graphics/drawable/TransitionDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    .line 193
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    const/16 v0, 0x1f4

    .line 194
    invoke-virtual {p1, v0}, Landroid/graphics/drawable/TransitionDrawable;->startTransition(I)V

    goto :goto_72

    :cond_57
    :goto_57
    const/4 v0, 0x2

    .line 186
    new-array v0, v0, [Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Lcom/transsion/camera/app/ui/widget/RotateImageView;->mThumbs:[Landroid/graphics/drawable/Drawable;

    .line 187
    new-instance v3, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-direct {v3, v4, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    aput-object v3, v0, v2

    .line 188
    iget-object p1, p0, Lcom/transsion/camera/app/ui/widget/RotateImageView;->mThumbs:[Landroid/graphics/drawable/Drawable;

    aget-object p1, p1, v2

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 196
    :goto_72
    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public setOrientation(IZ)V
    .registers 5

    .line 69
    iput-boolean p2, p0, Lcom/transsion/camera/app/ui/widget/RotateImageView;->mEnableAnimation:Z

    if-ltz p1, :cond_7

    .line 71
    rem-int/lit16 p1, p1, 0x168

    goto :goto_b

    :cond_7
    rem-int/lit16 p1, p1, 0x168

    add-int/lit16 p1, p1, 0x168

    .line 72
    :goto_b
    iget v0, p0, Lcom/transsion/camera/app/ui/widget/RotateImageView;->mTargetDegree:I

    if-ne p1, v0, :cond_10

    return-void

    .line 76
    :cond_10
    iput p1, p0, Lcom/transsion/camera/app/ui/widget/RotateImageView;->mTargetDegree:I

    if-eqz p2, :cond_42

    .line 78
    iget p1, p0, Lcom/transsion/camera/app/ui/widget/RotateImageView;->mCurrentDegree:I

    iput p1, p0, Lcom/transsion/camera/app/ui/widget/RotateImageView;->mStartDegree:I

    .line 79
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/transsion/camera/app/ui/widget/RotateImageView;->mAnimationStartTime:J

    .line 81
    iget v0, p0, Lcom/transsion/camera/app/ui/widget/RotateImageView;->mTargetDegree:I

    iget v1, p0, Lcom/transsion/camera/app/ui/widget/RotateImageView;->mCurrentDegree:I

    sub-int/2addr v0, v1

    if-ltz v0, :cond_26

    goto :goto_28

    :cond_26
    add-int/lit16 v0, v0, 0x168

    :goto_28
    const/16 v1, 0xb4

    if-le v0, v1, :cond_2e

    add-int/lit16 v0, v0, -0x168

    :cond_2e
    if-ltz v0, :cond_32

    const/4 v1, 0x1

    goto :goto_33

    :cond_32
    const/4 v1, 0x0

    .line 88
    :goto_33
    iput-boolean v1, p0, Lcom/transsion/camera/app/ui/widget/RotateImageView;->mClockwise:Z

    .line 89
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    mul-int/lit16 v0, v0, 0x3e8

    div-int/lit16 v0, v0, 0x10e

    int-to-long v0, v0

    add-long/2addr p1, v0

    iput-wide p1, p0, Lcom/transsion/camera/app/ui/widget/RotateImageView;->mAnimationEndTime:J

    goto :goto_44

    .line 91
    :cond_42
    iput p1, p0, Lcom/transsion/camera/app/ui/widget/RotateImageView;->mCurrentDegree:I

    .line 94
    :goto_44
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setOrientation(IZLcom/transsion/camera/app/ui/widget/IRotatable$RotateListener;)V
    .registers 4

    .line 99
    invoke-virtual {p0, p1, p2}, Lcom/transsion/camera/app/ui/widget/RotateImageView;->setOrientation(IZ)V

    return-void
.end method
