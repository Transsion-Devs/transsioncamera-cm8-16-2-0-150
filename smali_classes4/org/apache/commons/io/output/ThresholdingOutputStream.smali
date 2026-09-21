.class public Lorg/apache/commons/io/output/ThresholdingOutputStream;
.super Ljava/io/OutputStream;
.source "SourceFile"


# static fields
.field private static final NOOP_OS_GETTER:Lorg/apache/commons/io/function/IOFunction;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/commons/io/function/IOFunction<",
            "Lorg/apache/commons/io/output/ThresholdingOutputStream;",
            "Ljava/io/OutputStream;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final outputStreamGetter:Lorg/apache/commons/io/function/IOFunction;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/commons/io/function/IOFunction<",
            "Lorg/apache/commons/io/output/ThresholdingOutputStream;",
            "Ljava/io/OutputStream;",
            ">;"
        }
    .end annotation
.end field

.field private final threshold:I

.field private final thresholdConsumer:Lorg/apache/commons/io/function/IOConsumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/commons/io/function/IOConsumer<",
            "Lorg/apache/commons/io/output/ThresholdingOutputStream;",
            ">;"
        }
    .end annotation
.end field

.field private thresholdExceeded:Z

.field private written:J


# direct methods
.method public static synthetic $r8$lambda$PUXyu_JUdGU2bWMAK3NNzFiwjQA(Lorg/apache/commons/io/output/ThresholdingOutputStream;)Ljava/io/OutputStream;
    .registers 1

    .line 43
    sget-object p0, Lorg/apache/commons/io/output/NullOutputStream;->NULL_OUTPUT_STREAM:Lorg/apache/commons/io/output/NullOutputStream;

    return-object p0
.end method

.method static constructor <clinit>()V
    .registers 1

    .line 43
    new-instance v0, Lorg/apache/commons/io/output/ThresholdingOutputStream$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lorg/apache/commons/io/output/ThresholdingOutputStream$$ExternalSyntheticLambda0;-><init>()V

    sput-object v0, Lorg/apache/commons/io/output/ThresholdingOutputStream;->NOOP_OS_GETTER:Lorg/apache/commons/io/function/IOFunction;

    return-void
.end method

.method public constructor <init>(I)V
    .registers 4

    .line 76
    invoke-static {}, Lorg/apache/commons/io/function/IOConsumer;->noop()Lorg/apache/commons/io/function/IOConsumer;

    move-result-object v0

    sget-object v1, Lorg/apache/commons/io/output/ThresholdingOutputStream;->NOOP_OS_GETTER:Lorg/apache/commons/io/function/IOFunction;

    invoke-direct {p0, p1, v0, v1}, Lorg/apache/commons/io/output/ThresholdingOutputStream;-><init>(ILorg/apache/commons/io/function/IOConsumer;Lorg/apache/commons/io/function/IOFunction;)V

    return-void
.end method

.method public constructor <init>(ILorg/apache/commons/io/function/IOConsumer;Lorg/apache/commons/io/function/IOFunction;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lorg/apache/commons/io/function/IOConsumer<",
            "Lorg/apache/commons/io/output/ThresholdingOutputStream;",
            ">;",
            "Lorg/apache/commons/io/function/IOFunction<",
            "Lorg/apache/commons/io/output/ThresholdingOutputStream;",
            "Ljava/io/OutputStream;",
            ">;)V"
        }
    .end annotation

    .line 88
    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    .line 89
    iput p1, p0, Lorg/apache/commons/io/output/ThresholdingOutputStream;->threshold:I

    if-nez p2, :cond_b

    .line 90
    invoke-static {}, Lorg/apache/commons/io/function/IOConsumer;->noop()Lorg/apache/commons/io/function/IOConsumer;

    move-result-object p2

    :cond_b
    iput-object p2, p0, Lorg/apache/commons/io/output/ThresholdingOutputStream;->thresholdConsumer:Lorg/apache/commons/io/function/IOConsumer;

    if-nez p3, :cond_11

    .line 91
    sget-object p3, Lorg/apache/commons/io/output/ThresholdingOutputStream;->NOOP_OS_GETTER:Lorg/apache/commons/io/function/IOFunction;

    :cond_11
    iput-object p3, p0, Lorg/apache/commons/io/output/ThresholdingOutputStream;->outputStreamGetter:Lorg/apache/commons/io/function/IOFunction;

    return-void
.end method


# virtual methods
.method protected checkThreshold(I)V
    .registers 6

    .line 103
    iget-boolean v0, p0, Lorg/apache/commons/io/output/ThresholdingOutputStream;->thresholdExceeded:Z

    if-nez v0, :cond_15

    iget-wide v0, p0, Lorg/apache/commons/io/output/ThresholdingOutputStream;->written:J

    int-to-long v2, p1

    add-long/2addr v0, v2

    iget p1, p0, Lorg/apache/commons/io/output/ThresholdingOutputStream;->threshold:I

    int-to-long v2, p1

    cmp-long p1, v0, v2

    if-lez p1, :cond_15

    const/4 p1, 0x1

    .line 104
    iput-boolean p1, p0, Lorg/apache/commons/io/output/ThresholdingOutputStream;->thresholdExceeded:Z

    .line 105
    invoke-virtual {p0}, Lorg/apache/commons/io/output/ThresholdingOutputStream;->thresholdReached()V

    :cond_15
    return-void
.end method

.method public close()V
    .registers 1

    .line 117
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/commons/io/output/ThresholdingOutputStream;->flush()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_3} :catch_3

    .line 121
    :catch_3
    invoke-virtual {p0}, Lorg/apache/commons/io/output/ThresholdingOutputStream;->getStream()Ljava/io/OutputStream;

    move-result-object p0

    invoke-virtual {p0}, Ljava/io/OutputStream;->close()V

    return-void
.end method

.method public flush()V
    .registers 1

    .line 132
    invoke-virtual {p0}, Lorg/apache/commons/io/output/ThresholdingOutputStream;->getStream()Ljava/io/OutputStream;

    move-result-object p0

    invoke-virtual {p0}, Ljava/io/OutputStream;->flush()V

    return-void
.end method

.method public getByteCount()J
    .registers 3

    .line 141
    iget-wide v0, p0, Lorg/apache/commons/io/output/ThresholdingOutputStream;->written:J

    return-wide v0
.end method

.method protected getStream()Ljava/io/OutputStream;
    .registers 2

    .line 153
    iget-object v0, p0, Lorg/apache/commons/io/output/ThresholdingOutputStream;->outputStreamGetter:Lorg/apache/commons/io/function/IOFunction;

    invoke-interface {v0, p0}, Lorg/apache/commons/io/function/IOFunction;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/io/OutputStream;

    return-object p0
.end method

.method public getThreshold()I
    .registers 1

    .line 162
    iget p0, p0, Lorg/apache/commons/io/output/ThresholdingOutputStream;->threshold:I

    return p0
.end method

.method public isThresholdExceeded()Z
    .registers 5

    .line 171
    iget-wide v0, p0, Lorg/apache/commons/io/output/ThresholdingOutputStream;->written:J

    iget p0, p0, Lorg/apache/commons/io/output/ThresholdingOutputStream;->threshold:I

    int-to-long v2, p0

    cmp-long p0, v0, v2

    if-lez p0, :cond_b

    const/4 p0, 0x1

    return p0

    :cond_b
    const/4 p0, 0x0

    return p0
.end method

.method protected resetByteCount()V
    .registers 3

    const/4 v0, 0x0

    .line 179
    iput-boolean v0, p0, Lorg/apache/commons/io/output/ThresholdingOutputStream;->thresholdExceeded:Z

    const-wide/16 v0, 0x0

    .line 180
    iput-wide v0, p0, Lorg/apache/commons/io/output/ThresholdingOutputStream;->written:J

    return-void
.end method

.method protected setByteCount(J)V
    .registers 3

    .line 191
    iput-wide p1, p0, Lorg/apache/commons/io/output/ThresholdingOutputStream;->written:J

    return-void
.end method

.method protected thresholdReached()V
    .registers 2

    .line 201
    iget-object v0, p0, Lorg/apache/commons/io/output/ThresholdingOutputStream;->thresholdConsumer:Lorg/apache/commons/io/function/IOConsumer;

    invoke-interface {v0, p0}, Lorg/apache/commons/io/function/IOConsumer;->accept(Ljava/lang/Object;)V

    return-void
.end method

.method public write(I)V
    .registers 6

    const/4 v0, 0x1

    .line 246
    invoke-virtual {p0, v0}, Lorg/apache/commons/io/output/ThresholdingOutputStream;->checkThreshold(I)V

    .line 247
    invoke-virtual {p0}, Lorg/apache/commons/io/output/ThresholdingOutputStream;->getStream()Ljava/io/OutputStream;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write(I)V

    .line 248
    iget-wide v0, p0, Lorg/apache/commons/io/output/ThresholdingOutputStream;->written:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lorg/apache/commons/io/output/ThresholdingOutputStream;->written:J

    return-void
.end method

.method public write([B)V
    .registers 6

    .line 214
    array-length v0, p1

    invoke-virtual {p0, v0}, Lorg/apache/commons/io/output/ThresholdingOutputStream;->checkThreshold(I)V

    .line 215
    invoke-virtual {p0}, Lorg/apache/commons/io/output/ThresholdingOutputStream;->getStream()Ljava/io/OutputStream;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write([B)V

    .line 216
    iget-wide v0, p0, Lorg/apache/commons/io/output/ThresholdingOutputStream;->written:J

    array-length p1, p1

    int-to-long v2, p1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lorg/apache/commons/io/output/ThresholdingOutputStream;->written:J

    return-void
.end method

.method public write([BII)V
    .registers 6

    .line 231
    invoke-virtual {p0, p3}, Lorg/apache/commons/io/output/ThresholdingOutputStream;->checkThreshold(I)V

    .line 232
    invoke-virtual {p0}, Lorg/apache/commons/io/output/ThresholdingOutputStream;->getStream()Ljava/io/OutputStream;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V

    .line 233
    iget-wide p1, p0, Lorg/apache/commons/io/output/ThresholdingOutputStream;->written:J

    int-to-long v0, p3

    add-long/2addr p1, v0

    iput-wide p1, p0, Lorg/apache/commons/io/output/ThresholdingOutputStream;->written:J

    return-void
.end method
