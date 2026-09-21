.class public final Lorg/apache/commons/io/input/BufferedFileChannelInputStream;
.super Ljava/io/InputStream;
.source "SourceFile"


# static fields
.field private static final DIRECT_BUFFER_CLASS:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field


# instance fields
.field private final byteBuffer:Ljava/nio/ByteBuffer;

.field private final fileChannel:Ljava/nio/channels/FileChannel;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 50
    invoke-static {}, Lorg/apache/commons/io/input/BufferedFileChannelInputStream;->getDirectBufferClass()Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/io/input/BufferedFileChannelInputStream;->DIRECT_BUFFER_CLASS:Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>(Ljava/io/File;)V
    .registers 3

    const/16 v0, 0x2000

    .line 73
    invoke-direct {p0, p1, v0}, Lorg/apache/commons/io/input/BufferedFileChannelInputStream;-><init>(Ljava/io/File;I)V

    return-void
.end method

.method public constructor <init>(Ljava/io/File;I)V
    .registers 3

    .line 84
    invoke-virtual {p1}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lorg/apache/commons/io/input/BufferedFileChannelInputStream;-><init>(Ljava/nio/file/Path;I)V

    return-void
.end method

.method public constructor <init>(Ljava/nio/file/Path;)V
    .registers 3

    const/16 v0, 0x2000

    .line 94
    invoke-direct {p0, p1, v0}, Lorg/apache/commons/io/input/BufferedFileChannelInputStream;-><init>(Ljava/nio/file/Path;I)V

    return-void
.end method

.method public constructor <init>(Ljava/nio/file/Path;I)V
    .registers 6

    .line 104
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 105
    const-string v0, "path"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const/4 v0, 0x1

    .line 106
    new-array v0, v0, [Ljava/nio/file/OpenOption;

    sget-object v1, Ljava/nio/file/StandardOpenOption;->READ:Ljava/nio/file/StandardOpenOption;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {p1, v0}, Ljava/nio/channels/FileChannel;->open(Ljava/nio/file/Path;[Ljava/nio/file/OpenOption;)Ljava/nio/channels/FileChannel;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/commons/io/input/BufferedFileChannelInputStream;->fileChannel:Ljava/nio/channels/FileChannel;

    .line 107
    invoke-static {p2}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/commons/io/input/BufferedFileChannelInputStream;->byteBuffer:Ljava/nio/ByteBuffer;

    .line 108
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    return-void
.end method

.method private clean(Ljava/nio/ByteBuffer;)V
    .registers 3

    .line 126
    invoke-static {p1}, Lorg/apache/commons/io/input/BufferedFileChannelInputStream;->isDirectBuffer(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 127
    invoke-direct {p0, p1}, Lorg/apache/commons/io/input/BufferedFileChannelInputStream;->cleanDirectBuffer(Ljava/nio/ByteBuffer;)V

    :cond_9
    return-void
.end method

.method private cleanDirectBuffer(Ljava/nio/ByteBuffer;)V
    .registers 5

    .line 162
    const-string p0, "java.specification.version"

    invoke-static {p0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 163
    const-string v0, "1.8"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    const/4 v0, 0x0

    if-eqz p0, :cond_34

    .line 166
    :try_start_f
    const-string p0, "sun.misc.Cleaner"

    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0

    .line 167
    sget-object v1, Lorg/apache/commons/io/input/BufferedFileChannelInputStream;->DIRECT_BUFFER_CLASS:Ljava/lang/Class;

    const-string v2, "cleaner"

    invoke-virtual {v1, v2, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 168
    invoke-virtual {v1, p1, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_2c

    .line 170
    const-string v1, "clean"

    invoke-virtual {p0, v1, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p0

    .line 171
    invoke-virtual {p0, p1, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2c
    .catch Ljava/lang/ReflectiveOperationException; {:try_start_f .. :try_end_2c} :catch_2d

    :cond_2c
    return-void

    :catch_2d
    move-exception p0

    .line 174
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    .line 179
    :cond_34
    :try_start_34
    const-string p0, "sun.misc.Unsafe"

    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0

    .line 180
    const-string v1, "invokeCleaner"

    const-class v2, Ljava/nio/ByteBuffer;

    filled-new-array {v2}, [Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 181
    const-string v2, "theUnsafe"

    invoke-virtual {p0, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p0

    const/4 v2, 0x1

    .line 182
    invoke-virtual {p0, v2}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 183
    invoke-virtual {p0, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v1, p0, p1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_5b
    .catch Ljava/lang/ReflectiveOperationException; {:try_start_34 .. :try_end_5b} :catch_5c

    return-void

    :catch_5c
    move-exception p0

    .line 185
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method private static getDirectBufferClass()Ljava/lang/Class;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 55
    :try_start_0
    const-string v0, "sun.nio.ch.DirectBuffer"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0
    :try_end_6
    .catch Ljava/lang/IllegalAccessError; {:try_start_0 .. :try_end_6} :catch_7
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    :catch_7
    const/4 v0, 0x0

    return-object v0
.end method

.method private static isDirectBuffer(Ljava/lang/Object;)Z
    .registers 2

    .line 63
    sget-object v0, Lorg/apache/commons/io/input/BufferedFileChannelInputStream;->DIRECT_BUFFER_CLASS:Ljava/lang/Class;

    if-eqz v0, :cond_c

    invoke-virtual {v0, p0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_c

    const/4 p0, 0x1

    return p0

    :cond_c
    const/4 p0, 0x0

    return p0
.end method

.method private refill()Z
    .registers 5

    .line 226
    iget-object v0, p0, Lorg/apache/commons/io/input/BufferedFileChannelInputStream;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/Buffer;->hasRemaining()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_24

    .line 227
    iget-object v0, p0, Lorg/apache/commons/io/input/BufferedFileChannelInputStream;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    const/4 v0, 0x0

    move v2, v0

    :goto_10
    if-nez v2, :cond_1b

    .line 230
    iget-object v2, p0, Lorg/apache/commons/io/input/BufferedFileChannelInputStream;->fileChannel:Ljava/nio/channels/FileChannel;

    iget-object v3, p0, Lorg/apache/commons/io/input/BufferedFileChannelInputStream;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v2, v3}, Ljava/nio/channels/FileChannel;->read(Ljava/nio/ByteBuffer;)I

    move-result v2

    goto :goto_10

    .line 232
    :cond_1b
    iget-object p0, p0, Lorg/apache/commons/io/input/BufferedFileChannelInputStream;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    if-ltz v2, :cond_23

    return v1

    :cond_23
    return v0

    :cond_24
    return v1
.end method

.method private skipFromFileChannel(J)J
    .registers 10

    .line 257
    iget-object v0, p0, Lorg/apache/commons/io/input/BufferedFileChannelInputStream;->fileChannel:Ljava/nio/channels/FileChannel;

    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->position()J

    move-result-wide v0

    .line 258
    iget-object v2, p0, Lorg/apache/commons/io/input/BufferedFileChannelInputStream;->fileChannel:Ljava/nio/channels/FileChannel;

    invoke-virtual {v2}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v2

    sub-long v4, v2, v0

    cmp-long v6, p1, v4

    if-lez v6, :cond_18

    .line 260
    iget-object p0, p0, Lorg/apache/commons/io/input/BufferedFileChannelInputStream;->fileChannel:Ljava/nio/channels/FileChannel;

    invoke-virtual {p0, v2, v3}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    return-wide v4

    .line 263
    :cond_18
    iget-object p0, p0, Lorg/apache/commons/io/input/BufferedFileChannelInputStream;->fileChannel:Ljava/nio/channels/FileChannel;

    add-long/2addr v0, p1

    invoke-virtual {p0, v0, v1}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    return-wide p1
.end method


# virtual methods
.method public declared-synchronized available()I
    .registers 2

    monitor-enter p0

    .line 113
    :try_start_1
    iget-object v0, p0, Lorg/apache/commons/io/input/BufferedFileChannelInputStream;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/Buffer;->remaining()I

    move-result v0
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_9

    monitor-exit p0

    return v0

    :catchall_9
    move-exception v0

    :try_start_a
    monitor-exit p0
    :try_end_b
    .catchall {:try_start_a .. :try_end_b} :catchall_9

    throw v0
.end method

.method public declared-synchronized close()V
    .registers 3

    monitor-enter p0

    .line 193
    :try_start_1
    iget-object v0, p0, Lorg/apache/commons/io/input/BufferedFileChannelInputStream;->fileChannel:Ljava/nio/channels/FileChannel;

    invoke-virtual {v0}, Ljava/nio/channels/spi/AbstractInterruptibleChannel;->close()V
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_f

    .line 195
    :try_start_6
    iget-object v0, p0, Lorg/apache/commons/io/input/BufferedFileChannelInputStream;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-direct {p0, v0}, Lorg/apache/commons/io/input/BufferedFileChannelInputStream;->clean(Ljava/nio/ByteBuffer;)V
    :try_end_b
    .catchall {:try_start_6 .. :try_end_b} :catchall_d

    .line 197
    monitor-exit p0

    return-void

    :catchall_d
    move-exception v0

    goto :goto_16

    :catchall_f
    move-exception v0

    .line 195
    :try_start_10
    iget-object v1, p0, Lorg/apache/commons/io/input/BufferedFileChannelInputStream;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-direct {p0, v1}, Lorg/apache/commons/io/input/BufferedFileChannelInputStream;->clean(Ljava/nio/ByteBuffer;)V

    .line 196
    throw v0

    :goto_16
    monitor-exit p0
    :try_end_17
    .catchall {:try_start_10 .. :try_end_17} :catchall_d

    throw v0
.end method

.method public declared-synchronized read()I
    .registers 2

    monitor-enter p0

    .line 201
    :try_start_1
    invoke-direct {p0}, Lorg/apache/commons/io/input/BufferedFileChannelInputStream;->refill()Z

    move-result v0
    :try_end_5
    .catchall {:try_start_1 .. :try_end_5} :catchall_14

    if-nez v0, :cond_a

    .line 202
    monitor-exit p0

    const/4 p0, -0x1

    return p0

    .line 204
    :cond_a
    :try_start_a
    iget-object v0, p0, Lorg/apache/commons/io/input/BufferedFileChannelInputStream;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v0
    :try_end_10
    .catchall {:try_start_a .. :try_end_10} :catchall_14

    and-int/lit16 v0, v0, 0xff

    monitor-exit p0

    return v0

    :catchall_14
    move-exception v0

    :try_start_15
    monitor-exit p0
    :try_end_16
    .catchall {:try_start_15 .. :try_end_16} :catchall_14

    throw v0
.end method

.method public declared-synchronized read([BII)I
    .registers 6

    monitor-enter p0

    if-ltz p2, :cond_28

    if-ltz p3, :cond_28

    add-int v0, p2, p3

    if-ltz v0, :cond_28

    .line 209
    :try_start_9
    array-length v1, p1

    if-gt v0, v1, :cond_28

    .line 212
    invoke-direct {p0}, Lorg/apache/commons/io/input/BufferedFileChannelInputStream;->refill()Z

    move-result v0
    :try_end_10
    .catchall {:try_start_9 .. :try_end_10} :catchall_26

    if-nez v0, :cond_15

    .line 213
    monitor-exit p0

    const/4 p0, -0x1

    return p0

    .line 215
    :cond_15
    :try_start_15
    iget-object v0, p0, Lorg/apache/commons/io/input/BufferedFileChannelInputStream;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/Buffer;->remaining()I

    move-result v0

    invoke-static {p3, v0}, Ljava/lang/Math;->min(II)I

    move-result p3

    .line 216
    iget-object v0, p0, Lorg/apache/commons/io/input/BufferedFileChannelInputStream;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1, p2, p3}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;
    :try_end_24
    .catchall {:try_start_15 .. :try_end_24} :catchall_26

    .line 217
    monitor-exit p0

    return p3

    :catchall_26
    move-exception p1

    goto :goto_2e

    .line 210
    :cond_28
    :try_start_28
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1

    :goto_2e
    monitor-exit p0
    :try_end_2f
    .catchall {:try_start_28 .. :try_end_2f} :catchall_26

    throw p1
.end method

.method public declared-synchronized skip(J)J
    .registers 7

    monitor-enter p0

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-gtz v2, :cond_9

    .line 241
    monitor-exit p0

    return-wide v0

    .line 243
    :cond_9
    :try_start_9
    iget-object v0, p0, Lorg/apache/commons/io/input/BufferedFileChannelInputStream;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/Buffer;->remaining()I

    move-result v0

    int-to-long v0, v0

    cmp-long v0, v0, p1

    if-ltz v0, :cond_23

    .line 245
    iget-object v0, p0, Lorg/apache/commons/io/input/BufferedFileChannelInputStream;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/Buffer;->position()I

    move-result v1

    long-to-int v2, p1

    add-int/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;
    :try_end_1f
    .catchall {:try_start_9 .. :try_end_1f} :catchall_21

    .line 246
    monitor-exit p0

    return-wide p1

    :catchall_21
    move-exception p1

    goto :goto_3d

    .line 248
    :cond_23
    :try_start_23
    iget-object v0, p0, Lorg/apache/commons/io/input/BufferedFileChannelInputStream;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/Buffer;->remaining()I

    move-result v0

    int-to-long v0, v0

    sub-long/2addr p1, v0

    .line 251
    iget-object v2, p0, Lorg/apache/commons/io/input/BufferedFileChannelInputStream;->byteBuffer:Ljava/nio/ByteBuffer;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 252
    iget-object v2, p0, Lorg/apache/commons/io/input/BufferedFileChannelInputStream;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 253
    invoke-direct {p0, p1, p2}, Lorg/apache/commons/io/input/BufferedFileChannelInputStream;->skipFromFileChannel(J)J

    move-result-wide p1
    :try_end_3a
    .catchall {:try_start_23 .. :try_end_3a} :catchall_21

    add-long/2addr v0, p1

    monitor-exit p0

    return-wide v0

    :goto_3d
    :try_start_3d
    monitor-exit p0
    :try_end_3e
    .catchall {:try_start_3d .. :try_end_3e} :catchall_21

    throw p1
.end method
