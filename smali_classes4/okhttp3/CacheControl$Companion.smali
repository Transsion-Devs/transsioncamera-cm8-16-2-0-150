.class public final Lokhttp3/CacheControl$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lokhttp3/CacheControl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 258
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 2

    .line 258
    invoke-direct {p0}, Lokhttp3/CacheControl$Companion;-><init>()V

    return-void
.end method

.method private final indexOfElement(Ljava/lang/String;Ljava/lang/String;I)I
    .registers 8

    .line 407
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p0

    :goto_4
    if-ge p3, p0, :cond_17

    .line 408
    invoke-virtual {p1, p3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {p2, v0, v3, v1, v2}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;CZILjava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    return p3

    :cond_14
    add-int/lit8 p3, p3, 0x1

    goto :goto_4

    .line 412
    :cond_17
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p0

    return p0
.end method

.method static synthetic indexOfElement$default(Lokhttp3/CacheControl$Companion;Ljava/lang/String;Ljava/lang/String;IILjava/lang/Object;)I
    .registers 6

    and-int/lit8 p4, p4, 0x2

    if-eqz p4, :cond_5

    const/4 p3, 0x0

    .line 406
    :cond_5
    invoke-direct {p0, p1, p2, p3}, Lokhttp3/CacheControl$Companion;->indexOfElement(Ljava/lang/String;Ljava/lang/String;I)I

    move-result p0

    return p0
.end method


# virtual methods
.method public final parse(Lokhttp3/Headers;)Lokhttp3/CacheControl;
    .registers 34

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string v2, "headers"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 301
    invoke-virtual {v1}, Lokhttp3/Headers;->size()I

    move-result v2

    const/4 v5, 0x1

    move v8, v5

    const/4 v7, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, -0x1

    const/4 v13, -0x1

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, -0x1

    const/16 v18, -0x1

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    :goto_23
    if-ge v7, v2, :cond_190

    .line 302
    invoke-virtual {v1, v7}, Lokhttp3/Headers;->name(I)Ljava/lang/String;

    move-result-object v3

    .line 303
    invoke-virtual {v1, v7}, Lokhttp3/Headers;->value(I)Ljava/lang/String;

    move-result-object v6

    .line 306
    const-string v4, "Cache-Control"

    invoke-static {v3, v4, v5}, Lkotlin/text/StringsKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_3b

    if-eqz v9, :cond_39

    :goto_37
    const/4 v8, 0x0

    goto :goto_44

    :cond_39
    move-object v9, v6

    goto :goto_44

    .line 314
    :cond_3b
    const-string v4, "Pragma"

    invoke-static {v3, v4, v5}, Lkotlin/text/StringsKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_182

    goto :goto_37

    :goto_44
    const/4 v3, 0x0

    .line 324
    :goto_45
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v3, v4, :cond_182

    .line 326
    const-string v4, "=,;"

    invoke-direct {v0, v6, v4, v3}, Lokhttp3/CacheControl$Companion;->indexOfElement(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v4

    .line 327
    invoke-virtual {v6, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    move/from16 v29, v5

    const-string v5, "(this as java.lang.Strin\u2026ing(startIndex, endIndex)"

    invoke-static {v3, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "null cannot be cast to non-null type kotlin.CharSequence"

    if-eqz v3, :cond_17c

    invoke-static {v3}, Lkotlin/text/StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    move/from16 v30, v2

    .line 330
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v2

    if-eq v4, v2, :cond_d2

    invoke-virtual {v6, v4}, Ljava/lang/String;->charAt(I)C

    move-result v2

    move/from16 v31, v7

    const/16 v7, 0x2c

    if-eq v2, v7, :cond_d4

    invoke-virtual {v6, v4}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v7, 0x3b

    if-ne v2, v7, :cond_83

    goto :goto_d4

    :cond_83
    add-int/lit8 v4, v4, 0x1

    .line 335
    invoke-static {v6, v4}, Lokhttp3/internal/Util;->indexOfNonWhitespace(Ljava/lang/String;I)I

    move-result v2

    .line 337
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v2, v4, :cond_b4

    invoke-virtual {v6, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v7, 0x22

    if-ne v4, v7, :cond_b4

    add-int/lit8 v25, v2, 0x1

    const/16 v27, 0x4

    const/16 v28, 0x0

    const/16 v24, 0x22

    const/16 v26, 0x0

    move-object/from16 v23, v6

    .line 341
    invoke-static/range {v23 .. v28}, Lkotlin/text/StringsKt;->indexOf$default(Ljava/lang/CharSequence;CIZILjava/lang/Object;)I

    move-result v1

    move/from16 v2, v25

    .line 342
    invoke-virtual {v6, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    move v4, v1

    goto :goto_d7

    .line 347
    :cond_b4
    const-string v4, ",;"

    invoke-direct {v0, v6, v4, v2}, Lokhttp3/CacheControl$Companion;->indexOfElement(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v4

    .line 348
    invoke-virtual {v6, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v2, :cond_cc

    invoke-static {v2}, Lkotlin/text/StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_d7

    :cond_cc
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_d2
    move/from16 v31, v7

    :cond_d4
    :goto_d4
    add-int/lit8 v4, v4, 0x1

    const/4 v2, 0x0

    .line 353
    :goto_d7
    const-string v1, "no-cache"

    move/from16 v5, v29

    invoke-static {v1, v3, v5}, Lkotlin/text/StringsKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_e5

    move v10, v5

    :goto_e2
    const/4 v7, -0x1

    goto/16 :goto_173

    .line 356
    :cond_e5
    const-string v1, "no-store"

    invoke-static {v1, v3, v5}, Lkotlin/text/StringsKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_ef

    move v11, v5

    goto :goto_e2

    .line 359
    :cond_ef
    const-string v1, "max-age"

    invoke-static {v1, v3, v5}, Lkotlin/text/StringsKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_100

    const/4 v1, -0x1

    .line 360
    invoke-static {v2, v1}, Lokhttp3/internal/Util;->toNonNegativeInt(Ljava/lang/String;I)I

    move-result v2

    move v7, v1

    move v12, v2

    goto/16 :goto_173

    :cond_100
    const/4 v1, -0x1

    .line 362
    const-string v7, "s-maxage"

    invoke-static {v7, v3, v5}, Lkotlin/text/StringsKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v7

    if-eqz v7, :cond_111

    .line 363
    invoke-static {v2, v1}, Lokhttp3/internal/Util;->toNonNegativeInt(Ljava/lang/String;I)I

    move-result v2

    move v7, v1

    move v13, v2

    goto/16 :goto_173

    .line 365
    :cond_111
    const-string v1, "private"

    invoke-static {v1, v3, v5}, Lkotlin/text/StringsKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_11b

    move v14, v5

    goto :goto_e2

    .line 368
    :cond_11b
    const-string v1, "public"

    invoke-static {v1, v3, v5}, Lkotlin/text/StringsKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_125

    move v15, v5

    goto :goto_e2

    .line 371
    :cond_125
    const-string v1, "must-revalidate"

    invoke-static {v1, v3, v5}, Lkotlin/text/StringsKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_130

    move/from16 v16, v5

    goto :goto_e2

    .line 374
    :cond_130
    const-string v1, "max-stale"

    invoke-static {v1, v3, v5}, Lkotlin/text/StringsKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_142

    const v1, 0x7fffffff

    .line 375
    invoke-static {v2, v1}, Lokhttp3/internal/Util;->toNonNegativeInt(Ljava/lang/String;I)I

    move-result v1

    move/from16 v17, v1

    goto :goto_e2

    .line 377
    :cond_142
    const-string v1, "min-fresh"

    invoke-static {v1, v3, v5}, Lkotlin/text/StringsKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_152

    const/4 v7, -0x1

    .line 378
    invoke-static {v2, v7}, Lokhttp3/internal/Util;->toNonNegativeInt(Ljava/lang/String;I)I

    move-result v1

    move/from16 v18, v1

    goto :goto_173

    :cond_152
    const/4 v7, -0x1

    .line 380
    const-string v1, "only-if-cached"

    invoke-static {v1, v3, v5}, Lkotlin/text/StringsKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_15e

    move/from16 v19, v5

    goto :goto_173

    .line 383
    :cond_15e
    const-string v1, "no-transform"

    invoke-static {v1, v3, v5}, Lkotlin/text/StringsKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_169

    move/from16 v20, v5

    goto :goto_173

    .line 386
    :cond_169
    const-string v1, "immutable"

    invoke-static {v1, v3, v5}, Lkotlin/text/StringsKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_173

    move/from16 v21, v5

    :cond_173
    :goto_173
    move-object/from16 v1, p1

    move v3, v4

    move/from16 v2, v30

    move/from16 v7, v31

    goto/16 :goto_45

    .line 327
    :cond_17c
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_182
    move/from16 v30, v2

    move/from16 v31, v7

    const/4 v7, -0x1

    add-int/lit8 v1, v31, 0x1

    move v7, v1

    move/from16 v2, v30

    move-object/from16 v1, p1

    goto/16 :goto_23

    :cond_190
    if-nez v8, :cond_195

    const/16 v22, 0x0

    goto :goto_197

    :cond_195
    move-object/from16 v22, v9

    .line 397
    :goto_197
    new-instance v9, Lokhttp3/CacheControl;

    const/16 v23, 0x0

    invoke-direct/range {v9 .. v23}, Lokhttp3/CacheControl;-><init>(ZZIIZZZIIZZZLjava/lang/String;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v9
.end method
