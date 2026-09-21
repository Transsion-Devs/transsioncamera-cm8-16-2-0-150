.class public final Lcom/google/common/flogger/backend/MessageUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final FORMAT_LOCALE:Ljava/util/Locale;

.field private static final NULL_TOSTRING_MESSAGE:Ljava/lang/String; = "toString() returned null"


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 48
    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    sput-object v0, Lcom/google/common/flogger/backend/MessageUtils;->FORMAT_LOCALE:Ljava/util/Locale;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static appendHex(Ljava/lang/StringBuilder;JZ)V
    .registers 9

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-nez v0, :cond_c

    .line 188
    const-string p1, "0"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void

    :cond_c
    if-eqz p3, :cond_11

    .line 190
    const-string p3, "0123456789ABCDEF"

    goto :goto_13

    :cond_11
    const-string p3, "0123456789abcdef"

    .line 193
    :goto_13
    invoke-static {p1, p2}, Ljava/lang/Long;->numberOfLeadingZeros(J)I

    move-result v0

    rsub-int/lit8 v0, v0, 0x3f

    and-int/lit8 v0, v0, -0x4

    :goto_1b
    if-ltz v0, :cond_2d

    ushr-long v1, p1, v0

    const-wide/16 v3, 0xf

    and-long/2addr v1, v3

    long-to-int v1, v1

    .line 194
    invoke-virtual {p3, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, -0x4

    goto :goto_1b

    :cond_2d
    return-void
.end method

.method static appendHex(Ljava/lang/StringBuilder;Ljava/lang/Number;Lcom/google/common/flogger/backend/FormatOptions;)V
    .registers 7

    .line 165
    invoke-virtual {p2}, Lcom/google/common/flogger/backend/FormatOptions;->shouldUpperCase()Z

    move-result p2

    .line 167
    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    .line 169
    instance-of v2, p1, Ljava/lang/Long;

    if-eqz v2, :cond_10

    .line 170
    invoke-static {p0, v0, v1, p2}, Lcom/google/common/flogger/backend/MessageUtils;->appendHex(Ljava/lang/StringBuilder;JZ)V

    return-void

    .line 171
    :cond_10
    instance-of v2, p1, Ljava/lang/Integer;

    if-eqz v2, :cond_1e

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    .line 172
    invoke-static {p0, v0, v1, p2}, Lcom/google/common/flogger/backend/MessageUtils;->appendHex(Ljava/lang/StringBuilder;JZ)V

    return-void

    .line 173
    :cond_1e
    instance-of v2, p1, Ljava/lang/Byte;

    if-eqz v2, :cond_29

    const-wide/16 v2, 0xff

    and-long/2addr v0, v2

    .line 174
    invoke-static {p0, v0, v1, p2}, Lcom/google/common/flogger/backend/MessageUtils;->appendHex(Ljava/lang/StringBuilder;JZ)V

    return-void

    .line 175
    :cond_29
    instance-of v2, p1, Ljava/lang/Short;

    if-eqz v2, :cond_35

    const-wide/32 v2, 0xffff

    and-long/2addr v0, v2

    .line 176
    invoke-static {p0, v0, v1, p2}, Lcom/google/common/flogger/backend/MessageUtils;->appendHex(Ljava/lang/StringBuilder;JZ)V

    return-void

    .line 177
    :cond_35
    instance-of v0, p1, Ljava/math/BigInteger;

    if-eqz v0, :cond_4d

    .line 178
    check-cast p1, Ljava/math/BigInteger;

    const/16 v0, 0x10

    invoke-virtual {p1, v0}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    move-result-object p1

    if-eqz p2, :cond_49

    .line 179
    sget-object p2, Lcom/google/common/flogger/backend/MessageUtils;->FORMAT_LOCALE:Ljava/util/Locale;

    invoke-virtual {p1, p2}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    :cond_49
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void

    .line 182
    :cond_4d
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "unsupported number type: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static appendLogSite(Lcom/google/common/flogger/LogSite;Ljava/lang/StringBuilder;)Z
    .registers 3

    .line 59
    sget-object v0, Lcom/google/common/flogger/backend/LogSiteFormatters;->DEFAULT:Lcom/google/common/flogger/backend/LogSiteFormatters;

    invoke-interface {v0, p0, p1}, Lcom/google/common/flogger/backend/LogSiteFormatter;->appendLogSite(Lcom/google/common/flogger/LogSite;Ljava/lang/StringBuilder;)Z

    move-result p0

    return p0
.end method

.method private static formatErrorMessageFor(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 211
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 212
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 214
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ": "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "}"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static getErrorString(Ljava/lang/Object;Ljava/lang/RuntimeException;)Ljava/lang/String;
    .registers 2

    .line 202
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_4} :catch_5

    goto :goto_e

    :catch_5
    move-exception p1

    .line 205
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    .line 207
    :goto_e
    invoke-static {p0, p1}, Lcom/google/common/flogger/backend/MessageUtils;->formatErrorMessageFor(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static safeFormatTo(Ljava/util/Formattable;Ljava/lang/StringBuilder;Lcom/google/common/flogger/backend/FormatOptions;)V
    .registers 8

    .line 136
    invoke-virtual {p2}, Lcom/google/common/flogger/backend/FormatOptions;->getFlags()I

    move-result v0

    and-int/lit16 v1, v0, 0xa2

    if-eqz v1, :cond_1e

    and-int/lit8 v1, v0, 0x20

    const/4 v2, 0x0

    if-eqz v1, :cond_f

    const/4 v1, 0x1

    goto :goto_10

    :cond_f
    move v1, v2

    :goto_10
    and-int/lit16 v3, v0, 0x80

    const/4 v4, 0x2

    if-eqz v3, :cond_17

    move v3, v4

    goto :goto_18

    :cond_17
    move v3, v2

    :goto_18
    or-int/2addr v1, v3

    and-int/2addr v0, v4

    if-eqz v0, :cond_1d

    const/4 v2, 0x4

    :cond_1d
    or-int/2addr v1, v2

    .line 146
    :cond_1e
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    .line 147
    new-instance v2, Ljava/util/Formatter;

    sget-object v3, Lcom/google/common/flogger/backend/MessageUtils;->FORMAT_LOCALE:Ljava/util/Locale;

    invoke-direct {v2, p1, v3}, Ljava/util/Formatter;-><init>(Ljava/lang/Appendable;Ljava/util/Locale;)V

    .line 149
    :try_start_29
    invoke-virtual {p2}, Lcom/google/common/flogger/backend/FormatOptions;->getWidth()I

    move-result v3

    invoke-virtual {p2}, Lcom/google/common/flogger/backend/FormatOptions;->getPrecision()I

    move-result p2

    invoke-interface {p0, v2, v1, v3, p2}, Ljava/util/Formattable;->formatTo(Ljava/util/Formatter;III)V
    :try_end_34
    .catch Ljava/lang/RuntimeException; {:try_start_29 .. :try_end_34} :catch_35

    return-void

    :catch_35
    move-exception p2

    .line 152
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 155
    :try_start_39
    invoke-virtual {v2}, Ljava/util/Formatter;->out()Ljava/lang/Appendable;

    move-result-object p1

    invoke-static {p0, p2}, Lcom/google/common/flogger/backend/MessageUtils;->getErrorString(Ljava/lang/Object;Ljava/lang/RuntimeException;)Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, p0}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;
    :try_end_44
    .catch Ljava/io/IOException; {:try_start_39 .. :try_end_44} :catch_44

    :catch_44
    return-void
.end method

.method public static safeToString(Ljava/lang/Object;)Ljava/lang/String;
    .registers 2

    .line 72
    :try_start_0
    invoke-static {p0}, Lcom/google/common/flogger/backend/MessageUtils;->toNonNullString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_4} :catch_5

    return-object p0

    :catch_5
    move-exception v0

    .line 74
    invoke-static {p0, v0}, Lcom/google/common/flogger/backend/MessageUtils;->getErrorString(Ljava/lang/Object;Ljava/lang/RuntimeException;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static toNonNullString(Ljava/lang/Object;)Ljava/lang/String;
    .registers 2

    if-nez p0, :cond_5

    .line 88
    const-string p0, "null"

    return-object p0

    .line 90
    :cond_5
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-nez v0, :cond_1d

    .line 94
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_16

    return-object v0

    .line 95
    :cond_16
    const-string v0, "toString() returned null"

    invoke-static {p0, v0}, Lcom/google/common/flogger/backend/MessageUtils;->formatErrorMessageFor(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 98
    :cond_1d
    instance-of v0, p0, [I

    if-eqz v0, :cond_28

    .line 99
    check-cast p0, [I

    invoke-static {p0}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 101
    :cond_28
    instance-of v0, p0, [J

    if-eqz v0, :cond_33

    .line 102
    check-cast p0, [J

    invoke-static {p0}, Ljava/util/Arrays;->toString([J)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 104
    :cond_33
    instance-of v0, p0, [B

    if-eqz v0, :cond_3e

    .line 105
    check-cast p0, [B

    invoke-static {p0}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 107
    :cond_3e
    instance-of v0, p0, [C

    if-eqz v0, :cond_49

    .line 108
    check-cast p0, [C

    invoke-static {p0}, Ljava/util/Arrays;->toString([C)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 110
    :cond_49
    instance-of v0, p0, [S

    if-eqz v0, :cond_54

    .line 111
    check-cast p0, [S

    invoke-static {p0}, Ljava/util/Arrays;->toString([S)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 113
    :cond_54
    instance-of v0, p0, [F

    if-eqz v0, :cond_5f

    .line 114
    check-cast p0, [F

    invoke-static {p0}, Ljava/util/Arrays;->toString([F)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 116
    :cond_5f
    instance-of v0, p0, [D

    if-eqz v0, :cond_6a

    .line 117
    check-cast p0, [D

    invoke-static {p0}, Ljava/util/Arrays;->toString([D)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 119
    :cond_6a
    instance-of v0, p0, [Z

    if-eqz v0, :cond_75

    .line 120
    check-cast p0, [Z

    invoke-static {p0}, Ljava/util/Arrays;->toString([Z)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 123
    :cond_75
    check-cast p0, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
