.class final Lorg/apache/commons/io/file/Counters$NoopCounter;
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
    name = "NoopCounter"
.end annotation


# static fields
.field static final INSTANCE:Lorg/apache/commons/io/file/Counters$NoopCounter;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 309
    new-instance v0, Lorg/apache/commons/io/file/Counters$NoopCounter;

    invoke-direct {v0}, Lorg/apache/commons/io/file/Counters$NoopCounter;-><init>()V

    sput-object v0, Lorg/apache/commons/io/file/Counters$NoopCounter;->INSTANCE:Lorg/apache/commons/io/file/Counters$NoopCounter;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 307
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public add(J)V
    .registers 3

    return-void
.end method

.method public get()J
    .registers 3

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getBigInteger()Ljava/math/BigInteger;
    .registers 1

    .line 323
    sget-object p0, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    return-object p0
.end method

.method public getLong()Ljava/lang/Long;
    .registers 3

    const-wide/16 v0, 0x0

    .line 328
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0
.end method

.method public increment()V
    .registers 1

    return-void
.end method
