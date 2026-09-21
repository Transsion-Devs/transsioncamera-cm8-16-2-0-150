.class public Lcom/transsion/widgetslib/view/OSAutoTextView;
.super Landroidx/appcompat/widget/AppCompatTextView;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/widgetslib/view/OSAutoTextView$OnMeasureListener;
    }
.end annotation


# instance fields
.field private mMaxLetterSpacing:F

.field private mMaxTextLine:I

.field private mMaxTextSizeSp:I

.field private mMeasureListener:Lcom/transsion/widgetslib/view/OSAutoTextView$OnMeasureListener;

.field private mMinLetterSpacing:F

.field private mMinTextSizeSp:I

.field private mPaddingCorrection:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 25
    invoke-direct {p0, p1}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;)V

    const/16 p1, 0xe

    .line 15
    iput p1, p0, Lcom/transsion/widgetslib/view/OSAutoTextView;->mMaxTextSizeSp:I

    const/16 p1, 0xc

    .line 16
    iput p1, p0, Lcom/transsion/widgetslib/view/OSAutoTextView;->mMinTextSizeSp:I

    const/4 p1, 0x2

    .line 17
    iput p1, p0, Lcom/transsion/widgetslib/view/OSAutoTextView;->mMaxTextLine:I

    const/16 p1, 0x8

    .line 18
    iput p1, p0, Lcom/transsion/widgetslib/view/OSAutoTextView;->mPaddingCorrection:I

    const/4 p1, 0x0

    .line 19
    iput p1, p0, Lcom/transsion/widgetslib/view/OSAutoTextView;->mMaxLetterSpacing:F

    .line 20
    iput p1, p0, Lcom/transsion/widgetslib/view/OSAutoTextView;->mMinLetterSpacing:F

    .line 26
    invoke-direct {p0}, Lcom/transsion/widgetslib/view/OSAutoTextView;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    .line 30
    invoke-direct {p0, p1, p2}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/16 p1, 0xe

    .line 15
    iput p1, p0, Lcom/transsion/widgetslib/view/OSAutoTextView;->mMaxTextSizeSp:I

    const/16 p1, 0xc

    .line 16
    iput p1, p0, Lcom/transsion/widgetslib/view/OSAutoTextView;->mMinTextSizeSp:I

    const/4 p1, 0x2

    .line 17
    iput p1, p0, Lcom/transsion/widgetslib/view/OSAutoTextView;->mMaxTextLine:I

    const/16 p1, 0x8

    .line 18
    iput p1, p0, Lcom/transsion/widgetslib/view/OSAutoTextView;->mPaddingCorrection:I

    const/4 p1, 0x0

    .line 19
    iput p1, p0, Lcom/transsion/widgetslib/view/OSAutoTextView;->mMaxLetterSpacing:F

    .line 20
    iput p1, p0, Lcom/transsion/widgetslib/view/OSAutoTextView;->mMinLetterSpacing:F

    .line 31
    invoke-direct {p0}, Lcom/transsion/widgetslib/view/OSAutoTextView;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    .line 35
    invoke-direct {p0, p1, p2, p3}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/16 p1, 0xe

    .line 15
    iput p1, p0, Lcom/transsion/widgetslib/view/OSAutoTextView;->mMaxTextSizeSp:I

    const/16 p1, 0xc

    .line 16
    iput p1, p0, Lcom/transsion/widgetslib/view/OSAutoTextView;->mMinTextSizeSp:I

    const/4 p1, 0x2

    .line 17
    iput p1, p0, Lcom/transsion/widgetslib/view/OSAutoTextView;->mMaxTextLine:I

    const/16 p1, 0x8

    .line 18
    iput p1, p0, Lcom/transsion/widgetslib/view/OSAutoTextView;->mPaddingCorrection:I

    const/4 p1, 0x0

    .line 19
    iput p1, p0, Lcom/transsion/widgetslib/view/OSAutoTextView;->mMaxLetterSpacing:F

    .line 20
    iput p1, p0, Lcom/transsion/widgetslib/view/OSAutoTextView;->mMinLetterSpacing:F

    .line 36
    invoke-direct {p0}, Lcom/transsion/widgetslib/view/OSAutoTextView;->init()V

    return-void
.end method

.method private adjustLayout()V
    .registers 4

    .line 119
    invoke-virtual {p0}, Landroid/widget/TextView;->getLineCount()I

    move-result v0

    iget v1, p0, Lcom/transsion/widgetslib/view/OSAutoTextView;->mMaxTextLine:I

    if-ne v0, v1, :cond_5a

    .line 120
    invoke-virtual {p0}, Landroidx/appcompat/widget/AppCompatTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    iget v1, p0, Lcom/transsion/widgetslib/view/OSAutoTextView;->mMaxTextSizeSp:I

    int-to-float v1, v1

    iget v2, p0, Lcom/transsion/widgetslib/view/OSAutoTextView;->mMaxLetterSpacing:F

    invoke-virtual {p0, v0, v1, v2}, Lcom/transsion/widgetslib/view/OSAutoTextView;->isTextFullyVisible(Ljava/lang/CharSequence;FF)Z

    move-result v0

    if-eqz v0, :cond_23

    .line 121
    iget v0, p0, Lcom/transsion/widgetslib/view/OSAutoTextView;->mMaxLetterSpacing:F

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setLetterSpacing(F)V

    .line 122
    iget v0, p0, Lcom/transsion/widgetslib/view/OSAutoTextView;->mMaxTextSizeSp:I

    int-to-float v0, v0

    invoke-virtual {p0, v0}, Lcom/transsion/widgetslib/view/OSAutoTextView;->setTextSize(F)V

    goto :goto_5a

    .line 123
    :cond_23
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroidx/appcompat/widget/AppCompatTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lcom/transsion/widgetslib/view/OSAutoTextView;->mMaxTextSizeSp:I

    int-to-float v1, v1

    iget v2, p0, Lcom/transsion/widgetslib/view/OSAutoTextView;->mMinLetterSpacing:F

    invoke-virtual {p0, v0, v1, v2}, Lcom/transsion/widgetslib/view/OSAutoTextView;->isTextFullyVisible(Ljava/lang/CharSequence;FF)Z

    move-result v0

    if-eqz v0, :cond_4f

    .line 124
    iget v0, p0, Lcom/transsion/widgetslib/view/OSAutoTextView;->mMinLetterSpacing:F

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setLetterSpacing(F)V

    .line 125
    iget v0, p0, Lcom/transsion/widgetslib/view/OSAutoTextView;->mMaxTextSizeSp:I

    int-to-float v0, v0

    invoke-virtual {p0, v0}, Lcom/transsion/widgetslib/view/OSAutoTextView;->setTextSize(F)V

    goto :goto_5a

    .line 127
    :cond_4f
    iget v0, p0, Lcom/transsion/widgetslib/view/OSAutoTextView;->mMaxLetterSpacing:F

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setLetterSpacing(F)V

    .line 128
    iget v0, p0, Lcom/transsion/widgetslib/view/OSAutoTextView;->mMinTextSizeSp:I

    int-to-float v0, v0

    invoke-virtual {p0, v0}, Lcom/transsion/widgetslib/view/OSAutoTextView;->setTextSize(F)V

    .line 131
    :cond_5a
    :goto_5a
    iget v0, p0, Lcom/transsion/widgetslib/view/OSAutoTextView;->mMaxTextLine:I

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 132
    sget-object v0, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    return-void
.end method

.method private init()V
    .registers 2

    const/4 v0, 0x2

    .line 100
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 101
    iget v0, p0, Lcom/transsion/widgetslib/view/OSAutoTextView;->mMaxTextSizeSp:I

    int-to-float v0, v0

    invoke-virtual {p0, v0}, Lcom/transsion/widgetslib/view/OSAutoTextView;->setTextSize(F)V

    .line 102
    iget v0, p0, Lcom/transsion/widgetslib/view/OSAutoTextView;->mMaxLetterSpacing:F

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setLetterSpacing(F)V

    return-void
.end method


# virtual methods
.method public getMaxLetterSpacing()F
    .registers 1

    .line 72
    iget p0, p0, Lcom/transsion/widgetslib/view/OSAutoTextView;->mMaxLetterSpacing:F

    return p0
.end method

.method public getMaxTextLine()I
    .registers 1

    .line 56
    iget p0, p0, Lcom/transsion/widgetslib/view/OSAutoTextView;->mMaxTextLine:I

    return p0
.end method

.method public getMaxTextSizeSp()I
    .registers 1

    .line 40
    iget p0, p0, Lcom/transsion/widgetslib/view/OSAutoTextView;->mMaxTextSizeSp:I

    return p0
.end method

.method public getMinLetterSpacing()F
    .registers 1

    .line 80
    iget p0, p0, Lcom/transsion/widgetslib/view/OSAutoTextView;->mMinLetterSpacing:F

    return p0
.end method

.method public getMinTextSizeSp()I
    .registers 1

    .line 48
    iget p0, p0, Lcom/transsion/widgetslib/view/OSAutoTextView;->mMinTextSizeSp:I

    return p0
.end method

.method public getPaddingCorrection()I
    .registers 1

    .line 64
    iget p0, p0, Lcom/transsion/widgetslib/view/OSAutoTextView;->mPaddingCorrection:I

    return p0
.end method

.method public isTextFullyVisible(Ljava/lang/CharSequence;FF)Z
    .registers 5

    .line 146
    iget v0, p0, Lcom/transsion/widgetslib/view/OSAutoTextView;->mMaxTextLine:I

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/transsion/widgetslib/view/OSAutoTextView;->isTextFullyVisible(Ljava/lang/CharSequence;FFI)Z

    move-result p0

    return p0
.end method

.method public isTextFullyVisible(Ljava/lang/CharSequence;FFI)Z
    .registers 11

    .line 150
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/transsion/widgetslib/view/OSAutoTextView;->isTextFullyVisible(Ljava/lang/CharSequence;FFII)Z

    move-result p0

    return p0
.end method

.method public isTextFullyVisible(Ljava/lang/CharSequence;FFII)Z
    .registers 8

    .line 158
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v1

    add-int/2addr v0, v1

    sub-int/2addr p5, v0

    .line 163
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static/range {p0 .. p5}, Lcom/transsion/widgetslib/util/OSAutoAdjustUtil;->isTextFullyVisibleSP(Landroid/content/Context;Ljava/lang/CharSequence;FFII)Z

    move-result p0

    return p0
.end method

.method protected onMeasure(II)V
    .registers 3

    .line 108
    invoke-direct {p0}, Lcom/transsion/widgetslib/view/OSAutoTextView;->adjustLayout()V

    .line 109
    invoke-super {p0, p1, p2}, Landroidx/appcompat/widget/AppCompatTextView;->onMeasure(II)V

    .line 111
    invoke-direct {p0}, Lcom/transsion/widgetslib/view/OSAutoTextView;->adjustLayout()V

    .line 112
    iget-object p0, p0, Lcom/transsion/widgetslib/view/OSAutoTextView;->mMeasureListener:Lcom/transsion/widgetslib/view/OSAutoTextView$OnMeasureListener;

    if-eqz p0, :cond_10

    .line 113
    invoke-interface {p0, p1, p2}, Lcom/transsion/widgetslib/view/OSAutoTextView$OnMeasureListener;->onMeasure(II)V

    :cond_10
    return-void
.end method

.method public registerOnMeasureListener(Lcom/transsion/widgetslib/view/OSAutoTextView$OnMeasureListener;)V
    .registers 2

    .line 92
    iput-object p1, p0, Lcom/transsion/widgetslib/view/OSAutoTextView;->mMeasureListener:Lcom/transsion/widgetslib/view/OSAutoTextView$OnMeasureListener;

    return-void
.end method

.method public setMaxLetterSpacing(F)V
    .registers 2

    .line 76
    iput p1, p0, Lcom/transsion/widgetslib/view/OSAutoTextView;->mMaxLetterSpacing:F

    return-void
.end method

.method public setMaxTextLine(I)V
    .registers 2

    .line 60
    iput p1, p0, Lcom/transsion/widgetslib/view/OSAutoTextView;->mMaxTextLine:I

    return-void
.end method

.method public setMaxTextSizeSp(I)V
    .registers 2

    .line 44
    iput p1, p0, Lcom/transsion/widgetslib/view/OSAutoTextView;->mMaxTextSizeSp:I

    return-void
.end method

.method public setMinLetterSpacing(F)V
    .registers 2

    .line 84
    iput p1, p0, Lcom/transsion/widgetslib/view/OSAutoTextView;->mMinLetterSpacing:F

    return-void
.end method

.method public setMinTextSizeSp(I)V
    .registers 2

    .line 52
    iput p1, p0, Lcom/transsion/widgetslib/view/OSAutoTextView;->mMinTextSizeSp:I

    return-void
.end method

.method public setPaddingCorrection(I)V
    .registers 2

    .line 68
    iput p1, p0, Lcom/transsion/widgetslib/view/OSAutoTextView;->mPaddingCorrection:I

    return-void
.end method

.method public setTextSize(F)V
    .registers 3

    .line 136
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/transsion/widgetslib/util/Utils;->isSecondHome(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_12

    const/high16 v0, 0x40400000    # 3.0f

    mul-float/2addr p1, v0

    const/4 v0, 0x0

    .line 139
    invoke-virtual {p0, v0, p1}, Landroidx/appcompat/widget/AppCompatTextView;->setTextSize(IF)V

    return-void

    :cond_12
    const/4 v0, 0x2

    .line 141
    invoke-virtual {p0, v0, p1}, Landroidx/appcompat/widget/AppCompatTextView;->setTextSize(IF)V

    return-void
.end method

.method public unregisterOnMeasureListener()V
    .registers 2

    const/4 v0, 0x0

    .line 96
    iput-object v0, p0, Lcom/transsion/widgetslib/view/OSAutoTextView;->mMeasureListener:Lcom/transsion/widgetslib/view/OSAutoTextView$OnMeasureListener;

    return-void
.end method
