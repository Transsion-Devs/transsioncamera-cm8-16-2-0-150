.class public final Lokhttp3/internal/http2/Http2Connection$$special$$inlined$schedule$1;
.super Lokhttp3/internal/concurrent/Task;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lokhttp3/internal/http2/Http2Connection;-><init>(Lokhttp3/internal/http2/Http2Connection$Builder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic $name:Ljava/lang/String;

.field final synthetic $pingIntervalNanos$inlined:J

.field final synthetic this$0:Lokhttp3/internal/http2/Http2Connection;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lokhttp3/internal/http2/Http2Connection;J)V
    .registers 6

    iput-object p1, p0, Lokhttp3/internal/http2/Http2Connection$$special$$inlined$schedule$1;->$name:Ljava/lang/String;

    iput-object p3, p0, Lokhttp3/internal/http2/Http2Connection$$special$$inlined$schedule$1;->this$0:Lokhttp3/internal/http2/Http2Connection;

    iput-wide p4, p0, Lokhttp3/internal/http2/Http2Connection$$special$$inlined$schedule$1;->$pingIntervalNanos$inlined:J

    const/4 p1, 0x2

    const/4 p3, 0x0

    const/4 p4, 0x0

    .line 84
    invoke-direct {p0, p2, p4, p1, p3}, Lokhttp3/internal/concurrent/Task;-><init>(Ljava/lang/String;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method


# virtual methods
.method public runOnce()J
    .registers 9

    .line 219
    iget-object v0, p0, Lokhttp3/internal/http2/Http2Connection$$special$$inlined$schedule$1;->this$0:Lokhttp3/internal/http2/Http2Connection;

    monitor-enter v0

    .line 220
    :try_start_3
    iget-object v1, p0, Lokhttp3/internal/http2/Http2Connection$$special$$inlined$schedule$1;->this$0:Lokhttp3/internal/http2/Http2Connection;

    # getter for: Lokhttp3/internal/http2/Http2Connection;->intervalPongsReceived:J
    invoke-static {v1}, Lokhttp3/internal/http2/Http2Connection;->access$getIntervalPongsReceived$p(Lokhttp3/internal/http2/Http2Connection;)J

    move-result-wide v1

    iget-object v3, p0, Lokhttp3/internal/http2/Http2Connection$$special$$inlined$schedule$1;->this$0:Lokhttp3/internal/http2/Http2Connection;

    # getter for: Lokhttp3/internal/http2/Http2Connection;->intervalPingsSent:J
    invoke-static {v3}, Lokhttp3/internal/http2/Http2Connection;->access$getIntervalPingsSent$p(Lokhttp3/internal/http2/Http2Connection;)J

    move-result-wide v3

    cmp-long v1, v1, v3

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-gez v1, :cond_17

    move v1, v2

    goto :goto_24

    .line 223
    :cond_17
    iget-object v1, p0, Lokhttp3/internal/http2/Http2Connection$$special$$inlined$schedule$1;->this$0:Lokhttp3/internal/http2/Http2Connection;

    # getter for: Lokhttp3/internal/http2/Http2Connection;->intervalPingsSent:J
    invoke-static {v1}, Lokhttp3/internal/http2/Http2Connection;->access$getIntervalPingsSent$p(Lokhttp3/internal/http2/Http2Connection;)J

    move-result-wide v4

    const-wide/16 v6, 0x1

    add-long/2addr v4, v6

    invoke-static {v1, v4, v5}, Lokhttp3/internal/http2/Http2Connection;->access$setIntervalPingsSent$p(Lokhttp3/internal/http2/Http2Connection;J)V
    :try_end_23
    .catchall {:try_start_3 .. :try_end_23} :catchall_38

    move v1, v3

    .line 219
    :goto_24
    monitor-exit v0

    if-eqz v1, :cond_30

    .line 228
    iget-object p0, p0, Lokhttp3/internal/http2/Http2Connection$$special$$inlined$schedule$1;->this$0:Lokhttp3/internal/http2/Http2Connection;

    const/4 v0, 0x0

    # invokes: Lokhttp3/internal/http2/Http2Connection;->failConnection(Ljava/io/IOException;)V
    invoke-static {p0, v0}, Lokhttp3/internal/http2/Http2Connection;->access$failConnection(Lokhttp3/internal/http2/Http2Connection;Ljava/io/IOException;)V

    const-wide/16 v0, -0x1

    return-wide v0

    .line 231
    :cond_30
    iget-object v0, p0, Lokhttp3/internal/http2/Http2Connection$$special$$inlined$schedule$1;->this$0:Lokhttp3/internal/http2/Http2Connection;

    invoke-virtual {v0, v3, v2, v3}, Lokhttp3/internal/http2/Http2Connection;->writePing(ZII)V

    .line 232
    iget-wide v0, p0, Lokhttp3/internal/http2/Http2Connection$$special$$inlined$schedule$1;->$pingIntervalNanos$inlined:J

    return-wide v0

    :catchall_38
    move-exception p0

    .line 219
    monitor-exit v0

    throw p0
.end method
