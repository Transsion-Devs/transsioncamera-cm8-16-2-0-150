.class final Lorg/apache/commons/io/file/Counters$LongCounter;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/commons/io/file/Counters$Counter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/io/file/Counters;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "LongCounter"
.end annotation


# instance fields
.field private value:J


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 232
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/apache/commons/io/file/Counters$1;)V
    .registers 2

    .line 232
    invoke-direct {p0}, Lorg/apache/commons/io/file/Counters$LongCounter;-><init>()V

    return-void
.end method


# virtual methods
.method public add(J)V
    .registers 5

    .line 238
    iget-wide v0, p0, Lorg/apache/commons/io/file/Counters$LongCounter;->value:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lorg/apache/commons/io/file/Counters$LongCounter;->value:J

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 247
    :cond_4
    instance-of v1, p1, Lorg/apache/commons/io/file/Counters$Counter;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    .line 250
    :cond_a
    check-cast p1, Lorg/apache/commons/io/file/Counters$Counter;

    .line 251
    iget-wide v3, p0, Lorg/apache/commons/io/file/Counters$LongCounter;->value:J

    invoke-interface {p1}, Lorg/apache/commons/io/file/Counters$Counter;->get()J

    move-result-wide p0

    cmp-long p0, v3, p0

    if-nez p0, :cond_17

    return v0

    :cond_17
    return v2
.end method

.method public get()J
    .registers 3

    .line 256
    iget-wide v0, p0, Lorg/apache/commons/io/file/Counters$LongCounter;->value:J

    return-wide v0
.end method

.method public getBigInteger()Ljava/math/BigInteger;
    .registers 3

    .line 261
    iget-wide v0, p0, Lorg/apache/commons/io/file/Counters$LongCounter;->value:J

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object p0

    return-object p0
.end method

.method public getLong()Ljava/lang/Long;
    .registers 3

    .line 266
    iget-wide v0, p0, Lorg/apache/commons/io/file/Counters$LongCounter;->value:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0
.end method

.method public hashCode()I
    .registers 3

    .line 271
    iget-wide v0, p0, Lorg/apache/commons/io/file/Counters$LongCounter;->value:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public increment()V
    .registers 5

    .line 276
    iget-wide v0, p0, Lorg/apache/commons/io/file/Counters$LongCounter;->value:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lorg/apache/commons/io/file/Counters$LongCounter;->value:J

    return-void
.end method

.method public reset()V
    .registers 3

    const-wide/16 v0, 0x0

    .line 286
    iput-wide v0, p0, Lorg/apache/commons/io/file/Counters$LongCounter;->value:J

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 281
    iget-wide v0, p0, Lorg/apache/commons/io/file/Counters$LongCounter;->value:J

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
