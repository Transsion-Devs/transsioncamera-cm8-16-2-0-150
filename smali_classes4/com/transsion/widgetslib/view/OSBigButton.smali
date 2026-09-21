.class public Lcom/transsion/widgetslib/view/OSBigButton;
.super Landroidx/appcompat/widget/AppCompatButton;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/widgetslib/view/OSBigButton$OnMeasureListener;
    }
.end annotation


# instance fields
.field private mMaxButtonHeightDp:I

.field private mMaxLetterSpacing:F

.field private mMaxTextLine:I

.field private mMaxTextSizeSp:I

.field private mMeasureListener:Lcom/transsion/widgetslib/view/OSBigButton$OnMeasureListener;

.field private mMinButtonHeightDp:I

.field private mMinLetterSpacing:F

.field private mMinTextSizeSp:I

.field private mPaddingCorrection:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 101
    invoke-direct {p0, p1}, Landroidx/appcompat/widget/AppCompatButton;-><init>(Landroid/content/Context;)V

    const/16 p1, 0xe

    .line 13
    iput p1, p0, Lcom/transsion/widgetslib/view/OSBigButton;->mMaxTextSizeSp:I

    const/16 p1, 0xc

    .line 14
    iput p1, p0, Lcom/transsion/widgetslib/view/OSBigButton;->mMinTextSizeSp:I

    const/16 p1, 0x48

    .line 15
    iput p1, p0, Lcom/transsion/widgetslib/view/OSBigButton;->mMaxButtonHeightDp:I

    const/16 p1, 0x24

    .line 16
    iput p1, p0, Lcom/transsion/widgetslib/view/OSBigButton;->mMinButtonHeightDp:I

    const/4 p1, 0x2

    .line 17
    iput p1, p0, Lcom/transsion/widgetslib/view/OSBigButton;->mMaxTextLine:I

    const/16 p1, 0x8

    .line 18
    iput p1, p0, Lcom/transsion/widgetslib/view/OSBigButton;->mPaddingCorrection:I

    const/4 p1, 0x0

    .line 19
    iput p1, p0, Lcom/transsion/widgetslib/view/OSBigButton;->mMaxLetterSpacing:F

    const p1, -0x42b33333    # -0.05f

    .line 20
    iput p1, p0, Lcom/transsion/widgetslib/view/OSBigButton;->mMinLetterSpacing:F

    .line 102
    invoke-direct {p0}, Lcom/transsion/widgetslib/view/OSBigButton;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    .line 106
    invoke-direct {p0, p1, p2}, Landroidx/appcompat/widget/AppCompatButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/16 p1, 0xe

    .line 13
    iput p1, p0, Lcom/transsion/widgetslib/view/OSBigButton;->mMaxTextSizeSp:I

    const/16 p1, 0xc

    .line 14
    iput p1, p0, Lcom/transsion/widgetslib/view/OSBigButton;->mMinTextSizeSp:I

    const/16 p1, 0x48

    .line 15
    iput p1, p0, Lcom/transsion/widgetslib/view/OSBigButton;->mMaxButtonHeightDp:I

    const/16 p1, 0x24

    .line 16
    iput p1, p0, Lcom/transsion/widgetslib/view/OSBigButton;->mMinButtonHeightDp:I

    const/4 p1, 0x2

    .line 17
    iput p1, p0, Lcom/transsion/widgetslib/view/OSBigButton;->mMaxTextLine:I

    const/16 p1, 0x8

    .line 18
    iput p1, p0, Lcom/transsion/widgetslib/view/OSBigButton;->mPaddingCorrection:I

    const/4 p1, 0x0

    .line 19
    iput p1, p0, Lcom/transsion/widgetslib/view/OSBigButton;->mMaxLetterSpacing:F

    const p1, -0x42b33333    # -0.05f

    .line 20
    iput p1, p0, Lcom/transsion/widgetslib/view/OSBigButton;->mMinLetterSpacing:F

    .line 107
    invoke-direct {p0}, Lcom/transsion/widgetslib/view/OSBigButton;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    .line 111
    invoke-direct {p0, p1, p2, p3}, Landroidx/appcompat/widget/AppCompatButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/16 p1, 0xe

    .line 13
    iput p1, p0, Lcom/transsion/widgetslib/view/OSBigButton;->mMaxTextSizeSp:I

    const/16 p1, 0xc

    .line 14
    iput p1, p0, Lcom/transsion/widgetslib/view/OSBigButton;->mMinTextSizeSp:I

    const/16 p1, 0x48

    .line 15
    iput p1, p0, Lcom/transsion/widgetslib/view/OSBigButton;->mMaxButtonHeightDp:I

    const/16 p1, 0x24

    .line 16
    iput p1, p0, Lcom/transsion/widgetslib/view/OSBigButton;->mMinButtonHeightDp:I

    const/4 p1, 0x2

    .line 17
    iput p1, p0, Lcom/transsion/widgetslib/view/OSBigButton;->mMaxTextLine:I

    const/16 p1, 0x8

    .line 18
    iput p1, p0, Lcom/transsion/widgetslib/view/OSBigButton;->mPaddingCorrection:I

    const/4 p1, 0x0

    .line 19
    iput p1, p0, Lcom/transsion/widgetslib/view/OSBigButton;->mMaxLetterSpacing:F

    const p1, -0x42b33333    # -0.05f

    .line 20
    iput p1, p0, Lcom/transsion/widgetslib/view/OSBigButton;->mMinLetterSpacing:F

    .line 112
    invoke-direct {p0}, Lcom/transsion/widgetslib/view/OSBigButton;->init()V

    return-void
.end method

.method private adjustButtonLayout()V
    .registers 4

    .line 135
    invoke-virtual {p0}, Landroid/widget/TextView;->getLineCount()I

    move-result v0

    iget v1, p0, Lcom/transsion/widgetslib/view/OSBigButton;->mMaxTextLine:I

    if-ne v0, v1, :cond_5b

    .line 136
    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    iget v1, p0, Lcom/transsion/widgetslib/view/OSBigButton;->mMaxTextSizeSp:I

    int-to-float v1, v1

    iget v2, p0, Lcom/transsion/widgetslib/view/OSBigButton;->mMaxLetterSpacing:F

    invoke-virtual {p0, v0, v1, v2}, Lcom/transsion/widgetslib/view/OSBigButton;->isTextFullyVisibleInButton(Ljava/lang/CharSequence;FF)Z

    move-result v0

    if-eqz v0, :cond_23

    .line 137
    iget v0, p0, Lcom/transsion/widgetslib/view/OSBigButton;->mMaxLetterSpacing:F

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setLetterSpacing(F)V

    .line 138
    iget v0, p0, Lcom/transsion/widgetslib/view/OSBigButton;->mMaxTextSizeSp:I

    int-to-float v0, v0

    invoke-virtual {p0, v0}, Lcom/transsion/widgetslib/view/OSBigButton;->setTextSize(F)V

    goto :goto_49

    .line 139
    :cond_23
    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    iget v1, p0, Lcom/transsion/widgetslib/view/OSBigButton;->mMaxTextSizeSp:I

    int-to-float v1, v1

    iget v2, p0, Lcom/transsion/widgetslib/view/OSBigButton;->mMinLetterSpacing:F

    invoke-virtual {p0, v0, v1, v2}, Lcom/transsion/widgetslib/view/OSBigButton;->isTextFullyVisibleInButton(Ljava/lang/CharSequence;FF)Z

    move-result v0

    if-eqz v0, :cond_3e

    .line 140
    iget v0, p0, Lcom/transsion/widgetslib/view/OSBigButton;->mMinLetterSpacing:F

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setLetterSpacing(F)V

    .line 141
    iget v0, p0, Lcom/transsion/widgetslib/view/OSBigButton;->mMaxTextSizeSp:I

    int-to-float v0, v0

    invoke-virtual {p0, v0}, Lcom/transsion/widgetslib/view/OSBigButton;->setTextSize(F)V

    goto :goto_49

    .line 143
    :cond_3e
    iget v0, p0, Lcom/transsion/widgetslib/view/OSBigButton;->mMaxLetterSpacing:F

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setLetterSpacing(F)V

    .line 144
    iget v0, p0, Lcom/transsion/widgetslib/view/OSBigButton;->mMinTextSizeSp:I

    int-to-float v0, v0

    invoke-virtual {p0, v0}, Lcom/transsion/widgetslib/view/OSBigButton;->setTextSize(F)V

    .line 146
    :goto_49
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    iget v2, p0, Lcom/transsion/widgetslib/view/OSBigButton;->mMaxButtonHeightDp:I

    invoke-static {v1, v2}, Lcom/transsion/widgetslib/util/Utils;->dp2px(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Landroid/view/View;->setMeasuredDimension(II)V

    goto :goto_6c

    .line 148
    :cond_5b
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    iget v2, p0, Lcom/transsion/widgetslib/view/OSBigButton;->mMinButtonHeightDp:I

    invoke-static {v1, v2}, Lcom/transsion/widgetslib/util/Utils;->dp2px(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Landroid/view/View;->setMeasuredDimension(II)V

    .line 150
    :goto_6c
    iget v0, p0, Lcom/transsion/widgetslib/view/OSBigButton;->mMaxTextLine:I

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 151
    sget-object v0, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    return-void
.end method

.method private init()V
    .registers 2

    const/4 v0, 0x2

    .line 116
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 117
    iget v0, p0, Lcom/transsion/widgetslib/view/OSBigButton;->mMaxTextSizeSp:I

    int-to-float v0, v0

    invoke-virtual {p0, v0}, Lcom/transsion/widgetslib/view/OSBigButton;->setTextSize(F)V

    .line 118
    iget v0, p0, Lcom/transsion/widgetslib/view/OSBigButton;->mMaxLetterSpacing:F

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setLetterSpacing(F)V

    return-void
.end method


# virtual methods
.method public getMaxButtonHeightDp()I
    .registers 1

    .line 41
    iget p0, p0, Lcom/transsion/widgetslib/view/OSBigButton;->mMaxButtonHeightDp:I

    return p0
.end method

.method public getMaxLetterSpacing()F
    .registers 1

    .line 73
    iget p0, p0, Lcom/transsion/widgetslib/view/OSBigButton;->mMaxLetterSpacing:F

    return p0
.end method

.method public getMaxTextLine()I
    .registers 1

    .line 57
    iget p0, p0, Lcom/transsion/widgetslib/view/OSBigButton;->mMaxTextLine:I

    return p0
.end method

.method public getMaxTextSizeSp()I
    .registers 1

    .line 25
    iget p0, p0, Lcom/transsion/widgetslib/view/OSBigButton;->mMaxTextSizeSp:I

    return p0
.end method

.method public getMinButtonHeightDp()I
    .registers 1

    .line 49
    iget p0, p0, Lcom/transsion/widgetslib/view/OSBigButton;->mMinButtonHeightDp:I

    return p0
.end method

.method public getMinLetterSpacing()F
    .registers 1

    .line 81
    iget p0, p0, Lcom/transsion/widgetslib/view/OSBigButton;->mMinLetterSpacing:F

    return p0
.end method

.method public getMinTextSizeSp()I
    .registers 1

    .line 33
    iget p0, p0, Lcom/transsion/widgetslib/view/OSBigButton;->mMinTextSizeSp:I

    return p0
.end method

.method public getPaddingCorrection()I
    .registers 1

    .line 65
    iget p0, p0, Lcom/transsion/widgetslib/view/OSBigButton;->mPaddingCorrection:I

    return p0
.end method

.method public isTextFullyVisibleInButton(Ljava/lang/CharSequence;FF)Z
    .registers 5

    .line 165
    iget v0, p0, Lcom/transsion/widgetslib/view/OSBigButton;->mMaxTextLine:I

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/transsion/widgetslib/view/OSBigButton;->isTextFullyVisibleInButton(Ljava/lang/CharSequence;FFI)Z

    move-result p0

    return p0
.end method

.method public isTextFullyVisibleInButton(Ljava/lang/CharSequence;FFI)Z
    .registers 11

    .line 169
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/transsion/widgetslib/view/OSBigButton;->isTextFullyVisibleInButton(Ljava/lang/CharSequence;FFII)Z

    move-result p0

    return p0
.end method

.method public isTextFullyVisibleInButton(Ljava/lang/CharSequence;FFII)Z
    .registers 8

    .line 177
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v1

    add-int/2addr v0, v1

    sub-int/2addr p5, v0

    .line 182
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static/range {p0 .. p5}, Lcom/transsion/widgetslib/util/OSAutoAdjustUtil;->isTextFullyVisibleSP(Landroid/content/Context;Ljava/lang/CharSequence;FFII)Z

    move-result p0

    return p0
.end method

.method protected onMeasure(II)V
    .registers 3

    .line 124
    invoke-direct {p0}, Lcom/transsion/widgetslib/view/OSBigButton;->adjustButtonLayout()V

    .line 125
    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    .line 127
    invoke-direct {p0}, Lcom/transsion/widgetslib/view/OSBigButton;->adjustButtonLayout()V

    .line 128
    iget-object p0, p0, Lcom/transsion/widgetslib/view/OSBigButton;->mMeasureListener:Lcom/transsion/widgetslib/view/OSBigButton$OnMeasureListener;

    if-eqz p0, :cond_10

    .line 129
    invoke-interface {p0, p1, p2}, Lcom/transsion/widgetslib/view/OSBigButton$OnMeasureListener;->onMeasure(II)V

    :cond_10
    return-void
.end method

.method public registerOnMeasureListener(Lcom/transsion/widgetslib/view/OSBigButton$OnMeasureListener;)V
    .registers 2

    .line 93
    iput-object p1, p0, Lcom/transsion/widgetslib/view/OSBigButton;->mMeasureListener:Lcom/transsion/widgetslib/view/OSBigButton$OnMeasureListener;

    return-void
.end method

.method public setMaxButtonHeightDp(I)V
    .registers 2

    .line 45
    iput p1, p0, Lcom/transsion/widgetslib/view/OSBigButton;->mMaxButtonHeightDp:I

    return-void
.end method

.method public setMaxLetterSpacing(F)V
    .registers 2

    .line 77
    iput p1, p0, Lcom/transsion/widgetslib/view/OSBigButton;->mMaxLetterSpacing:F

    return-void
.end method

.method public setMaxTextLine(I)V
    .registers 2

    .line 61
    iput p1, p0, Lcom/transsion/widgetslib/view/OSBigButton;->mMaxTextLine:I

    return-void
.end method

.method public setMaxTextSizeSp(I)V
    .registers 2

    .line 29
    iput p1, p0, Lcom/transsion/widgetslib/view/OSBigButton;->mMaxTextSizeSp:I

    return-void
.end method

.method public setMinButtonHeightDp(I)V
    .registers 2

    .line 53
    iput p1, p0, Lcom/transsion/widgetslib/view/OSBigButton;->mMinButtonHeightDp:I

    return-void
.end method

.method public setMinLetterSpacing(F)V
    .registers 2

    .line 85
    iput p1, p0, Lcom/transsion/widgetslib/view/OSBigButton;->mMinLetterSpacing:F

    return-void
.end method

.method public setMinTextSizeSp(I)V
    .registers 2

    .line 37
    iput p1, p0, Lcom/transsion/widgetslib/view/OSBigButton;->mMinTextSizeSp:I

    return-void
.end method

.method public setPaddingCorrection(I)V
    .registers 2

    .line 69
    iput p1, p0, Lcom/transsion/widgetslib/view/OSBigButton;->mPaddingCorrection:I

    return-void
.end method

.method public setTextSize(F)V
    .registers 3

    .line 155
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/transsion/widgetslib/util/Utils;->isSecondHome(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_12

    const/high16 v0, 0x40400000    # 3.0f

    mul-float/2addr p1, v0

    const/4 v0, 0x0

    .line 158
    invoke-virtual {p0, v0, p1}, Landroidx/appcompat/widget/AppCompatButton;->setTextSize(IF)V

    return-void

    :cond_12
    const/4 v0, 0x2

    .line 160
    invoke-virtual {p0, v0, p1}, Landroidx/appcompat/widget/AppCompatButton;->setTextSize(IF)V

    return-void
.end method

.method public unregisterOnMeasureListener()V
    .registers 2

    const/4 v0, 0x0

    .line 97
    iput-object v0, p0, Lcom/transsion/widgetslib/view/OSBigButton;->mMeasureListener:Lcom/transsion/widgetslib/view/OSBigButton$OnMeasureListener;

    return-void
.end method
