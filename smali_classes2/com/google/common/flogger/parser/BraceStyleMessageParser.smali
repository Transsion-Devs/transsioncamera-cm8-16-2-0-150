.class public abstract Lcom/google/common/flogger/parser/BraceStyleMessageParser;
.super Lcom/google/common/flogger/parser/MessageParser;
.source "SourceFile"


# static fields
.field private static final BRACE_STYLE_SEPARATOR:C = ','


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 28
    invoke-direct {p0}, Lcom/google/common/flogger/parser/MessageParser;-><init>()V

    return-void
.end method

.method static nextBraceFormatTerm(Ljava/lang/String;I)I
    .registers 5

    .line 149
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-ge p1, v0, :cond_46

    add-int/lit8 v0, p1, 0x1

    .line 150
    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x7b

    if-ne v1, v2, :cond_11

    return p1

    :cond_11
    const/16 v2, 0x27

    if-eq v1, v2, :cond_17

    :goto_15
    move p1, v0

    goto :goto_0

    .line 159
    :cond_17
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-eq v0, v1, :cond_3f

    add-int/lit8 v1, p1, 0x2

    .line 162
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ne v0, v2, :cond_27

    move p1, v1

    goto :goto_0

    .line 170
    :cond_27
    :goto_27
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_38

    add-int/lit8 v0, v1, 0x1

    .line 173
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v2, :cond_36

    goto :goto_15

    :cond_36
    move v1, v0

    goto :goto_27

    .line 171
    :cond_38
    const-string v0, "unmatched single quote"

    invoke-static {v0, p0, p1}, Lcom/google/common/flogger/parser/ParseException;->withStartPosition(Ljava/lang/String;Ljava/lang/String;I)Lcom/google/common/flogger/parser/ParseException;

    move-result-object p0

    throw p0

    .line 160
    :cond_3f
    const-string v0, "trailing single quote"

    invoke-static {v0, p0, p1}, Lcom/google/common/flogger/parser/ParseException;->withStartPosition(Ljava/lang/String;Ljava/lang/String;I)Lcom/google/common/flogger/parser/ParseException;

    move-result-object p0

    throw p0

    :cond_46
    const/4 p0, -0x1

    return p0
.end method

.method static unescapeBraceFormat(Ljava/lang/StringBuilder;Ljava/lang/String;II)V
    .registers 11

    const/4 v0, 0x0

    move v1, p2

    move v2, v0

    :goto_3
    if-ge p2, p3, :cond_3b

    add-int/lit8 v3, p2, 0x1

    .line 188
    invoke-virtual {p1, p2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x5c

    const/16 v6, 0x27

    if-eq v4, v5, :cond_15

    if-eq v4, v6, :cond_15

    move p2, v3

    goto :goto_3

    :cond_15
    if-ne v4, v5, :cond_22

    add-int/lit8 v4, p2, 0x2

    .line 196
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-eq v3, v6, :cond_21

    move p2, v4

    goto :goto_3

    :cond_21
    move v3, v4

    .line 202
    :cond_22
    invoke-virtual {p0, p1, v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    if-ne v3, p3, :cond_29

    move v1, v3

    goto :goto_3b

    :cond_29
    if-eqz v2, :cond_2e

    move v2, v0

    :goto_2c
    move p2, v3

    goto :goto_39

    .line 209
    :cond_2e
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result p2

    if-eq p2, v6, :cond_37

    const/4 p2, 0x1

    move v2, p2

    goto :goto_2c

    :cond_37
    add-int/lit8 p2, v3, 0x1

    :goto_39
    move v1, v3

    goto :goto_3

    :cond_3b
    :goto_3b
    if-ge v1, p3, :cond_40

    .line 220
    invoke-virtual {p0, p1, v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    :cond_40
    return-void
.end method


# virtual methods
.method abstract parseBraceFormatTerm(Lcom/google/common/flogger/parser/MessageBuilder;ILjava/lang/String;III)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/flogger/parser/MessageBuilder<",
            "*>;I",
            "Ljava/lang/String;",
            "III)V"
        }
    .end annotation
.end method

.method protected final parseImpl(Lcom/google/common/flogger/parser/MessageBuilder;)V
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/flogger/parser/MessageBuilder<",
            "TT;>;)V"
        }
    .end annotation

    .line 80
    invoke-virtual {p1}, Lcom/google/common/flogger/parser/MessageBuilder;->getMessage()Ljava/lang/String;

    move-result-object v3

    const/4 v7, 0x0

    .line 81
    invoke-static {v3, v7}, Lcom/google/common/flogger/parser/BraceStyleMessageParser;->nextBraceFormatTerm(Ljava/lang/String;I)I

    move-result v0

    move v4, v0

    :goto_a
    if-ltz v4, :cond_94

    add-int/lit8 v0, v4, 0x1

    move v1, v0

    move v2, v7

    .line 93
    :goto_10
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    const-string v6, "unterminated parameter"

    if-ge v1, v5, :cond_8f

    add-int/lit8 v5, v1, 0x1

    .line 95
    invoke-virtual {v3, v1}, Ljava/lang/String;->charAt(I)C

    move-result v8

    add-int/lit8 v9, v8, -0x30

    int-to-char v9, v9

    const/16 v10, 0xa

    if-ge v9, v10, :cond_36

    mul-int/lit8 v2, v2, 0xa

    add-int/2addr v2, v9

    const v1, 0xf4240

    if-ge v2, v1, :cond_2f

    move v1, v5

    goto :goto_10

    .line 102
    :cond_2f
    const-string p0, "index too large"

    invoke-static {p0, v3, v0, v5}, Lcom/google/common/flogger/parser/ParseException;->withBounds(Ljava/lang/String;Ljava/lang/String;II)Lcom/google/common/flogger/parser/ParseException;

    move-result-object p0

    throw p0

    :cond_36
    sub-int v9, v1, v0

    if-eqz v9, :cond_88

    .line 116
    invoke-virtual {v3, v0}, Ljava/lang/String;->charAt(I)C

    move-result v10

    const/16 v11, 0x30

    if-ne v10, v11, :cond_4d

    const/4 v10, 0x1

    if-gt v9, v10, :cond_46

    goto :goto_4d

    .line 117
    :cond_46
    const-string p0, "index has leading zero"

    invoke-static {p0, v3, v0, v1}, Lcom/google/common/flogger/parser/ParseException;->withBounds(Ljava/lang/String;Ljava/lang/String;II)Lcom/google/common/flogger/parser/ParseException;

    move-result-object p0

    throw p0

    :cond_4d
    :goto_4d
    const/16 v1, 0x7d

    if-ne v8, v1, :cond_57

    const/4 v0, -0x1

    move v6, v5

    move v5, v0

    move-object v1, p1

    move-object v0, p0

    goto :goto_6d

    :cond_57
    const/16 v9, 0x2c

    if-ne v8, v9, :cond_81

    move v0, v5

    .line 128
    :goto_5c
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v8

    if-eq v0, v8, :cond_7c

    add-int/lit8 v8, v0, 0x1

    .line 131
    invoke-virtual {v3, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ne v0, v1, :cond_79

    move v6, v8

    move-object v0, p0

    move-object v1, p1

    .line 138
    :goto_6d
    invoke-virtual/range {v0 .. v6}, Lcom/google/common/flogger/parser/BraceStyleMessageParser;->parseBraceFormatTerm(Lcom/google/common/flogger/parser/MessageBuilder;ILjava/lang/String;III)V

    move-object p0, v1

    move v5, v6

    .line 83
    invoke-static {v3, v5}, Lcom/google/common/flogger/parser/BraceStyleMessageParser;->nextBraceFormatTerm(Ljava/lang/String;I)I

    move-result v4

    move-object p1, p0

    move-object p0, v0

    goto :goto_a

    :cond_79
    move-object v0, p0

    move v0, v8

    goto :goto_5c

    .line 129
    :cond_7c
    invoke-static {v6, v3, v4}, Lcom/google/common/flogger/parser/ParseException;->withStartPosition(Ljava/lang/String;Ljava/lang/String;I)Lcom/google/common/flogger/parser/ParseException;

    move-result-object p0

    throw p0

    .line 134
    :cond_81
    const-string p0, "malformed index"

    invoke-static {p0, v3, v0, v5}, Lcom/google/common/flogger/parser/ParseException;->withBounds(Ljava/lang/String;Ljava/lang/String;II)Lcom/google/common/flogger/parser/ParseException;

    move-result-object p0

    throw p0

    .line 113
    :cond_88
    const-string p0, "missing index"

    invoke-static {p0, v3, v4, v5}, Lcom/google/common/flogger/parser/ParseException;->withBounds(Ljava/lang/String;Ljava/lang/String;II)Lcom/google/common/flogger/parser/ParseException;

    move-result-object p0

    throw p0

    .line 106
    :cond_8f
    invoke-static {v6, v3, v4}, Lcom/google/common/flogger/parser/ParseException;->withStartPosition(Ljava/lang/String;Ljava/lang/String;I)Lcom/google/common/flogger/parser/ParseException;

    move-result-object p0

    throw p0

    :cond_94
    return-void
.end method

.method public final unescape(Ljava/lang/StringBuilder;Ljava/lang/String;II)V
    .registers 5

    .line 75
    invoke-static {p1, p2, p3, p4}, Lcom/google/common/flogger/parser/BraceStyleMessageParser;->unescapeBraceFormat(Ljava/lang/StringBuilder;Ljava/lang/String;II)V

    return-void
.end method
