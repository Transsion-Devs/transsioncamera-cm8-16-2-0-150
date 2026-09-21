.class Lorg/apache/commons/io/file/Counters$AbstractPathCounters;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/commons/io/file/Counters$PathCounters;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/io/file/Counters;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AbstractPathCounters"
.end annotation


# instance fields
.field private final byteCounter:Lorg/apache/commons/io/file/Counters$Counter;

.field private final directoryCounter:Lorg/apache/commons/io/file/Counters$Counter;

.field private final fileCounter:Lorg/apache/commons/io/file/Counters$Counter;


# direct methods
.method protected constructor <init>(Lorg/apache/commons/io/file/Counters$Counter;Lorg/apache/commons/io/file/Counters$Counter;Lorg/apache/commons/io/file/Counters$Counter;)V
    .registers 4

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-object p1, p0, Lorg/apache/commons/io/file/Counters$AbstractPathCounters;->byteCounter:Lorg/apache/commons/io/file/Counters$Counter;

    .line 49
    iput-object p2, p0, Lorg/apache/commons/io/file/Counters$AbstractPathCounters;->directoryCounter:Lorg/apache/commons/io/file/Counters$Counter;

    .line 50
    iput-object p3, p0, Lorg/apache/commons/io/file/Counters$AbstractPathCounters;->fileCounter:Lorg/apache/commons/io/file/Counters$Counter;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 58
    :cond_4
    instance-of v1, p1, Lorg/apache/commons/io/file/Counters$AbstractPathCounters;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    .line 61
    :cond_a
    check-cast p1, Lorg/apache/commons/io/file/Counters$AbstractPathCounters;

    .line 62
    iget-object v1, p0, Lorg/apache/commons/io/file/Counters$AbstractPathCounters;->byteCounter:Lorg/apache/commons/io/file/Counters$Counter;

    iget-object v3, p1, Lorg/apache/commons/io/file/Counters$AbstractPathCounters;->byteCounter:Lorg/apache/commons/io/file/Counters$Counter;

    invoke-static {v1, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2b

    iget-object v1, p0, Lorg/apache/commons/io/file/Counters$AbstractPathCounters;->directoryCounter:Lorg/apache/commons/io/file/Counters$Counter;

    iget-object v3, p1, Lorg/apache/commons/io/file/Counters$AbstractPathCounters;->directoryCounter:Lorg/apache/commons/io/file/Counters$Counter;

    .line 63
    invoke-static {v1, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2b

    iget-object p0, p0, Lorg/apache/commons/io/file/Counters$AbstractPathCounters;->fileCounter:Lorg/apache/commons/io/file/Counters$Counter;

    iget-object p1, p1, Lorg/apache/commons/io/file/Counters$AbstractPathCounters;->fileCounter:Lorg/apache/commons/io/file/Counters$Counter;

    .line 64
    invoke-static {p0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2b

    return v0

    :cond_2b
    return v2
.end method

.method public getByteCounter()Lorg/apache/commons/io/file/Counters$Counter;
    .registers 1

    .line 69
    iget-object p0, p0, Lorg/apache/commons/io/file/Counters$AbstractPathCounters;->byteCounter:Lorg/apache/commons/io/file/Counters$Counter;

    return-object p0
.end method

.method public getDirectoryCounter()Lorg/apache/commons/io/file/Counters$Counter;
    .registers 1

    .line 74
    iget-object p0, p0, Lorg/apache/commons/io/file/Counters$AbstractPathCounters;->directoryCounter:Lorg/apache/commons/io/file/Counters$Counter;

    return-object p0
.end method

.method public getFileCounter()Lorg/apache/commons/io/file/Counters$Counter;
    .registers 1

    .line 84
    iget-object p0, p0, Lorg/apache/commons/io/file/Counters$AbstractPathCounters;->fileCounter:Lorg/apache/commons/io/file/Counters$Counter;

    return-object p0
.end method

.method public hashCode()I
    .registers 3

    .line 89
    iget-object v0, p0, Lorg/apache/commons/io/file/Counters$AbstractPathCounters;->byteCounter:Lorg/apache/commons/io/file/Counters$Counter;

    iget-object v1, p0, Lorg/apache/commons/io/file/Counters$AbstractPathCounters;->directoryCounter:Lorg/apache/commons/io/file/Counters$Counter;

    iget-object p0, p0, Lorg/apache/commons/io/file/Counters$AbstractPathCounters;->fileCounter:Lorg/apache/commons/io/file/Counters$Counter;

    filled-new-array {v0, v1, p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public reset()V
    .registers 2

    .line 94
    iget-object v0, p0, Lorg/apache/commons/io/file/Counters$AbstractPathCounters;->byteCounter:Lorg/apache/commons/io/file/Counters$Counter;

    invoke-interface {v0}, Lorg/apache/commons/io/file/Counters$Counter;->reset()V

    .line 95
    iget-object v0, p0, Lorg/apache/commons/io/file/Counters$AbstractPathCounters;->directoryCounter:Lorg/apache/commons/io/file/Counters$Counter;

    invoke-interface {v0}, Lorg/apache/commons/io/file/Counters$Counter;->reset()V

    .line 96
    iget-object p0, p0, Lorg/apache/commons/io/file/Counters$AbstractPathCounters;->fileCounter:Lorg/apache/commons/io/file/Counters$Counter;

    invoke-interface {p0}, Lorg/apache/commons/io/file/Counters$Counter;->reset()V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .line 101
    iget-object v0, p0, Lorg/apache/commons/io/file/Counters$AbstractPathCounters;->fileCounter:Lorg/apache/commons/io/file/Counters$Counter;

    invoke-interface {v0}, Lorg/apache/commons/io/file/Counters$Counter;->get()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/commons/io/file/Counters$AbstractPathCounters;->directoryCounter:Lorg/apache/commons/io/file/Counters$Counter;

    .line 102
    invoke-interface {v1}, Lorg/apache/commons/io/file/Counters$Counter;->get()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iget-object p0, p0, Lorg/apache/commons/io/file/Counters$AbstractPathCounters;->byteCounter:Lorg/apache/commons/io/file/Counters$Counter;

    invoke-interface {p0}, Lorg/apache/commons/io/file/Counters$Counter;->get()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    filled-new-array {v0, v1, p0}, [Ljava/lang/Object;

    move-result-object p0

    .line 101
    const-string v0, "%,d files, %,d directories, %,d bytes"

    invoke-static {v0, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
