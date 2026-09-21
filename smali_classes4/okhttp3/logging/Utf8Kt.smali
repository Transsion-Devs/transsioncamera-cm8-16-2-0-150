.class public final Lokhttp3/logging/Utf8Kt;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final isProbablyUtf8(Lokio/Buffer;)Z
    .registers 8

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 28
    :try_start_6
    new-instance v2, Lokio/Buffer;

    invoke-direct {v2}, Lokio/Buffer;-><init>()V

    .line 29
    invoke-virtual {p0}, Lokio/Buffer;->size()J

    move-result-wide v3

    const-wide/16 v5, 0x40

    invoke-static {v3, v4, v5, v6}, Lkotlin/ranges/RangesKt;->coerceAtMost(JJ)J

    move-result-wide v5

    const-wide/16 v3, 0x0

    move-object v1, p0

    .line 30
    invoke-virtual/range {v1 .. v6}, Lokio/Buffer;->copyTo(Lokio/Buffer;JJ)Lokio/Buffer;

    move p0, v0

    :goto_1c
    const/16 v1, 0x10

    if-ge p0, v1, :cond_3b

    .line 32
    invoke-virtual {v2}, Lokio/Buffer;->exhausted()Z

    move-result v1

    if-eqz v1, :cond_27

    goto :goto_3b

    .line 35
    :cond_27
    invoke-virtual {v2}, Lokio/Buffer;->readUtf8CodePoint()I

    move-result v1

    .line 36
    invoke-static {v1}, Ljava/lang/Character;->isISOControl(I)Z

    move-result v3

    if-eqz v3, :cond_38

    invoke-static {v1}, Ljava/lang/Character;->isWhitespace(I)Z

    move-result v1
    :try_end_35
    .catch Ljava/io/EOFException; {:try_start_6 .. :try_end_35} :catch_3d

    if-nez v1, :cond_38

    return v0

    :cond_38
    add-int/lit8 p0, p0, 0x1

    goto :goto_1c

    :cond_3b
    :goto_3b
    const/4 p0, 0x1

    return p0

    :catch_3d
    return v0
.end method
