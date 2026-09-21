.class public final Lcom/bytedance/ugc/nlerecorder/utils/CoordinateUtilsKt;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final toNleX(F)F
    .registers 2

    const/high16 v0, 0x3f000000    # 0.5f

    sub-float/2addr p0, v0

    const/4 v0, 0x2

    int-to-float v0, v0

    mul-float/2addr p0, v0

    return p0
.end method

.method public static final toNleY(F)F
    .registers 2

    const/high16 v0, 0x3f000000    # 0.5f

    sub-float/2addr v0, p0

    const/4 p0, 0x2

    int-to-float p0, p0

    mul-float/2addr v0, p0

    return v0
.end method

.method public static final toVeX(F)F
    .registers 2

    const/4 v0, 0x2

    int-to-float v0, v0

    div-float/2addr p0, v0

    const/high16 v0, 0x3f000000    # 0.5f

    add-float/2addr p0, v0

    return p0
.end method

.method public static final toVeY(F)F
    .registers 2

    const/4 v0, 0x2

    int-to-float v0, v0

    div-float/2addr p0, v0

    const/high16 v0, 0x3f000000    # 0.5f

    sub-float/2addr v0, p0

    return v0
.end method
