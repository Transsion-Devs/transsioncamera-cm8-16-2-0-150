.class public final Lcom/gallery20/sdk/ai_art/network/GcpStorageExtKt;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final GCP_CONTENT_TYPE:Ljava/lang/String; = "image/jpeg"

.field private static final GCP_HTTP_TIMEOUT_SECONDS:J = 0x1eL

.field private static final TAG:Ljava/lang/String; = "GcpStorageExt"

.field private static final gcpHttpClient$delegate:Lkotlin/Lazy;


# direct methods
.method public static synthetic $r8$lambda$5rOxaz93EJTT7GFhygCaYPfAtyU()Lokhttp3/OkHttpClient;
    .registers 1

    .line 0
    invoke-static {}, Lcom/gallery20/sdk/ai_art/network/GcpStorageExtKt;->gcpHttpClient_delegate$lambda$0()Lokhttp3/OkHttpClient;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 1

    .line 22
    new-instance v0, Lcom/gallery20/sdk/ai_art/network/GcpStorageExtKt$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/gallery20/sdk/ai_art/network/GcpStorageExtKt$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    sput-object v0, Lcom/gallery20/sdk/ai_art/network/GcpStorageExtKt;->gcpHttpClient$delegate:Lkotlin/Lazy;

    return-void
.end method

.method public static final synthetic access$getGcpHttpClient()Lokhttp3/OkHttpClient;
    .registers 1

    .line 1
    invoke-static {}, Lcom/gallery20/sdk/ai_art/network/GcpStorageExtKt;->getGcpHttpClient()Lokhttp3/OkHttpClient;

    move-result-object v0

    return-object v0
.end method

.method public static final synthetic access$readBytesWithThrottledProgress(Ljava/io/InputStream;JLcom/gallery20/sdk/ai_art/network/ProgressCallback;)[B
    .registers 4

    .line 1
    invoke-static {p0, p1, p2, p3}, Lcom/gallery20/sdk/ai_art/network/GcpStorageExtKt;->readBytesWithThrottledProgress(Ljava/io/InputStream;JLcom/gallery20/sdk/ai_art/network/ProgressCallback;)[B

    move-result-object p0

    return-object p0
.end method

.method public static final downloadFromGcpStorage(Ljava/lang/String;Lcom/gallery20/sdk/ai_art/network/ProgressCallback;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/gallery20/sdk/ai_art/network/ProgressCallback;",
            "Lkotlin/coroutines/Continuation<",
            "-[B>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 61
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v0

    new-instance v1, Lcom/gallery20/sdk/ai_art/network/GcpStorageExtKt$downloadFromGcpStorage$2;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Lcom/gallery20/sdk/ai_art/network/GcpStorageExtKt$downloadFromGcpStorage$2;-><init>(Ljava/lang/String;Lcom/gallery20/sdk/ai_art/network/ProgressCallback;Lkotlin/coroutines/Continuation;)V

    invoke-static {v0, v1, p2}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private static final gcpHttpClient_delegate$lambda$0()Lokhttp3/OkHttpClient;
    .registers 4

    .line 23
    new-instance v0, Lokhttp3/OkHttpClient$Builder;

    invoke-direct {v0}, Lokhttp3/OkHttpClient$Builder;-><init>()V

    const/4 v1, 0x1

    .line 24
    invoke-virtual {v0, v1}, Lokhttp3/OkHttpClient$Builder;->retryOnConnectionFailure(Z)Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    .line 25
    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x1e

    invoke-virtual {v0, v2, v3, v1}, Lokhttp3/OkHttpClient$Builder;->readTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    .line 26
    invoke-virtual {v0, v2, v3, v1}, Lokhttp3/OkHttpClient$Builder;->writeTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    .line 27
    invoke-virtual {v0, v2, v3, v1}, Lokhttp3/OkHttpClient$Builder;->connectTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    .line 28
    invoke-virtual {v0}, Lokhttp3/OkHttpClient$Builder;->build()Lokhttp3/OkHttpClient;

    move-result-object v0

    return-object v0
.end method

.method private static final getGcpHttpClient()Lokhttp3/OkHttpClient;
    .registers 1

    .line 22
    sget-object v0, Lcom/gallery20/sdk/ai_art/network/GcpStorageExtKt;->gcpHttpClient$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lokhttp3/OkHttpClient;

    return-object v0
.end method

.method private static final readBytesWithThrottledProgress(Ljava/io/InputStream;JLcom/gallery20/sdk/ai_art/network/ProgressCallback;)[B
    .registers 16

    .line 90
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-virtual {p0}, Ljava/io/InputStream;->available()I

    move-result v1

    const/16 v2, 0x2000

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 93
    new-array v1, v2, [B

    .line 94
    invoke-virtual {p0, v1}, Ljava/io/InputStream;->read([B)I

    move-result v2

    const-wide/16 v3, 0x0

    const/4 v5, -0x1

    move-wide v6, v3

    :goto_19
    if-ltz v2, :cond_3d

    const/4 v8, 0x0

    .line 96
    invoke-virtual {v0, v1, v8, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    int-to-long v8, v2

    add-long/2addr v6, v8

    cmp-long v2, p1, v3

    if-lez v2, :cond_27

    move-wide v8, p1

    goto :goto_28

    :cond_27
    move-wide v8, v6

    :goto_28
    const/16 v2, 0x64

    int-to-long v10, v2

    mul-long/2addr v10, v6

    .line 99
    div-long/2addr v10, v8

    long-to-int v10, v10

    invoke-static {v10, v2}, Lkotlin/ranges/RangesKt;->coerceAtMost(II)I

    move-result v2

    if-eq v2, v5, :cond_38

    .line 102
    invoke-interface {p3, v6, v7, v8, v9}, Lcom/gallery20/sdk/ai_art/network/ProgressCallback;->onProgress(JJ)V

    move v5, v2

    .line 104
    :cond_38
    invoke-virtual {p0, v1}, Ljava/io/InputStream;->read([B)I

    move-result v2

    goto :goto_19

    :cond_3d
    cmp-long p0, p1, v3

    if-lez p0, :cond_42

    goto :goto_43

    :cond_42
    move-wide p1, v6

    .line 107
    :goto_43
    invoke-interface {p3, v6, v7, p1, p2}, Lcom/gallery20/sdk/ai_art/network/ProgressCallback;->onProgress(JJ)V

    .line 108
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    const-string p1, "toByteArray(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public static final uploadToGcpStorage([BLjava/lang/String;Lcom/gallery20/sdk/ai_art/network/ProgressCallback;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Ljava/lang/String;",
            "Lcom/gallery20/sdk/ai_art/network/ProgressCallback;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 31
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v0

    new-instance v1, Lcom/gallery20/sdk/ai_art/network/GcpStorageExtKt$uploadToGcpStorage$2;

    const/4 v2, 0x0

    invoke-direct {v1, p1, p0, p2, v2}, Lcom/gallery20/sdk/ai_art/network/GcpStorageExtKt$uploadToGcpStorage$2;-><init>(Ljava/lang/String;[BLcom/gallery20/sdk/ai_art/network/ProgressCallback;Lkotlin/coroutines/Continuation;)V

    invoke-static {v0, v1, p3}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
