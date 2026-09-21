.class public abstract Lorg/apache/commons/io/input/ObservableInputStream$Observer;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/io/input/ObservableInputStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Observer"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public closed()V
    .registers 1

    return-void
.end method

.method public data(I)V
    .registers 2

    .line 0
    return-void
.end method

.method public data([BII)V
    .registers 4

    .line 0
    return-void
.end method

.method public error(Ljava/io/IOException;)V
    .registers 2

    .line 94
    throw p1
.end method

.method public finished()V
    .registers 1

    return-void
.end method
