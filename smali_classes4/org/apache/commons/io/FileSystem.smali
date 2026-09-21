.class public final enum Lorg/apache/commons/io/FileSystem;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/apache/commons/io/FileSystem;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/apache/commons/io/FileSystem;

.field public static final enum GENERIC:Lorg/apache/commons/io/FileSystem;

.field private static final IS_OS_LINUX:Z

.field private static final IS_OS_MAC:Z

.field private static final IS_OS_WINDOWS:Z

.field public static final enum LINUX:Lorg/apache/commons/io/FileSystem;

.field public static final enum MAC_OSX:Lorg/apache/commons/io/FileSystem;

.field private static final OS_NAME_WINDOWS_PREFIX:Ljava/lang/String; = "Windows"

.field public static final enum WINDOWS:Lorg/apache/commons/io/FileSystem;


# instance fields
.field private final casePreserving:Z

.field private final caseSensitive:Z

.field private final illegalFileNameChars:[C

.field private final maxFileNameLength:I

.field private final maxPathLength:I

.field private final reservedFileNames:[Ljava/lang/String;

.field private final supportsDriveLetter:Z


# direct methods
.method static constructor <clinit>()V
    .registers 35

    .line 39
    new-instance v0, Lorg/apache/commons/io/FileSystem;

    const/4 v1, 0x1

    new-array v7, v1, [C

    const/4 v10, 0x0

    aput-char v10, v7, v10

    new-array v8, v10, [Ljava/lang/String;

    const/4 v9, 0x0

    const-string v1, "GENERIC"

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const v5, 0x7fffffff

    const v6, 0x7fffffff

    invoke-direct/range {v0 .. v9}, Lorg/apache/commons/io/FileSystem;-><init>(Ljava/lang/String;IZZII[C[Ljava/lang/String;Z)V

    sput-object v0, Lorg/apache/commons/io/FileSystem;->GENERIC:Lorg/apache/commons/io/FileSystem;

    .line 44
    new-instance v11, Lorg/apache/commons/io/FileSystem;

    const/4 v1, 0x2

    new-array v1, v1, [C

    fill-array-data v1, :array_be

    new-array v2, v10, [Ljava/lang/String;

    const/16 v20, 0x0

    const-string v12, "LINUX"

    const/4 v13, 0x1

    const/4 v14, 0x1

    const/4 v15, 0x1

    const/16 v16, 0xff

    const/16 v17, 0x1000

    move-object/from16 v18, v1

    move-object/from16 v19, v2

    invoke-direct/range {v11 .. v20}, Lorg/apache/commons/io/FileSystem;-><init>(Ljava/lang/String;IZZII[C[Ljava/lang/String;Z)V

    sput-object v11, Lorg/apache/commons/io/FileSystem;->LINUX:Lorg/apache/commons/io/FileSystem;

    .line 56
    new-instance v12, Lorg/apache/commons/io/FileSystem;

    const/4 v1, 0x3

    new-array v1, v1, [C

    fill-array-data v1, :array_c4

    new-array v2, v10, [Ljava/lang/String;

    const/16 v21, 0x0

    const-string v13, "MAC_OSX"

    const/4 v14, 0x2

    const/16 v16, 0x1

    const/16 v17, 0xff

    const/16 v18, 0x400

    move-object/from16 v19, v1

    move-object/from16 v20, v2

    invoke-direct/range {v12 .. v21}, Lorg/apache/commons/io/FileSystem;-><init>(Ljava/lang/String;IZZII[C[Ljava/lang/String;Z)V

    sput-object v12, Lorg/apache/commons/io/FileSystem;->MAC_OSX:Lorg/apache/commons/io/FileSystem;

    .line 77
    new-instance v1, Lorg/apache/commons/io/FileSystem;

    const/16 v2, 0x29

    new-array v8, v2, [C

    fill-array-data v8, :array_cc

    const-string v33, "NUL"

    const-string v34, "PRN"

    const-string v13, "AUX"

    const-string v14, "COM1"

    const-string v15, "COM2"

    const-string v16, "COM3"

    const-string v17, "COM4"

    const-string v18, "COM5"

    const-string v19, "COM6"

    const-string v20, "COM7"

    const-string v21, "COM8"

    const-string v22, "COM9"

    const-string v23, "CON"

    const-string v24, "LPT1"

    const-string v25, "LPT2"

    const-string v26, "LPT3"

    const-string v27, "LPT4"

    const-string v28, "LPT5"

    const-string v29, "LPT6"

    const-string v30, "LPT7"

    const-string v31, "LPT8"

    const-string v32, "LPT9"

    filled-new-array/range {v13 .. v34}, [Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x1

    const-string v2, "WINDOWS"

    const/4 v3, 0x3

    const/4 v5, 0x1

    const/16 v6, 0xff

    const/16 v7, 0x7d00

    invoke-direct/range {v1 .. v10}, Lorg/apache/commons/io/FileSystem;-><init>(Ljava/lang/String;IZZII[C[Ljava/lang/String;Z)V

    sput-object v1, Lorg/apache/commons/io/FileSystem;->WINDOWS:Lorg/apache/commons/io/FileSystem;

    .line 34
    filled-new-array {v0, v11, v12, v1}, [Lorg/apache/commons/io/FileSystem;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/io/FileSystem;->$VALUES:[Lorg/apache/commons/io/FileSystem;

    .line 100
    const-string v0, "Linux"

    invoke-static {v0}, Lorg/apache/commons/io/FileSystem;->getOsMatchesName(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lorg/apache/commons/io/FileSystem;->IS_OS_LINUX:Z

    .line 110
    const-string v0, "Mac"

    invoke-static {v0}, Lorg/apache/commons/io/FileSystem;->getOsMatchesName(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lorg/apache/commons/io/FileSystem;->IS_OS_MAC:Z

    .line 125
    const-string v0, "Windows"

    invoke-static {v0}, Lorg/apache/commons/io/FileSystem;->getOsMatchesName(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lorg/apache/commons/io/FileSystem;->IS_OS_WINDOWS:Z

    return-void

    nop

    :array_be
    .array-data 2
        0x0s
        0x2fs
    .end array-data

    :array_c4
    .array-data 2
        0x0s
        0x2fs
        0x3as
    .end array-data

    nop

    :array_cc
    .array-data 2
        0x0s
        0x1s
        0x2s
        0x3s
        0x4s
        0x5s
        0x6s
        0x7s
        0x8s
        0x9s
        0xas
        0xbs
        0xcs
        0xds
        0xes
        0xfs
        0x10s
        0x11s
        0x12s
        0x13s
        0x14s
        0x15s
        0x16s
        0x17s
        0x18s
        0x19s
        0x1as
        0x1bs
        0x1cs
        0x1ds
        0x1es
        0x1fs
        0x22s
        0x2as
        0x2fs
        0x3as
        0x3cs
        0x3es
        0x3fs
        0x5cs
        0x7cs
    .end array-data
.end method

.method private constructor <init>(Ljava/lang/String;IZZII[C[Ljava/lang/String;Z)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZII[C[",
            "Ljava/lang/String;",
            "Z)V"
        }
    .end annotation

    .line 220
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 221
    iput p5, p0, Lorg/apache/commons/io/FileSystem;->maxFileNameLength:I

    .line 222
    iput p6, p0, Lorg/apache/commons/io/FileSystem;->maxPathLength:I

    .line 223
    const-string p1, "illegalFileNameChars"

    invoke-static {p7, p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p7, [C

    iput-object p7, p0, Lorg/apache/commons/io/FileSystem;->illegalFileNameChars:[C

    .line 224
    const-string p1, "reservedFileNames"

    invoke-static {p8, p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p8, [Ljava/lang/String;

    iput-object p8, p0, Lorg/apache/commons/io/FileSystem;->reservedFileNames:[Ljava/lang/String;

    .line 225
    iput-boolean p3, p0, Lorg/apache/commons/io/FileSystem;->caseSensitive:Z

    .line 226
    iput-boolean p4, p0, Lorg/apache/commons/io/FileSystem;->casePreserving:Z

    .line 227
    iput-boolean p9, p0, Lorg/apache/commons/io/FileSystem;->supportsDriveLetter:Z

    return-void
.end method

.method public static getCurrent()Lorg/apache/commons/io/FileSystem;
    .registers 1

    .line 133
    sget-boolean v0, Lorg/apache/commons/io/FileSystem;->IS_OS_LINUX:Z

    if-eqz v0, :cond_7

    .line 134
    sget-object v0, Lorg/apache/commons/io/FileSystem;->LINUX:Lorg/apache/commons/io/FileSystem;

    return-object v0

    .line 136
    :cond_7
    sget-boolean v0, Lorg/apache/commons/io/FileSystem;->IS_OS_MAC:Z

    if-eqz v0, :cond_e

    .line 137
    sget-object v0, Lorg/apache/commons/io/FileSystem;->MAC_OSX:Lorg/apache/commons/io/FileSystem;

    return-object v0

    .line 139
    :cond_e
    sget-boolean v0, Lorg/apache/commons/io/FileSystem;->IS_OS_WINDOWS:Z

    if-eqz v0, :cond_15

    .line 140
    sget-object v0, Lorg/apache/commons/io/FileSystem;->WINDOWS:Lorg/apache/commons/io/FileSystem;

    return-object v0

    .line 142
    :cond_15
    sget-object v0, Lorg/apache/commons/io/FileSystem;->GENERIC:Lorg/apache/commons/io/FileSystem;

    return-object v0
.end method

.method private static getOsMatchesName(Ljava/lang/String;)Z
    .registers 2

    .line 153
    const-string v0, "os.name"

    invoke-static {v0}, Lorg/apache/commons/io/FileSystem;->getSystemProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p0}, Lorg/apache/commons/io/FileSystem;->isOsNameMatch(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private static getSystemProperty(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 171
    :try_start_0
    invoke-static {p0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_4
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_4} :catch_5

    return-object p0

    .line 174
    :catch_5
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Caught a SecurityException reading the system property \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\'; the SystemUtils property value will default to null."

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method private isIllegalFileNameChar(C)Z
    .registers 2

    .line 292
    iget-object p0, p0, Lorg/apache/commons/io/FileSystem;->illegalFileNameChars:[C

    invoke-static {p0, p1}, Ljava/util/Arrays;->binarySearch([CC)I

    move-result p0

    if-ltz p0, :cond_a

    const/4 p0, 0x1

    return p0

    :cond_a
    const/4 p0, 0x0

    return p0
.end method

.method private static isOsNameMatch(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 3

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return p0

    .line 196
    :cond_4
    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/apache/commons/io/FileSystem;
    .registers 2

    .line 34
    const-class v0, Lorg/apache/commons/io/FileSystem;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/apache/commons/io/FileSystem;

    return-object p0
.end method

.method public static values()[Lorg/apache/commons/io/FileSystem;
    .registers 1

    .line 34
    sget-object v0, Lorg/apache/commons/io/FileSystem;->$VALUES:[Lorg/apache/commons/io/FileSystem;

    invoke-virtual {v0}, [Lorg/apache/commons/io/FileSystem;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/commons/io/FileSystem;

    return-object v0
.end method


# virtual methods
.method public getIllegalFileNameChars()[C
    .registers 1

    .line 236
    iget-object p0, p0, Lorg/apache/commons/io/FileSystem;->illegalFileNameChars:[C

    invoke-virtual {p0}, [C->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [C

    return-object p0
.end method

.method public getMaxFileNameLength()I
    .registers 1

    .line 245
    iget p0, p0, Lorg/apache/commons/io/FileSystem;->maxFileNameLength:I

    return p0
.end method

.method public getMaxPathLength()I
    .registers 1

    .line 254
    iget p0, p0, Lorg/apache/commons/io/FileSystem;->maxPathLength:I

    return p0
.end method

.method public getReservedFileNames()[Ljava/lang/String;
    .registers 1

    .line 263
    iget-object p0, p0, Lorg/apache/commons/io/FileSystem;->reservedFileNames:[Ljava/lang/String;

    invoke-virtual {p0}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    return-object p0
.end method

.method public isCasePreserving()Z
    .registers 1

    .line 272
    iget-boolean p0, p0, Lorg/apache/commons/io/FileSystem;->casePreserving:Z

    return p0
.end method

.method public isCaseSensitive()Z
    .registers 1

    .line 281
    iget-boolean p0, p0, Lorg/apache/commons/io/FileSystem;->caseSensitive:Z

    return p0
.end method

.method public isLegalFileName(Ljava/lang/CharSequence;)Z
    .registers 5

    const/4 v0, 0x0

    if-eqz p1, :cond_30

    .line 305
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-eqz v1, :cond_30

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    iget v2, p0, Lorg/apache/commons/io/FileSystem;->maxFileNameLength:I

    if-le v1, v2, :cond_12

    goto :goto_30

    .line 308
    :cond_12
    invoke-virtual {p0, p1}, Lorg/apache/commons/io/FileSystem;->isReservedFileName(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_19

    return v0

    :cond_19
    move v1, v0

    .line 311
    :goto_1a
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-ge v1, v2, :cond_2e

    .line 312
    invoke-interface {p1, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    invoke-direct {p0, v2}, Lorg/apache/commons/io/FileSystem;->isIllegalFileNameChar(C)Z

    move-result v2

    if-eqz v2, :cond_2b

    return v0

    :cond_2b
    add-int/lit8 v1, v1, 0x1

    goto :goto_1a

    :cond_2e
    const/4 p0, 0x1

    return p0

    :cond_30
    :goto_30
    return v0
.end method

.method public isReservedFileName(Ljava/lang/CharSequence;)Z
    .registers 2

    .line 327
    iget-object p0, p0, Lorg/apache/commons/io/FileSystem;->reservedFileNames:[Ljava/lang/String;

    invoke-static {p0, p1}, Ljava/util/Arrays;->binarySearch([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p0

    if-ltz p0, :cond_a

    const/4 p0, 0x1

    return p0

    :cond_a
    const/4 p0, 0x0

    return p0
.end method

.method public supportsDriveLetter()Z
    .registers 1

    .line 343
    iget-boolean p0, p0, Lorg/apache/commons/io/FileSystem;->supportsDriveLetter:Z

    return p0
.end method

.method public toLegalFileName(Ljava/lang/String;C)Ljava/lang/String;
    .registers 7

    .line 359
    invoke-direct {p0, p2}, Lorg/apache/commons/io/FileSystem;->isIllegalFileNameChar(C)Z

    move-result v0

    if-eqz v0, :cond_29

    .line 360
    new-instance p1, Ljava/lang/IllegalArgumentException;

    if-nez p2, :cond_d

    const-string p2, "\\0"

    goto :goto_11

    .line 363
    :cond_d
    invoke-static {p2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object p2

    :goto_11
    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    iget-object p0, p0, Lorg/apache/commons/io/FileSystem;->illegalFileNameChars:[C

    invoke-static {p0}, Ljava/util/Arrays;->toString([C)Ljava/lang/String;

    move-result-object p0

    filled-new-array {p2, v0, p0}, [Ljava/lang/Object;

    move-result-object p0

    .line 361
    const-string p2, "The replacement character \'%s\' cannot be one of the %s illegal characters: %s"

    invoke-static {p2, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 365
    :cond_29
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    iget v1, p0, Lorg/apache/commons/io/FileSystem;->maxFileNameLength:I

    const/4 v2, 0x0

    if-le v0, v1, :cond_36

    invoke-virtual {p1, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 368
    :cond_36
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    move v1, v2

    .line 369
    :goto_3b
    array-length v3, v0

    if-ge v2, v3, :cond_4c

    .line 370
    aget-char v3, v0, v2

    invoke-direct {p0, v3}, Lorg/apache/commons/io/FileSystem;->isIllegalFileNameChar(C)Z

    move-result v3

    if-eqz v3, :cond_49

    .line 371
    aput-char p2, v0, v2

    const/4 v1, 0x1

    :cond_49
    add-int/lit8 v2, v2, 0x1

    goto :goto_3b

    :cond_4c
    if-eqz v1, :cond_53

    .line 375
    invoke-static {v0}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_53
    return-object p1
.end method
