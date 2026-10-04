.class public abstract Lcom/transsion/camera/ui/setting/zoom/ZoomUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static getMergedZoomRatios([I[Ljava/lang/String;)[I
    .registers 3

    if-eqz p1, :cond_27

    .line 58
    array-length v0, p1

    if-nez v0, :cond_6

    goto :goto_27

    .line 62
    :cond_6
    invoke-static {p0}, Ljava/util/Arrays;->stream([I)Ljava/util/stream/IntStream;

    move-result-object p0

    .line 63
    invoke-static {p1}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object p1

    new-instance v0, Lcom/transsion/camera/app/ConfigFlow$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/transsion/camera/app/ConfigFlow$$ExternalSyntheticLambda0;-><init>()V

    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->mapToInt(Ljava/util/function/ToIntFunction;)Ljava/util/stream/IntStream;

    move-result-object p1

    .line 61
    invoke-static {p0, p1}, Ljava/util/stream/IntStream;->concat(Ljava/util/stream/IntStream;Ljava/util/stream/IntStream;)Ljava/util/stream/IntStream;

    move-result-object p0

    .line 64
    invoke-interface {p0}, Ljava/util/stream/IntStream;->distinct()Ljava/util/stream/IntStream;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/stream/IntStream;->sorted()Ljava/util/stream/IntStream;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/stream/IntStream;->toArray()[I

    move-result-object p0

    :cond_27
    :goto_27
    return-object p0
.end method

.method public static getTargetZoomRatio([IIZ)I
    .registers 5

    .line 40
    array-length v0, p0

    if-eqz p2, :cond_e

    const/4 p2, 0x0

    :goto_4
    if-ge p2, v0, :cond_1a

    .line 43
    aget v1, p0, p2

    if-le v1, p1, :cond_b

    return v1

    :cond_b
    add-int/lit8 p2, p2, 0x1

    goto :goto_4

    :cond_e
    add-int/lit8 v0, v0, -0x1

    :goto_10
    if-ltz v0, :cond_1a

    .line 49
    aget p2, p0, v0

    if-ge p2, p1, :cond_17

    return p2

    :cond_17
    add-int/lit8 v0, v0, -0x1

    goto :goto_10

    :cond_1a
    const/4 p0, -0x1

    return p0
.end method

.method public static getZoomRatioByFocalLength(Ljava/lang/String;FI)I
    .registers 4

    .line 31
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    mul-int/lit8 p0, p0, 0x64

    int-to-float p0, p0

    div-float/2addr p0, p1

    .line 32
    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    move-result p0

    mul-int/lit8 p0, p0, 0x64

    sub-int p1, p0, p2

    .line 33
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    const/16 v0, 0x1f4

    if-ge p1, v0, :cond_19

    return p2

    :cond_19
    return p0
.end method

.method public static getZoomRatioText(I)Ljava/lang/String;
    .registers 4

    .line 12
    invoke-static {p0}, Lcom/transsion/camera/ui/setting/zoom/ZoomUtils;->unscaledRatio(I)F

    move-result p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object p0

    const/16 v0, 0x2e

    .line 13
    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    add-int/lit8 v1, v0, 0x2

    const/4 v2, 0x0

    .line 14
    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 15
    const-string v1, ".0"

    invoke-virtual {p0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_21

    .line 16
    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    :cond_21
    return-object p0
.end method

.method public static getZoomRatioTextWithSuffix(I)Ljava/lang/String;
    .registers 2

    .line 22
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lcom/transsion/camera/ui/setting/zoom/ZoomUtils;->getZoomRatioText(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "x"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static unscaledRatio(I)F
    .registers 2

    const/high16 v0, 0x3f800000    # 1.0f

    int-to-float p0, p0

    mul-float/2addr p0, v0

    .line 26
    sget v0, Lcom/transsion/camera/utils/SettingInfo;->ZOOM_RATIO_UNIT:I

    int-to-float v0, v0

    div-float/2addr p0, v0

    return p0
.end method
