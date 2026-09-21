.class public Lorg/apache/commons/io/input/CloseShieldReader;
.super Lorg/apache/commons/io/input/ProxyReader;
.source "SourceFile"


# direct methods
.method public constructor <init>(Ljava/io/Reader;)V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 54
    invoke-direct {p0, p1}, Lorg/apache/commons/io/input/ProxyReader;-><init>(Ljava/io/Reader;)V

    return-void
.end method

.method public static wrap(Ljava/io/Reader;)Lorg/apache/commons/io/input/CloseShieldReader;
    .registers 2

    .line 41
    new-instance v0, Lorg/apache/commons/io/input/CloseShieldReader;

    invoke-direct {v0, p0}, Lorg/apache/commons/io/input/CloseShieldReader;-><init>(Ljava/io/Reader;)V

    return-object v0
.end method


# virtual methods
.method public close()V
    .registers 2

    .line 63
    sget-object v0, Lorg/apache/commons/io/input/ClosedReader;->CLOSED_READER:Lorg/apache/commons/io/input/ClosedReader;

    iput-object v0, p0, Ljava/io/FilterReader;->in:Ljava/io/Reader;

    return-void
.end method
