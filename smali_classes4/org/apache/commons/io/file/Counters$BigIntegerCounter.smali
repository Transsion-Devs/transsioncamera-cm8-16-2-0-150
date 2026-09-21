.class final Lorg/apache/commons/io/file/Counters$BigIntegerCounter;
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
    name = "BigIntegerCounter"
.end annotation


# instance fields
.field private value:Ljava/math/BigInteger;


# direct methods
.method private constructor <init>()V
    .registers 2

    .line 110
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 112
    sget-object v0, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    iput-object v0, p0, Lorg/apache/commons/io/file/Counters$BigIntegerCounter;->value:Ljava/math/BigInteger;

    return-void
.end method

.method synthetic constructor <init>(Lorg/apache/commons/io/file/Counters$1;)V
    .registers 2

    .line 110
    invoke-direct {p0}, Lorg/apache/commons/io/file/Counters$BigIntegerCounter;-><init>()V

    return-void
.end method


# virtual methods
.method public add(J)V
    .registers 4

    .line 116
    iget-object v0, p0, Lorg/apache/commons/io/file/Counters$BigIntegerCounter;->value:Ljava/math/BigInteger;

    invoke-static {p1, p2}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/commons/io/file/Counters$BigIntegerCounter;->value:Ljava/math/BigInteger;

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 3

    if-ne p0, p1, :cond_4

    const/4 p0, 0x1

    return p0

    .line 125
    :cond_4
    instance-of v0, p1, Lorg/apache/commons/io/file/Counters$Counter;

    if-nez v0, :cond_a

    const/4 p0, 0x0

    return p0

    .line 128
    :cond_a
    check-cast p1, Lorg/apache/commons/io/file/Counters$Counter;

    .line 129
    iget-object p0, p0, Lorg/apache/commons/io/file/Counters$BigIntegerCounter;->value:Ljava/math/BigInteger;

    invoke-interface {p1}, Lorg/apache/commons/io/file/Counters$Counter;->getBigInteger()Ljava/math/BigInteger;

    move-result-object p1

    invoke-static {p0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public get()J
    .registers 3

    .line 134
    iget-object p0, p0, Lorg/apache/commons/io/file/Counters$BigIntegerCounter;->value:Ljava/math/BigInteger;

    invoke-virtual {p0}, Ljava/math/BigInteger;->longValueExact()J

    move-result-wide v0

    return-wide v0
.end method

.method public getBigInteger()Ljava/math/BigInteger;
    .registers 1

    .line 139
    iget-object p0, p0, Lorg/apache/commons/io/file/Counters$BigIntegerCounter;->value:Ljava/math/BigInteger;

    return-object p0
.end method

.method public getLong()Ljava/lang/Long;
    .registers 3

    .line 144
    iget-object p0, p0, Lorg/apache/commons/io/file/Counters$BigIntegerCounter;->value:Ljava/math/BigInteger;

    invoke-virtual {p0}, Ljava/math/BigInteger;->longValueExact()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0
.end method

.method public hashCode()I
    .registers 1

    .line 149
    iget-object p0, p0, Lorg/apache/commons/io/file/Counters$BigIntegerCounter;->value:Ljava/math/BigInteger;

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public increment()V
    .registers 3

    .line 154
    iget-object v0, p0, Lorg/apache/commons/io/file/Counters$BigIntegerCounter;->value:Ljava/math/BigInteger;

    sget-object v1, Ljava/math/BigInteger;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/io/file/Counters$BigIntegerCounter;->value:Ljava/math/BigInteger;

    return-void
.end method

.method public reset()V
    .registers 2

    .line 164
    sget-object v0, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    iput-object v0, p0, Lorg/apache/commons/io/file/Counters$BigIntegerCounter;->value:Ljava/math/BigInteger;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 1

    .line 159
    iget-object p0, p0, Lorg/apache/commons/io/file/Counters$BigIntegerCounter;->value:Ljava/math/BigInteger;

    invoke-virtual {p0}, Ljava/math/BigInteger;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
