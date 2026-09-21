.class public Lorg/apache/commons/io/input/CircularInputStream;
.super Ljava/io/InputStream;
.source "SourceFile"


# instance fields
.field private byteCount:J

.field private position:I

.field private final repeatedContent:[B

.field private final targetByteCount:J


# direct methods
.method public constructor <init>([BJ)V
    .registers 5

    .line 65
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    const/4 v0, -0x1

    .line 55
    iput v0, p0, Lorg/apache/commons/io/input/CircularInputStream;->position:I

    .line 66
    invoke-static {p1}, Lorg/apache/commons/io/input/CircularInputStream;->validate([B)[B

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/io/input/CircularInputStream;->repeatedContent:[B

    .line 67
    array-length p1, p1

    if-eqz p1, :cond_12

    .line 70
    iput-wide p2, p0, Lorg/apache/commons/io/input/CircularInputStream;->targetByteCount:J

    return-void

    .line 68
    :cond_12
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "repeatContent is empty."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static validate([B)[B
    .registers 5

    .line 45
    const-string v0, "repeatContent"

    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 46
    array-length v0, p0

    const/4 v1, 0x0

    :goto_7
    if-ge v1, v0, :cond_19

    aget-byte v2, p0, v1

    const/4 v3, -0x1

    if-eq v2, v3, :cond_11

    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 48
    :cond_11
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "repeatContent contains the end-of-stream marker -1"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_19
    return-object p0
.end method


# virtual methods
.method public read()I
    .registers 5

    .line 75
    iget-wide v0, p0, Lorg/apache/commons/io/input/CircularInputStream;->targetByteCount:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-ltz v2, :cond_15

    .line 76
    iget-wide v2, p0, Lorg/apache/commons/io/input/CircularInputStream;->byteCount:J

    cmp-long v0, v2, v0

    if-nez v0, :cond_10

    const/4 p0, -0x1

    return p0

    :cond_10
    const-wide/16 v0, 0x1

    add-long/2addr v2, v0

    .line 79
    iput-wide v2, p0, Lorg/apache/commons/io/input/CircularInputStream;->byteCount:J

    .line 81
    :cond_15
    iget v0, p0, Lorg/apache/commons/io/input/CircularInputStream;->position:I

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lorg/apache/commons/io/input/CircularInputStream;->repeatedContent:[B

    array-length v2, v1

    rem-int/2addr v0, v2

    iput v0, p0, Lorg/apache/commons/io/input/CircularInputStream;->position:I

    .line 82
    aget-byte p0, v1, v0

    and-int/lit16 p0, p0, 0xff

    return p0
.end method
