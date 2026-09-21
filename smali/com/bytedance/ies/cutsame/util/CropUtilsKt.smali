.class public final Lcom/bytedance/ies/cutsame/util/CropUtilsKt;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final toCutsameCropX(F)F
    .registers 2

    const/high16 v0, 0x3f000000    # 0.5f

    mul-float/2addr p0, v0

    add-float/2addr p0, v0

    return p0
.end method

.method public static final toCutsameCropY(F)F
    .registers 2

    neg-float p0, p0

    const/high16 v0, 0x3f000000    # 0.5f

    mul-float/2addr p0, v0

    add-float/2addr p0, v0

    return p0
.end method

.method public static final toNLEClipX(F)F
    .registers 2

    const/high16 v0, 0x3f000000    # 0.5f

    sub-float/2addr p0, v0

    const/4 v0, 0x2

    int-to-float v0, v0

    mul-float/2addr p0, v0

    return p0
.end method

.method public static final toNLEClipY(F)F
    .registers 2

    const/high16 v0, 0x3f000000    # 0.5f

    sub-float/2addr v0, p0

    const/4 p0, 0x2

    int-to-float p0, p0

    mul-float/2addr v0, p0

    return v0
.end method
