.class public abstract Lcom/transsion/camera/app/ui/widget/graduated/indicator/Indicator;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/app/ui/widget/graduated/indicator/IIndicator;


# instance fields
.field protected mHeight:I

.field protected mOffset:I

.field protected mPaint:Landroid/graphics/Paint;

.field protected mRotateDegree:I

.field protected mWidth:I


# direct methods
.method public constructor <init>(ILandroid/graphics/Paint;)V
    .registers 3

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput p1, p0, Lcom/transsion/camera/app/ui/widget/graduated/indicator/Indicator;->mOffset:I

    .line 25
    iput-object p2, p0, Lcom/transsion/camera/app/ui/widget/graduated/indicator/Indicator;->mPaint:Landroid/graphics/Paint;

    return-void
.end method


# virtual methods
.method protected final exchangeWidthHeight()Z
    .registers 2

    .line 51
    iget p0, p0, Lcom/transsion/camera/app/ui/widget/graduated/indicator/Indicator;->mRotateDegree:I

    rem-int/lit16 p0, p0, 0x168

    invoke-static {p0}, Ljava/lang/Math;->abs(I)I

    move-result p0

    const/16 v0, 0x5a

    if-eq p0, v0, :cond_13

    const/16 v0, 0x10e

    if-ne p0, v0, :cond_11

    goto :goto_13

    :cond_11
    const/4 p0, 0x0

    return p0

    :cond_13
    :goto_13
    const/4 p0, 0x1

    return p0
.end method

.method public height()I
    .registers 1

    .line 35
    iget p0, p0, Lcom/transsion/camera/app/ui/widget/graduated/indicator/Indicator;->mHeight:I

    return p0
.end method

.method public rotateIndicator(I)V
    .registers 2

    .line 43
    iput p1, p0, Lcom/transsion/camera/app/ui/widget/graduated/indicator/Indicator;->mRotateDegree:I

    return-void
.end method

.method public setDrawable(Landroid/graphics/drawable/Drawable;)V
    .registers 2

    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .registers 2

    return-void
.end method

.method public width()I
    .registers 1

    .line 30
    iget p0, p0, Lcom/transsion/camera/app/ui/widget/graduated/indicator/Indicator;->mWidth:I

    return p0
.end method
