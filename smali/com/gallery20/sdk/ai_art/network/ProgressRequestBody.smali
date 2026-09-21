.class final Lcom/gallery20/sdk/ai_art/network/ProgressRequestBody;
.super Lokhttp3/RequestBody;
.source "SourceFile"


# instance fields
.field private final callback:Lcom/gallery20/sdk/ai_art/network/ProgressCallback;

.field private final data:[B

.field private final mediaType:Lokhttp3/MediaType;


# direct methods
.method public constructor <init>([BLokhttp3/MediaType;Lcom/gallery20/sdk/ai_art/network/ProgressCallback;)V
    .registers 5

    const-string v0, "data"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "mediaType"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 115
    invoke-direct {p0}, Lokhttp3/RequestBody;-><init>()V

    .line 112
    iput-object p1, p0, Lcom/gallery20/sdk/ai_art/network/ProgressRequestBody;->data:[B

    .line 113
    iput-object p2, p0, Lcom/gallery20/sdk/ai_art/network/ProgressRequestBody;->mediaType:Lokhttp3/MediaType;

    .line 114
    iput-object p3, p0, Lcom/gallery20/sdk/ai_art/network/ProgressRequestBody;->callback:Lcom/gallery20/sdk/ai_art/network/ProgressCallback;

    return-void
.end method


# virtual methods
.method public contentLength()J
    .registers 3

    .line 119
    iget-object p0, p0, Lcom/gallery20/sdk/ai_art/network/ProgressRequestBody;->data:[B

    array-length p0, p0

    int-to-long v0, p0

    return-wide v0
.end method

.method public contentType()Lokhttp3/MediaType;
    .registers 1

    .line 117
    iget-object p0, p0, Lcom/gallery20/sdk/ai_art/network/ProgressRequestBody;->mediaType:Lokhttp3/MediaType;

    return-object p0
.end method

.method public writeTo(Lokio/BufferedSink;)V
    .registers 9

    const-string v0, "sink"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 123
    iget-object v0, p0, Lcom/gallery20/sdk/ai_art/network/ProgressRequestBody;->data:[B

    array-length v0, v0

    int-to-long v0, v0

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    .line 126
    :goto_c
    iget-object v5, p0, Lcom/gallery20/sdk/ai_art/network/ProgressRequestBody;->data:[B

    array-length v6, v5

    if-ge v4, v6, :cond_27

    .line 127
    array-length v5, v5

    sub-int/2addr v5, v4

    const/16 v6, 0x2000

    invoke-static {v6, v5}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 128
    iget-object v6, p0, Lcom/gallery20/sdk/ai_art/network/ProgressRequestBody;->data:[B

    invoke-interface {p1, v6, v4, v5}, Lokio/BufferedSink;->write([BII)Lokio/BufferedSink;

    add-int/2addr v4, v5

    int-to-long v5, v5

    add-long/2addr v2, v5

    .line 131
    iget-object v5, p0, Lcom/gallery20/sdk/ai_art/network/ProgressRequestBody;->callback:Lcom/gallery20/sdk/ai_art/network/ProgressCallback;

    invoke-interface {v5, v2, v3, v0, v1}, Lcom/gallery20/sdk/ai_art/network/ProgressCallback;->onProgress(JJ)V

    goto :goto_c

    :cond_27
    return-void
.end method
