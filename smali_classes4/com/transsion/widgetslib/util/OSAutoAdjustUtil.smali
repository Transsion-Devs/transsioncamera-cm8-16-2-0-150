.class public Lcom/transsion/widgetslib/util/OSAutoAdjustUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getSpToPx(Landroid/content/Context;F)F
    .registers 3

    .line 76
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    const/4 v0, 0x2

    invoke-static {v0, p1, p0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p0

    return p0
.end method

.method public static isTextFullyVisible(Landroid/content/Context;Ljava/lang/CharSequence;FFII)Z
    .registers 15

    const/4 v0, 0x0

    if-lez p5, :cond_3c

    if-nez p0, :cond_6

    goto :goto_3c

    .line 56
    :cond_6
    new-instance v3, Landroid/text/TextPaint;

    invoke-direct {v3}, Landroid/text/TextPaint;-><init>()V

    .line 57
    invoke-virtual {v3, p2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 58
    invoke-virtual {v3, p3}, Landroid/graphics/Paint;->setLetterSpacing(F)V

    if-eqz p1, :cond_26

    .line 63
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "a"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_24
    move-object v2, p0

    goto :goto_28

    :cond_26
    const/4 p0, 0x0

    goto :goto_24

    .line 67
    :goto_28
    new-instance v1, Landroid/text/StaticLayout;

    sget-object v5, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/high16 v6, 0x3f800000    # 1.0f

    move v4, p5

    invoke-direct/range {v1 .. v8}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    .line 70
    invoke-virtual {v1}, Landroid/text/StaticLayout;->getLineCount()I

    move-result p0

    if-gt p0, p4, :cond_3c

    const/4 p0, 0x1

    return p0

    :cond_3c
    :goto_3c
    return v0
.end method

.method public static isTextFullyVisibleOffset(Landroid/content/Context;Ljava/lang/CharSequence;IFFII)Z
    .registers 13

    .line 25
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    :goto_5
    if-lez p2, :cond_f

    const/16 v1, 0x61

    .line 27
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 p2, p2, -0x1

    goto :goto_5

    :cond_f
    if-gez p2, :cond_28

    neg-int p2, p2

    .line 33
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-le v2, p2, :cond_22

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    sub-int/2addr p1, p2

    goto :goto_23

    :cond_22
    const/4 p1, 0x1

    :goto_23
    const/4 p2, 0x0

    invoke-virtual {v1, p2, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 36
    :cond_28
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result p2

    if-lez p2, :cond_41

    .line 37
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_41
    move-object v0, p0

    move-object v1, p1

    move v2, p3

    move v3, p4

    move v4, p5

    move v5, p6

    .line 40
    invoke-static/range {v0 .. v5}, Lcom/transsion/widgetslib/util/OSAutoAdjustUtil;->isTextFullyVisible(Landroid/content/Context;Ljava/lang/CharSequence;FFII)Z

    move-result p0

    return p0
.end method

.method public static isTextFullyVisibleSP(Landroid/content/Context;Ljava/lang/CharSequence;FFII)Z
    .registers 12

    .line 15
    invoke-static {p0}, Lcom/transsion/widgetslib/util/Utils;->isSecondHome(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_e

    const/high16 v0, 0x40400000    # 3.0f

    mul-float/2addr p2, v0

    .line 18
    invoke-static/range {p0 .. p5}, Lcom/transsion/widgetslib/util/OSAutoAdjustUtil;->isTextFullyVisible(Landroid/content/Context;Ljava/lang/CharSequence;FFII)Z

    move-result p0

    return p0

    .line 20
    :cond_e
    invoke-static {p0, p2}, Lcom/transsion/widgetslib/util/OSAutoAdjustUtil;->getSpToPx(Landroid/content/Context;F)F

    move-result v2

    move-object v0, p0

    move-object v1, p1

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-static/range {v0 .. v5}, Lcom/transsion/widgetslib/util/OSAutoAdjustUtil;->isTextFullyVisible(Landroid/content/Context;Ljava/lang/CharSequence;FFII)Z

    move-result p0

    return p0
.end method

.method public static willNotTextBeEllipsized(Ljava/lang/String;FFLandroid/graphics/Typeface;I)Z
    .registers 7

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return v0

    .line 84
    :cond_4
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    .line 85
    invoke-virtual {v1, p1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 86
    invoke-virtual {v1, p2}, Landroid/graphics/Paint;->setLetterSpacing(F)V

    .line 87
    invoke-virtual {v1, p3}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 89
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    .line 90
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p2

    invoke-virtual {v1, p0, v0, p2, p1}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 92
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result p0

    if-gt p0, p4, :cond_26

    const/4 p0, 0x1

    return p0

    :cond_26
    return v0
.end method
