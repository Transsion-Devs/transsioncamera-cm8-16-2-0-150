.class public final Lokhttp3/Cookie$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lokhttp3/Cookie;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 330
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 2

    .line 330
    invoke-direct {p0}, Lokhttp3/Cookie$Companion;-><init>()V

    return-void
.end method

.method public static final synthetic access$domainMatch(Lokhttp3/Cookie$Companion;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 3

    .line 330
    invoke-direct {p0, p1, p2}, Lokhttp3/Cookie$Companion;->domainMatch(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static final synthetic access$pathMatch(Lokhttp3/Cookie$Companion;Lokhttp3/HttpUrl;Ljava/lang/String;)Z
    .registers 3

    .line 330
    invoke-direct {p0, p1, p2}, Lokhttp3/Cookie$Companion;->pathMatch(Lokhttp3/HttpUrl;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private final dateCharacterOffset(Ljava/lang/String;IIZ)I
    .registers 7

    :goto_0
    if-ge p2, p3, :cond_3b

    .line 555
    invoke-virtual {p1, p2}, Ljava/lang/String;->charAt(I)C

    move-result p0

    const/16 v0, 0x20

    const/4 v1, 0x1

    if-ge p0, v0, :cond_f

    const/16 v0, 0x9

    if-ne p0, v0, :cond_32

    :cond_f
    const/16 v0, 0x7f

    if-ge p0, v0, :cond_32

    const/16 v0, 0x30

    if-gt v0, p0, :cond_1b

    const/16 v0, 0x39

    if-ge v0, p0, :cond_32

    :cond_1b
    const/16 v0, 0x61

    if-gt v0, p0, :cond_23

    const/16 v0, 0x7a

    if-ge v0, p0, :cond_32

    :cond_23
    const/16 v0, 0x41

    if-gt v0, p0, :cond_2b

    const/16 v0, 0x5a

    if-ge v0, p0, :cond_32

    :cond_2b
    const/16 v0, 0x3a

    if-ne p0, v0, :cond_30

    goto :goto_32

    :cond_30
    const/4 p0, 0x0

    goto :goto_33

    :cond_32
    :goto_32
    move p0, v1

    :goto_33
    xor-int/lit8 v0, p4, 0x1

    if-ne p0, v0, :cond_38

    return p2

    :cond_38
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_3b
    return p3
.end method

.method private final domainMatch(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 6

    .line 338
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    const/4 v0, 0x1

    if-eqz p0, :cond_8

    return v0

    :cond_8
    const/4 p0, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 342
    invoke-static {p1, p2, v2, p0, v1}, Lkotlin/text/StringsKt;->endsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2a

    .line 343
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    sub-int/2addr p0, p2

    sub-int/2addr p0, v0

    invoke-virtual {p1, p0}, Ljava/lang/String;->charAt(I)C

    move-result p0

    const/16 p2, 0x2e

    if-ne p0, p2, :cond_2a

    .line 344
    invoke-static {p1}, Lokhttp3/internal/Util;->canParseAsIpAddress(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_2a

    return v0

    :cond_2a
    return v2
.end method

.method private final parseDomain(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    const/4 p0, 0x2

    const/4 v0, 0x0

    .line 590
    const-string v1, "."

    const/4 v2, 0x0

    invoke-static {p1, v1, v2, p0, v0}, Lkotlin/text/StringsKt;->endsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1c

    .line 591
    invoke-static {p1, v1}, Lkotlin/text/StringsKt;->removePrefix(Ljava/lang/String;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lokhttp3/internal/HostnamesKt;->toCanonicalHost(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_16

    return-object p0

    :cond_16
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0

    .line 590
    :cond_1c
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Failed requirement."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private final parseExpires(Ljava/lang/String;II)J
    .registers 26

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p3

    const/4 v3, 0x0

    move/from16 v4, p2

    .line 488
    invoke-direct {v0, v1, v4, v2, v3}, Lokhttp3/Cookie$Companion;->dateCharacterOffset(Ljava/lang/String;IIZ)I

    move-result v4

    .line 496
    # getter for: Lokhttp3/Cookie;->TIME_PATTERN:Ljava/util/regex/Pattern;
    invoke-static {}, Lokhttp3/Cookie;->access$getTIME_PATTERN$cp()Ljava/util/regex/Pattern;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v5

    const/4 v6, -0x1

    move v7, v6

    move v8, v7

    move v9, v8

    move v10, v9

    move v11, v10

    move v12, v11

    :goto_1c
    const/4 v13, 0x2

    const/4 v14, 0x1

    if-ge v4, v2, :cond_f4

    add-int/lit8 v15, v4, 0x1

    .line 499
    invoke-direct {v0, v1, v15, v2, v14}, Lokhttp3/Cookie$Companion;->dateCharacterOffset(Ljava/lang/String;IIZ)I

    move-result v15

    .line 500
    invoke-virtual {v5, v4, v15}, Ljava/util/regex/Matcher;->region(II)Ljava/util/regex/Matcher;

    .line 503
    const-string v4, "matcher.group(1)"

    if-ne v8, v6, :cond_63

    # getter for: Lokhttp3/Cookie;->TIME_PATTERN:Ljava/util/regex/Pattern;
    invoke-static {}, Lokhttp3/Cookie;->access$getTIME_PATTERN$cp()Ljava/util/regex/Pattern;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/util/regex/Matcher;->usePattern(Ljava/util/regex/Pattern;)Ljava/util/regex/Matcher;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/regex/Matcher;->matches()Z

    move-result v3

    if-eqz v3, :cond_63

    .line 504
    invoke-virtual {v5, v14}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    .line 505
    invoke-virtual {v5, v13}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "matcher.group(2)"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    const/4 v3, 0x3

    .line 506
    invoke-virtual {v5, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "matcher.group(3)"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    goto/16 :goto_eb

    :cond_63
    if-ne v9, v6, :cond_7f

    .line 508
    # getter for: Lokhttp3/Cookie;->DAY_OF_MONTH_PATTERN:Ljava/util/regex/Pattern;
    invoke-static {}, Lokhttp3/Cookie;->access$getDAY_OF_MONTH_PATTERN$cp()Ljava/util/regex/Pattern;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/util/regex/Matcher;->usePattern(Ljava/util/regex/Pattern;)Ljava/util/regex/Matcher;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/regex/Matcher;->matches()Z

    move-result v3

    if-eqz v3, :cond_7f

    .line 509
    invoke-virtual {v5, v14}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    goto :goto_eb

    :cond_7f
    if-ne v10, v6, :cond_d0

    .line 511
    # getter for: Lokhttp3/Cookie;->MONTH_PATTERN:Ljava/util/regex/Pattern;
    invoke-static {}, Lokhttp3/Cookie;->access$getMONTH_PATTERN$cp()Ljava/util/regex/Pattern;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/util/regex/Matcher;->usePattern(Ljava/util/regex/Pattern;)Ljava/util/regex/Matcher;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/regex/Matcher;->matches()Z

    move-result v3

    if-eqz v3, :cond_d0

    .line 512
    invoke-virtual {v5, v14}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v10, "Locale.US"

    invoke-static {v4, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v3, :cond_c8

    invoke-virtual {v3, v4}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "(this as java.lang.String).toLowerCase(locale)"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 513
    # getter for: Lokhttp3/Cookie;->MONTH_PATTERN:Ljava/util/regex/Pattern;
    invoke-static {}, Lokhttp3/Cookie;->access$getMONTH_PATTERN$cp()Ljava/util/regex/Pattern;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/regex/Pattern;->pattern()Ljava/lang/String;

    move-result-object v4

    const-string v10, "MONTH_PATTERN.pattern()"

    invoke-static {v4, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v20, 0x6

    const/16 v21, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object/from16 v17, v3

    move-object/from16 v16, v4

    invoke-static/range {v16 .. v21}, Lkotlin/text/StringsKt;->indexOf$default(Ljava/lang/CharSequence;Ljava/lang/String;IZILjava/lang/Object;)I

    move-result v3

    div-int/lit8 v10, v3, 0x4

    goto :goto_eb

    .line 512
    :cond_c8
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "null cannot be cast to non-null type java.lang.String"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_d0
    if-ne v7, v6, :cond_eb

    .line 515
    # getter for: Lokhttp3/Cookie;->YEAR_PATTERN:Ljava/util/regex/Pattern;
    invoke-static {}, Lokhttp3/Cookie;->access$getYEAR_PATTERN$cp()Ljava/util/regex/Pattern;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/util/regex/Matcher;->usePattern(Ljava/util/regex/Pattern;)Ljava/util/regex/Matcher;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/regex/Matcher;->matches()Z

    move-result v3

    if-eqz v3, :cond_eb

    .line 516
    invoke-virtual {v5, v14}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    :cond_eb
    :goto_eb
    add-int/lit8 v15, v15, 0x1

    const/4 v3, 0x0

    .line 520
    invoke-direct {v0, v1, v15, v2, v3}, Lokhttp3/Cookie$Companion;->dateCharacterOffset(Ljava/lang/String;IIZ)I

    move-result v4

    goto/16 :goto_1c

    :cond_f4
    const/16 v0, 0x46

    if-le v0, v7, :cond_f9

    goto :goto_ff

    :cond_f9
    const/16 v0, 0x63

    if-lt v0, v7, :cond_ff

    add-int/lit16 v7, v7, 0x76c

    :cond_ff
    :goto_ff
    if-gez v7, :cond_102

    goto :goto_108

    :cond_102
    const/16 v0, 0x45

    if-lt v0, v7, :cond_108

    add-int/lit16 v7, v7, 0x7d0

    :cond_108
    :goto_108
    const/16 v0, 0x641

    if-lt v7, v0, :cond_10e

    move v0, v14

    goto :goto_10f

    :cond_10e
    const/4 v0, 0x0

    .line 529
    :goto_10f
    const-string v1, "Failed requirement."

    if-eqz v0, :cond_196

    if-eq v10, v6, :cond_117

    move v0, v14

    goto :goto_118

    :cond_117
    const/4 v0, 0x0

    :goto_118
    if-eqz v0, :cond_190

    if-le v14, v9, :cond_11d

    goto :goto_123

    :cond_11d
    const/16 v0, 0x1f

    if-lt v0, v9, :cond_123

    move v0, v14

    goto :goto_124

    :cond_123
    :goto_123
    const/4 v0, 0x0

    :goto_124
    if-eqz v0, :cond_18a

    if-gez v8, :cond_129

    goto :goto_12f

    :cond_129
    const/16 v0, 0x17

    if-lt v0, v8, :cond_12f

    move v0, v14

    goto :goto_130

    :cond_12f
    :goto_12f
    const/4 v0, 0x0

    :goto_130
    if-eqz v0, :cond_184

    const/16 v0, 0x3b

    if-gez v11, :cond_137

    goto :goto_13b

    :cond_137
    if-lt v0, v11, :cond_13b

    move v2, v14

    goto :goto_13c

    :cond_13b
    :goto_13b
    const/4 v2, 0x0

    :goto_13c
    if-eqz v2, :cond_17e

    if-gez v12, :cond_141

    goto :goto_145

    :cond_141
    if-lt v0, v12, :cond_145

    move v0, v14

    goto :goto_146

    :cond_145
    :goto_145
    const/4 v0, 0x0

    :goto_146
    if-eqz v0, :cond_178

    .line 536
    new-instance v0, Ljava/util/GregorianCalendar;

    sget-object v1, Lokhttp3/internal/Util;->UTC:Ljava/util/TimeZone;

    invoke-direct {v0, v1}, Ljava/util/GregorianCalendar;-><init>(Ljava/util/TimeZone;)V

    const/4 v3, 0x0

    .line 537
    invoke-virtual {v0, v3}, Ljava/util/Calendar;->setLenient(Z)V

    .line 538
    invoke-virtual {v0, v14, v7}, Ljava/util/Calendar;->set(II)V

    sub-int/2addr v10, v14

    .line 539
    invoke-virtual {v0, v13, v10}, Ljava/util/Calendar;->set(II)V

    const/4 v1, 0x5

    .line 540
    invoke-virtual {v0, v1, v9}, Ljava/util/Calendar;->set(II)V

    const/16 v1, 0xb

    .line 541
    invoke-virtual {v0, v1, v8}, Ljava/util/Calendar;->set(II)V

    const/16 v1, 0xc

    .line 542
    invoke-virtual {v0, v1, v11}, Ljava/util/Calendar;->set(II)V

    const/16 v1, 0xd

    .line 543
    invoke-virtual {v0, v1, v12}, Ljava/util/Calendar;->set(II)V

    const/16 v1, 0xe

    const/4 v3, 0x0

    .line 544
    invoke-virtual {v0, v1, v3}, Ljava/util/Calendar;->set(II)V

    .line 545
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    return-wide v0

    .line 534
    :cond_178
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 533
    :cond_17e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 532
    :cond_184
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 531
    :cond_18a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 530
    :cond_190
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 529
    :cond_196
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private final parseMaxAge(Ljava/lang/String;)J
    .registers 7

    const-wide/high16 v0, -0x8000000000000000L

    .line 574
    :try_start_2
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide p0
    :try_end_6
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_6} :catch_e

    const-wide/16 v2, 0x0

    cmp-long v2, p0, v2

    if-gtz v2, :cond_d

    return-wide v0

    :cond_d
    return-wide p0

    :catch_e
    move-exception p0

    .line 578
    new-instance v2, Lkotlin/text/Regex;

    const-string v3, "-?\\d+"

    invoke-direct {v2, v3}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Lkotlin/text/Regex;->matches(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2e

    const/4 p0, 0x2

    const/4 v2, 0x0

    .line 579
    const-string v3, "-"

    const/4 v4, 0x0

    invoke-static {p1, v3, v4, p0, v2}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_28

    goto :goto_2d

    :cond_28
    const-wide v0, 0x7fffffffffffffffL

    :goto_2d
    return-wide v0

    .line 581
    :cond_2e
    throw p0
.end method

.method private final pathMatch(Lokhttp3/HttpUrl;Ljava/lang/String;)Z
    .registers 7

    .line 348
    invoke-virtual {p1}, Lokhttp3/HttpUrl;->encodedPath()Ljava/lang/String;

    move-result-object p0

    .line 350
    invoke-static {p0, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_c

    return v0

    :cond_c
    const/4 p1, 0x0

    const/4 v1, 0x2

    const/4 v2, 0x0

    .line 354
    invoke-static {p0, p2, p1, v1, v2}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2b

    .line 355
    const-string v3, "/"

    invoke-static {p2, v3, p1, v1, v2}, Lkotlin/text/StringsKt;->endsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1e

    return v0

    .line 356
    :cond_1e
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    invoke-virtual {p0, p2}, Ljava/lang/String;->charAt(I)C

    move-result p0

    const/16 p2, 0x2f

    if-ne p0, p2, :cond_2b

    return v0

    :cond_2b
    return p1
.end method


# virtual methods
.method public final parse(Lokhttp3/HttpUrl;Ljava/lang/String;)Lokhttp3/Cookie;
    .registers 5

    const-string v0, "url"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "setCookie"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 368
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1, p1, p2}, Lokhttp3/Cookie$Companion;->parse$okhttp(JLokhttp3/HttpUrl;Ljava/lang/String;)Lokhttp3/Cookie;

    move-result-object p0

    return-object p0
.end method

.method public final parse$okhttp(JLokhttp3/HttpUrl;Ljava/lang/String;)Lokhttp3/Cookie;
    .registers 37

    move-object/from16 v0, p0

    move-object/from16 v1, p4

    const-string v2, "url"

    move-object/from16 v7, p3

    invoke-static {v7, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "setCookie"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v5, 0x6

    const/4 v6, 0x0

    const/16 v2, 0x3b

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 371
    invoke-static/range {v1 .. v6}, Lokhttp3/internal/Util;->delimiterOffset$default(Ljava/lang/String;CIIILjava/lang/Object;)I

    move-result v4

    const/4 v5, 0x2

    const/16 v2, 0x3d

    .line 373
    invoke-static/range {v1 .. v6}, Lokhttp3/internal/Util;->delimiterOffset$default(Ljava/lang/String;CIIILjava/lang/Object;)I

    move-result v2

    const/4 v3, 0x0

    if-ne v2, v4, :cond_25

    return-object v3

    :cond_25
    const/4 v5, 0x0

    const/4 v6, 0x1

    .line 376
    invoke-static {v1, v5, v2, v6, v3}, Lokhttp3/internal/Util;->trimSubstring$default(Ljava/lang/String;IIILjava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .line 377
    invoke-interface {v8}, Ljava/lang/CharSequence;->length()I

    move-result v9

    if-nez v9, :cond_32

    goto :goto_39

    :cond_32
    invoke-static {v8}, Lokhttp3/internal/Util;->indexOfControlOrNonAscii(Ljava/lang/String;)I

    move-result v9

    const/4 v10, -0x1

    if-eq v9, v10, :cond_3a

    :goto_39
    return-object v3

    :cond_3a
    add-int/2addr v2, v6

    .line 379
    invoke-static {v1, v2, v4}, Lokhttp3/internal/Util;->trimSubstring(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v9

    .line 380
    invoke-static {v9}, Lokhttp3/internal/Util;->indexOfControlOrNonAscii(Ljava/lang/String;)I

    move-result v2

    if-eq v2, v10, :cond_46

    return-object v3

    :cond_46
    add-int/2addr v4, v6

    .line 392
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    move-object v10, v3

    move-object v11, v10

    move/from16 v18, v5

    move/from16 v20, v18

    move/from16 v23, v20

    move/from16 v19, v6

    const-wide/16 v14, -0x1

    const-wide/16 v16, -0x1

    const-wide v21, 0xe677d21fdbffL

    :goto_5e
    if-ge v4, v2, :cond_d6

    const-wide v24, 0xe677d21fdbffL

    const/16 v12, 0x3b

    .line 394
    invoke-static {v1, v12, v4, v2}, Lokhttp3/internal/Util;->delimiterOffset(Ljava/lang/String;CII)I

    move-result v12

    const/16 v13, 0x3d

    .line 396
    invoke-static {v1, v13, v4, v12}, Lokhttp3/internal/Util;->delimiterOffset(Ljava/lang/String;CII)I

    move-result v13

    .line 397
    invoke-static {v1, v4, v13}, Lokhttp3/internal/Util;->trimSubstring(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v4

    if-ge v13, v12, :cond_80

    add-int/lit8 v13, v13, 0x1

    .line 399
    invoke-static {v1, v13, v12}, Lokhttp3/internal/Util;->trimSubstring(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v13

    :goto_7d
    move-object/from16 v26, v3

    goto :goto_83

    .line 401
    :cond_80
    const-string v13, ""

    goto :goto_7d

    .line 405
    :goto_83
    const-string v3, "expires"

    invoke-static {v4, v3, v6}, Lkotlin/text/StringsKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_96

    .line 407
    :try_start_8b
    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v3

    invoke-direct {v0, v13, v5, v3}, Lokhttp3/Cookie$Companion;->parseExpires(Ljava/lang/String;II)J

    move-result-wide v21
    :try_end_93
    .catch Ljava/lang/IllegalArgumentException; {:try_start_8b .. :try_end_93} :catch_d1

    :goto_93
    move/from16 v20, v6

    goto :goto_d1

    .line 413
    :cond_96
    const-string v3, "max-age"

    invoke-static {v4, v3, v6}, Lkotlin/text/StringsKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_a3

    .line 415
    :try_start_9e
    invoke-direct {v0, v13}, Lokhttp3/Cookie$Companion;->parseMaxAge(Ljava/lang/String;)J

    move-result-wide v14
    :try_end_a2
    .catch Ljava/lang/NumberFormatException; {:try_start_9e .. :try_end_a2} :catch_d1

    goto :goto_93

    .line 421
    :cond_a3
    const-string v3, "domain"

    invoke-static {v4, v3, v6}, Lkotlin/text/StringsKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_b2

    .line 423
    :try_start_ab
    invoke-direct {v0, v13}, Lokhttp3/Cookie$Companion;->parseDomain(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10
    :try_end_af
    .catch Ljava/lang/IllegalArgumentException; {:try_start_ab .. :try_end_af} :catch_d1

    move/from16 v19, v5

    goto :goto_d1

    .line 429
    :cond_b2
    const-string v3, "path"

    invoke-static {v4, v3, v6}, Lkotlin/text/StringsKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_bc

    move-object v11, v13

    goto :goto_d1

    .line 432
    :cond_bc
    const-string v3, "secure"

    invoke-static {v4, v3, v6}, Lkotlin/text/StringsKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_c7

    move/from16 v23, v6

    goto :goto_d1

    .line 435
    :cond_c7
    const-string v3, "httponly"

    invoke-static {v4, v3, v6}, Lkotlin/text/StringsKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_d1

    move/from16 v18, v6

    :catch_d1
    :cond_d1
    :goto_d1
    add-int/lit8 v4, v12, 0x1

    move-object/from16 v3, v26

    goto :goto_5e

    :cond_d6
    move-object/from16 v26, v3

    const-wide v24, 0xe677d21fdbffL

    const-wide/high16 v1, -0x8000000000000000L

    cmp-long v3, v14, v1

    if-nez v3, :cond_e5

    move-wide v12, v1

    goto :goto_10e

    :cond_e5
    cmp-long v1, v14, v16

    if-eqz v1, :cond_10c

    const-wide v1, 0x20c49ba5e353f7L

    cmp-long v1, v14, v1

    if-gtz v1, :cond_f7

    const/16 v1, 0x3e8

    int-to-long v1, v1

    mul-long/2addr v14, v1

    goto :goto_fc

    :cond_f7
    const-wide v14, 0x7fffffffffffffffL

    :goto_fc
    add-long v14, p1, v14

    cmp-long v1, v14, p1

    if-ltz v1, :cond_109

    cmp-long v1, v14, v24

    if-lez v1, :cond_107

    goto :goto_109

    :cond_107
    move-wide v12, v14

    goto :goto_10e

    :cond_109
    :goto_109
    move-wide/from16 v12, v24

    goto :goto_10e

    :cond_10c
    move-wide/from16 v12, v21

    .line 460
    :goto_10e
    invoke-virtual {v7}, Lokhttp3/HttpUrl;->host()Ljava/lang/String;

    move-result-object v1

    if-nez v10, :cond_116

    move-object v10, v1

    goto :goto_11d

    .line 463
    :cond_116
    invoke-direct {v0, v1, v10}, Lokhttp3/Cookie$Companion;->domainMatch(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_11d

    return-object v26

    .line 469
    :cond_11d
    :goto_11d
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v1

    if-eq v0, v1, :cond_134

    sget-object v0, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->Companion:Lokhttp3/internal/publicsuffix/PublicSuffixDatabase$Companion;

    invoke-virtual {v0}, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase$Companion;->get()Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;

    move-result-object v0

    invoke-virtual {v0, v10}, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->getEffectiveTldPlusOne(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_134

    return-object v26

    .line 475
    :cond_134
    const-string v0, "/"

    if-eqz v11, :cond_141

    const/4 v1, 0x2

    move-object/from16 v2, v26

    invoke-static {v11, v0, v5, v1, v2}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_16c

    .line 476
    :cond_141
    invoke-virtual {v7}, Lokhttp3/HttpUrl;->encodedPath()Ljava/lang/String;

    move-result-object v24

    const/16 v28, 0x6

    const/16 v29, 0x0

    const/16 v25, 0x2f

    const/16 v26, 0x0

    const/16 v27, 0x0

    .line 477
    invoke-static/range {v24 .. v29}, Lkotlin/text/StringsKt;->lastIndexOf$default(Ljava/lang/CharSequence;CIZILjava/lang/Object;)I

    move-result v1

    move-object/from16 v2, v24

    if-eqz v1, :cond_162

    if-eqz v2, :cond_164

    .line 478
    invoke-virtual {v2, v5, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    const-string v1, "(this as java.lang.Strin\u2026ing(startIndex, endIndex)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_162
    move-object v11, v0

    goto :goto_16c

    :cond_164
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "null cannot be cast to non-null type java.lang.String"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 481
    :cond_16c
    :goto_16c
    new-instance v7, Lokhttp3/Cookie;

    move/from16 v15, v18

    const/16 v18, 0x0

    move/from16 v17, v19

    move/from16 v16, v20

    move/from16 v14, v23

    move-wide/from16 v30, v12

    move-object v12, v10

    move-object v13, v11

    move-wide/from16 v10, v30

    invoke-direct/range {v7 .. v18}, Lokhttp3/Cookie;-><init>(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;ZZZZLkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v7
.end method

.method public final parseAll(Lokhttp3/HttpUrl;Lokhttp3/Headers;)Ljava/util/List;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lokhttp3/HttpUrl;",
            "Lokhttp3/Headers;",
            ")",
            "Ljava/util/List<",
            "Lokhttp3/Cookie;",
            ">;"
        }
    .end annotation

    const-string v0, "url"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "headers"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 597
    const-string v0, "Set-Cookie"

    invoke-virtual {p2, v0}, Lokhttp3/Headers;->values(Ljava/lang/String;)Ljava/util/List;

    move-result-object p2

    .line 600
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_16
    if-ge v2, v0, :cond_31

    .line 601
    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {p0, p1, v3}, Lokhttp3/Cookie$Companion;->parse(Lokhttp3/HttpUrl;Ljava/lang/String;)Lokhttp3/Cookie;

    move-result-object v3

    if-eqz v3, :cond_2e

    if-nez v1, :cond_2b

    .line 602
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 603
    :cond_2b
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2e
    add-int/lit8 v2, v2, 0x1

    goto :goto_16

    :cond_31
    if-eqz v1, :cond_3d

    .line 607
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    const-string p1, "Collections.unmodifiableList(cookies)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0

    .line 609
    :cond_3d
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method
