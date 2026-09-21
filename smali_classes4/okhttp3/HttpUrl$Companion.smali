.class public final Lokhttp3/HttpUrl$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lokhttp3/HttpUrl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 1555
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 2

    .line 1555
    invoke-direct {p0}, Lokhttp3/HttpUrl$Companion;-><init>()V

    return-void
.end method

.method public static synthetic canonicalize$okhttp$default(Lokhttp3/HttpUrl$Companion;Ljava/lang/String;IILjava/lang/String;ZZZZLjava/nio/charset/Charset;ILjava/lang/Object;)Ljava/lang/String;
    .registers 13

    and-int/lit8 p11, p10, 0x1

    const/4 v0, 0x0

    if-eqz p11, :cond_6

    move p2, v0

    :cond_6
    and-int/lit8 p11, p10, 0x2

    if-eqz p11, :cond_e

    .line 1772
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p3

    :cond_e
    and-int/lit8 p11, p10, 0x8

    if-eqz p11, :cond_13

    move p5, v0

    :cond_13
    and-int/lit8 p11, p10, 0x10

    if-eqz p11, :cond_18

    move p6, v0

    :cond_18
    and-int/lit8 p11, p10, 0x20

    if-eqz p11, :cond_1d

    move p7, v0

    :cond_1d
    and-int/lit8 p11, p10, 0x40

    if-eqz p11, :cond_22

    move p8, v0

    :cond_22
    and-int/lit16 p10, p10, 0x80

    if-eqz p10, :cond_27

    const/4 p9, 0x0

    .line 1778
    :cond_27
    invoke-virtual/range {p0 .. p9}, Lokhttp3/HttpUrl$Companion;->canonicalize$okhttp(Ljava/lang/String;IILjava/lang/String;ZZZZLjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private final isPercentEncoded(Ljava/lang/String;II)Z
    .registers 5

    add-int/lit8 p0, p2, 0x2

    if-ge p0, p3, :cond_24

    .line 1745
    invoke-virtual {p1, p2}, Ljava/lang/String;->charAt(I)C

    move-result p3

    const/16 v0, 0x25

    if-ne p3, v0, :cond_24

    const/4 p3, 0x1

    add-int/2addr p2, p3

    .line 1746
    invoke-virtual {p1, p2}, Ljava/lang/String;->charAt(I)C

    move-result p2

    invoke-static {p2}, Lokhttp3/internal/Util;->parseHexDigit(C)I

    move-result p2

    const/4 v0, -0x1

    if-eq p2, v0, :cond_24

    .line 1747
    invoke-virtual {p1, p0}, Ljava/lang/String;->charAt(I)C

    move-result p0

    invoke-static {p0}, Lokhttp3/internal/Util;->parseHexDigit(C)I

    move-result p0

    if-eq p0, v0, :cond_24

    return p3

    :cond_24
    const/4 p0, 0x0

    return p0
.end method

.method public static synthetic percentDecode$okhttp$default(Lokhttp3/HttpUrl$Companion;Ljava/lang/String;IIZILjava/lang/Object;)Ljava/lang/String;
    .registers 8

    and-int/lit8 p6, p5, 0x1

    const/4 v0, 0x0

    if-eqz p6, :cond_6

    move p2, v0

    :cond_6
    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_e

    .line 1696
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p3

    :cond_e
    and-int/lit8 p5, p5, 0x4

    if-eqz p5, :cond_13

    move p4, v0

    .line 1697
    :cond_13
    invoke-virtual {p0, p1, p2, p3, p4}, Lokhttp3/HttpUrl$Companion;->percentDecode$okhttp(Ljava/lang/String;IIZ)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private final writeCanonicalized(Lokio/Buffer;Ljava/lang/String;IILjava/lang/String;ZZZZLjava/nio/charset/Charset;)V
    .registers 22

    move v0, p4

    move-object/from16 v1, p10

    const/4 v2, 0x0

    move v3, p3

    move-object v4, v2

    :goto_6
    if-ge v3, v0, :cond_bb

    if-eqz p2, :cond_b3

    .line 1829
    invoke-virtual {p2, v3}, Ljava/lang/String;->codePointAt(I)I

    move-result v5

    if-eqz p6, :cond_25

    const/16 v6, 0x9

    if-eq v5, v6, :cond_21

    const/16 v6, 0xa

    if-eq v5, v6, :cond_21

    const/16 v6, 0xc

    if-eq v5, v6, :cond_21

    const/16 v6, 0xd

    if-eq v5, v6, :cond_21

    goto :goto_25

    :cond_21
    :goto_21
    move-object/from16 v10, p5

    goto/16 :goto_ac

    :cond_25
    :goto_25
    const/16 v6, 0x2b

    if-ne v5, v6, :cond_36

    if-eqz p8, :cond_36

    if-eqz p6, :cond_30

    .line 1835
    const-string v6, "+"

    goto :goto_32

    :cond_30
    const-string v6, "%2B"

    :goto_32
    invoke-virtual {p1, v6}, Lokio/Buffer;->writeUtf8(Ljava/lang/String;)Lokio/Buffer;

    goto :goto_21

    :cond_36
    const/16 v6, 0x20

    const/16 v7, 0x25

    if-lt v5, v6, :cond_47

    const/16 v6, 0x7f

    if-eq v5, v6, :cond_47

    const/16 v6, 0x80

    if-lt v5, v6, :cond_4a

    if-eqz p9, :cond_47

    goto :goto_4a

    :cond_47
    move-object/from16 v10, p5

    goto :goto_66

    :cond_4a
    :goto_4a
    int-to-char v6, v5

    const/4 v8, 0x0

    const/4 v9, 0x2

    move-object/from16 v10, p5

    .line 1839
    invoke-static {v10, v6, v8, v9, v2}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;CZILjava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_66

    if-ne v5, v7, :cond_62

    if-eqz p6, :cond_66

    if-eqz p7, :cond_62

    .line 1841
    invoke-direct {p0, p2, v3, p4}, Lokhttp3/HttpUrl$Companion;->isPercentEncoded(Ljava/lang/String;II)Z

    move-result v6

    if-nez v6, :cond_62

    goto :goto_66

    .line 1861
    :cond_62
    invoke-virtual {p1, v5}, Lokio/Buffer;->writeUtf8CodePoint(I)Lokio/Buffer;

    goto :goto_ac

    :cond_66
    :goto_66
    if-nez v4, :cond_6d

    .line 1844
    new-instance v4, Lokio/Buffer;

    invoke-direct {v4}, Lokio/Buffer;-><init>()V

    :cond_6d
    if-eqz v1, :cond_81

    .line 1847
    sget-object v6, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-static {v1, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_78

    goto :goto_81

    .line 1850
    :cond_78
    invoke-static {v5}, Ljava/lang/Character;->charCount(I)I

    move-result v6

    add-int/2addr v6, v3

    invoke-virtual {v4, p2, v3, v6, v1}, Lokio/Buffer;->writeString(Ljava/lang/String;IILjava/nio/charset/Charset;)Lokio/Buffer;

    goto :goto_84

    .line 1848
    :cond_81
    :goto_81
    invoke-virtual {v4, v5}, Lokio/Buffer;->writeUtf8CodePoint(I)Lokio/Buffer;

    .line 1853
    :goto_84
    invoke-virtual {v4}, Lokio/Buffer;->exhausted()Z

    move-result v6

    if-nez v6, :cond_ac

    .line 1854
    invoke-virtual {v4}, Lokio/Buffer;->readByte()B

    move-result v6

    and-int/lit16 v8, v6, 0xff

    .line 1855
    invoke-virtual {p1, v7}, Lokio/Buffer;->writeByte(I)Lokio/Buffer;

    .line 1856
    # getter for: Lokhttp3/HttpUrl;->HEX_DIGITS:[C
    invoke-static {}, Lokhttp3/HttpUrl;->access$getHEX_DIGITS$cp()[C

    move-result-object v9

    shr-int/lit8 v8, v8, 0x4

    and-int/lit8 v8, v8, 0xf

    aget-char v8, v9, v8

    invoke-virtual {p1, v8}, Lokio/Buffer;->writeByte(I)Lokio/Buffer;

    .line 1857
    # getter for: Lokhttp3/HttpUrl;->HEX_DIGITS:[C
    invoke-static {}, Lokhttp3/HttpUrl;->access$getHEX_DIGITS$cp()[C

    move-result-object v8

    and-int/lit8 v6, v6, 0xf

    aget-char v6, v8, v6

    invoke-virtual {p1, v6}, Lokio/Buffer;->writeByte(I)Lokio/Buffer;

    goto :goto_84

    .line 1863
    :cond_ac
    :goto_ac
    invoke-static {v5}, Ljava/lang/Character;->charCount(I)I

    move-result v5

    add-int/2addr v3, v5

    goto/16 :goto_6

    .line 1829
    :cond_b3
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "null cannot be cast to non-null type java.lang.String"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_bb
    return-void
.end method

.method private final writePercentDecoded(Lokio/Buffer;Ljava/lang/String;IIZ)V
    .registers 10

    :goto_0
    if-ge p3, p4, :cond_53

    if-eqz p2, :cond_4b

    .line 1723
    invoke-virtual {p2, p3}, Ljava/lang/String;->codePointAt(I)I

    move-result p0

    const/16 v0, 0x25

    if-ne p0, v0, :cond_34

    add-int/lit8 v0, p3, 0x2

    if-ge v0, p4, :cond_34

    add-int/lit8 v1, p3, 0x1

    .line 1725
    invoke-virtual {p2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Lokhttp3/internal/Util;->parseHexDigit(C)I

    move-result v1

    .line 1726
    invoke-virtual {p2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Lokhttp3/internal/Util;->parseHexDigit(C)I

    move-result v2

    const/4 v3, -0x1

    if-eq v1, v3, :cond_42

    if-eq v2, v3, :cond_42

    shl-int/lit8 p3, v1, 0x4

    add-int/2addr p3, v2

    .line 1728
    invoke-virtual {p1, p3}, Lokio/Buffer;->writeByte(I)Lokio/Buffer;

    .line 1730
    invoke-static {p0}, Ljava/lang/Character;->charCount(I)I

    move-result p0

    add-int p3, v0, p0

    goto :goto_0

    :cond_34
    const/16 v0, 0x2b

    if-ne p0, v0, :cond_42

    if-eqz p5, :cond_42

    const/16 p0, 0x20

    .line 1734
    invoke-virtual {p1, p0}, Lokio/Buffer;->writeByte(I)Lokio/Buffer;

    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    .line 1738
    :cond_42
    invoke-virtual {p1, p0}, Lokio/Buffer;->writeUtf8CodePoint(I)Lokio/Buffer;

    .line 1739
    invoke-static {p0}, Ljava/lang/Character;->charCount(I)I

    move-result p0

    add-int/2addr p3, p0

    goto :goto_0

    .line 1723
    :cond_4b
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "null cannot be cast to non-null type java.lang.String"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_53
    return-void
.end method


# virtual methods
.method public final -deprecated_get(Ljava/lang/String;)Lokhttp3/HttpUrl;
    .registers 3

    const-string v0, "url"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1665
    invoke-virtual {p0, p1}, Lokhttp3/HttpUrl$Companion;->get(Ljava/lang/String;)Lokhttp3/HttpUrl;

    move-result-object p0

    return-object p0
.end method

.method public final -deprecated_get(Ljava/net/URI;)Lokhttp3/HttpUrl;
    .registers 3

    const-string v0, "uri"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1692
    invoke-virtual {p0, p1}, Lokhttp3/HttpUrl$Companion;->get(Ljava/net/URI;)Lokhttp3/HttpUrl;

    move-result-object p0

    return-object p0
.end method

.method public final -deprecated_get(Ljava/net/URL;)Lokhttp3/HttpUrl;
    .registers 3

    const-string v0, "url"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1683
    invoke-virtual {p0, p1}, Lokhttp3/HttpUrl$Companion;->get(Ljava/net/URL;)Lokhttp3/HttpUrl;

    move-result-object p0

    return-object p0
.end method

.method public final -deprecated_parse(Ljava/lang/String;)Lokhttp3/HttpUrl;
    .registers 3

    const-string v0, "url"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1674
    invoke-virtual {p0, p1}, Lokhttp3/HttpUrl$Companion;->parse(Ljava/lang/String;)Lokhttp3/HttpUrl;

    move-result-object p0

    return-object p0
.end method

.method public final canonicalize$okhttp(Ljava/lang/String;IILjava/lang/String;ZZZZLjava/nio/charset/Charset;)Ljava/lang/String;
    .registers 21

    const-string v0, "$this$canonicalize"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "encodeSet"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    move v3, p2

    :goto_b
    if-ge v3, p3, :cond_62

    .line 1783
    invoke-virtual {p1, v3}, Ljava/lang/String;->codePointAt(I)I

    move-result v0

    const/16 v1, 0x20

    if-lt v0, v1, :cond_44

    const/16 v1, 0x7f

    if-eq v0, v1, :cond_44

    const/16 v1, 0x80

    if-lt v0, v1, :cond_1f

    if-eqz p8, :cond_44

    :cond_1f
    int-to-char v1, v0

    const/4 v6, 0x2

    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 1787
    invoke-static {p4, v1, v8, v6, v7}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;CZILjava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_44

    const/16 v1, 0x25

    if-ne v0, v1, :cond_37

    if-eqz p5, :cond_44

    if-eqz p6, :cond_37

    .line 1789
    invoke-direct {p0, p1, v3, p3}, Lokhttp3/HttpUrl$Companion;->isPercentEncoded(Ljava/lang/String;II)Z

    move-result v6

    if-eqz v6, :cond_44

    :cond_37
    const/16 v6, 0x2b

    if-ne v0, v6, :cond_3e

    if-eqz p7, :cond_3e

    goto :goto_44

    .line 1807
    :cond_3e
    invoke-static {v0}, Ljava/lang/Character;->charCount(I)I

    move-result v0

    add-int/2addr v3, v0

    goto :goto_b

    .line 1792
    :cond_44
    :goto_44
    new-instance v1, Lokio/Buffer;

    invoke-direct {v1}, Lokio/Buffer;-><init>()V

    .line 1793
    invoke-virtual {v1, p1, p2, v3}, Lokio/Buffer;->writeUtf8(Ljava/lang/String;II)Lokio/Buffer;

    move-object v0, p0

    move-object v2, p1

    move v4, p3

    move-object v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    move-object/from16 v10, p9

    .line 1794
    invoke-direct/range {v0 .. v10}, Lokhttp3/HttpUrl$Companion;->writeCanonicalized(Lokio/Buffer;Ljava/lang/String;IILjava/lang/String;ZZZZLjava/nio/charset/Charset;)V

    .line 1805
    invoke-virtual {v1}, Lokio/Buffer;->readUtf8()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1811
    :cond_62
    invoke-virtual/range {p1 .. p3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    const-string v1, "(this as java.lang.Strin\u2026ing(startIndex, endIndex)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public final defaultPort(Ljava/lang/String;)I
    .registers 3

    const-string p0, "scheme"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1573
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result p0

    const v0, 0x310888    # 4.503E-39f

    if-eq p0, v0, :cond_1f

    const v0, 0x5f008eb

    if-eq p0, v0, :cond_14

    goto :goto_2a

    .line 1575
    :cond_14
    const-string p0, "https"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2a

    const/16 p0, 0x1bb

    return p0

    .line 1574
    :cond_1f
    const-string p0, "http"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2a

    const/16 p0, 0x50

    return p0

    :cond_2a
    :goto_2a
    const/4 p0, -0x1

    return p0
.end method

.method public final get(Ljava/lang/String;)Lokhttp3/HttpUrl;
    .registers 3

    const-string p0, "$this$toHttpUrl"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1633
    new-instance p0, Lokhttp3/HttpUrl$Builder;

    invoke-direct {p0}, Lokhttp3/HttpUrl$Builder;-><init>()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lokhttp3/HttpUrl$Builder;->parse$okhttp(Lokhttp3/HttpUrl;Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lokhttp3/HttpUrl$Builder;->build()Lokhttp3/HttpUrl;

    move-result-object p0

    return-object p0
.end method

.method public final get(Ljava/net/URI;)Lokhttp3/HttpUrl;
    .registers 3

    const-string v0, "$this$toHttpUrlOrNull"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1656
    invoke-virtual {p1}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "toString()"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lokhttp3/HttpUrl$Companion;->parse(Ljava/lang/String;)Lokhttp3/HttpUrl;

    move-result-object p0

    return-object p0
.end method

.method public final get(Ljava/net/URL;)Lokhttp3/HttpUrl;
    .registers 3

    const-string v0, "$this$toHttpUrlOrNull"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1653
    invoke-virtual {p1}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "toString()"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lokhttp3/HttpUrl$Companion;->parse(Ljava/lang/String;)Lokhttp3/HttpUrl;

    move-result-object p0

    return-object p0
.end method

.method public final parse(Ljava/lang/String;)Lokhttp3/HttpUrl;
    .registers 3

    const-string v0, "$this$toHttpUrlOrNull"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1642
    :try_start_5
    invoke-virtual {p0, p1}, Lokhttp3/HttpUrl$Companion;->get(Ljava/lang/String;)Lokhttp3/HttpUrl;

    move-result-object p0
    :try_end_9
    .catch Ljava/lang/IllegalArgumentException; {:try_start_5 .. :try_end_9} :catch_a

    return-object p0

    :catch_a
    const/4 p0, 0x0

    return-object p0
.end method

.method public final percentDecode$okhttp(Ljava/lang/String;IIZ)Ljava/lang/String;
    .registers 12

    const-string v0, "$this$percentDecode"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    move v4, p2

    :goto_6
    if-ge v4, p3, :cond_2e

    .line 1700
    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x25

    if-eq v0, v1, :cond_1a

    const/16 v1, 0x2b

    if-ne v0, v1, :cond_17

    if-eqz p4, :cond_17

    goto :goto_1a

    :cond_17
    add-int/lit8 v4, v4, 0x1

    goto :goto_6

    .line 1703
    :cond_1a
    :goto_1a
    new-instance v2, Lokio/Buffer;

    invoke-direct {v2}, Lokio/Buffer;-><init>()V

    .line 1704
    invoke-virtual {v2, p1, p2, v4}, Lokio/Buffer;->writeUtf8(Ljava/lang/String;II)Lokio/Buffer;

    move-object v1, p0

    move-object v3, p1

    move v5, p3

    move v6, p4

    .line 1705
    invoke-direct/range {v1 .. v6}, Lokhttp3/HttpUrl$Companion;->writePercentDecoded(Lokio/Buffer;Ljava/lang/String;IIZ)V

    .line 1706
    invoke-virtual {v2}, Lokio/Buffer;->readUtf8()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2e
    move-object v3, p1

    move v5, p3

    .line 1711
    invoke-virtual {v3, p2, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    const-string p1, "(this as java.lang.Strin\u2026ing(startIndex, endIndex)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final toPathString$okhttp(Ljava/util/List;Ljava/lang/StringBuilder;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/StringBuilder;",
            ")V"
        }
    .end annotation

    const-string p0, "$this$toPathString"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "out"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1582
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p0

    const/4 v0, 0x0

    :goto_f
    if-ge v0, p0, :cond_22

    const/16 v1, 0x2f

    .line 1583
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1584
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_f

    :cond_22
    return-void
.end method

.method public final toQueryNamesAndValues$okhttp(Ljava/lang/String;)Ljava/util/List;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string p0, "$this$toQueryNamesAndValues"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1608
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x0

    move v3, v0

    .line 1610
    :goto_c
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-gt v3, v0, :cond_5c

    const/4 v5, 0x4

    const/4 v6, 0x0

    const/16 v2, 0x26

    const/4 v4, 0x0

    move-object v1, p1

    .line 1611
    invoke-static/range {v1 .. v6}, Lkotlin/text/StringsKt;->indexOf$default(Ljava/lang/CharSequence;CIZILjava/lang/Object;)I

    move-result p1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_23

    .line 1612
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result p1

    :cond_23
    const/4 v5, 0x4

    const/4 v6, 0x0

    const/16 v2, 0x3d

    const/4 v4, 0x0

    .line 1614
    invoke-static/range {v1 .. v6}, Lkotlin/text/StringsKt;->indexOf$default(Ljava/lang/CharSequence;CIZILjava/lang/Object;)I

    move-result v2

    .line 1615
    const-string v4, "(this as java.lang.Strin\u2026ing(startIndex, endIndex)"

    if-eq v2, v0, :cond_4a

    if-le v2, p1, :cond_33

    goto :goto_4a

    .line 1619
    :cond_33
    invoke-virtual {v1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    .line 1620
    invoke-virtual {v1, v2, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_58

    .line 1616
    :cond_4a
    :goto_4a
    invoke-virtual {v1, v3, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x0

    .line 1617
    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_58
    add-int/lit8 v3, p1, 0x1

    move-object p1, v1

    goto :goto_c

    :cond_5c
    return-object p0
.end method

.method public final toQueryString$okhttp(Ljava/util/List;Ljava/lang/StringBuilder;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/StringBuilder;",
            ")V"
        }
    .end annotation

    const-string p0, "$this$toQueryString"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "out"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p0, 0x0

    .line 1590
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    invoke-static {p0, v0}, Lkotlin/ranges/RangesKt;->until(II)Lkotlin/ranges/IntRange;

    move-result-object p0

    const/4 v0, 0x2

    invoke-static {p0, v0}, Lkotlin/ranges/RangesKt;->step(Lkotlin/ranges/IntProgression;I)Lkotlin/ranges/IntProgression;

    move-result-object p0

    invoke-virtual {p0}, Lkotlin/ranges/IntProgression;->getFirst()I

    move-result v0

    invoke-virtual {p0}, Lkotlin/ranges/IntProgression;->getLast()I

    move-result v1

    invoke-virtual {p0}, Lkotlin/ranges/IntProgression;->getStep()I

    move-result p0

    if-ltz p0, :cond_29

    if-gt v0, v1, :cond_51

    goto :goto_2b

    :cond_29
    if-lt v0, v1, :cond_51

    .line 1591
    :goto_2b
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    add-int/lit8 v3, v0, 0x1

    .line 1592
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    if-lez v0, :cond_40

    const/16 v4, 0x26

    .line 1593
    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1594
    :cond_40
    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v3, :cond_4d

    const/16 v2, 0x3d

    .line 1596
    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1597
    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4d
    if-eq v0, v1, :cond_51

    add-int/2addr v0, p0

    goto :goto_2b

    :cond_51
    return-void
.end method
