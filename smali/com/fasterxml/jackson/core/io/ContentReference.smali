.class public Lcom/fasterxml/jackson/core/io/ContentReference;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field protected static final UNKNOWN_CONTENT:Lcom/fasterxml/jackson/core/io/ContentReference;


# instance fields
.field protected final _isContentTextual:Z

.field protected final _length:I

.field protected final _offset:I

.field protected final transient _rawContent:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 35
    new-instance v0, Lcom/fasterxml/jackson/core/io/ContentReference;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/fasterxml/jackson/core/io/ContentReference;-><init>(ZLjava/lang/Object;)V

    sput-object v0, Lcom/fasterxml/jackson/core/io/ContentReference;->UNKNOWN_CONTENT:Lcom/fasterxml/jackson/core/io/ContentReference;

    return-void
.end method

.method protected constructor <init>(ZLjava/lang/Object;)V
    .registers 4

    const/4 v0, -0x1

    .line 80
    invoke-direct {p0, p1, p2, v0, v0}, Lcom/fasterxml/jackson/core/io/ContentReference;-><init>(ZLjava/lang/Object;II)V

    return-void
.end method

.method protected constructor <init>(ZLjava/lang/Object;II)V
    .registers 5

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    iput-boolean p1, p0, Lcom/fasterxml/jackson/core/io/ContentReference;->_isContentTextual:Z

    .line 87
    iput-object p2, p0, Lcom/fasterxml/jackson/core/io/ContentReference;->_rawContent:Ljava/lang/Object;

    .line 88
    iput p3, p0, Lcom/fasterxml/jackson/core/io/ContentReference;->_offset:I

    .line 89
    iput p4, p0, Lcom/fasterxml/jackson/core/io/ContentReference;->_length:I

    return-void
.end method

.method public static construct(ZLjava/lang/Object;)Lcom/fasterxml/jackson/core/io/ContentReference;
    .registers 3

    .line 104
    new-instance v0, Lcom/fasterxml/jackson/core/io/ContentReference;

    invoke-direct {v0, p0, p1}, Lcom/fasterxml/jackson/core/io/ContentReference;-><init>(ZLjava/lang/Object;)V

    return-object v0
.end method

.method public static construct(ZLjava/lang/Object;II)Lcom/fasterxml/jackson/core/io/ContentReference;
    .registers 5

    .line 109
    new-instance v0, Lcom/fasterxml/jackson/core/io/ContentReference;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/fasterxml/jackson/core/io/ContentReference;-><init>(ZLjava/lang/Object;II)V

    return-object v0
.end method

.method public static rawReference(Ljava/lang/Object;)Lcom/fasterxml/jackson/core/io/ContentReference;
    .registers 2

    const/4 v0, 0x0

    .line 135
    invoke-static {v0, p0}, Lcom/fasterxml/jackson/core/io/ContentReference;->rawReference(ZLjava/lang/Object;)Lcom/fasterxml/jackson/core/io/ContentReference;

    move-result-object p0

    return-object p0
.end method

.method public static rawReference(ZLjava/lang/Object;)Lcom/fasterxml/jackson/core/io/ContentReference;
    .registers 3

    .line 128
    instance-of v0, p1, Lcom/fasterxml/jackson/core/io/ContentReference;

    if-eqz v0, :cond_7

    .line 129
    check-cast p1, Lcom/fasterxml/jackson/core/io/ContentReference;

    return-object p1

    .line 131
    :cond_7
    new-instance v0, Lcom/fasterxml/jackson/core/io/ContentReference;

    invoke-direct {v0, p0, p1}, Lcom/fasterxml/jackson/core/io/ContentReference;-><init>(ZLjava/lang/Object;)V

    return-object v0
.end method

.method public static unknown()Lcom/fasterxml/jackson/core/io/ContentReference;
    .registers 1

    .line 100
    sget-object v0, Lcom/fasterxml/jackson/core/io/ContentReference;->UNKNOWN_CONTENT:Lcom/fasterxml/jackson/core/io/ContentReference;

    return-object v0
.end method


# virtual methods
.method protected _append(Ljava/lang/StringBuilder;Ljava/lang/String;)I
    .registers 8

    const/16 v0, 0x22

    .line 317
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 319
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x0

    :goto_a
    if-ge v2, v1, :cond_22

    .line 323
    invoke-virtual {p2, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 324
    invoke-static {v3}, Ljava/lang/Character;->isISOControl(C)Z

    move-result v4

    if-eqz v4, :cond_1c

    invoke-virtual {p0, p1, v3}, Lcom/fasterxml/jackson/core/io/ContentReference;->_appendEscaped(Ljava/lang/StringBuilder;I)Z

    move-result v4

    if-nez v4, :cond_1f

    .line 325
    :cond_1c
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_1f
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 328
    :cond_22
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 329
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p0

    return p0
.end method

.method protected _appendEscaped(Ljava/lang/StringBuilder;I)Z
    .registers 3

    const/16 p0, 0xd

    if-eq p2, p0, :cond_3f

    const/16 p0, 0xa

    if-ne p2, p0, :cond_9

    goto :goto_3f

    :cond_9
    const/16 p0, 0x5c

    .line 337
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 p0, 0x75

    .line 338
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    shr-int/lit8 p0, p2, 0xc

    and-int/lit8 p0, p0, 0xf

    .line 339
    invoke-static {p0}, Lcom/fasterxml/jackson/core/io/CharTypes;->hexToChar(I)C

    move-result p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    shr-int/lit8 p0, p2, 0x8

    and-int/lit8 p0, p0, 0xf

    .line 340
    invoke-static {p0}, Lcom/fasterxml/jackson/core/io/CharTypes;->hexToChar(I)C

    move-result p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    shr-int/lit8 p0, p2, 0x4

    and-int/lit8 p0, p0, 0xf

    .line 341
    invoke-static {p0}, Lcom/fasterxml/jackson/core/io/CharTypes;->hexToChar(I)C

    move-result p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    and-int/lit8 p0, p2, 0xf

    .line 342
    invoke-static {p0}, Lcom/fasterxml/jackson/core/io/CharTypes;->hexToChar(I)C

    move-result p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 p0, 0x1

    return p0

    :cond_3f
    :goto_3f
    const/4 p0, 0x0

    return p0
.end method

.method protected _truncate(Ljava/lang/CharSequence;[II)Ljava/lang/String;
    .registers 5

    .line 276
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    invoke-virtual {p0, p2, v0}, Lcom/fasterxml/jackson/core/io/ContentReference;->_truncateOffsets([II)V

    const/4 p0, 0x0

    .line 277
    aget p0, p2, p0

    const/4 v0, 0x1

    .line 278
    aget p2, p2, v0

    invoke-static {p2, p3}, Ljava/lang/Math;->min(II)I

    move-result p2

    add-int/2addr p2, p0

    .line 279
    invoke-interface {p1, p0, p2}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected _truncate([B[II)Ljava/lang/String;
    .registers 5

    .line 290
    array-length v0, p1

    invoke-virtual {p0, p2, v0}, Lcom/fasterxml/jackson/core/io/ContentReference;->_truncateOffsets([II)V

    const/4 p0, 0x0

    .line 291
    aget p0, p2, p0

    const/4 v0, 0x1

    .line 292
    aget p2, p2, v0

    invoke-static {p2, p3}, Ljava/lang/Math;->min(II)I

    move-result p2

    .line 293
    new-instance p3, Ljava/lang/String;

    const-string v0, "UTF-8"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-direct {p3, p1, p0, p2, v0}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    return-object p3
.end method

.method protected _truncate([C[II)Ljava/lang/String;
    .registers 5

    .line 283
    array-length v0, p1

    invoke-virtual {p0, p2, v0}, Lcom/fasterxml/jackson/core/io/ContentReference;->_truncateOffsets([II)V

    const/4 p0, 0x0

    .line 284
    aget p0, p2, p0

    const/4 v0, 0x1

    .line 285
    aget p2, p2, v0

    invoke-static {p2, p3}, Ljava/lang/Math;->min(II)I

    move-result p2

    .line 286
    new-instance p3, Ljava/lang/String;

    invoke-direct {p3, p1, p0, p2}, Ljava/lang/String;-><init>([CII)V

    return-object p3
.end method

.method protected _truncateOffsets([II)V
    .registers 5

    const/4 p0, 0x0

    .line 299
    aget v0, p1, p0

    if-gez v0, :cond_7

    move v0, p0

    goto :goto_a

    :cond_7
    if-lt v0, p2, :cond_a

    move v0, p2

    .line 306
    :cond_a
    :goto_a
    aput v0, p1, p0

    const/4 p0, 0x1

    .line 309
    aget v1, p1, p0

    sub-int/2addr p2, v0

    if-ltz v1, :cond_16

    if-le v1, p2, :cond_15

    goto :goto_16

    :cond_15
    return-void

    .line 312
    :cond_16
    :goto_16
    aput p2, p1, p0

    return-void
.end method

.method public appendSourceDescription(Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;
    .registers 7

    .line 213
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/io/ContentReference;->getRawContent()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_c

    .line 216
    const-string p0, "UNKNOWN"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-object p1

    .line 220
    :cond_c
    instance-of v1, v0, Ljava/lang/Class;

    if-eqz v1, :cond_14

    move-object v1, v0

    check-cast v1, Ljava/lang/Class;

    goto :goto_18

    .line 221
    :cond_14
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 222
    :goto_18
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    .line 224
    const-string v3, "java."

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_29

    .line 225
    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    goto :goto_36

    .line 226
    :cond_29
    instance-of v1, v0, [B

    if-eqz v1, :cond_30

    .line 227
    const-string v2, "byte[]"

    goto :goto_36

    .line 228
    :cond_30
    instance-of v1, v0, [C

    if-eqz v1, :cond_36

    .line 229
    const-string v2, "char[]"

    :cond_36
    :goto_36
    const/16 v1, 0x28

    .line 231
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 235
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/io/ContentReference;->hasTextualContent()Z

    move-result v1

    if-eqz v1, :cond_9d

    .line 240
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/io/ContentReference;->maxContentSnippetLength()I

    move-result v1

    .line 241
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/io/ContentReference;->contentOffset()I

    move-result v2

    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/io/ContentReference;->contentLength()I

    move-result v3

    filled-new-array {v2, v3}, [I

    move-result-object v2

    .line 243
    instance-of v3, v0, Ljava/lang/CharSequence;

    const-string v4, " chars"

    if-eqz v3, :cond_66

    .line 244
    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {p0, v0, v2, v1}, Lcom/fasterxml/jackson/core/io/ContentReference;->_truncate(Ljava/lang/CharSequence;[II)Ljava/lang/String;

    move-result-object v0

    goto :goto_7f

    .line 245
    :cond_66
    instance-of v3, v0, [C

    if-eqz v3, :cond_71

    .line 246
    check-cast v0, [C

    invoke-virtual {p0, v0, v2, v1}, Lcom/fasterxml/jackson/core/io/ContentReference;->_truncate([C[II)Ljava/lang/String;

    move-result-object v0

    goto :goto_7f

    .line 247
    :cond_71
    instance-of v3, v0, [B

    if-eqz v3, :cond_7e

    .line 248
    check-cast v0, [B

    invoke-virtual {p0, v0, v2, v1}, Lcom/fasterxml/jackson/core/io/ContentReference;->_truncate([B[II)Ljava/lang/String;

    move-result-object v0

    .line 249
    const-string v4, " bytes"

    goto :goto_7f

    :cond_7e
    const/4 v0, 0x0

    :goto_7f
    if-eqz v0, :cond_b7

    .line 254
    invoke-virtual {p0, p1, v0}, Lcom/fasterxml/jackson/core/io/ContentReference;->_append(Ljava/lang/StringBuilder;Ljava/lang/String;)I

    const/4 p0, 0x1

    .line 255
    aget v0, v2, p0

    if-le v0, v1, :cond_b7

    .line 256
    const-string v0, "[truncated "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget p0, v2, p0

    sub-int/2addr p0, v1

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p0, 0x5d

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    return-object p1

    .line 261
    :cond_9d
    instance-of v1, v0, [B

    if-eqz v1, :cond_b7

    .line 262
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/io/ContentReference;->contentLength()I

    move-result p0

    if-gez p0, :cond_aa

    .line 265
    check-cast v0, [B

    array-length p0, v0

    :cond_aa
    const/16 v0, 0x5b

    .line 267
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 268
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " bytes]"

    .line 269
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_b7
    return-object p1
.end method

.method public buildSourceDescription()Ljava/lang/String;
    .registers 3

    .line 200
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0xc8

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/core/io/ContentReference;->appendSourceDescription(Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public contentLength()I
    .registers 1

    .line 174
    iget p0, p0, Lcom/fasterxml/jackson/core/io/ContentReference;->_length:I

    return p0
.end method

.method public contentOffset()I
    .registers 1

    .line 173
    iget p0, p0, Lcom/fasterxml/jackson/core/io/ContentReference;->_offset:I

    return p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p1, p0, :cond_4

    return v0

    :cond_4
    const/4 v1, 0x0

    if-nez p1, :cond_8

    return v1

    .line 360
    :cond_8
    instance-of v2, p1, Lcom/fasterxml/jackson/core/io/ContentReference;

    if-nez v2, :cond_d

    return v1

    .line 361
    :cond_d
    check-cast p1, Lcom/fasterxml/jackson/core/io/ContentReference;

    .line 364
    iget v2, p0, Lcom/fasterxml/jackson/core/io/ContentReference;->_offset:I

    iget v3, p1, Lcom/fasterxml/jackson/core/io/ContentReference;->_offset:I

    if-ne v2, v3, :cond_3f

    iget v2, p0, Lcom/fasterxml/jackson/core/io/ContentReference;->_length:I

    iget v3, p1, Lcom/fasterxml/jackson/core/io/ContentReference;->_length:I

    if-eq v2, v3, :cond_1c

    goto :goto_3f

    .line 372
    :cond_1c
    iget-object p1, p1, Lcom/fasterxml/jackson/core/io/ContentReference;->_rawContent:Ljava/lang/Object;

    .line 374
    iget-object p0, p0, Lcom/fasterxml/jackson/core/io/ContentReference;->_rawContent:Ljava/lang/Object;

    if-nez p0, :cond_26

    if-nez p1, :cond_25

    return v0

    :cond_25
    return v1

    :cond_26
    if-nez p1, :cond_29

    return v1

    .line 380
    :cond_29
    instance-of v2, p0, Ljava/io/File;

    if-nez v2, :cond_3a

    instance-of v2, p0, Ljava/net/URL;

    if-nez v2, :cond_3a

    instance-of v2, p0, Ljava/net/URI;

    if-eqz v2, :cond_36

    goto :goto_3a

    :cond_36
    if-ne p0, p1, :cond_39

    return v0

    :cond_39
    return v1

    .line 384
    :cond_3a
    :goto_3a
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_3f
    :goto_3f
    return v1
.end method

.method public getRawContent()Ljava/lang/Object;
    .registers 1

    .line 170
    iget-object p0, p0, Lcom/fasterxml/jackson/core/io/ContentReference;->_rawContent:Ljava/lang/Object;

    return-object p0
.end method

.method public hasTextualContent()Z
    .registers 1

    .line 166
    iget-boolean p0, p0, Lcom/fasterxml/jackson/core/io/ContentReference;->_isContentTextual:Z

    return p0
.end method

.method public hashCode()I
    .registers 1

    .line 392
    iget-object p0, p0, Lcom/fasterxml/jackson/core/io/ContentReference;->_rawContent:Ljava/lang/Object;

    invoke-static {p0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method protected maxContentSnippetLength()I
    .registers 1

    const/16 p0, 0x1f4

    return p0
.end method
