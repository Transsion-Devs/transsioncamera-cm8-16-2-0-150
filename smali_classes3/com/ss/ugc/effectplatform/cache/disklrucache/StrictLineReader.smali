.class public final Lcom/ss/ugc/effectplatform/cache/disklrucache/StrictLineReader;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbytekn/foundation/io/file/KnCloseable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ss/ugc/effectplatform/cache/disklrucache/StrictLineReader$Companion;
    }
.end annotation


# static fields
# The value of this static final field might be set in the static constructor
.field private static final CR:B = 0xdt

.field public static final Companion:Lcom/ss/ugc/effectplatform/cache/disklrucache/StrictLineReader$Companion;

# The value of this static final field might be set in the static constructor
.field private static final LF:B = 0xat


# instance fields
.field private buf:[B

.field private final contentEncoding:Lbytekn/foundation/io/file/ContentEncoding;

.field private end:I

.field private final inputStream:Lbytekn/foundation/io/file/FileInputStream;

.field private pos:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/ss/ugc/effectplatform/cache/disklrucache/StrictLineReader$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/ss/ugc/effectplatform/cache/disklrucache/StrictLineReader$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/ss/ugc/effectplatform/cache/disklrucache/StrictLineReader;->Companion:Lcom/ss/ugc/effectplatform/cache/disklrucache/StrictLineReader$Companion;

    const/16 v0, 0xd

    int-to-byte v0, v0

    .line 18
    sput-byte v0, Lcom/ss/ugc/effectplatform/cache/disklrucache/StrictLineReader;->CR:B

    const/16 v0, 0xa

    int-to-byte v0, v0

    .line 19
    sput-byte v0, Lcom/ss/ugc/effectplatform/cache/disklrucache/StrictLineReader;->LF:B

    return-void
.end method

.method public constructor <init>(Lbytekn/foundation/io/file/FileInputStream;ILbytekn/foundation/io/file/ContentEncoding;)V
    .registers 5

    const-string v0, "inputStream"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "contentEncoding"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ss/ugc/effectplatform/cache/disklrucache/StrictLineReader;->inputStream:Lbytekn/foundation/io/file/FileInputStream;

    iput-object p3, p0, Lcom/ss/ugc/effectplatform/cache/disklrucache/StrictLineReader;->contentEncoding:Lbytekn/foundation/io/file/ContentEncoding;

    if-lez p2, :cond_24

    .line 31
    sget-object p1, Lbytekn/foundation/io/file/ContentEncoding;->Ascii:Lbytekn/foundation/io/file/ContentEncoding;

    if-ne p3, p1, :cond_1c

    .line 34
    new-array p1, p2, [B

    iput-object p1, p0, Lcom/ss/ugc/effectplatform/cache/disklrucache/StrictLineReader;->buf:[B

    return-void

    .line 32
    :cond_1c
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Unsupported encoding!"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 29
    :cond_24
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "capacity <= 0"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public synthetic constructor <init>(Lbytekn/foundation/io/file/FileInputStream;ILbytekn/foundation/io/file/ContentEncoding;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 6

    and-int/lit8 p4, p4, 0x2

    if-eqz p4, :cond_6

    const/16 p2, 0x2000

    .line 15
    :cond_6
    invoke-direct {p0, p1, p2, p3}, Lcom/ss/ugc/effectplatform/cache/disklrucache/StrictLineReader;-><init>(Lbytekn/foundation/io/file/FileInputStream;ILbytekn/foundation/io/file/ContentEncoding;)V

    return-void
.end method

.method public static final synthetic access$getCR$cp()B
    .registers 1

    .line 15
    sget-byte v0, Lcom/ss/ugc/effectplatform/cache/disklrucache/StrictLineReader;->CR:B

    return v0
.end method

.method public static final synthetic access$getContentEncoding$p(Lcom/ss/ugc/effectplatform/cache/disklrucache/StrictLineReader;)Lbytekn/foundation/io/file/ContentEncoding;
    .registers 1

    .line 15
    iget-object p0, p0, Lcom/ss/ugc/effectplatform/cache/disklrucache/StrictLineReader;->contentEncoding:Lbytekn/foundation/io/file/ContentEncoding;

    return-object p0
.end method

.method private final fillBuf()Z
    .registers 6

    .line 108
    iget-object v0, p0, Lcom/ss/ugc/effectplatform/cache/disklrucache/StrictLineReader;->buf:[B

    if-eqz v0, :cond_17

    const/4 v1, 0x1

    if-eqz v0, :cond_16

    .line 112
    iget-object v2, p0, Lcom/ss/ugc/effectplatform/cache/disklrucache/StrictLineReader;->inputStream:Lbytekn/foundation/io/file/FileInputStream;

    array-length v3, v0

    const/4 v4, 0x0

    invoke-virtual {v2, v0, v4, v3}, Lbytekn/foundation/io/file/FileInputStream;->read([BII)I

    move-result v0

    if-gtz v0, :cond_12

    return v4

    .line 117
    :cond_12
    iput v4, p0, Lcom/ss/ugc/effectplatform/cache/disklrucache/StrictLineReader;->pos:I

    .line 118
    iput v0, p0, Lcom/ss/ugc/effectplatform/cache/disklrucache/StrictLineReader;->end:I

    :cond_16
    return v1

    .line 109
    :cond_17
    new-instance p0, Ljava/lang/Exception;

    const-string v0, "buf is null!"

    invoke-direct {p0, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public close()V
    .registers 2

    .line 38
    iget-object v0, p0, Lcom/ss/ugc/effectplatform/cache/disklrucache/StrictLineReader;->inputStream:Lbytekn/foundation/io/file/FileInputStream;

    invoke-virtual {v0}, Lbytekn/foundation/io/file/FileInputStream;->close()V

    const/4 v0, 0x0

    .line 39
    iput-object v0, p0, Lcom/ss/ugc/effectplatform/cache/disklrucache/StrictLineReader;->buf:[B

    return-void
.end method

.method public final hasUnterminatedLine()Z
    .registers 2

    .line 99
    iget p0, p0, Lcom/ss/ugc/effectplatform/cache/disklrucache/StrictLineReader;->end:I

    const/4 v0, -0x1

    if-ne p0, v0, :cond_7

    const/4 p0, 0x1

    return p0

    :cond_7
    const/4 p0, 0x0

    return p0
.end method

.method public final readLine()Ljava/lang/String;
    .registers 8

    .line 43
    iget-object v0, p0, Lcom/ss/ugc/effectplatform/cache/disklrucache/StrictLineReader;->buf:[B

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return-object v1

    :cond_6
    if-eqz v0, :cond_7d

    .line 48
    iget v2, p0, Lcom/ss/ugc/effectplatform/cache/disklrucache/StrictLineReader;->pos:I

    iget v3, p0, Lcom/ss/ugc/effectplatform/cache/disklrucache/StrictLineReader;->end:I

    if-lt v2, v3, :cond_15

    .line 49
    invoke-direct {p0}, Lcom/ss/ugc/effectplatform/cache/disklrucache/StrictLineReader;->fillBuf()Z

    move-result v2

    if-nez v2, :cond_15

    return-object v1

    .line 54
    :cond_15
    iget v2, p0, Lcom/ss/ugc/effectplatform/cache/disklrucache/StrictLineReader;->pos:I

    iget v3, p0, Lcom/ss/ugc/effectplatform/cache/disklrucache/StrictLineReader;->end:I

    :goto_19
    if-ge v2, v3, :cond_3e

    .line 55
    aget-byte v4, v0, v2

    sget-byte v5, Lcom/ss/ugc/effectplatform/cache/disklrucache/StrictLineReader;->LF:B

    if-ne v4, v5, :cond_3b

    .line 56
    iget v1, p0, Lcom/ss/ugc/effectplatform/cache/disklrucache/StrictLineReader;->pos:I

    if-eq v2, v1, :cond_2e

    add-int/lit8 v3, v2, -0x1

    aget-byte v4, v0, v3

    sget-byte v5, Lcom/ss/ugc/effectplatform/cache/disklrucache/StrictLineReader;->CR:B

    if-ne v4, v5, :cond_2e

    goto :goto_2f

    :cond_2e
    move v3, v2

    :goto_2f
    sub-int/2addr v3, v1

    .line 57
    iget-object v4, p0, Lcom/ss/ugc/effectplatform/cache/disklrucache/StrictLineReader;->contentEncoding:Lbytekn/foundation/io/file/ContentEncoding;

    invoke-static {v0, v1, v3, v4}, Lcom/ss/ugc/effectplatform/extension/ByteArrayExKt;->toString([BIILbytekn/foundation/io/file/ContentEncoding;)Ljava/lang/String;

    move-result-object v0

    add-int/lit8 v2, v2, 0x1

    .line 58
    iput v2, p0, Lcom/ss/ugc/effectplatform/cache/disklrucache/StrictLineReader;->pos:I

    return-object v0

    :cond_3b
    add-int/lit8 v2, v2, 0x1

    goto :goto_19

    .line 65
    :cond_3e
    new-instance v2, Lcom/ss/ugc/effectplatform/cache/disklrucache/StrictLineReader$readLine$$inlined$apply$lambda$1;

    iget v3, p0, Lcom/ss/ugc/effectplatform/cache/disklrucache/StrictLineReader;->end:I

    iget v4, p0, Lcom/ss/ugc/effectplatform/cache/disklrucache/StrictLineReader;->pos:I

    sub-int/2addr v3, v4

    add-int/lit8 v3, v3, 0x50

    invoke-direct {v2, v3, p0}, Lcom/ss/ugc/effectplatform/cache/disklrucache/StrictLineReader$readLine$$inlined$apply$lambda$1;-><init>(ILcom/ss/ugc/effectplatform/cache/disklrucache/StrictLineReader;)V

    .line 77
    :cond_4a
    iget v3, p0, Lcom/ss/ugc/effectplatform/cache/disklrucache/StrictLineReader;->pos:I

    iget v4, p0, Lcom/ss/ugc/effectplatform/cache/disklrucache/StrictLineReader;->end:I

    sub-int/2addr v4, v3

    invoke-virtual {v2, v0, v3, v4}, Lbytekn/foundation/io/file/ByteArrayOutputStream;->write([BII)V

    const/4 v3, -0x1

    .line 79
    iput v3, p0, Lcom/ss/ugc/effectplatform/cache/disklrucache/StrictLineReader;->end:I

    .line 80
    invoke-direct {p0}, Lcom/ss/ugc/effectplatform/cache/disklrucache/StrictLineReader;->fillBuf()Z

    move-result v3

    if-nez v3, :cond_5c

    return-object v1

    .line 84
    :cond_5c
    iget v3, p0, Lcom/ss/ugc/effectplatform/cache/disklrucache/StrictLineReader;->pos:I

    iget v4, p0, Lcom/ss/ugc/effectplatform/cache/disklrucache/StrictLineReader;->end:I

    :goto_60
    if-ge v3, v4, :cond_4a

    .line 85
    aget-byte v5, v0, v3

    sget-byte v6, Lcom/ss/ugc/effectplatform/cache/disklrucache/StrictLineReader;->LF:B

    if-ne v5, v6, :cond_7a

    .line 86
    iget v1, p0, Lcom/ss/ugc/effectplatform/cache/disklrucache/StrictLineReader;->pos:I

    if-eq v3, v1, :cond_71

    sub-int v4, v3, v1

    .line 87
    invoke-virtual {v2, v0, v1, v4}, Lbytekn/foundation/io/file/ByteArrayOutputStream;->write([BII)V

    :cond_71
    add-int/lit8 v3, v3, 0x1

    .line 89
    iput v3, p0, Lcom/ss/ugc/effectplatform/cache/disklrucache/StrictLineReader;->pos:I

    .line 90
    invoke-virtual {v2}, Lcom/ss/ugc/effectplatform/cache/disklrucache/StrictLineReader$readLine$$inlined$apply$lambda$1;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_7a
    add-int/lit8 v3, v3, 0x1

    goto :goto_60

    .line 95
    :cond_7d
    const-string p0, ""

    return-object p0
.end method
