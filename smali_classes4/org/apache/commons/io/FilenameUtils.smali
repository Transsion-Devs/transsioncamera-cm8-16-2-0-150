.class public Lorg/apache/commons/io/FilenameUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final BASE_16:I = 0x10

.field private static final EMPTY_STRING:Ljava/lang/String; = ""

.field private static final EMPTY_STRING_ARRAY:[Ljava/lang/String;

.field public static final EXTENSION_SEPARATOR:C = '.'

.field public static final EXTENSION_SEPARATOR_STR:Ljava/lang/String;

.field private static final IPV4_MAX_OCTET_VALUE:I = 0xff

.field private static final IPV4_PATTERN:Ljava/util/regex/Pattern;

.field private static final IPV6_MAX_HEX_DIGITS_PER_GROUP:I = 0x4

.field private static final IPV6_MAX_HEX_GROUPS:I = 0x8

.field private static final MAX_UNSIGNED_SHORT:I = 0xffff

.field private static final NOT_FOUND:I = -0x1

.field private static final OTHER_SEPARATOR:C

.field private static final REG_NAME_PART_PATTERN:Ljava/util/regex/Pattern;

.field private static final SYSTEM_SEPARATOR:C

.field private static final UNIX_SEPARATOR:C = '/'

.field private static final WINDOWS_SEPARATOR:C = '\\'


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    .line 89
    new-array v0, v0, [Ljava/lang/String;

    sput-object v0, Lorg/apache/commons/io/FilenameUtils;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    const/16 v0, 0x2e

    .line 105
    invoke-static {v0}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/io/FilenameUtils;->EXTENSION_SEPARATOR_STR:Ljava/lang/String;

    .line 120
    sget-char v0, Ljava/io/File;->separatorChar:C

    sput-char v0, Lorg/apache/commons/io/FilenameUtils;->SYSTEM_SEPARATOR:C

    .line 127
    invoke-static {}, Lorg/apache/commons/io/FilenameUtils;->isSystemWindows()Z

    move-result v0

    if-eqz v0, :cond_1c

    const/16 v0, 0x2f

    .line 128
    sput-char v0, Lorg/apache/commons/io/FilenameUtils;->OTHER_SEPARATOR:C

    goto :goto_20

    :cond_1c
    const/16 v0, 0x5c

    .line 130
    sput-char v0, Lorg/apache/commons/io/FilenameUtils;->OTHER_SEPARATOR:C

    .line 1502
    :goto_20
    const-string v0, "^(\\d{1,3})\\.(\\d{1,3})\\.(\\d{1,3})\\.(\\d{1,3})$"

    .line 1503
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/io/FilenameUtils;->IPV4_PATTERN:Ljava/util/regex/Pattern;

    .line 1608
    const-string v0, "^[a-zA-Z0-9][a-zA-Z0-9-]*$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/io/FilenameUtils;->REG_NAME_PART_PATTERN:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 137
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static concat(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 491
    invoke-static {p1}, Lorg/apache/commons/io/FilenameUtils;->getPrefixLength(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x0

    if-gez v0, :cond_8

    return-object v1

    :cond_8
    if-lez v0, :cond_f

    .line 496
    invoke-static {p1}, Lorg/apache/commons/io/FilenameUtils;->normalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_f
    if-nez p0, :cond_12

    return-object v1

    .line 501
    :cond_12
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1d

    .line 503
    invoke-static {p1}, Lorg/apache/commons/io/FilenameUtils;->normalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1d
    add-int/lit8 v0, v0, -0x1

    .line 505
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 506
    invoke-static {v0}, Lorg/apache/commons/io/FilenameUtils;->isSeparator(C)Z

    move-result v0

    if-eqz v0, :cond_3d

    .line 507
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lorg/apache/commons/io/FilenameUtils;->normalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 509
    :cond_3d
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p0, 0x2f

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lorg/apache/commons/io/FilenameUtils;->normalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static directoryContains(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 5

    .line 534
    const-string v0, "canonicalParent"

    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const/4 v0, 0x0

    if-nez p1, :cond_9

    return v0

    .line 540
    :cond_9
    sget-object v1, Lorg/apache/commons/io/IOCase;->SYSTEM:Lorg/apache/commons/io/IOCase;

    invoke-virtual {v1, p0, p1}, Lorg/apache/commons/io/IOCase;->checkEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_12

    return v0

    .line 544
    :cond_12
    invoke-virtual {v1, p1, p0}, Lorg/apache/commons/io/IOCase;->checkStartsWith(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private static doGetFullPath(Ljava/lang/String;Z)Ljava/lang/String;
    .registers 5

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return-object v0

    .line 941
    :cond_4
    invoke-static {p0}, Lorg/apache/commons/io/FilenameUtils;->getPrefixLength(Ljava/lang/String;)I

    move-result v1

    if-gez v1, :cond_b

    return-object v0

    .line 945
    :cond_b
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-lt v1, v0, :cond_18

    if-eqz p1, :cond_17

    .line 947
    invoke-static {p0}, Lorg/apache/commons/io/FilenameUtils;->getPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    :cond_17
    return-object p0

    .line 951
    :cond_18
    invoke-static {p0}, Lorg/apache/commons/io/FilenameUtils;->indexOfLastSeparator(Ljava/lang/String;)I

    move-result v0

    const/4 v2, 0x0

    if-gez v0, :cond_24

    .line 953
    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_24
    add-int/2addr v0, p1

    if-nez v0, :cond_29

    add-int/lit8 v0, v0, 0x1

    .line 959
    :cond_29
    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static doGetPath(Ljava/lang/String;I)Ljava/lang/String;
    .registers 5

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return-object v0

    .line 857
    :cond_4
    invoke-static {p0}, Lorg/apache/commons/io/FilenameUtils;->getPrefixLength(Ljava/lang/String;)I

    move-result v1

    if-gez v1, :cond_b

    return-object v0

    .line 861
    :cond_b
    invoke-static {p0}, Lorg/apache/commons/io/FilenameUtils;->indexOfLastSeparator(Ljava/lang/String;)I

    move-result v0

    add-int/2addr p1, v0

    .line 863
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_23

    if-ltz v0, :cond_23

    if-lt v1, p1, :cond_1b

    goto :goto_23

    .line 866
    :cond_1b
    invoke-virtual {p0, v1, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 867
    invoke-static {p0}, Lorg/apache/commons/io/FilenameUtils;->requireNonNullChars(Ljava/lang/String;)V

    return-object p0

    .line 864
    :cond_23
    :goto_23
    const-string p0, ""

    return-object p0
.end method

.method private static doNormalize(Ljava/lang/String;CZ)Ljava/lang/String;
    .registers 19

    move-object/from16 v0, p0

    move/from16 v1, p1

    const/4 v2, 0x0

    if-nez v0, :cond_8

    return-object v2

    .line 357
    :cond_8
    invoke-static {v0}, Lorg/apache/commons/io/FilenameUtils;->requireNonNullChars(Ljava/lang/String;)V

    .line 359
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_12

    return-object v0

    .line 363
    :cond_12
    invoke-static {v0}, Lorg/apache/commons/io/FilenameUtils;->getPrefixLength(Ljava/lang/String;)I

    move-result v4

    if-gez v4, :cond_19

    return-object v2

    :cond_19
    add-int/lit8 v5, v3, 0x2

    .line 368
    new-array v6, v5, [C

    .line 369
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v7

    const/4 v8, 0x0

    invoke-virtual {v0, v8, v7, v6, v8}, Ljava/lang/String;->getChars(II[CI)V

    .line 372
    sget-char v0, Lorg/apache/commons/io/FilenameUtils;->SYSTEM_SEPARATOR:C

    if-ne v1, v0, :cond_2b

    sget-char v0, Lorg/apache/commons/io/FilenameUtils;->OTHER_SEPARATOR:C

    :cond_2b
    move v7, v8

    :goto_2c
    if-ge v7, v5, :cond_37

    .line 374
    aget-char v9, v6, v7

    if-ne v9, v0, :cond_34

    .line 375
    aput-char v1, v6, v7

    :cond_34
    add-int/lit8 v7, v7, 0x1

    goto :goto_2c

    :cond_37
    add-int/lit8 v0, v3, -0x1

    .line 381
    aget-char v0, v6, v0

    const/4 v5, 0x1

    if-eq v0, v1, :cond_45

    add-int/lit8 v0, v3, 0x1

    .line 382
    aput-char v1, v6, v3

    move v3, v0

    move v0, v8

    goto :goto_46

    :cond_45
    move v0, v5

    :goto_46
    if-eqz v4, :cond_4a

    move v7, v4

    goto :goto_4b

    :cond_4a
    move v7, v5

    :goto_4b
    if-ge v7, v3, :cond_62

    .line 390
    aget-char v9, v6, v7

    if-ne v9, v1, :cond_60

    add-int/lit8 v9, v7, -0x1

    aget-char v10, v6, v9

    if-ne v10, v1, :cond_60

    sub-int v10, v3, v7

    .line 391
    invoke-static {v6, v7, v6, v9, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v3, v3, -0x1

    add-int/lit8 v7, v7, -0x1

    :cond_60
    add-int/2addr v7, v5

    goto :goto_4b

    :cond_62
    add-int/lit8 v7, v4, 0x1

    move v9, v7

    :goto_65
    const/16 v10, 0x2e

    if-ge v9, v3, :cond_8d

    .line 399
    aget-char v11, v6, v9

    if-ne v11, v1, :cond_8b

    add-int/lit8 v11, v9, -0x1

    aget-char v12, v6, v11

    if-ne v12, v10, :cond_8b

    if-eq v9, v7, :cond_7b

    add-int/lit8 v10, v9, -0x2

    aget-char v10, v6, v10

    if-ne v10, v1, :cond_8b

    :cond_7b
    add-int/lit8 v10, v3, -0x1

    if-ne v9, v10, :cond_80

    move v0, v5

    :cond_80
    add-int/lit8 v10, v9, 0x1

    sub-int v12, v3, v9

    .line 404
    invoke-static {v6, v10, v6, v11, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v3, v3, -0x2

    add-int/lit8 v9, v9, -0x1

    :cond_8b
    add-int/2addr v9, v5

    goto :goto_65

    :cond_8d
    add-int/lit8 v9, v4, 0x2

    move v11, v9

    :goto_90
    if-ge v11, v3, :cond_d6

    .line 413
    aget-char v12, v6, v11

    if-ne v12, v1, :cond_d4

    add-int/lit8 v12, v11, -0x1

    aget-char v12, v6, v12

    if-ne v12, v10, :cond_d4

    add-int/lit8 v12, v11, -0x2

    aget-char v12, v6, v12

    if-ne v12, v10, :cond_d4

    if-eq v11, v9, :cond_aa

    add-int/lit8 v12, v11, -0x3

    aget-char v12, v6, v12

    if-ne v12, v1, :cond_d4

    :cond_aa
    if-ne v11, v9, :cond_ad

    return-object v2

    :cond_ad
    add-int/lit8 v12, v3, -0x1

    if-ne v11, v12, :cond_b2

    move v0, v5

    :cond_b2
    add-int/lit8 v12, v11, -0x4

    :goto_b4
    if-lt v12, v4, :cond_ca

    .line 423
    aget-char v13, v6, v12

    if-ne v13, v1, :cond_c7

    add-int/lit8 v13, v11, 0x1

    add-int/lit8 v14, v12, 0x1

    sub-int v15, v3, v11

    .line 425
    invoke-static {v6, v13, v6, v14, v15}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    sub-int/2addr v11, v12

    sub-int/2addr v3, v11

    move v11, v14

    goto :goto_d4

    :cond_c7
    add-int/lit8 v12, v12, -0x1

    goto :goto_b4

    :cond_ca
    add-int/lit8 v12, v11, 0x1

    sub-int v11, v3, v11

    .line 432
    invoke-static {v6, v12, v6, v4, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    sub-int/2addr v12, v4

    sub-int/2addr v3, v12

    move v11, v7

    :cond_d4
    :goto_d4
    add-int/2addr v11, v5

    goto :goto_90

    :cond_d6
    if-gtz v3, :cond_db

    .line 439
    const-string v0, ""

    return-object v0

    :cond_db
    if-gt v3, v4, :cond_e3

    .line 442
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v6, v8, v3}, Ljava/lang/String;-><init>([CII)V

    return-object v0

    :cond_e3
    if-eqz v0, :cond_ed

    if-eqz p2, :cond_ed

    .line 445
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v6, v8, v3}, Ljava/lang/String;-><init>([CII)V

    return-object v0

    .line 447
    :cond_ed
    new-instance v0, Ljava/lang/String;

    sub-int/2addr v3, v5

    invoke-direct {v0, v6, v8, v3}, Ljava/lang/String;-><init>([CII)V

    return-object v0
.end method

.method public static equals(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 4

    const/4 v0, 0x0

    .line 1128
    sget-object v1, Lorg/apache/commons/io/IOCase;->SENSITIVE:Lorg/apache/commons/io/IOCase;

    invoke-static {p0, p1, v0, v1}, Lorg/apache/commons/io/FilenameUtils;->equals(Ljava/lang/String;Ljava/lang/String;ZLorg/apache/commons/io/IOCase;)Z

    move-result p0

    return p0
.end method

.method public static equals(Ljava/lang/String;Ljava/lang/String;ZLorg/apache/commons/io/IOCase;)Z
    .registers 5

    const/4 v0, 0x0

    if-eqz p0, :cond_1f

    if-nez p1, :cond_6

    goto :goto_1f

    :cond_6
    if-eqz p2, :cond_16

    .line 1197
    invoke-static {p0}, Lorg/apache/commons/io/FilenameUtils;->normalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_f

    return v0

    .line 1201
    :cond_f
    invoke-static {p1}, Lorg/apache/commons/io/FilenameUtils;->normalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_16

    return v0

    :cond_16
    if-nez p3, :cond_1a

    .line 1207
    sget-object p3, Lorg/apache/commons/io/IOCase;->SENSITIVE:Lorg/apache/commons/io/IOCase;

    .line 1209
    :cond_1a
    invoke-virtual {p3, p0, p1}, Lorg/apache/commons/io/IOCase;->checkEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0

    :cond_1f
    :goto_1f
    if-nez p0, :cond_25

    if-nez p1, :cond_25

    const/4 p0, 0x1

    return p0

    :cond_25
    return v0
.end method

.method public static equalsNormalized(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 4

    const/4 v0, 0x1

    .line 1158
    sget-object v1, Lorg/apache/commons/io/IOCase;->SENSITIVE:Lorg/apache/commons/io/IOCase;

    invoke-static {p0, p1, v0, v1}, Lorg/apache/commons/io/FilenameUtils;->equals(Ljava/lang/String;Ljava/lang/String;ZLorg/apache/commons/io/IOCase;)Z

    move-result p0

    return p0
.end method

.method public static equalsNormalizedOnSystem(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 4

    const/4 v0, 0x1

    .line 1175
    sget-object v1, Lorg/apache/commons/io/IOCase;->SYSTEM:Lorg/apache/commons/io/IOCase;

    invoke-static {p0, p1, v0, v1}, Lorg/apache/commons/io/FilenameUtils;->equals(Ljava/lang/String;Ljava/lang/String;ZLorg/apache/commons/io/IOCase;)Z

    move-result p0

    return p0
.end method

.method public static equalsOnSystem(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 4

    const/4 v0, 0x0

    .line 1143
    sget-object v1, Lorg/apache/commons/io/IOCase;->SYSTEM:Lorg/apache/commons/io/IOCase;

    invoke-static {p0, p1, v0, v1}, Lorg/apache/commons/io/FilenameUtils;->equals(Ljava/lang/String;Ljava/lang/String;ZLorg/apache/commons/io/IOCase;)Z

    move-result p0

    return p0
.end method

.method private static getAdsCriticalOffset(Ljava/lang/String;)I
    .registers 3

    .line 1072
    sget-char v0, Lorg/apache/commons/io/FilenameUtils;->SYSTEM_SEPARATOR:C

    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 1073
    sget-char v1, Lorg/apache/commons/io/FilenameUtils;->OTHER_SEPARATOR:C

    invoke-virtual {p0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result p0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_16

    if-ne p0, v1, :cond_13

    const/4 p0, 0x0

    return p0

    :cond_13
    add-int/lit8 p0, p0, 0x1

    return p0

    :cond_16
    if-ne p0, v1, :cond_1b

    add-int/lit8 v0, v0, 0x1

    return v0

    .line 1083
    :cond_1b
    invoke-static {v0, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    add-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public static getBaseName(Ljava/lang/String;)Ljava/lang/String;
    .registers 1

    .line 1022
    invoke-static {p0}, Lorg/apache/commons/io/FilenameUtils;->getName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lorg/apache/commons/io/FilenameUtils;->removeExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getExtension(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    .line 1057
    :cond_4
    invoke-static {p0}, Lorg/apache/commons/io/FilenameUtils;->indexOfExtension(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_e

    .line 1059
    const-string p0, ""

    return-object p0

    :cond_e
    add-int/lit8 v0, v0, 0x1

    .line 1061
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getFullPath(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    const/4 v0, 0x1

    .line 897
    invoke-static {p0, v0}, Lorg/apache/commons/io/FilenameUtils;->doGetFullPath(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getFullPathNoEndSeparator(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    const/4 v0, 0x0

    .line 927
    invoke-static {p0, v0}, Lorg/apache/commons/io/FilenameUtils;->doGetFullPath(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getName(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    .line 984
    :cond_4
    invoke-static {p0}, Lorg/apache/commons/io/FilenameUtils;->requireNonNullChars(Ljava/lang/String;)V

    .line 985
    invoke-static {p0}, Lorg/apache/commons/io/FilenameUtils;->indexOfLastSeparator(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    .line 986
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getPath(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    const/4 v0, 0x1

    .line 815
    invoke-static {p0, v0}, Lorg/apache/commons/io/FilenameUtils;->doGetPath(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getPathNoEndSeparator(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    const/4 v0, 0x0

    .line 843
    invoke-static {p0, v0}, Lorg/apache/commons/io/FilenameUtils;->doGetPath(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getPrefix(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return-object v0

    .line 778
    :cond_4
    invoke-static {p0}, Lorg/apache/commons/io/FilenameUtils;->getPrefixLength(Ljava/lang/String;)I

    move-result v1

    if-gez v1, :cond_b

    return-object v0

    .line 782
    :cond_b
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-le v1, v0, :cond_35

    .line 783
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x2f

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/io/FilenameUtils;->requireNonNullChars(Ljava/lang/String;)V

    .line 784
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_35
    const/4 v0, 0x0

    .line 786
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 787
    invoke-static {p0}, Lorg/apache/commons/io/FilenameUtils;->requireNonNullChars(Ljava/lang/String;)V

    return-object p0
.end method

.method public static getPrefixLength(Ljava/lang/String;)I
    .registers 11

    const/4 v0, -0x1

    if-nez p0, :cond_4

    return v0

    .line 629
    :cond_4
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_c

    return v2

    .line 633
    :cond_c
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x3a

    if-ne v3, v4, :cond_15

    return v0

    :cond_15
    const/16 v5, 0x7e

    const/4 v6, 0x1

    const/4 v7, 0x2

    if-ne v1, v6, :cond_23

    if-ne v3, v5, :cond_1e

    return v7

    .line 641
    :cond_1e
    invoke-static {v3}, Lorg/apache/commons/io/FilenameUtils;->isSeparator(C)Z

    move-result p0

    return p0

    :cond_23
    const/16 v8, 0x5c

    const/16 v9, 0x2f

    if-ne v3, v5, :cond_43

    .line 644
    invoke-virtual {p0, v9, v6}, Ljava/lang/String;->indexOf(II)I

    move-result v2

    .line 645
    invoke-virtual {p0, v8, v6}, Ljava/lang/String;->indexOf(II)I

    move-result p0

    if-ne v2, v0, :cond_37

    if-ne p0, v0, :cond_37

    add-int/2addr v1, v6

    return v1

    :cond_37
    if-ne v2, v0, :cond_3a

    move v2, p0

    :cond_3a
    if-ne p0, v0, :cond_3d

    move p0, v2

    .line 651
    :cond_3d
    invoke-static {v2, p0}, Ljava/lang/Math;->min(II)I

    move-result p0

    add-int/2addr p0, v6

    return p0

    .line 653
    :cond_43
    invoke-virtual {p0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-ne v5, v4, :cond_76

    .line 655
    invoke-static {v3}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v3

    const/16 v4, 0x41

    if-lt v3, v4, :cond_72

    const/16 v4, 0x5a

    if-gt v3, v4, :cond_72

    if-ne v1, v7, :cond_62

    .line 657
    invoke-static {}, Lorg/apache/commons/io/FileSystem;->getCurrent()Lorg/apache/commons/io/FileSystem;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/commons/io/FileSystem;->supportsDriveLetter()Z

    move-result v0

    if-nez v0, :cond_62

    return v2

    :cond_62
    if-eq v1, v7, :cond_71

    .line 660
    invoke-virtual {p0, v7}, Ljava/lang/String;->charAt(I)C

    move-result p0

    invoke-static {p0}, Lorg/apache/commons/io/FilenameUtils;->isSeparator(C)Z

    move-result p0

    if-nez p0, :cond_6f

    goto :goto_71

    :cond_6f
    const/4 p0, 0x3

    return p0

    :cond_71
    :goto_71
    return v7

    :cond_72
    if-ne v3, v9, :cond_75

    return v6

    :cond_75
    return v0

    .line 671
    :cond_76
    invoke-static {v3}, Lorg/apache/commons/io/FilenameUtils;->isSeparator(C)Z

    move-result v1

    if-eqz v1, :cond_ac

    invoke-static {v5}, Lorg/apache/commons/io/FilenameUtils;->isSeparator(C)Z

    move-result v1

    if-nez v1, :cond_83

    goto :goto_ac

    .line 674
    :cond_83
    invoke-virtual {p0, v9, v7}, Ljava/lang/String;->indexOf(II)I

    move-result v1

    .line 675
    invoke-virtual {p0, v8, v7}, Ljava/lang/String;->indexOf(II)I

    move-result v2

    if-ne v1, v0, :cond_8f

    if-eq v2, v0, :cond_ab

    :cond_8f
    if-eq v1, v7, :cond_ab

    if-ne v2, v7, :cond_94

    goto :goto_ab

    :cond_94
    if-ne v1, v0, :cond_97

    move v1, v2

    :cond_97
    if-ne v2, v0, :cond_9a

    move v2, v1

    .line 681
    :cond_9a
    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    add-int/lit8 v2, v1, 0x1

    .line 682
    invoke-virtual {p0, v7, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 683
    invoke-static {p0}, Lorg/apache/commons/io/FilenameUtils;->isValidHostName(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_ab

    return v2

    :cond_ab
    :goto_ab
    return v0

    .line 672
    :cond_ac
    :goto_ac
    invoke-static {v3}, Lorg/apache/commons/io/FilenameUtils;->isSeparator(C)Z

    move-result p0

    return p0
.end method

.method public static indexOfExtension(Ljava/lang/String;)I
    .registers 4

    const/4 v0, -0x1

    if-nez p0, :cond_4

    return v0

    .line 733
    :cond_4
    invoke-static {}, Lorg/apache/commons/io/FilenameUtils;->isSystemWindows()Z

    move-result v1

    if-eqz v1, :cond_1f

    const/16 v1, 0x3a

    .line 735
    invoke-static {p0}, Lorg/apache/commons/io/FilenameUtils;->getAdsCriticalOffset(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->indexOf(II)I

    move-result v1

    if-ne v1, v0, :cond_17

    goto :goto_1f

    .line 737
    :cond_17
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "NTFS ADS separator (\':\') in file name is forbidden."

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1f
    :goto_1f
    const/16 v1, 0x2e

    .line 740
    invoke-virtual {p0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    .line 741
    invoke-static {p0}, Lorg/apache/commons/io/FilenameUtils;->indexOfLastSeparator(Ljava/lang/String;)I

    move-result p0

    if-le p0, v1, :cond_2c

    return v0

    :cond_2c
    return v1
.end method

.method public static indexOfLastSeparator(Ljava/lang/String;)I
    .registers 3

    if-nez p0, :cond_4

    const/4 p0, -0x1

    return p0

    :cond_4
    const/16 v0, 0x2f

    .line 702
    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    const/16 v1, 0x5c

    .line 703
    invoke-virtual {p0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result p0

    .line 704
    invoke-static {v0, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    return p0
.end method

.method public static isExtension(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 4

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return v0

    .line 1228
    :cond_4
    invoke-static {p0}, Lorg/apache/commons/io/FilenameUtils;->requireNonNullChars(Ljava/lang/String;)V

    if-eqz p1, :cond_19

    .line 1230
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_10

    goto :goto_19

    .line 1233
    :cond_10
    invoke-static {p0}, Lorg/apache/commons/io/FilenameUtils;->getExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 1234
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    .line 1231
    :cond_19
    :goto_19
    invoke-static {p0}, Lorg/apache/commons/io/FilenameUtils;->indexOfExtension(Ljava/lang/String;)I

    move-result p0

    const/4 p1, -0x1

    if-ne p0, p1, :cond_22

    const/4 p0, 0x1

    return p0

    :cond_22
    return v0
.end method

.method public static isExtension(Ljava/lang/String;Ljava/util/Collection;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return v0

    .line 1283
    :cond_4
    invoke-static {p0}, Lorg/apache/commons/io/FilenameUtils;->requireNonNullChars(Ljava/lang/String;)V

    const/4 v1, 0x1

    if-eqz p1, :cond_2d

    .line 1285
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_11

    goto :goto_2d

    .line 1288
    :cond_11
    invoke-static {p0}, Lorg/apache/commons/io/FilenameUtils;->getExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 1289
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_19
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2c

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1290
    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_19

    return v1

    :cond_2c
    return v0

    .line 1286
    :cond_2d
    :goto_2d
    invoke-static {p0}, Lorg/apache/commons/io/FilenameUtils;->indexOfExtension(Ljava/lang/String;)I

    move-result p0

    const/4 p1, -0x1

    if-ne p0, p1, :cond_35

    return v1

    :cond_35
    return v0
.end method

.method public static varargs isExtension(Ljava/lang/String;[Ljava/lang/String;)Z
    .registers 7

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return v0

    .line 1253
    :cond_4
    invoke-static {p0}, Lorg/apache/commons/io/FilenameUtils;->requireNonNullChars(Ljava/lang/String;)V

    const/4 v1, 0x1

    if-eqz p1, :cond_23

    .line 1255
    array-length v2, p1

    if-nez v2, :cond_e

    goto :goto_23

    .line 1258
    :cond_e
    invoke-static {p0}, Lorg/apache/commons/io/FilenameUtils;->getExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 1259
    array-length v2, p1

    move v3, v0

    :goto_14
    if-ge v3, v2, :cond_22

    aget-object v4, p1, v3

    .line 1260
    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1f

    return v1

    :cond_1f
    add-int/lit8 v3, v3, 0x1

    goto :goto_14

    :cond_22
    return v0

    .line 1256
    :cond_23
    :goto_23
    invoke-static {p0}, Lorg/apache/commons/io/FilenameUtils;->indexOfExtension(Ljava/lang/String;)I

    move-result p0

    const/4 p1, -0x1

    if-ne p0, p1, :cond_2b

    return v1

    :cond_2b
    return v0
.end method

.method private static isIPv4Address(Ljava/lang/String;)Z
    .registers 8

    .line 1514
    sget-object v0, Lorg/apache/commons/io/FilenameUtils;->IPV4_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    .line 1515
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_39

    invoke-virtual {p0}, Ljava/util/regex/Matcher;->groupCount()I

    move-result v0

    const/4 v2, 0x4

    if-eq v0, v2, :cond_15

    goto :goto_39

    :cond_15
    const/4 v0, 0x1

    move v3, v0

    :goto_17
    if-gt v3, v2, :cond_38

    .line 1521
    invoke-virtual {p0, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    .line 1522
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    const/16 v6, 0xff

    if-le v5, v6, :cond_26

    return v1

    .line 1527
    :cond_26
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-le v5, v0, :cond_35

    const-string v5, "0"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_35

    return v1

    :cond_35
    add-int/lit8 v3, v3, 0x1

    goto :goto_17

    :cond_38
    return v0

    :cond_39
    :goto_39
    return v1
.end method

.method private static isIPv6Address(Ljava/lang/String;)Z
    .registers 10

    .line 1549
    const-string v0, "::"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_14

    .line 1550
    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v4

    if-eq v3, v4, :cond_14

    return v2

    .line 1553
    :cond_14
    const-string v3, ":"

    invoke-virtual {p0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_22

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2e

    .line 1554
    :cond_22
    invoke-virtual {p0, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2f

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2f

    :cond_2e
    return v2

    .line 1557
    :cond_2f
    invoke-virtual {p0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    if-eqz v1, :cond_62

    .line 1559
    new-instance v4, Ljava/util/ArrayList;

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v4, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1560
    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4a

    .line 1562
    const-string p0, ""

    invoke-interface {v4, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_59

    .line 1563
    :cond_4a
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_59

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_59

    .line 1564
    invoke-interface {v4, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 1566
    :cond_59
    :goto_59
    sget-object p0, Lorg/apache/commons/io/FilenameUtils;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    invoke-interface {v4, p0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    move-object v3, p0

    check-cast v3, [Ljava/lang/String;

    .line 1568
    :cond_62
    array-length p0, v3

    const/16 v0, 0x8

    if-le p0, v0, :cond_68

    return v2

    :cond_68
    move p0, v2

    move v4, p0

    move v5, v4

    .line 1573
    :goto_6b
    array-length v6, v3

    const/4 v7, 0x1

    if-ge p0, v6, :cond_af

    .line 1574
    aget-object v6, v3, p0

    .line 1575
    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_7b

    add-int/2addr v5, v7

    if-le v5, v7, :cond_a9

    return v2

    .line 1583
    :cond_7b
    array-length v5, v3

    sub-int/2addr v5, v7

    if-ne p0, v5, :cond_92

    const-string v5, "."

    invoke-virtual {v6, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_92

    .line 1584
    invoke-static {v6}, Lorg/apache/commons/io/FilenameUtils;->isIPv4Address(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_8e

    return v2

    :cond_8e
    add-int/lit8 v4, v4, 0x2

    move v5, v2

    goto :goto_ab

    .line 1590
    :cond_92
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v7, 0x4

    if-le v5, v7, :cond_9a

    return v2

    :cond_9a
    const/16 v5, 0x10

    .line 1595
    :try_start_9c
    invoke-static {v6, v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v5
    :try_end_a0
    .catch Ljava/lang/NumberFormatException; {:try_start_9c .. :try_end_a0} :catch_ae

    if-ltz v5, :cond_ae

    const v6, 0xffff

    if-le v5, v6, :cond_a8

    goto :goto_ae

    :cond_a8
    move v5, v2

    :cond_a9
    add-int/lit8 v4, v4, 0x1

    :goto_ab
    add-int/lit8 p0, p0, 0x1

    goto :goto_6b

    :catch_ae
    :cond_ae
    :goto_ae
    return v2

    :cond_af
    if-gt v4, v0, :cond_b6

    if-ge v4, v0, :cond_b5

    if-eqz v1, :cond_b6

    :cond_b5
    return v7

    :cond_b6
    return v2
.end method

.method private static isRFC3986HostName(Ljava/lang/String;)Z
    .registers 5

    .line 1619
    const-string v0, "\\."

    const/4 v1, -0x1

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    move v1, v0

    .line 1620
    :goto_9
    array-length v2, p0

    const/4 v3, 0x1

    if-ge v1, v2, :cond_2d

    .line 1621
    aget-object v2, p0, v1

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1b

    .line 1623
    array-length p0, p0

    sub-int/2addr p0, v3

    if-ne v1, p0, :cond_1a

    return v3

    :cond_1a
    return v0

    .line 1625
    :cond_1b
    sget-object v2, Lorg/apache/commons/io/FilenameUtils;->REG_NAME_PART_PATTERN:Ljava/util/regex/Pattern;

    aget-object v3, p0, v1

    invoke-virtual {v2, v3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->matches()Z

    move-result v2

    if-nez v2, :cond_2a

    return v0

    :cond_2a
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    :cond_2d
    return v3
.end method

.method private static isSeparator(C)Z
    .registers 2

    const/16 v0, 0x2f

    if-eq p0, v0, :cond_b

    const/16 v0, 0x5c

    if-ne p0, v0, :cond_9

    goto :goto_b

    :cond_9
    const/4 p0, 0x0

    return p0

    :cond_b
    :goto_b
    const/4 p0, 0x1

    return p0
.end method

.method static isSystemWindows()Z
    .registers 2

    .line 146
    sget-char v0, Lorg/apache/commons/io/FilenameUtils;->SYSTEM_SEPARATOR:C

    const/16 v1, 0x5c

    if-ne v0, v1, :cond_8

    const/4 v0, 0x1

    return v0

    :cond_8
    const/4 v0, 0x0

    return v0
.end method

.method private static isValidHostName(Ljava/lang/String;)Z
    .registers 2

    .line 1499
    invoke-static {p0}, Lorg/apache/commons/io/FilenameUtils;->isIPv6Address(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_f

    invoke-static {p0}, Lorg/apache/commons/io/FilenameUtils;->isRFC3986HostName(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_d

    goto :goto_f

    :cond_d
    const/4 p0, 0x0

    return p0

    :cond_f
    :goto_f
    const/4 p0, 0x1

    return p0
.end method

.method public static normalize(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 200
    sget-char v0, Lorg/apache/commons/io/FilenameUtils;->SYSTEM_SEPARATOR:C

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lorg/apache/commons/io/FilenameUtils;->doNormalize(Ljava/lang/String;CZ)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static normalize(Ljava/lang/String;Z)Ljava/lang/String;
    .registers 3

    if-eqz p1, :cond_5

    const/16 p1, 0x2f

    goto :goto_7

    :cond_5
    const/16 p1, 0x5c

    :goto_7
    const/4 v0, 0x1

    .line 248
    invoke-static {p0, p1, v0}, Lorg/apache/commons/io/FilenameUtils;->doNormalize(Ljava/lang/String;CZ)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static normalizeNoEndSeparator(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 293
    sget-char v0, Lorg/apache/commons/io/FilenameUtils;->SYSTEM_SEPARATOR:C

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lorg/apache/commons/io/FilenameUtils;->doNormalize(Ljava/lang/String;CZ)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static normalizeNoEndSeparator(Ljava/lang/String;Z)Ljava/lang/String;
    .registers 3

    if-eqz p1, :cond_5

    const/16 p1, 0x2f

    goto :goto_7

    :cond_5
    const/16 p1, 0x5c

    :goto_7
    const/4 v0, 0x0

    .line 341
    invoke-static {p0, p1, v0}, Lorg/apache/commons/io/FilenameUtils;->doNormalize(Ljava/lang/String;CZ)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static removeExtension(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    .line 1107
    :cond_4
    invoke-static {p0}, Lorg/apache/commons/io/FilenameUtils;->requireNonNullChars(Ljava/lang/String;)V

    .line 1109
    invoke-static {p0}, Lorg/apache/commons/io/FilenameUtils;->indexOfExtension(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_f

    return-object p0

    :cond_f
    const/4 v1, 0x0

    .line 1113
    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static requireNonNullChars(Ljava/lang/String;)V
    .registers 2

    const/4 v0, 0x0

    .line 997
    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result p0

    if-gez p0, :cond_8

    return-void

    .line 998
    :cond_8
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Null byte present in file/path name. There are no known legitimate use cases for such data, but several injection attacks may use it"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static separatorsToSystem(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    .line 583
    :cond_4
    invoke-static {}, Lorg/apache/commons/io/FilenameUtils;->isSystemWindows()Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-static {p0}, Lorg/apache/commons/io/FilenameUtils;->separatorsToWindows(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_f
    invoke-static {p0}, Lorg/apache/commons/io/FilenameUtils;->separatorsToUnix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static separatorsToUnix(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    if-eqz p0, :cond_12

    const/16 v0, 0x5c

    .line 554
    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_c

    goto :goto_12

    :cond_c
    const/16 v1, 0x2f

    .line 557
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p0

    :cond_12
    :goto_12
    return-object p0
.end method

.method public static separatorsToWindows(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    if-eqz p0, :cond_12

    const/16 v0, 0x2f

    .line 567
    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_c

    goto :goto_12

    :cond_c
    const/16 v1, 0x5c

    .line 570
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p0

    :cond_12
    :goto_12
    return-object p0
.end method

.method static splitOnTokens(Ljava/lang/String;)[Ljava/lang/String;
    .registers 11

    const/16 v0, 0x3f

    .line 1455
    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    const/16 v2, 0x2a

    const/4 v3, -0x1

    if-ne v1, v3, :cond_16

    invoke-virtual {p0, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-ne v1, v3, :cond_16

    .line 1456
    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1459
    :cond_16
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object p0

    .line 1460
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1461
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 1463
    array-length v4, p0

    const/4 v5, 0x0

    move v6, v5

    move v7, v6

    :goto_28
    if-ge v6, v4, :cond_58

    aget-char v8, p0, v6

    if-eq v8, v0, :cond_35

    if-ne v8, v2, :cond_31

    goto :goto_35

    .line 1475
    :cond_31
    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_54

    .line 1465
    :cond_35
    :goto_35
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v9

    if-eqz v9, :cond_45

    .line 1466
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1467
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->setLength(I)V

    :cond_45
    if-ne v8, v0, :cond_4d

    .line 1470
    const-string v7, "?"

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_54

    :cond_4d
    if-eq v7, v2, :cond_54

    .line 1472
    const-string v7, "*"

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_54
    :goto_54
    add-int/lit8 v6, v6, 0x1

    move v7, v8

    goto :goto_28

    .line 1479
    :cond_58
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result p0

    if-eqz p0, :cond_65

    .line 1480
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1483
    :cond_65
    sget-object p0, Lorg/apache/commons/io/FilenameUtils;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    return-object p0
.end method

.method public static wildcardMatch(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 3

    .line 1320
    sget-object v0, Lorg/apache/commons/io/IOCase;->SENSITIVE:Lorg/apache/commons/io/IOCase;

    invoke-static {p0, p1, v0}, Lorg/apache/commons/io/FilenameUtils;->wildcardMatch(Ljava/lang/String;Ljava/lang/String;Lorg/apache/commons/io/IOCase;)Z

    move-result p0

    return p0
.end method

.method public static wildcardMatch(Ljava/lang/String;Ljava/lang/String;Lorg/apache/commons/io/IOCase;)Z
    .registers 11

    const/4 v0, 0x1

    if-nez p0, :cond_6

    if-nez p1, :cond_6

    return v0

    :cond_6
    const/4 v1, 0x0

    if-eqz p0, :cond_9e

    if-nez p1, :cond_d

    goto/16 :goto_9e

    :cond_d
    if-nez p2, :cond_11

    .line 1371
    sget-object p2, Lorg/apache/commons/io/IOCase;->SENSITIVE:Lorg/apache/commons/io/IOCase;

    .line 1373
    :cond_11
    invoke-static {p1}, Lorg/apache/commons/io/FilenameUtils;->splitOnTokens(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 1377
    new-instance v2, Ljava/util/ArrayDeque;

    array-length v3, p1

    invoke-direct {v2, v3}, Ljava/util/ArrayDeque;-><init>(I)V

    move v3, v1

    move v4, v3

    move v5, v4

    .line 1381
    :cond_1e
    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_2f

    .line 1382
    invoke-interface {v2}, Ljava/util/Deque;->pop()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [I

    .line 1383
    aget v5, v3, v1

    .line 1384
    aget v4, v3, v0

    move v3, v0

    .line 1389
    :cond_2f
    :goto_2f
    array-length v6, p1

    if-ge v5, v6, :cond_8e

    .line 1391
    aget-object v6, p1, v5

    const-string v7, "?"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_47

    add-int/lit8 v4, v4, 0x1

    .line 1394
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6

    if-le v4, v6, :cond_45

    goto :goto_8e

    :cond_45
    :goto_45
    move v3, v1

    goto :goto_8b

    .line 1399
    :cond_47
    aget-object v6, p1, v5

    const-string v7, "*"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5c

    .line 1402
    array-length v3, p1

    sub-int/2addr v3, v0

    if-ne v5, v3, :cond_5a

    .line 1403
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    move v4, v3

    :cond_5a
    move v3, v0

    goto :goto_8b

    :cond_5c
    if-eqz v3, :cond_7a

    .line 1410
    aget-object v6, p1, v5

    invoke-virtual {p2, p0, v4, v6}, Lorg/apache/commons/io/IOCase;->checkIndexOf(Ljava/lang/String;ILjava/lang/String;)I

    move-result v4

    const/4 v6, -0x1

    if-ne v4, v6, :cond_68

    goto :goto_8e

    :cond_68
    add-int/lit8 v3, v4, 0x1

    .line 1415
    aget-object v6, p1, v5

    invoke-virtual {p2, p0, v3, v6}, Lorg/apache/commons/io/IOCase;->checkIndexOf(Ljava/lang/String;ILjava/lang/String;)I

    move-result v3

    if-ltz v3, :cond_83

    .line 1417
    filled-new-array {v5, v3}, [I

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Deque;->push(Ljava/lang/Object;)V

    goto :goto_83

    .line 1419
    :cond_7a
    aget-object v6, p1, v5

    invoke-virtual {p2, p0, v4, v6}, Lorg/apache/commons/io/IOCase;->checkRegionMatches(Ljava/lang/String;ILjava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_83

    goto :goto_8e

    .line 1426
    :cond_83
    :goto_83
    aget-object v3, p1, v5

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v4, v3

    goto :goto_45

    :goto_8b
    add-int/lit8 v5, v5, 0x1

    goto :goto_2f

    .line 1434
    :cond_8e
    :goto_8e
    array-length v6, p1

    if-ne v5, v6, :cond_98

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6

    if-ne v4, v6, :cond_98

    return v0

    .line 1438
    :cond_98
    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_1e

    :cond_9e
    :goto_9e
    return v1
.end method

.method public static wildcardMatchOnSystem(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 3

    .line 1346
    sget-object v0, Lorg/apache/commons/io/IOCase;->SYSTEM:Lorg/apache/commons/io/IOCase;

    invoke-static {p0, p1, v0}, Lorg/apache/commons/io/FilenameUtils;->wildcardMatch(Ljava/lang/String;Ljava/lang/String;Lorg/apache/commons/io/IOCase;)Z

    move-result p0

    return p0
.end method
