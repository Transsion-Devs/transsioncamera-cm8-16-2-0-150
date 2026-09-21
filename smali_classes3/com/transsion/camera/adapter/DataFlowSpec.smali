.class public abstract Lcom/transsion/camera/adapter/DataFlowSpec;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static jpegCapture(I)Z
    .registers 2

    const/4 v0, 0x1

    and-int/2addr p0, v0

    if-ne p0, v0, :cond_5

    return v0

    :cond_5
    const/4 p0, 0x0

    return p0
.end method

.method public static makeDataFlowSpec(II)I
    .registers 2

    or-int/2addr p0, p1

    return p0
.end method

.method public static rawCapture(I)Z
    .registers 2

    const/16 v0, 0x8

    and-int/2addr p0, v0

    if-ne p0, v0, :cond_7

    const/4 p0, 0x1

    return p0

    :cond_7
    const/4 p0, 0x0

    return p0
.end method

.method public static yuvCapture(I)Z
    .registers 2

    const/4 v0, 0x2

    and-int/2addr p0, v0

    if-ne p0, v0, :cond_6

    const/4 p0, 0x1

    return p0

    :cond_6
    const/4 p0, 0x0

    return p0
.end method

.method public static yuvPreview(I)Z
    .registers 2

    const/4 v0, 0x4

    and-int/2addr p0, v0

    if-ne p0, v0, :cond_6

    const/4 p0, 0x1

    return p0

    :cond_6
    const/4 p0, 0x0

    return p0
.end method
