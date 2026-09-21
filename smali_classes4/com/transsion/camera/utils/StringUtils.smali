.class public abstract Lcom/transsion/camera/utils/StringUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static intArrayToUtf8String([I)Ljava/lang/String;
    .registers 4

    if-eqz p0, :cond_1d

    .line 104
    array-length v0, p0

    if-nez v0, :cond_6

    goto :goto_1d

    .line 108
    :cond_6
    array-length v0, p0

    new-array v0, v0, [B

    const/4 v1, 0x0

    .line 109
    :goto_a
    array-length v2, p0

    if-ge v1, v2, :cond_15

    .line 110
    aget v2, p0, v1

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    .line 112
    :cond_15
    new-instance p0, Ljava/lang/String;

    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {p0, v0, v1}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    return-object p0

    .line 105
    :cond_1d
    :goto_1d
    const-string p0, ""

    return-object p0
.end method

.method public static isEnglishCity(Ljava/lang/String;)Z
    .registers 2

    .line 124
    const-string v0, "[a-zA-Z\\s-]+"

    invoke-virtual {p0, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static parseIntSafe(Ljava/lang/String;)I
    .registers 2

    const/4 v0, 0x0

    .line 69
    invoke-static {p0, v0}, Lcom/transsion/camera/utils/StringUtils;->parseIntSafe(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public static parseIntSafe(Ljava/lang/String;I)I
    .registers 2

    if-nez p0, :cond_3

    return p1

    .line 55
    :cond_3
    :try_start_3
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0
    :try_end_7
    .catchall {:try_start_3 .. :try_end_7} :catchall_8

    return p0

    :catchall_8
    return p1
.end method

.method public static readTextSafe(Ljava/io/File;)Ljava/lang/String;
    .registers 4

    .line 83
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return-object v1

    .line 85
    :cond_8
    :try_start_8
    new-instance v0, Ljava/lang/String;

    invoke-virtual {p0}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object p0

    invoke-static {p0}, Ljava/nio/file/Files;->readAllBytes(Ljava/nio/file/Path;)[B

    move-result-object p0

    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v0, p0, v2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V
    :try_end_17
    .catchall {:try_start_8 .. :try_end_17} :catchall_18

    return-object v0

    :catchall_18
    return-object v1
.end method

.method public static splitString(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .registers 2

    .line 26
    invoke-virtual {p0, p1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 27
    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static stringToIntList(Ljava/util/List;)Ljava/util/List;
    .registers 3

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    .line 45
    :cond_4
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 46
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_11
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_29

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 47
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_11

    :cond_29
    return-object v0
.end method

.method public static utf8StringToIntArray(Ljava/lang/String;)[I
    .registers 4

    const/4 v0, 0x0

    if-eqz p0, :cond_20

    .line 91
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_a

    goto :goto_20

    .line 95
    :cond_a
    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p0

    .line 96
    array-length v1, p0

    new-array v1, v1, [I

    .line 97
    :goto_13
    array-length v2, p0

    if-ge v0, v2, :cond_1f

    .line 98
    aget-byte v2, p0, v0

    and-int/lit16 v2, v2, 0xff

    aput v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_13

    :cond_1f
    return-object v1

    .line 92
    :cond_20
    :goto_20
    new-array p0, v0, [I

    return-object p0
.end method
