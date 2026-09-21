.class public abstract Lcom/transsion/camera/ui/setting/zoom/ZoomUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static getZoomRatioByFocalLength(Ljava/lang/String;FI)I
    .registers 4

    .line 28
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    mul-int/lit8 p0, p0, 0x64

    int-to-float p0, p0

    div-float/2addr p0, p1

    .line 29
    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    move-result p0

    mul-int/lit8 p0, p0, 0x64

    sub-int p1, p0, p2

    .line 30
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

    .line 9
    invoke-static {p0}, Lcom/transsion/camera/ui/setting/zoom/ZoomUtils;->unscaledRatio(I)F

    move-result p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object p0

    const/16 v0, 0x2e

    .line 10
    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    add-int/lit8 v1, v0, 0x2

    const/4 v2, 0x0

    .line 11
    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 12
    const-string v1, ".0"

    invoke-virtual {p0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_21

    .line 13
    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    :cond_21
    return-object p0
.end method

.method public static getZoomRatioTextWithSuffix(I)Ljava/lang/String;
    .registers 2

    .line 19
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

    .line 23
    sget v0, Lcom/transsion/camera/utils/SettingInfo;->ZOOM_RATIO_UNIT:I

    int-to-float v0, v0

    div-float/2addr p0, v0

    return p0
.end method
