.class public Lcom/adobe/xmp/impl/FixASCIIControlsReader;
.super Ljava/io/PushbackReader;


# instance fields
.field private control:I

.field private digits:I

.field private state:I


# direct methods
.method public constructor <init>(Ljava/io/Reader;)V
    .registers 3

    const/16 v0, 0x8

    invoke-direct {p0, p1, v0}, Ljava/io/PushbackReader;-><init>(Ljava/io/Reader;I)V

    const/4 p1, 0x0

    iput p1, p0, Lcom/adobe/xmp/impl/FixASCIIControlsReader;->state:I

    iput p1, p0, Lcom/adobe/xmp/impl/FixASCIIControlsReader;->control:I

    iput p1, p0, Lcom/adobe/xmp/impl/FixASCIIControlsReader;->digits:I

    return-void
.end method

.method private processChar(C)C
    .registers 12

    iget v0, p0, Lcom/adobe/xmp/impl/FixASCIIControlsReader;->state:I

    const/4 v1, 0x1

    if-eqz v0, :cond_b3

    const/4 v2, 0x2

    const/4 v3, 0x5

    if-eq v0, v1, :cond_a9

    const/16 v4, 0xa

    const/16 v5, 0x39

    const/16 v6, 0x30

    const/4 v7, 0x3

    const/4 v8, 0x4

    const/4 v9, 0x0

    if-eq v0, v2, :cond_8c

    const/16 v2, 0x3b

    if-eq v0, v7, :cond_50

    if-eq v0, v8, :cond_21

    if-eq v0, v3, :cond_1e

    goto/16 :goto_b9

    :cond_1e
    iput v9, p0, Lcom/adobe/xmp/impl/FixASCIIControlsReader;->state:I

    return p1

    :cond_21
    if-gt v6, p1, :cond_3c

    if-gt p1, v5, :cond_3c

    iget v0, p0, Lcom/adobe/xmp/impl/FixASCIIControlsReader;->control:I

    mul-int/2addr v0, v4

    invoke-static {p1, v4}, Ljava/lang/Character;->digit(CI)I

    move-result v2

    add-int/2addr v0, v2

    iput v0, p0, Lcom/adobe/xmp/impl/FixASCIIControlsReader;->control:I

    iget v0, p0, Lcom/adobe/xmp/impl/FixASCIIControlsReader;->digits:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/adobe/xmp/impl/FixASCIIControlsReader;->digits:I

    if-gt v0, v3, :cond_39

    iput v8, p0, Lcom/adobe/xmp/impl/FixASCIIControlsReader;->state:I

    return p1

    :cond_39
    iput v3, p0, Lcom/adobe/xmp/impl/FixASCIIControlsReader;->state:I

    return p1

    :cond_3c
    if-ne p1, v2, :cond_4d

    iget v0, p0, Lcom/adobe/xmp/impl/FixASCIIControlsReader;->control:I

    int-to-char v0, v0

    invoke-static {v0}, Lcom/adobe/xmp/impl/Utils;->isControlChar(C)Z

    move-result v0

    if-eqz v0, :cond_4d

    :goto_47
    iput v9, p0, Lcom/adobe/xmp/impl/FixASCIIControlsReader;->state:I

    iget p0, p0, Lcom/adobe/xmp/impl/FixASCIIControlsReader;->control:I

    int-to-char p0, p0

    return p0

    :cond_4d
    iput v3, p0, Lcom/adobe/xmp/impl/FixASCIIControlsReader;->state:I

    return p1

    :cond_50
    if-gt v6, p1, :cond_54

    if-le p1, v5, :cond_64

    :cond_54
    const/16 v0, 0x61

    if-gt v0, p1, :cond_5c

    const/16 v0, 0x66

    if-le p1, v0, :cond_64

    :cond_5c
    const/16 v0, 0x41

    if-gt v0, p1, :cond_7d

    const/16 v0, 0x46

    if-gt p1, v0, :cond_7d

    :cond_64
    iget v0, p0, Lcom/adobe/xmp/impl/FixASCIIControlsReader;->control:I

    const/16 v2, 0x10

    mul-int/2addr v0, v2

    invoke-static {p1, v2}, Ljava/lang/Character;->digit(CI)I

    move-result v2

    add-int/2addr v0, v2

    iput v0, p0, Lcom/adobe/xmp/impl/FixASCIIControlsReader;->control:I

    iget v0, p0, Lcom/adobe/xmp/impl/FixASCIIControlsReader;->digits:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/adobe/xmp/impl/FixASCIIControlsReader;->digits:I

    if-gt v0, v8, :cond_7a

    iput v7, p0, Lcom/adobe/xmp/impl/FixASCIIControlsReader;->state:I

    return p1

    :cond_7a
    iput v3, p0, Lcom/adobe/xmp/impl/FixASCIIControlsReader;->state:I

    return p1

    :cond_7d
    if-ne p1, v2, :cond_89

    iget v0, p0, Lcom/adobe/xmp/impl/FixASCIIControlsReader;->control:I

    int-to-char v0, v0

    invoke-static {v0}, Lcom/adobe/xmp/impl/Utils;->isControlChar(C)Z

    move-result v0

    if-eqz v0, :cond_89

    goto :goto_47

    :cond_89
    iput v3, p0, Lcom/adobe/xmp/impl/FixASCIIControlsReader;->state:I

    return p1

    :cond_8c
    const/16 v0, 0x78

    if-ne p1, v0, :cond_97

    iput v9, p0, Lcom/adobe/xmp/impl/FixASCIIControlsReader;->control:I

    iput v9, p0, Lcom/adobe/xmp/impl/FixASCIIControlsReader;->digits:I

    iput v7, p0, Lcom/adobe/xmp/impl/FixASCIIControlsReader;->state:I

    return p1

    :cond_97
    if-gt v6, p1, :cond_a6

    if-gt p1, v5, :cond_a6

    invoke-static {p1, v4}, Ljava/lang/Character;->digit(CI)I

    move-result v0

    iput v0, p0, Lcom/adobe/xmp/impl/FixASCIIControlsReader;->control:I

    iput v1, p0, Lcom/adobe/xmp/impl/FixASCIIControlsReader;->digits:I

    iput v8, p0, Lcom/adobe/xmp/impl/FixASCIIControlsReader;->state:I

    return p1

    :cond_a6
    iput v3, p0, Lcom/adobe/xmp/impl/FixASCIIControlsReader;->state:I

    return p1

    :cond_a9
    const/16 v0, 0x23

    if-ne p1, v0, :cond_b0

    iput v2, p0, Lcom/adobe/xmp/impl/FixASCIIControlsReader;->state:I

    return p1

    :cond_b0
    iput v3, p0, Lcom/adobe/xmp/impl/FixASCIIControlsReader;->state:I

    return p1

    :cond_b3
    const/16 v0, 0x26

    if-ne p1, v0, :cond_b9

    iput v1, p0, Lcom/adobe/xmp/impl/FixASCIIControlsReader;->state:I

    :cond_b9
    :goto_b9
    return p1
.end method


# virtual methods
.method public read([CII)I
    .registers 13

    const/16 v0, 0x8

    new-array v0, v0, [C

    const/4 v1, 0x0

    const/4 v2, 0x1

    move v4, v1

    move v5, v4

    :goto_8
    move v3, v2

    :cond_9
    :goto_9
    if-eqz v3, :cond_45

    if-ge v4, p3, :cond_45

    invoke-super {p0, v0, v5, v2}, Ljava/io/PushbackReader;->read([CII)I

    move-result v3

    if-ne v3, v2, :cond_15

    move v3, v2

    goto :goto_16

    :cond_15
    move v3, v1

    :goto_16
    const/4 v6, 0x5

    if-eqz v3, :cond_3c

    aget-char v7, v0, v5

    invoke-direct {p0, v7}, Lcom/adobe/xmp/impl/FixASCIIControlsReader;->processChar(C)C

    move-result v7

    iget v8, p0, Lcom/adobe/xmp/impl/FixASCIIControlsReader;->state:I

    if-nez v8, :cond_34

    invoke-static {v7}, Lcom/adobe/xmp/impl/Utils;->isControlChar(C)Z

    move-result v5

    if-eqz v5, :cond_2b

    const/16 v7, 0x20

    :cond_2b
    add-int/lit8 v5, p2, 0x1

    aput-char v7, p1, p2

    add-int/lit8 v4, v4, 0x1

    move p2, v5

    :goto_32
    move v5, v1

    goto :goto_9

    :cond_34
    add-int/lit8 v5, v5, 0x1

    if-ne v8, v6, :cond_9

    invoke-virtual {p0, v0, v1, v5}, Ljava/io/PushbackReader;->unread([CII)V

    goto :goto_32

    :cond_3c
    if-lez v5, :cond_9

    invoke-virtual {p0, v0, v1, v5}, Ljava/io/PushbackReader;->unread([CII)V

    iput v6, p0, Lcom/adobe/xmp/impl/FixASCIIControlsReader;->state:I

    move v5, v1

    goto :goto_8

    :cond_45
    if-gtz v4, :cond_4c

    if-eqz v3, :cond_4a

    goto :goto_4c

    :cond_4a
    const/4 p0, -0x1

    return p0

    :cond_4c
    :goto_4c
    return v4
.end method
