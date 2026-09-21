.class public abstract Lcom/fasterxml/jackson/core/io/CharTypes;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fasterxml/jackson/core/io/CharTypes$AltEscapes;
    }
.end annotation


# static fields
.field protected static final HB:[B

.field protected static final HC:[C

.field protected static final sHexValues:[I

.field protected static final sInputCodes:[I

.field protected static final sInputCodesComment:[I

.field protected static final sInputCodesJsNames:[I

.field protected static final sInputCodesUTF8:[I

.field protected static final sInputCodesUtf8JsNames:[I

.field protected static final sInputCodesWS:[I

.field protected static final sOutputEscapes128:[I


# direct methods
.method static constructor <clinit>()V
    .registers 15

    .line 7
    const-string v0, "0123456789ABCDEF"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lcom/fasterxml/jackson/core/io/CharTypes;->HC:[C

    .line 10
    array-length v0, v0

    .line 11
    new-array v1, v0, [B

    sput-object v1, Lcom/fasterxml/jackson/core/io/CharTypes;->HB:[B

    const/4 v1, 0x0

    move v2, v1

    :goto_f
    if-ge v2, v0, :cond_1d

    .line 13
    sget-object v3, Lcom/fasterxml/jackson/core/io/CharTypes;->HB:[B

    sget-object v4, Lcom/fasterxml/jackson/core/io/CharTypes;->HC:[C

    aget-char v4, v4, v2

    int-to-byte v4, v4

    aput-byte v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_f

    :cond_1d
    const/16 v0, 0x100

    .line 27
    new-array v2, v0, [I

    move v3, v1

    :goto_22
    const/16 v4, 0x20

    const/4 v5, -0x1

    if-ge v3, v4, :cond_2c

    .line 30
    aput v5, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_22

    :cond_2c
    const/16 v3, 0x22

    const/4 v6, 0x1

    .line 33
    aput v6, v2, v3

    const/16 v7, 0x5c

    .line 34
    aput v6, v2, v7

    .line 35
    sput-object v2, Lcom/fasterxml/jackson/core/io/CharTypes;->sInputCodes:[I

    .line 44
    array-length v8, v2

    new-array v9, v8, [I

    .line 45
    invoke-static {v2, v1, v9, v1, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/16 v2, 0x80

    move v8, v2

    :goto_40
    if-ge v8, v0, :cond_60

    and-int/lit16 v10, v8, 0xe0

    const/16 v11, 0xc0

    if-ne v10, v11, :cond_4a

    const/4 v10, 0x2

    goto :goto_5b

    :cond_4a
    and-int/lit16 v10, v8, 0xf0

    const/16 v11, 0xe0

    if-ne v10, v11, :cond_52

    const/4 v10, 0x3

    goto :goto_5b

    :cond_52
    and-int/lit16 v10, v8, 0xf8

    const/16 v11, 0xf0

    if-ne v10, v11, :cond_5a

    const/4 v10, 0x4

    goto :goto_5b

    :cond_5a
    move v10, v5

    .line 61
    :goto_5b
    aput v10, v9, v8

    add-int/lit8 v8, v8, 0x1

    goto :goto_40

    .line 63
    :cond_60
    sput-object v9, Lcom/fasterxml/jackson/core/io/CharTypes;->sInputCodesUTF8:[I

    .line 74
    new-array v8, v0, [I

    .line 76
    invoke-static {v8, v5}, Ljava/util/Arrays;->fill([II)V

    const/16 v9, 0x21

    :goto_69
    if-ge v9, v0, :cond_77

    int-to-char v10, v9

    .line 79
    invoke-static {v10}, Ljava/lang/Character;->isJavaIdentifierPart(C)Z

    move-result v10

    if-eqz v10, :cond_74

    .line 80
    aput v1, v8, v9

    :cond_74
    add-int/lit8 v9, v9, 0x1

    goto :goto_69

    :cond_77
    const/16 v9, 0x40

    .line 86
    aput v1, v8, v9

    const/16 v9, 0x23

    .line 87
    aput v1, v8, v9

    const/16 v10, 0x2a

    .line 88
    aput v1, v8, v10

    const/16 v11, 0x2d

    .line 89
    aput v1, v8, v11

    const/16 v11, 0x2b

    .line 90
    aput v1, v8, v11

    .line 91
    sput-object v8, Lcom/fasterxml/jackson/core/io/CharTypes;->sInputCodesJsNames:[I

    .line 101
    new-array v11, v0, [I

    .line 103
    invoke-static {v8, v1, v11, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 104
    invoke-static {v11, v2, v2, v1}, Ljava/util/Arrays;->fill([IIII)V

    .line 105
    sput-object v11, Lcom/fasterxml/jackson/core/io/CharTypes;->sInputCodesUtf8JsNames:[I

    .line 114
    new-array v8, v0, [I

    .line 116
    sget-object v11, Lcom/fasterxml/jackson/core/io/CharTypes;->sInputCodesUTF8:[I

    invoke-static {v11, v2, v8, v2, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 119
    invoke-static {v8, v1, v4, v5}, Ljava/util/Arrays;->fill([IIII)V

    const/16 v12, 0x9

    .line 120
    aput v1, v8, v12

    const/16 v13, 0xa

    .line 121
    aput v13, v8, v13

    const/16 v14, 0xd

    .line 122
    aput v14, v8, v14

    .line 123
    aput v10, v8, v10

    .line 124
    sput-object v8, Lcom/fasterxml/jackson/core/io/CharTypes;->sInputCodesComment:[I

    .line 135
    new-array v8, v0, [I

    .line 136
    invoke-static {v11, v2, v8, v2, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 141
    invoke-static {v8, v1, v4, v5}, Ljava/util/Arrays;->fill([IIII)V

    .line 142
    aput v6, v8, v4

    .line 143
    aput v6, v8, v12

    .line 144
    aput v13, v8, v13

    .line 145
    aput v14, v8, v14

    const/16 v6, 0x2f

    .line 146
    aput v6, v8, v6

    .line 147
    aput v9, v8, v9

    .line 148
    sput-object v8, Lcom/fasterxml/jackson/core/io/CharTypes;->sInputCodesWS:[I

    .line 157
    new-array v2, v2, [I

    move v6, v1

    :goto_cc
    if-ge v6, v4, :cond_d3

    .line 161
    aput v5, v2, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_cc

    .line 164
    :cond_d3
    aput v3, v2, v3

    .line 165
    aput v7, v2, v7

    const/16 v3, 0x8

    const/16 v4, 0x62

    .line 167
    aput v4, v2, v3

    const/16 v3, 0x74

    .line 168
    aput v3, v2, v12

    const/16 v3, 0xc

    const/16 v4, 0x66

    .line 169
    aput v4, v2, v3

    const/16 v3, 0x6e

    .line 170
    aput v3, v2, v13

    const/16 v3, 0x72

    .line 171
    aput v3, v2, v14

    .line 172
    sput-object v2, Lcom/fasterxml/jackson/core/io/CharTypes;->sOutputEscapes128:[I

    .line 182
    new-array v0, v0, [I

    sput-object v0, Lcom/fasterxml/jackson/core/io/CharTypes;->sHexValues:[I

    .line 184
    invoke-static {v0, v5}, Ljava/util/Arrays;->fill([II)V

    move v0, v1

    :goto_f9
    if-ge v0, v13, :cond_104

    .line 186
    sget-object v2, Lcom/fasterxml/jackson/core/io/CharTypes;->sHexValues:[I

    add-int/lit8 v3, v0, 0x30

    aput v0, v2, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_f9

    :cond_104
    :goto_104
    const/4 v0, 0x6

    if-ge v1, v0, :cond_116

    .line 189
    sget-object v0, Lcom/fasterxml/jackson/core/io/CharTypes;->sHexValues:[I

    add-int/lit8 v2, v1, 0x61

    add-int/lit8 v3, v1, 0xa

    aput v3, v0, v2

    add-int/lit8 v2, v1, 0x41

    .line 190
    aput v3, v0, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_104

    :cond_116
    return-void
.end method

.method public static appendQuoted(Ljava/lang/StringBuilder;Ljava/lang/String;)V
    .registers 9

    .line 256
    sget-object v0, Lcom/fasterxml/jackson/core/io/CharTypes;->sOutputEscapes128:[I

    .line 257
    array-length v1, v0

    .line 258
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x0

    :goto_8
    if-ge v3, v2, :cond_47

    .line 259
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-ge v4, v1, :cond_41

    .line 260
    aget v5, v0, v4

    if-nez v5, :cond_15

    goto :goto_41

    :cond_15
    const/16 v5, 0x5c

    .line 264
    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 265
    aget v5, v0, v4

    if-gez v5, :cond_3c

    const/16 v5, 0x75

    .line 275
    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v5, 0x30

    .line 276
    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 277
    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 279
    sget-object v5, Lcom/fasterxml/jackson/core/io/CharTypes;->HC:[C

    shr-int/lit8 v6, v4, 0x4

    aget-char v6, v5, v6

    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    and-int/lit8 v4, v4, 0xf

    .line 280
    aget-char v4, v5, v4

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_44

    :cond_3c
    int-to-char v4, v5

    .line 282
    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_44

    .line 261
    :cond_41
    :goto_41
    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_44
    add-int/lit8 v3, v3, 0x1

    goto :goto_8

    :cond_47
    return-void
.end method

.method public static charToHex(I)I
    .registers 2

    .line 236
    sget-object v0, Lcom/fasterxml/jackson/core/io/CharTypes;->sHexValues:[I

    and-int/lit16 p0, p0, 0xff

    aget p0, v0, p0

    return p0
.end method

.method public static copyHexBytes()[B
    .registers 1

    .line 292
    sget-object v0, Lcom/fasterxml/jackson/core/io/CharTypes;->HB:[B

    invoke-virtual {v0}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    return-object v0
.end method

.method public static copyHexChars()[C
    .registers 1

    .line 288
    sget-object v0, Lcom/fasterxml/jackson/core/io/CharTypes;->HC:[C

    invoke-virtual {v0}, [C->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [C

    return-object v0
.end method

.method public static get7BitOutputEscapes()[I
    .registers 1

    .line 212
    sget-object v0, Lcom/fasterxml/jackson/core/io/CharTypes;->sOutputEscapes128:[I

    return-object v0
.end method

.method public static get7BitOutputEscapes(I)[I
    .registers 2

    const/16 v0, 0x22

    if-ne p0, v0, :cond_7

    .line 227
    sget-object p0, Lcom/fasterxml/jackson/core/io/CharTypes;->sOutputEscapes128:[I

    return-object p0

    .line 229
    :cond_7
    sget-object v0, Lcom/fasterxml/jackson/core/io/CharTypes$AltEscapes;->instance:Lcom/fasterxml/jackson/core/io/CharTypes$AltEscapes;

    invoke-virtual {v0, p0}, Lcom/fasterxml/jackson/core/io/CharTypes$AltEscapes;->escapesFor(I)[I

    move-result-object p0

    return-object p0
.end method

.method public static getInputCodeComment()[I
    .registers 1

    .line 200
    sget-object v0, Lcom/fasterxml/jackson/core/io/CharTypes;->sInputCodesComment:[I

    return-object v0
.end method

.method public static getInputCodeLatin1()[I
    .registers 1

    .line 194
    sget-object v0, Lcom/fasterxml/jackson/core/io/CharTypes;->sInputCodes:[I

    return-object v0
.end method

.method public static getInputCodeLatin1JsNames()[I
    .registers 1

    .line 197
    sget-object v0, Lcom/fasterxml/jackson/core/io/CharTypes;->sInputCodesJsNames:[I

    return-object v0
.end method

.method public static getInputCodeUtf8()[I
    .registers 1

    .line 195
    sget-object v0, Lcom/fasterxml/jackson/core/io/CharTypes;->sInputCodesUTF8:[I

    return-object v0
.end method

.method public static getInputCodeUtf8JsNames()[I
    .registers 1

    .line 198
    sget-object v0, Lcom/fasterxml/jackson/core/io/CharTypes;->sInputCodesUtf8JsNames:[I

    return-object v0
.end method

.method public static hexToChar(I)C
    .registers 2

    .line 242
    sget-object v0, Lcom/fasterxml/jackson/core/io/CharTypes;->HC:[C

    aget-char p0, v0, p0

    return p0
.end method
