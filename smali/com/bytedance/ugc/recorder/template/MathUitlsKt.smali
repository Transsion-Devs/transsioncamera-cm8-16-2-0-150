.class public final Lcom/bytedance/ugc/recorder/template/MathUitlsKt;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final between(JJJ)J
    .registers 8

    .line 4
    invoke-static {p2, p3, p4, p5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    add-long/2addr p4, p2

    sub-long/2addr p4, v0

    cmp-long p2, v0, p0

    if-lez p2, :cond_b

    move-wide p0, v0

    :cond_b
    cmp-long p2, p4, p0

    if-gez p2, :cond_10

    return-wide p4

    :cond_10
    return-wide p0
.end method
