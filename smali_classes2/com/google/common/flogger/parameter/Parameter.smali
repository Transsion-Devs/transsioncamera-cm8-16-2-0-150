.class public abstract Lcom/google/common/flogger/parameter/Parameter;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final index:I

.field private final options:Lcom/google/common/flogger/backend/FormatOptions;


# direct methods
.method protected constructor <init>(Lcom/google/common/flogger/backend/FormatOptions;I)V
    .registers 4

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_23

    if-ltz p2, :cond_c

    .line 47
    iput p2, p0, Lcom/google/common/flogger/parameter/Parameter;->index:I

    .line 48
    iput-object p1, p0, Lcom/google/common/flogger/parameter/Parameter;->options:Lcom/google/common/flogger/backend/FormatOptions;

    return-void

    .line 45
    :cond_c
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "invalid index: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 42
    :cond_23
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "format options cannot be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method protected abstract accept(Lcom/google/common/flogger/parameter/ParameterVisitor;Ljava/lang/Object;)V
.end method

.method public final accept(Lcom/google/common/flogger/parameter/ParameterVisitor;[Ljava/lang/Object;)V
    .registers 5

    .line 62
    invoke-virtual {p0}, Lcom/google/common/flogger/parameter/Parameter;->getIndex()I

    move-result v0

    array-length v1, p2

    if-ge v0, v1, :cond_17

    .line 63
    invoke-virtual {p0}, Lcom/google/common/flogger/parameter/Parameter;->getIndex()I

    move-result v0

    aget-object p2, p2, v0

    if-eqz p2, :cond_13

    .line 65
    invoke-virtual {p0, p1, p2}, Lcom/google/common/flogger/parameter/Parameter;->accept(Lcom/google/common/flogger/parameter/ParameterVisitor;Ljava/lang/Object;)V

    return-void

    .line 67
    :cond_13
    invoke-interface {p1}, Lcom/google/common/flogger/parameter/ParameterVisitor;->visitNull()V

    return-void

    .line 70
    :cond_17
    invoke-interface {p1}, Lcom/google/common/flogger/parameter/ParameterVisitor;->visitMissing()V

    return-void
.end method

.method public abstract getFormat()Ljava/lang/String;
.end method

.method protected final getFormatOptions()Lcom/google/common/flogger/backend/FormatOptions;
    .registers 1

    .line 58
    iget-object p0, p0, Lcom/google/common/flogger/parameter/Parameter;->options:Lcom/google/common/flogger/backend/FormatOptions;

    return-object p0
.end method

.method public final getIndex()I
    .registers 1

    .line 53
    iget p0, p0, Lcom/google/common/flogger/parameter/Parameter;->index:I

    return p0
.end method
