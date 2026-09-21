.class public Lorg/apache/commons/io/input/RandomAccessFileInputStream;
.super Ljava/io/InputStream;
.source "SourceFile"


# instance fields
.field private final closeOnClose:Z

.field private final randomAccessFile:Ljava/io/RandomAccessFile;


# direct methods
.method public constructor <init>(Ljava/io/RandomAccessFile;)V
    .registers 3

    const/4 v0, 0x0

    .line 41
    invoke-direct {p0, p1, v0}, Lorg/apache/commons/io/input/RandomAccessFileInputStream;-><init>(Ljava/io/RandomAccessFile;Z)V

    return-void
.end method

.method public constructor <init>(Ljava/io/RandomAccessFile;Z)V
    .registers 4

    .line 50
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 51
    const-string v0, "file"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iput-object p1, p0, Lorg/apache/commons/io/input/RandomAccessFileInputStream;->randomAccessFile:Ljava/io/RandomAccessFile;

    .line 52
    iput-boolean p2, p0, Lorg/apache/commons/io/input/RandomAccessFileInputStream;->closeOnClose:Z

    return-void
.end method

.method private seek(J)V
    .registers 3

    .line 131
    iget-object p0, p0, Lorg/apache/commons/io/input/RandomAccessFileInputStream;->randomAccessFile:Ljava/io/RandomAccessFile;

    invoke-virtual {p0, p1, p2}, Ljava/io/RandomAccessFile;->seek(J)V

    return-void
.end method


# virtual methods
.method public available()I
    .registers 5

    .line 65
    invoke-virtual {p0}, Lorg/apache/commons/io/input/RandomAccessFileInputStream;->availableLong()J

    move-result-wide v0

    const-wide/32 v2, 0x7fffffff

    cmp-long p0, v0, v2

    if-lez p0, :cond_f

    const p0, 0x7fffffff

    return p0

    :cond_f
    long-to-int p0, v0

    return p0
.end method

.method public availableLong()J
    .registers 5

    .line 79
    iget-object v0, p0, Lorg/apache/commons/io/input/RandomAccessFileInputStream;->randomAccessFile:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v0

    iget-object p0, p0, Lorg/apache/commons/io/input/RandomAccessFileInputStream;->randomAccessFile:Ljava/io/RandomAccessFile;

    invoke-virtual {p0}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide v2

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method public close()V
    .registers 2

    .line 84
    invoke-super {p0}, Ljava/io/InputStream;->close()V

    .line 85
    iget-boolean v0, p0, Lorg/apache/commons/io/input/RandomAccessFileInputStream;->closeOnClose:Z

    if-eqz v0, :cond_c

    .line 86
    iget-object p0, p0, Lorg/apache/commons/io/input/RandomAccessFileInputStream;->randomAccessFile:Ljava/io/RandomAccessFile;

    invoke-virtual {p0}, Ljava/io/RandomAccessFile;->close()V

    :cond_c
    return-void
.end method

.method public getRandomAccessFile()Ljava/io/RandomAccessFile;
    .registers 1

    .line 96
    iget-object p0, p0, Lorg/apache/commons/io/input/RandomAccessFileInputStream;->randomAccessFile:Ljava/io/RandomAccessFile;

    return-object p0
.end method

.method public isCloseOnClose()Z
    .registers 1

    .line 105
    iget-boolean p0, p0, Lorg/apache/commons/io/input/RandomAccessFileInputStream;->closeOnClose:Z

    return p0
.end method

.method public read()I
    .registers 1

    .line 110
    iget-object p0, p0, Lorg/apache/commons/io/input/RandomAccessFileInputStream;->randomAccessFile:Ljava/io/RandomAccessFile;

    invoke-virtual {p0}, Ljava/io/RandomAccessFile;->read()I

    move-result p0

    return p0
.end method

.method public read([B)I
    .registers 2

    .line 115
    iget-object p0, p0, Lorg/apache/commons/io/input/RandomAccessFileInputStream;->randomAccessFile:Ljava/io/RandomAccessFile;

    invoke-virtual {p0, p1}, Ljava/io/RandomAccessFile;->read([B)I

    move-result p0

    return p0
.end method

.method public read([BII)I
    .registers 4

    .line 120
    iget-object p0, p0, Lorg/apache/commons/io/input/RandomAccessFileInputStream;->randomAccessFile:Ljava/io/RandomAccessFile;

    invoke-virtual {p0, p1, p2, p3}, Ljava/io/RandomAccessFile;->read([BII)I

    move-result p0

    return p0
.end method

.method public skip(J)J
    .registers 10

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-gtz v2, :cond_7

    return-wide v0

    .line 139
    :cond_7
    iget-object v2, p0, Lorg/apache/commons/io/input/RandomAccessFileInputStream;->randomAccessFile:Ljava/io/RandomAccessFile;

    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide v2

    .line 140
    iget-object v4, p0, Lorg/apache/commons/io/input/RandomAccessFileInputStream;->randomAccessFile:Ljava/io/RandomAccessFile;

    invoke-virtual {v4}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v4

    cmp-long v6, v2, v4

    if-ltz v6, :cond_18

    return-wide v0

    :cond_18
    add-long/2addr p1, v2

    cmp-long v6, p1, v4

    if-lez v6, :cond_21

    const-wide/16 p1, 0x1

    sub-long p1, v4, p1

    :cond_21
    cmp-long v0, p1, v0

    if-lez v0, :cond_28

    .line 147
    invoke-direct {p0, p1, p2}, Lorg/apache/commons/io/input/RandomAccessFileInputStream;->seek(J)V

    .line 149
    :cond_28
    iget-object p0, p0, Lorg/apache/commons/io/input/RandomAccessFileInputStream;->randomAccessFile:Ljava/io/RandomAccessFile;

    invoke-virtual {p0}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide p0

    sub-long/2addr p0, v2

    return-wide p0
.end method
