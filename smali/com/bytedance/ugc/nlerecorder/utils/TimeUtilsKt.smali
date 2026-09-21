.class public final Lcom/bytedance/ugc/nlerecorder/utils/TimeUtilsKt;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final microsToMillis(I)I
    .registers 2

    int-to-float p0, p0

    const/high16 v0, 0x447a0000    # 1000.0f

    div-float/2addr p0, v0

    .line 18
    invoke-static {p0}, Lkotlin/math/MathKt;->roundToInt(F)I

    move-result p0

    return p0
.end method

.method public static final microsToMillis(J)I
    .registers 2

    long-to-float p0, p0

    const/high16 p1, 0x447a0000    # 1000.0f

    div-float/2addr p0, p1

    .line 13
    invoke-static {p0}, Lkotlin/math/MathKt;->roundToInt(F)I

    move-result p0

    return p0
.end method

.method public static final microsToSeconds(I)F
    .registers 2

    .line 0
    int-to-float p0, p0

    const v0, 0xf4240

    int-to-float v0, v0

    div-float/2addr p0, v0

    return p0
.end method

.method public static final microsToSeconds(J)F
    .registers 2

    .line 0
    long-to-float p0, p0

    const p1, 0xf4240

    int-to-float p1, p1

    div-float/2addr p0, p1

    return p0
.end method

.method public static final millisToMicros(I)J
    .registers 4

    .line 34
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    int-to-long v1, p0

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMicros(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public static final millisToMicros(J)J
    .registers 3

    .line 30
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, p0, p1}, Ljava/util/concurrent/TimeUnit;->toMicros(J)J

    move-result-wide p0

    return-wide p0
.end method
