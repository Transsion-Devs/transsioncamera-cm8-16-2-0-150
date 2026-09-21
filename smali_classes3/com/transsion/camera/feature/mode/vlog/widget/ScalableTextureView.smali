.class public abstract Lcom/transsion/camera/feature/mode/vlog/widget/ScalableTextureView;
.super Landroid/view/TextureView;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/feature/mode/vlog/widget/ScalableTextureView$ScaleType;
    }
.end annotation


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private mContentHeight:Ljava/lang/Integer;

.field private mContentScaleX:F

.field private mContentScaleY:F

.field private mContentWidth:Ljava/lang/Integer;

.field private mPivotPointX:F

.field private mPivotPointY:F

.field private mScaleType:Lcom/transsion/camera/feature/mode/vlog/widget/ScalableTextureView$ScaleType;

.field private mScreenFormType:I

.field private final mTransformMatrix:Landroid/graphics/Matrix;

.field private mTranslationY:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 16
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "Vlog_Texture"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/feature/mode/vlog/widget/ScalableTextureView;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    .line 43
    invoke-direct {p0, p1, v0}, Lcom/transsion/camera/feature/mode/vlog/widget/ScalableTextureView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const/4 v0, 0x0

    .line 48
    invoke-direct {p0, p1, p2, v0}, Lcom/transsion/camera/feature/mode/vlog/widget/ScalableTextureView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5

    const/4 v0, 0x0

    .line 53
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/transsion/camera/feature/mode/vlog/widget/ScalableTextureView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 5

    .line 58
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/TextureView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 p1, 0x0

    .line 21
    iput p1, p0, Lcom/transsion/camera/feature/mode/vlog/widget/ScalableTextureView;->mPivotPointX:F

    .line 22
    iput p1, p0, Lcom/transsion/camera/feature/mode/vlog/widget/ScalableTextureView;->mPivotPointY:F

    const/high16 p1, 0x3f800000    # 1.0f

    .line 24
    iput p1, p0, Lcom/transsion/camera/feature/mode/vlog/widget/ScalableTextureView;->mContentScaleX:F

    .line 25
    iput p1, p0, Lcom/transsion/camera/feature/mode/vlog/widget/ScalableTextureView;->mContentScaleY:F

    .line 27
    new-instance p1, Landroid/graphics/Matrix;

    invoke-direct {p1}, Landroid/graphics/Matrix;-><init>()V

    iput-object p1, p0, Lcom/transsion/camera/feature/mode/vlog/widget/ScalableTextureView;->mTransformMatrix:Landroid/graphics/Matrix;

    const/4 p1, 0x0

    .line 33
    iput p1, p0, Lcom/transsion/camera/feature/mode/vlog/widget/ScalableTextureView;->mScreenFormType:I

    return-void
.end method

.method private updateMatrixScale(FF)V
    .registers 9

    .line 182
    sget-object v0, Lcom/transsion/camera/feature/mode/vlog/widget/ScalableTextureView;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateMatrixScale mContentScaleX: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/transsion/camera/feature/mode/vlog/widget/ScalableTextureView;->mContentScaleX:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, ", mContentScaleY: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/transsion/camera/feature/mode/vlog/widget/ScalableTextureView;->mContentScaleY:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, ", mPivotPointX: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/transsion/camera/feature/mode/vlog/widget/ScalableTextureView;->mPivotPointX:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, ", mPivotPointY: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/transsion/camera/feature/mode/vlog/widget/ScalableTextureView;->mPivotPointY:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 185
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/widget/ScalableTextureView;->mTransformMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    .line 187
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/widget/ScalableTextureView;->mScaleType:Lcom/transsion/camera/feature/mode/vlog/widget/ScalableTextureView$ScaleType;

    sget-object v1, Lcom/transsion/camera/feature/mode/vlog/widget/ScalableTextureView$ScaleType;->FILL:Lcom/transsion/camera/feature/mode/vlog/widget/ScalableTextureView$ScaleType;

    if-eq v0, v1, :cond_51

    .line 188
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/vlog/widget/ScalableTextureView;->mTransformMatrix:Landroid/graphics/Matrix;

    iget p2, p0, Lcom/transsion/camera/feature/mode/vlog/widget/ScalableTextureView;->mContentScaleX:F

    iget v0, p0, Lcom/transsion/camera/feature/mode/vlog/widget/ScalableTextureView;->mContentScaleY:F

    iget v1, p0, Lcom/transsion/camera/feature/mode/vlog/widget/ScalableTextureView;->mPivotPointX:F

    iget v2, p0, Lcom/transsion/camera/feature/mode/vlog/widget/ScalableTextureView;->mPivotPointY:F

    invoke-virtual {p1, p2, v0, v1, v2}, Landroid/graphics/Matrix;->setScale(FFFF)V

    goto/16 :goto_d2

    .line 190
    :cond_51
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/widget/ScalableTextureView;->mTransformMatrix:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/transsion/camera/feature/mode/vlog/widget/ScalableTextureView;->mContentWidth:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    int-to-float v1, v1

    sub-float v1, p1, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    iget-object v3, p0, Lcom/transsion/camera/feature/mode/vlog/widget/ScalableTextureView;->mContentHeight:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    int-to-float v3, v3

    sub-float v3, p2, v3

    div-float/2addr v3, v2

    invoke-virtual {v0, v1, v3}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 191
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/widget/ScalableTextureView;->mTransformMatrix:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/transsion/camera/feature/mode/vlog/widget/ScalableTextureView;->mContentWidth:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, p1

    iget-object v3, p0, Lcom/transsion/camera/feature/mode/vlog/widget/ScalableTextureView;->mContentHeight:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, p2

    iget v4, p0, Lcom/transsion/camera/feature/mode/vlog/widget/ScalableTextureView;->mPivotPointX:F

    iget v5, p0, Lcom/transsion/camera/feature/mode/vlog/widget/ScalableTextureView;->mPivotPointY:F

    invoke-virtual {v0, v1, v3, v4, v5}, Landroid/graphics/Matrix;->preScale(FFFF)Z

    .line 192
    iget v0, p0, Lcom/transsion/camera/feature/mode/vlog/widget/ScalableTextureView;->mScreenFormType:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_a4

    .line 193
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/widget/ScalableTextureView;->mTransformMatrix:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/transsion/camera/feature/mode/vlog/widget/ScalableTextureView;->mContentWidth:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    int-to-float v1, v1

    div-float v1, p1, v1

    iget-object v3, p0, Lcom/transsion/camera/feature/mode/vlog/widget/ScalableTextureView;->mContentWidth:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    int-to-float v3, v3

    div-float v3, p1, v3

    div-float/2addr p1, v2

    div-float/2addr p2, v2

    invoke-virtual {v0, v1, v3, p1, p2}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    goto :goto_c9

    .line 195
    :cond_a4
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/widget/ScalableTextureView;->mContentWidth:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-float v0, v0

    div-float v0, p1, v0

    .line 196
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/vlog/widget/ScalableTextureView;->mContentHeight:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    int-to-float v1, v1

    div-float v1, p2, v1

    cmpl-float v3, v0, v1

    if-ltz v3, :cond_c2

    .line 198
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/widget/ScalableTextureView;->mTransformMatrix:Landroid/graphics/Matrix;

    div-float/2addr p1, v2

    div-float/2addr p2, v2

    invoke-virtual {v0, v1, v1, p1, p2}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    goto :goto_c9

    .line 200
    :cond_c2
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/vlog/widget/ScalableTextureView;->mTransformMatrix:Landroid/graphics/Matrix;

    div-float/2addr p1, v2

    div-float/2addr p2, v2

    invoke-virtual {v1, v0, v0, p1, p2}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    .line 203
    :goto_c9
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/vlog/widget/ScalableTextureView;->mTransformMatrix:Landroid/graphics/Matrix;

    iget p2, p0, Lcom/transsion/camera/feature/mode/vlog/widget/ScalableTextureView;->mTranslationY:I

    int-to-float p2, p2

    const/4 v0, 0x0

    invoke-virtual {p1, v0, p2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 206
    :goto_d2
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/vlog/widget/ScalableTextureView;->mTransformMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p0, p1}, Landroid/view/TextureView;->setTransform(Landroid/graphics/Matrix;)V

    return-void
.end method


# virtual methods
.method public getPivotX()F
    .registers 1

    .line 225
    iget p0, p0, Lcom/transsion/camera/feature/mode/vlog/widget/ScalableTextureView;->mPivotPointX:F

    return p0
.end method

.method public getPivotY()F
    .registers 1

    .line 230
    iget p0, p0, Lcom/transsion/camera/feature/mode/vlog/widget/ScalableTextureView;->mPivotPointY:F

    return p0
.end method

.method protected onMeasure(II)V
    .registers 3

    .line 75
    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    .line 77
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/vlog/widget/ScalableTextureView;->mContentWidth:Ljava/lang/Integer;

    if-eqz p1, :cond_e

    iget-object p1, p0, Lcom/transsion/camera/feature/mode/vlog/widget/ScalableTextureView;->mContentHeight:Ljava/lang/Integer;

    if-eqz p1, :cond_e

    .line 78
    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/vlog/widget/ScalableTextureView;->updateTextureSize()V

    :cond_e
    return-void
.end method

.method public onScreenFormChanged(I)V
    .registers 2

    .line 70
    iput p1, p0, Lcom/transsion/camera/feature/mode/vlog/widget/ScalableTextureView;->mScreenFormType:I

    return-void
.end method

.method protected final setContentHeight(I)V
    .registers 2

    .line 238
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/feature/mode/vlog/widget/ScalableTextureView;->mContentHeight:Ljava/lang/Integer;

    return-void
.end method

.method protected final setContentWidth(I)V
    .registers 2

    .line 234
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/feature/mode/vlog/widget/ScalableTextureView;->mContentWidth:Ljava/lang/Integer;

    return-void
.end method

.method public setPivotX(F)V
    .registers 5

    .line 211
    sget-object v0, Lcom/transsion/camera/feature/mode/vlog/widget/ScalableTextureView;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setPivotX, pivotX: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 213
    iput p1, p0, Lcom/transsion/camera/feature/mode/vlog/widget/ScalableTextureView;->mPivotPointX:F

    return-void
.end method

.method public setPivotY(F)V
    .registers 5

    .line 218
    sget-object v0, Lcom/transsion/camera/feature/mode/vlog/widget/ScalableTextureView;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setPivotY, pivotY: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 220
    iput p1, p0, Lcom/transsion/camera/feature/mode/vlog/widget/ScalableTextureView;->mPivotPointY:F

    return-void
.end method

.method public setScaleType(Lcom/transsion/camera/feature/mode/vlog/widget/ScalableTextureView$ScaleType;)V
    .registers 2

    .line 62
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/vlog/widget/ScalableTextureView;->mScaleType:Lcom/transsion/camera/feature/mode/vlog/widget/ScalableTextureView$ScaleType;

    return-void
.end method

.method public setTranslationY(I)V
    .registers 2

    .line 66
    iput p1, p0, Lcom/transsion/camera/feature/mode/vlog/widget/ScalableTextureView;->mTranslationY:I

    return-void
.end method

.method protected updateTextureSize()V
    .registers 14

    .line 83
    sget-object v0, Lcom/transsion/camera/feature/mode/vlog/widget/ScalableTextureView;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, ">> updateTextureSize"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 85
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/vlog/widget/ScalableTextureView;->mContentWidth:Ljava/lang/Integer;

    if-eqz v1, :cond_163

    iget-object v1, p0, Lcom/transsion/camera/feature/mode/vlog/widget/ScalableTextureView;->mContentHeight:Ljava/lang/Integer;

    if-eqz v1, :cond_163

    .line 89
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    int-to-float v1, v1

    .line 90
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    int-to-float v2, v2

    .line 92
    iget-object v3, p0, Lcom/transsion/camera/feature/mode/vlog/widget/ScalableTextureView;->mContentWidth:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    int-to-float v3, v3

    .line 93
    iget-object v4, p0, Lcom/transsion/camera/feature/mode/vlog/widget/ScalableTextureView;->mContentHeight:Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    int-to-float v4, v4

    .line 95
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "updateTextureSize, viewWidth: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v6, ", viewHeight: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v6, ", mContentWidth: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/transsion/camera/feature/mode/vlog/widget/ScalableTextureView;->mContentWidth:Ljava/lang/Integer;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, ", mContentHeight: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/transsion/camera/feature/mode/vlog/widget/ScalableTextureView;->mContentHeight:Ljava/lang/Integer;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, ", mScaleType: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/transsion/camera/feature/mode/vlog/widget/ScalableTextureView;->mScaleType:Lcom/transsion/camera/feature/mode/vlog/widget/ScalableTextureView$ScaleType;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 102
    iget-object v5, p0, Lcom/transsion/camera/feature/mode/vlog/widget/ScalableTextureView;->mScaleType:Lcom/transsion/camera/feature/mode/vlog/widget/ScalableTextureView$ScaleType;

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    const/4 v6, 0x3

    const/4 v7, 0x2

    const/4 v8, 0x1

    const/high16 v9, 0x3f800000    # 1.0f

    if-eqz v5, :cond_84

    if-eq v5, v8, :cond_84

    if-eq v5, v7, :cond_84

    if-eq v5, v6, :cond_76

    goto :goto_b5

    :cond_76
    cmpl-float v5, v1, v2

    if-lez v5, :cond_7f

    mul-float/2addr v3, v2

    mul-float/2addr v4, v1

    div-float/2addr v3, v4

    :goto_7d
    move v4, v9

    goto :goto_b7

    :cond_7f
    mul-float/2addr v4, v1

    mul-float/2addr v3, v2

    div-float/2addr v4, v3

    :goto_82
    move v3, v9

    goto :goto_b7

    :cond_84
    cmpl-float v5, v3, v1

    if-lez v5, :cond_8f

    cmpl-float v5, v4, v2

    if-lez v5, :cond_8f

    div-float/2addr v3, v1

    div-float/2addr v4, v2

    goto :goto_b7

    :cond_8f
    cmpg-float v5, v3, v1

    if-gez v5, :cond_9f

    cmpg-float v5, v4, v2

    if-gez v5, :cond_9f

    div-float v3, v1, v3

    div-float v4, v2, v4

    move v12, v4

    move v4, v3

    move v3, v12

    goto :goto_b7

    :cond_9f
    cmpl-float v5, v1, v3

    if-lez v5, :cond_aa

    div-float v3, v1, v3

    div-float v4, v2, v4

    div-float v4, v3, v4

    goto :goto_82

    :cond_aa
    cmpl-float v5, v2, v4

    if-lez v5, :cond_b5

    div-float v4, v2, v4

    div-float v3, v1, v3

    div-float v3, v4, v3

    goto :goto_7d

    :cond_b5
    :goto_b5
    move v3, v9

    move v4, v3

    .line 127
    :goto_b7
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "updateTextureSize, scaleX: "

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v10, ", scaleY: "

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Lcom/transsion/camera/utils/debug/Log;->v(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 132
    iget-object v5, p0, Lcom/transsion/camera/feature/mode/vlog/widget/ScalableTextureView;->mScaleType:Lcom/transsion/camera/feature/mode/vlog/widget/ScalableTextureView$ScaleType;

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    if-eqz v5, :cond_106

    if-eq v5, v8, :cond_103

    if-eq v5, v7, :cond_100

    if-ne v5, v6, :cond_e7

    .line 146
    iget v5, p0, Lcom/transsion/camera/feature/mode/vlog/widget/ScalableTextureView;->mPivotPointX:F

    .line 147
    iget v6, p0, Lcom/transsion/camera/feature/mode/vlog/widget/ScalableTextureView;->mPivotPointY:F

    goto :goto_10f

    .line 150
    :cond_e7
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid ScaleType: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/widget/ScalableTextureView;->mScaleType:Lcom/transsion/camera/feature/mode/vlog/widget/ScalableTextureView$ScaleType;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_100
    move v5, v1

    move v6, v2

    goto :goto_10f

    :cond_103
    const/4 v5, 0x0

    move v6, v5

    goto :goto_10f

    :cond_106
    const/high16 v5, 0x40000000    # 2.0f

    div-float v6, v1, v5

    div-float v5, v2, v5

    move v12, v6

    move v6, v5

    move v5, v12

    .line 153
    :goto_10f
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "updateTextureSize, pivotPointX: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v11, ", pivotPointY: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v0, v10}, Lcom/transsion/camera/utils/debug/Log;->v(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 156
    iget-object v10, p0, Lcom/transsion/camera/feature/mode/vlog/widget/ScalableTextureView;->mScaleType:Lcom/transsion/camera/feature/mode/vlog/widget/ScalableTextureView$ScaleType;

    invoke-virtual {v10}, Ljava/lang/Enum;->ordinal()I

    move-result v10

    if-eqz v10, :cond_139

    if-eq v10, v8, :cond_139

    if-eq v10, v7, :cond_139

    goto :goto_150

    .line 162
    :cond_139
    iget-object v7, p0, Lcom/transsion/camera/feature/mode/vlog/widget/ScalableTextureView;->mContentHeight:Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    iget-object v8, p0, Lcom/transsion/camera/feature/mode/vlog/widget/ScalableTextureView;->mContentWidth:Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    if-le v7, v8, :cond_14c

    mul-float v7, v1, v3

    div-float v9, v1, v7

    goto :goto_150

    :cond_14c
    mul-float v7, v2, v4

    div-float v9, v2, v7

    :goto_150
    mul-float/2addr v3, v9

    .line 170
    iput v3, p0, Lcom/transsion/camera/feature/mode/vlog/widget/ScalableTextureView;->mContentScaleX:F

    mul-float/2addr v9, v4

    .line 171
    iput v9, p0, Lcom/transsion/camera/feature/mode/vlog/widget/ScalableTextureView;->mContentScaleY:F

    .line 173
    iput v5, p0, Lcom/transsion/camera/feature/mode/vlog/widget/ScalableTextureView;->mPivotPointX:F

    .line 174
    iput v6, p0, Lcom/transsion/camera/feature/mode/vlog/widget/ScalableTextureView;->mPivotPointY:F

    .line 176
    invoke-direct {p0, v1, v2}, Lcom/transsion/camera/feature/mode/vlog/widget/ScalableTextureView;->updateMatrixScale(FF)V

    .line 178
    const-string p0, "<< updateTextureSize"

    invoke-static {v0, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 86
    :cond_163
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "null content size"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
