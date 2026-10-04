.class Lcom/google/gson/stream/JsonReader$1;
.super Lcom/google/gson/internal/JsonReaderInternalAccess;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/gson/stream/JsonReader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 1797
    invoke-direct {p0}, Lcom/google/gson/internal/JsonReaderInternalAccess;-><init>()V

    return-void
.end method


# virtual methods
.method public promoteNameToValue(Lcom/google/gson/stream/JsonReader;)V
    .registers 3

    .line 1804
    iget p0, p1, Lcom/google/gson/stream/JsonReader;->peeked:I

    if-nez p0, :cond_8

    .line 1806
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->doPeek()I

    move-result p0

    :cond_8
    const/16 v0, 0xd

    if-ne p0, v0, :cond_11

    const/16 p0, 0x9

    .line 1809
    iput p0, p1, Lcom/google/gson/stream/JsonReader;->peeked:I

    return-void

    :cond_11
    const/16 v0, 0xc

    if-ne p0, v0, :cond_1a

    const/16 p0, 0x8

    .line 1811
    iput p0, p1, Lcom/google/gson/stream/JsonReader;->peeked:I

    return-void

    :cond_1a
    const/16 v0, 0xe

    if-ne p0, v0, :cond_23

    const/16 p0, 0xa

    .line 1813
    iput p0, p1, Lcom/google/gson/stream/JsonReader;->peeked:I

    return-void

    .line 1815
    :cond_23
    const-string p0, "a name"

    # invokes: Lcom/google/gson/stream/JsonReader;->unexpectedTokenError(Ljava/lang/String;)Ljava/lang/IllegalStateException;
    invoke-static {p1, p0}, Lcom/google/gson/stream/JsonReader;->access$000(Lcom/google/gson/stream/JsonReader;Ljava/lang/String;)Ljava/lang/IllegalStateException;

    move-result-object p0

    throw p0
.end method
