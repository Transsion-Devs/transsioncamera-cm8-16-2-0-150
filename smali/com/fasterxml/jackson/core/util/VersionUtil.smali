.class public abstract Lcom/fasterxml/jackson/core/util/VersionUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final V_SEP:Ljava/util/regex/Pattern;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 28
    const-string v0, "[-_./;:]"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/fasterxml/jackson/core/util/VersionUtil;->V_SEP:Ljava/util/regex/Pattern;

    return-void
.end method

.method public static parseVersion(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/fasterxml/jackson/core/Version;
    .registers 10

    if-eqz p0, :cond_45

    .line 142
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_45

    .line 143
    sget-object v0, Lcom/fasterxml/jackson/core/util/VersionUtil;->V_SEP:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->split(Ljava/lang/CharSequence;)[Ljava/lang/String;

    move-result-object p0

    .line 144
    new-instance v0, Lcom/fasterxml/jackson/core/Version;

    const/4 v1, 0x0

    aget-object v2, p0, v1

    invoke-static {v2}, Lcom/fasterxml/jackson/core/util/VersionUtil;->parseVersionPart(Ljava/lang/String;)I

    move-result v2

    array-length v3, p0

    const/4 v4, 0x1

    if-le v3, v4, :cond_26

    aget-object v3, p0, v4

    .line 145
    invoke-static {v3}, Lcom/fasterxml/jackson/core/util/VersionUtil;->parseVersionPart(Ljava/lang/String;)I

    move-result v3

    goto :goto_27

    :cond_26
    move v3, v1

    :goto_27
    array-length v4, p0

    const/4 v5, 0x2

    if-le v4, v5, :cond_31

    aget-object v1, p0, v5

    .line 146
    invoke-static {v1}, Lcom/fasterxml/jackson/core/util/VersionUtil;->parseVersionPart(Ljava/lang/String;)I

    move-result v1

    :cond_31
    array-length v4, p0

    const/4 v5, 0x3

    if-le v4, v5, :cond_3f

    aget-object p0, p0, v5

    :goto_37
    move v4, v3

    move v3, v1

    move v1, v2

    move v2, v4

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    goto :goto_41

    :cond_3f
    const/4 p0, 0x0

    goto :goto_37

    :goto_41
    invoke-direct/range {v0 .. v6}, Lcom/fasterxml/jackson/core/Version;-><init>(IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    .line 150
    :cond_45
    invoke-static {}, Lcom/fasterxml/jackson/core/Version;->unknownVersion()Lcom/fasterxml/jackson/core/Version;

    move-result-object p0

    return-object p0
.end method

.method protected static parseVersionPart(Ljava/lang/String;)I
    .registers 6

    .line 155
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_6
    if-ge v1, v0, :cond_1d

    .line 156
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x39

    if-gt v3, v4, :cond_1d

    const/16 v4, 0x30

    if-ge v3, v4, :cond_15

    goto :goto_1d

    :cond_15
    mul-int/lit8 v2, v2, 0xa

    add-int/lit8 v3, v3, -0x30

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_1d
    :goto_1d
    return v2
.end method

.method public static final throwInternal()V
    .registers 2

    .line 176
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Internal error: this code path should never get executed"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
