.class public final Lokhttp3/HttpUrl$Builder$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lokhttp3/HttpUrl$Builder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 1482
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 2

    .line 1482
    invoke-direct {p0}, Lokhttp3/HttpUrl$Builder$Companion;-><init>()V

    return-void
.end method

.method public static final synthetic access$parsePort(Lokhttp3/HttpUrl$Builder$Companion;Ljava/lang/String;II)I
    .registers 4

    .line 1482
    invoke-direct {p0, p1, p2, p3}, Lokhttp3/HttpUrl$Builder$Companion;->parsePort(Ljava/lang/String;II)I

    move-result p0

    return p0
.end method

.method public static final synthetic access$portColonOffset(Lokhttp3/HttpUrl$Builder$Companion;Ljava/lang/String;II)I
    .registers 4

    .line 1482
    invoke-direct {p0, p1, p2, p3}, Lokhttp3/HttpUrl$Builder$Companion;->portColonOffset(Ljava/lang/String;II)I

    move-result p0

    return p0
.end method

.method public static final synthetic access$schemeDelimiterOffset(Lokhttp3/HttpUrl$Builder$Companion;Ljava/lang/String;II)I
    .registers 4

    .line 1482
    invoke-direct {p0, p1, p2, p3}, Lokhttp3/HttpUrl$Builder$Companion;->schemeDelimiterOffset(Ljava/lang/String;II)I

    move-result p0

    return p0
.end method

.method public static final synthetic access$slashCount(Lokhttp3/HttpUrl$Builder$Companion;Ljava/lang/String;II)I
    .registers 4

    .line 1482
    invoke-direct {p0, p1, p2, p3}, Lokhttp3/HttpUrl$Builder$Companion;->slashCount(Ljava/lang/String;II)I

    move-result p0

    return p0
.end method

.method private final parsePort(Ljava/lang/String;II)I
    .registers 16

    const/4 p0, -0x1

    .line 1545
    :try_start_1
    sget-object v0, Lokhttp3/HttpUrl;->Companion:Lokhttp3/HttpUrl$Companion;

    const-string v4, ""

    const/16 v10, 0xf8

    const/4 v11, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v1, p1

    move v2, p2

    move v3, p3

    invoke-static/range {v0 .. v11}, Lokhttp3/HttpUrl$Companion;->canonicalize$okhttp$default(Lokhttp3/HttpUrl$Companion;Ljava/lang/String;IILjava/lang/String;ZZZZLjava/nio/charset/Charset;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 1546
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1
    :try_end_18
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_18} :catch_22

    const/4 p2, 0x1

    if-le p2, p1, :cond_1c

    goto :goto_22

    :cond_1c
    const p2, 0xffff

    if-lt p2, p1, :cond_22

    return p1

    :catch_22
    :cond_22
    :goto_22
    return p0
.end method

.method private final portColonOffset(Ljava/lang/String;II)I
    .registers 5

    :goto_0
    if-ge p2, p3, :cond_1f

    .line 1529
    invoke-virtual {p1, p2}, Ljava/lang/String;->charAt(I)C

    move-result p0

    const/16 v0, 0x3a

    if-eq p0, v0, :cond_1e

    const/16 v0, 0x5b

    if-eq p0, v0, :cond_f

    goto :goto_1b

    :cond_f
    add-int/lit8 p2, p2, 0x1

    if-ge p2, p3, :cond_1b

    .line 1532
    invoke-virtual {p1, p2}, Ljava/lang/String;->charAt(I)C

    move-result p0

    const/16 v0, 0x5d

    if-ne p0, v0, :cond_f

    :cond_1b
    :goto_1b
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_1e
    return p2

    :cond_1f
    return p3
.end method

.method private final schemeDelimiterOffset(Ljava/lang/String;II)I
    .registers 10

    sub-int p0, p3, p2

    const/4 v0, 0x2

    const/4 v1, -0x1

    if-ge p0, v0, :cond_7

    return v1

    .line 1492
    :cond_7
    invoke-virtual {p1, p2}, Ljava/lang/String;->charAt(I)C

    move-result p0

    const/16 v0, 0x61

    .line 1493
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->compare(II)I

    move-result v2

    const/16 v3, 0x5a

    const/16 v4, 0x41

    const/16 v5, 0x7a

    if-ltz v2, :cond_1f

    invoke-static {p0, v5}, Lkotlin/jvm/internal/Intrinsics;->compare(II)I

    move-result v2

    if-lez v2, :cond_2c

    :cond_1f
    invoke-static {p0, v4}, Lkotlin/jvm/internal/Intrinsics;->compare(II)I

    move-result v2

    if-ltz v2, :cond_5e

    invoke-static {p0, v3}, Lkotlin/jvm/internal/Intrinsics;->compare(II)I

    move-result p0

    if-lez p0, :cond_2c

    goto :goto_5e

    :cond_2c
    :goto_2c
    add-int/lit8 p2, p2, 0x1

    if-ge p2, p3, :cond_5e

    .line 1496
    invoke-virtual {p1, p2}, Ljava/lang/String;->charAt(I)C

    move-result p0

    if-le v0, p0, :cond_37

    goto :goto_3a

    :cond_37
    if-lt v5, p0, :cond_3a

    goto :goto_58

    :cond_3a
    :goto_3a
    if-le v4, p0, :cond_3d

    goto :goto_40

    :cond_3d
    if-lt v3, p0, :cond_40

    goto :goto_58

    :cond_40
    :goto_40
    const/16 v2, 0x30

    if-le v2, p0, :cond_45

    goto :goto_4a

    :cond_45
    const/16 v2, 0x39

    if-lt v2, p0, :cond_4a

    goto :goto_58

    :cond_4a
    :goto_4a
    const/16 v2, 0x2b

    if-ne p0, v2, :cond_4f

    goto :goto_58

    :cond_4f
    const/16 v2, 0x2d

    if-ne p0, v2, :cond_54

    goto :goto_58

    :cond_54
    const/16 v2, 0x2e

    if-ne p0, v2, :cond_59

    :goto_58
    goto :goto_2c

    :cond_59
    const/16 p1, 0x3a

    if-ne p0, p1, :cond_5e

    return p2

    :cond_5e
    :goto_5e
    return v1
.end method

.method private final slashCount(Ljava/lang/String;II)I
    .registers 6

    const/4 p0, 0x0

    :goto_1
    if-ge p2, p3, :cond_14

    .line 1515
    invoke-virtual {p1, p2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x5c

    if-eq v0, v1, :cond_f

    const/16 v1, 0x2f

    if-ne v0, v1, :cond_14

    :cond_f
    add-int/lit8 p0, p0, 0x1

    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    :cond_14
    return p0
.end method
