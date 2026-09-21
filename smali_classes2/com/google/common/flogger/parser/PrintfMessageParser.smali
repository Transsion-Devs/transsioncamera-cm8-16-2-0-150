.class public abstract Lcom/google/common/flogger/parser/PrintfMessageParser;
.super Lcom/google/common/flogger/parser/MessageParser;
.source "SourceFile"


# static fields
.field private static final ALLOWED_NEWLINE_PATTERN:Ljava/lang/String; = "\\n|\\r(?:\\n)?"

.field private static final SYSTEM_NEWLINE:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 32
    invoke-static {}, Lcom/google/common/flogger/parser/PrintfMessageParser;->getSafeSystemNewline()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/common/flogger/parser/PrintfMessageParser;->SYSTEM_NEWLINE:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 28
    invoke-direct {p0}, Lcom/google/common/flogger/parser/MessageParser;-><init>()V

    return-void
.end method

.method private static findFormatChar(Ljava/lang/String;II)I
    .registers 5

    .line 214
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-ge p2, v0, :cond_17

    .line 215
    invoke-virtual {p0, p2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    and-int/lit8 v0, v0, -0x21

    add-int/lit8 v0, v0, -0x41

    int-to-char v0, v0

    const/16 v1, 0x1a

    if-ge v0, v1, :cond_14

    return p2

    :cond_14
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 224
    :cond_17
    const-string p2, "unterminated parameter"

    invoke-static {p2, p0, p1}, Lcom/google/common/flogger/parser/ParseException;->withStartPosition(Ljava/lang/String;Ljava/lang/String;I)Lcom/google/common/flogger/parser/ParseException;

    move-result-object p0

    throw p0
.end method

.method static getSafeSystemNewline()Ljava/lang/String;
    .registers 2

    .line 39
    :try_start_0
    const-string v0, "line.separator"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 40
    const-string v1, "\\n|\\r(?:\\n)?"

    invoke-virtual {v0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1
    :try_end_c
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_c} :catch_f

    if-eqz v1, :cond_f

    return-object v0

    .line 46
    :catch_f
    :cond_f
    const-string v0, "\n"

    return-object v0
.end method

.method static nextPrintfTerm(Ljava/lang/String;I)I
    .registers 5

    .line 192
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-ge p1, v0, :cond_2e

    add-int/lit8 v0, p1, 0x1

    .line 193
    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x25

    if-eq v1, v2, :cond_12

    move p1, v0

    goto :goto_0

    .line 196
    :cond_12
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_27

    .line 197
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v0, v2, :cond_24

    const/16 v1, 0x6e

    if-ne v0, v1, :cond_23

    goto :goto_24

    :cond_23
    return p1

    :cond_24
    :goto_24
    add-int/lit8 p1, p1, 0x2

    goto :goto_0

    .line 207
    :cond_27
    const-string v0, "trailing unquoted \'%\' character"

    invoke-static {v0, p0, p1}, Lcom/google/common/flogger/parser/ParseException;->withStartPosition(Ljava/lang/String;Ljava/lang/String;I)Lcom/google/common/flogger/parser/ParseException;

    move-result-object p0

    throw p0

    :cond_2e
    const/4 p0, -0x1

    return p0
.end method

.method static unescapePrintf(Ljava/lang/StringBuilder;Ljava/lang/String;II)V
    .registers 8

    move v0, p2

    :goto_1
    if-ge p2, p3, :cond_2d

    add-int/lit8 v1, p2, 0x1

    .line 235
    invoke-virtual {p1, p2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x25

    if-eq v2, v3, :cond_e

    goto :goto_2b

    :cond_e
    if-ne v1, p3, :cond_11

    goto :goto_2d

    .line 242
    :cond_11
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-ne v2, v3, :cond_1b

    .line 245
    invoke-virtual {p0, p1, v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    goto :goto_27

    :cond_1b
    const/16 v3, 0x6e

    if-ne v2, v3, :cond_2b

    .line 248
    invoke-virtual {p0, p1, v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    .line 249
    sget-object v0, Lcom/google/common/flogger/parser/PrintfMessageParser;->SYSTEM_NEWLINE:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_27
    add-int/lit8 v0, p2, 0x2

    move p2, v0

    goto :goto_1

    :cond_2b
    :goto_2b
    move p2, v1

    goto :goto_1

    :cond_2d
    :goto_2d
    if-ge v0, p3, :cond_32

    .line 259
    invoke-virtual {p0, p1, v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    :cond_32
    return-void
.end method


# virtual methods
.method protected final parseImpl(Lcom/google/common/flogger/parser/MessageBuilder;)V
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/flogger/parser/MessageBuilder<",
            "TT;>;)V"
        }
    .end annotation

    .line 98
    invoke-virtual {p1}, Lcom/google/common/flogger/parser/MessageBuilder;->getMessage()Ljava/lang/String;

    move-result-object v3

    const/4 v7, 0x0

    .line 105
    invoke-static {v3, v7}, Lcom/google/common/flogger/parser/PrintfMessageParser;->nextPrintfTerm(Ljava/lang/String;I)I

    move-result v0

    const/4 v8, -0x1

    move v4, v0

    move v0, v7

    move v1, v8

    :goto_d
    if-ltz v4, :cond_b2

    add-int/lit8 v2, v4, 0x1

    move v5, v2

    move v6, v7

    .line 116
    :goto_13
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v9

    const-string v10, "unterminated parameter"

    if-ge v5, v9, :cond_ad

    add-int/lit8 v9, v5, 0x1

    .line 117
    invoke-virtual {v3, v5}, Ljava/lang/String;->charAt(I)C

    move-result v11

    add-int/lit8 v12, v11, -0x30

    int-to-char v12, v12

    const/16 v13, 0xa

    if-ge v12, v13, :cond_39

    mul-int/lit8 v6, v6, 0xa

    add-int/2addr v6, v12

    const v5, 0xf4240

    if-ge v6, v5, :cond_32

    move v5, v9

    goto :goto_13

    .line 125
    :cond_32
    const-string p0, "index too large"

    invoke-static {p0, v3, v4, v9}, Lcom/google/common/flogger/parser/ParseException;->withBounds(Ljava/lang/String;Ljava/lang/String;II)Lcom/google/common/flogger/parser/ParseException;

    move-result-object p0

    throw p0

    :cond_39
    const/16 v12, 0x24

    if-ne v11, v12, :cond_6f

    sub-int v1, v5, v2

    if-eqz v1, :cond_68

    .line 142
    invoke-virtual {v3, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x30

    if-eq v1, v2, :cond_61

    add-int/lit8 v6, v6, -0x1

    .line 150
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v1

    if-eq v9, v1, :cond_5c

    add-int/lit8 v5, v5, 0x2

    .line 153
    invoke-virtual {v3, v9}, Ljava/lang/String;->charAt(I)C

    move v2, v9

    move v9, v0

    move v0, v5

    move v5, v2

    move v2, v6

    goto :goto_98

    .line 151
    :cond_5c
    invoke-static {v10, v3, v4}, Lcom/google/common/flogger/parser/ParseException;->withStartPosition(Ljava/lang/String;Ljava/lang/String;I)Lcom/google/common/flogger/parser/ParseException;

    move-result-object p0

    throw p0

    .line 143
    :cond_61
    const-string p0, "index has leading zero"

    invoke-static {p0, v3, v4, v9}, Lcom/google/common/flogger/parser/ParseException;->withBounds(Ljava/lang/String;Ljava/lang/String;II)Lcom/google/common/flogger/parser/ParseException;

    move-result-object p0

    throw p0

    .line 138
    :cond_68
    const-string p0, "missing index"

    invoke-static {p0, v3, v4, v9}, Lcom/google/common/flogger/parser/ParseException;->withBounds(Ljava/lang/String;Ljava/lang/String;II)Lcom/google/common/flogger/parser/ParseException;

    move-result-object p0

    throw p0

    :cond_6f
    const/16 v6, 0x3c

    if-ne v11, v6, :cond_92

    if-eq v1, v8, :cond_8b

    .line 163
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v2

    if-eq v9, v2, :cond_86

    add-int/lit8 v5, v5, 0x2

    .line 166
    invoke-virtual {v3, v9}, Ljava/lang/String;->charAt(I)C

    move v2, v9

    move v9, v0

    move v0, v5

    move v5, v2

    move v2, v1

    goto :goto_98

    .line 164
    :cond_86
    invoke-static {v10, v3, v4}, Lcom/google/common/flogger/parser/ParseException;->withStartPosition(Ljava/lang/String;Ljava/lang/String;I)Lcom/google/common/flogger/parser/ParseException;

    move-result-object p0

    throw p0

    .line 157
    :cond_8b
    const-string p0, "invalid relative parameter"

    invoke-static {p0, v3, v4, v9}, Lcom/google/common/flogger/parser/ParseException;->withBounds(Ljava/lang/String;Ljava/lang/String;II)Lcom/google/common/flogger/parser/ParseException;

    move-result-object p0

    throw p0

    :cond_92
    add-int/lit8 v1, v0, 0x1

    move v5, v2

    move v2, v0

    move v0, v9

    move v9, v1

    :goto_98
    add-int/lit8 v0, v0, -0x1

    .line 176
    invoke-static {v3, v4, v0}, Lcom/google/common/flogger/parser/PrintfMessageParser;->findFormatChar(Ljava/lang/String;II)I

    move-result v6

    move-object v0, p0

    move-object v1, p1

    .line 180
    invoke-virtual/range {v0 .. v6}, Lcom/google/common/flogger/parser/PrintfMessageParser;->parsePrintfTerm(Lcom/google/common/flogger/parser/MessageBuilder;ILjava/lang/String;III)I

    move-result p0

    .line 105
    invoke-static {v3, p0}, Lcom/google/common/flogger/parser/PrintfMessageParser;->nextPrintfTerm(Ljava/lang/String;I)I

    move-result v4

    move-object p0, v0

    move v1, v2

    move v0, v9

    goto/16 :goto_d

    .line 130
    :cond_ad
    invoke-static {v10, v3, v4}, Lcom/google/common/flogger/parser/ParseException;->withStartPosition(Ljava/lang/String;Ljava/lang/String;I)Lcom/google/common/flogger/parser/ParseException;

    move-result-object p0

    throw p0

    :cond_b2
    return-void
.end method

.method abstract parsePrintfTerm(Lcom/google/common/flogger/parser/MessageBuilder;ILjava/lang/String;III)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/flogger/parser/MessageBuilder<",
            "*>;I",
            "Ljava/lang/String;",
            "III)I"
        }
    .end annotation
.end method

.method public final unescape(Ljava/lang/StringBuilder;Ljava/lang/String;II)V
    .registers 5

    .line 93
    invoke-static {p1, p2, p3, p4}, Lcom/google/common/flogger/parser/PrintfMessageParser;->unescapePrintf(Ljava/lang/StringBuilder;Ljava/lang/String;II)V

    return-void
.end method
