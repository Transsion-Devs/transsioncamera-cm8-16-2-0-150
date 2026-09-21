.class final Lcom/gallery20/sdk/ai_art/network/GcpStorageExtKt$downloadFromGcpStorage$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gallery20/sdk/ai_art/network/GcpStorageExtKt;->downloadFromGcpStorage(Ljava/lang/String;Lcom/gallery20/sdk/ai_art/network/ProgressCallback;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2;"
    }
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "com.gallery20.sdk.ai_art.network.GcpStorageExtKt$downloadFromGcpStorage$2"
    f = "GcpStorageExt.kt"
    l = {
        0x40
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $callback:Lcom/gallery20/sdk/ai_art/network/ProgressCallback;

.field final synthetic $objectName:Ljava/lang/String;

.field private synthetic L$0:Ljava/lang/Object;

.field label:I


# direct methods
.method constructor <init>(Ljava/lang/String;Lcom/gallery20/sdk/ai_art/network/ProgressCallback;Lkotlin/coroutines/Continuation;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/gallery20/sdk/ai_art/network/ProgressCallback;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/gallery20/sdk/ai_art/network/GcpStorageExtKt$downloadFromGcpStorage$2;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/gallery20/sdk/ai_art/network/GcpStorageExtKt$downloadFromGcpStorage$2;->$objectName:Ljava/lang/String;

    iput-object p2, p0, Lcom/gallery20/sdk/ai_art/network/GcpStorageExtKt$downloadFromGcpStorage$2;->$callback:Lcom/gallery20/sdk/ai_art/network/ProgressCallback;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lkotlin/coroutines/Continuation<",
            "*>;)",
            "Lkotlin/coroutines/Continuation<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/gallery20/sdk/ai_art/network/GcpStorageExtKt$downloadFromGcpStorage$2;

    iget-object v1, p0, Lcom/gallery20/sdk/ai_art/network/GcpStorageExtKt$downloadFromGcpStorage$2;->$objectName:Ljava/lang/String;

    iget-object p0, p0, Lcom/gallery20/sdk/ai_art/network/GcpStorageExtKt$downloadFromGcpStorage$2;->$callback:Lcom/gallery20/sdk/ai_art/network/ProgressCallback;

    invoke-direct {v0, v1, p0, p2}, Lcom/gallery20/sdk/ai_art/network/GcpStorageExtKt$downloadFromGcpStorage$2;-><init>(Ljava/lang/String;Lcom/gallery20/sdk/ai_art/network/ProgressCallback;Lkotlin/coroutines/Continuation;)V

    iput-object p1, v0, Lcom/gallery20/sdk/ai_art/network/GcpStorageExtKt$downloadFromGcpStorage$2;->L$0:Ljava/lang/Object;

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 0
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/gallery20/sdk/ai_art/network/GcpStorageExtKt$downloadFromGcpStorage$2;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/CoroutineScope;",
            "Lkotlin/coroutines/Continuation<",
            "-[B>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/gallery20/sdk/ai_art/network/GcpStorageExtKt$downloadFromGcpStorage$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/gallery20/sdk/ai_art/network/GcpStorageExtKt$downloadFromGcpStorage$2;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/gallery20/sdk/ai_art/network/GcpStorageExtKt$downloadFromGcpStorage$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 15

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 61
    iget v1, p0, Lcom/gallery20/sdk/ai_art/network/GcpStorageExtKt$downloadFromGcpStorage$2;->label:I

    const/4 v2, 0x1

    const-string v3, "GcpStorageExt"

    const/4 v4, 0x0

    if-eqz v1, :cond_1e

    if-ne v1, v2, :cond_16

    iget-object v0, p0, Lcom/gallery20/sdk/ai_art/network/GcpStorageExtKt$downloadFromGcpStorage$2;->L$0:Ljava/lang/Object;

    check-cast v0, Lkotlinx/coroutines/CoroutineScope;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_5f

    :cond_16
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1e
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/gallery20/sdk/ai_art/network/GcpStorageExtKt$downloadFromGcpStorage$2;->L$0:Ljava/lang/Object;

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    .line 62
    const-class v1, Lcom/gallery20/sdk/ai_art/network/AIArtApiService;

    const/4 v5, 0x6

    invoke-static {v1, v4, v4, v5, v4}, Lorg/koin/java/KoinJavaComponent;->get$default(Ljava/lang/Class;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/gallery20/sdk/ai_art/network/AIArtApiService;

    .line 63
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getSignedUrl GET start: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/gallery20/sdk/ai_art/network/GcpStorageExtKt$downloadFromGcpStorage$2;->$objectName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/gallery20/base/LogExtKt;->ld(Ljava/lang/String;Ljava/lang/Object;)V

    .line 65
    new-instance v6, Lcom/gallery20/sdk/ai_art/network/SignedUrlParams;

    .line 67
    iget-object v9, p0, Lcom/gallery20/sdk/ai_art/network/GcpStorageExtKt$downloadFromGcpStorage$2;->$objectName:Ljava/lang/String;

    const/16 v11, 0xa

    const/4 v12, 0x0

    .line 65
    const-string v7, "GET"

    const/4 v8, 0x0

    const/4 v10, 0x0

    invoke-direct/range {v6 .. v12}, Lcom/gallery20/sdk/ai_art/network/SignedUrlParams;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 64
    iput-object p1, p0, Lcom/gallery20/sdk/ai_art/network/GcpStorageExtKt$downloadFromGcpStorage$2;->L$0:Ljava/lang/Object;

    iput v2, p0, Lcom/gallery20/sdk/ai_art/network/GcpStorageExtKt$downloadFromGcpStorage$2;->label:I

    invoke-interface {v1, v6, p0}, Lcom/gallery20/sdk/ai_art/network/AIArtApiService;->getSignedUrl(Lcom/gallery20/sdk/ai_art/network/SignedUrlParams;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v0, :cond_5d

    return-object v0

    :cond_5d
    move-object v0, p1

    move-object p1, v1

    .line 61
    :goto_5f
    check-cast p1, Lcom/gallery20/sdk/ai_art/network/bean/SignedUrlBean;

    .line 70
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getSignedUrl GET end: "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/gallery20/sdk/ai_art/network/GcpStorageExtKt$downloadFromGcpStorage$2;->$objectName:Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/gallery20/base/LogExtKt;->ld(Ljava/lang/String;Ljava/lang/Object;)V

    .line 71
    invoke-static {v0}, Lkotlinx/coroutines/CoroutineScopeKt;->ensureActive(Lkotlinx/coroutines/CoroutineScope;)V

    .line 72
    iget-object v0, p1, Lcom/gallery20/sdk/ai_art/network/bean/SignedUrlBean;->code:Ljava/lang/Integer;

    if-eqz v0, :cond_163

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0xc8

    if-ne v0, v1, :cond_163

    iget-object v0, p1, Lcom/gallery20/sdk/ai_art/network/bean/SignedUrlBean;->success:Ljava/lang/Boolean;

    invoke-static {v2}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_163

    .line 73
    iget-object p1, p1, Lcom/gallery20/sdk/ai_art/network/bean/SignedUrlBean;->data:Lcom/gallery20/sdk/ai_art/network/bean/SignedUrlBean$DataBean;

    if-eqz p1, :cond_15b

    iget-object p1, p1, Lcom/gallery20/sdk/ai_art/network/bean/SignedUrlBean$DataBean;->signedUrl:Ljava/lang/String;

    if-eqz p1, :cond_15b

    invoke-static {p1}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_a1

    goto :goto_a2

    :cond_a1
    move-object p1, v4

    :goto_a2
    if-eqz p1, :cond_15b

    .line 75
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "gcp GET start: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/gallery20/sdk/ai_art/network/GcpStorageExtKt$downloadFromGcpStorage$2;->$objectName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/gallery20/base/LogExtKt;->ld(Ljava/lang/String;Ljava/lang/Object;)V

    .line 76
    new-instance v0, Lokhttp3/Request$Builder;

    invoke-direct {v0}, Lokhttp3/Request$Builder;-><init>()V

    invoke-virtual {v0, p1}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lokhttp3/Request$Builder;->get()Lokhttp3/Request$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object p1

    .line 77
    # invokes: Lcom/gallery20/sdk/ai_art/network/GcpStorageExtKt;->getGcpHttpClient()Lokhttp3/OkHttpClient;
    invoke-static {}, Lcom/gallery20/sdk/ai_art/network/GcpStorageExtKt;->access$getGcpHttpClient()Lokhttp3/OkHttpClient;

    move-result-object v0

    invoke-virtual {v0, p1}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object p1

    invoke-interface {p1}, Lokhttp3/Call;->execute()Lokhttp3/Response;

    move-result-object p1

    iget-object v0, p0, Lcom/gallery20/sdk/ai_art/network/GcpStorageExtKt$downloadFromGcpStorage$2;->$callback:Lcom/gallery20/sdk/ai_art/network/ProgressCallback;

    iget-object p0, p0, Lcom/gallery20/sdk/ai_art/network/GcpStorageExtKt$downloadFromGcpStorage$2;->$objectName:Ljava/lang/String;

    .line 78
    :try_start_db
    invoke-virtual {p1}, Lokhttp3/Response;->isSuccessful()Z

    move-result v1

    if-eqz v1, :cond_135

    .line 79
    invoke-virtual {p1}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v1

    if-eqz v1, :cond_128

    .line 80
    invoke-virtual {v1}, Lokhttp3/ResponseBody;->contentLength()J

    move-result-wide v5

    const-wide/16 v7, 0x0

    invoke-static {v5, v6, v7, v8}, Lkotlin/ranges/RangesKt;->coerceAtLeast(JJ)J

    move-result-wide v5

    .line 81
    invoke-virtual {v1}, Lokhttp3/ResponseBody;->byteStream()Ljava/io/InputStream;

    move-result-object v1
    :try_end_f5
    .catchall {:try_start_db .. :try_end_f5} :catchall_11d

    .line 82
    :try_start_f5
    # invokes: Lcom/gallery20/sdk/ai_art/network/GcpStorageExtKt;->readBytesWithThrottledProgress(Ljava/io/InputStream;JLcom/gallery20/sdk/ai_art/network/ProgressCallback;)[B
    invoke-static {v1, v5, v6, v0}, Lcom/gallery20/sdk/ai_art/network/GcpStorageExtKt;->access$readBytesWithThrottledProgress(Ljava/io/InputStream;JLcom/gallery20/sdk/ai_art/network/ProgressCallback;)[B

    move-result-object v0

    .line 83
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "gcp GET end: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ", size="

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length p0, v0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Lcom/gallery20/base/LogExtKt;->ld(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_116
    .catchall {:try_start_f5 .. :try_end_116} :catchall_120

    .line 84
    :try_start_116
    invoke-static {v1, v4}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_119
    .catchall {:try_start_116 .. :try_end_119} :catchall_11d

    invoke-static {p1, v4}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    return-object v0

    :catchall_11d
    move-exception v0

    move-object p0, v0

    goto :goto_155

    :catchall_120
    move-exception v0

    move-object p0, v0

    :try_start_122
    throw p0
    :try_end_123
    .catchall {:try_start_122 .. :try_end_123} :catchall_123

    :catchall_123
    move-exception v0

    :try_start_124
    invoke-static {v1, p0}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v0

    .line 79
    :cond_128
    new-instance p0, Lcom/gallery20/sdk/ai_art/network/OSSDownloadException;

    new-instance v0, Ljava/io/IOException;

    const-string v1, "empty response body"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/gallery20/sdk/ai_art/network/OSSDownloadException;-><init>(Ljava/lang/Throwable;)V

    throw p0

    .line 78
    :cond_135
    new-instance p0, Lcom/gallery20/sdk/ai_art/network/OSSDownloadException;

    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "gcp download failed: HTTP "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lokhttp3/Response;->code()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/gallery20/sdk/ai_art/network/OSSDownloadException;-><init>(Ljava/lang/Throwable;)V

    throw p0
    :try_end_155
    .catchall {:try_start_124 .. :try_end_155} :catchall_11d

    .line 84
    :goto_155
    :try_start_155
    throw p0
    :try_end_156
    .catchall {:try_start_155 .. :try_end_156} :catchall_156

    :catchall_156
    move-exception v0

    invoke-static {p1, p0}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v0

    .line 73
    :cond_15b
    new-instance p0, Ljava/io/IOException;

    const-string p1, "empty signed url"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 72
    :cond_163
    new-instance p0, Ljava/io/IOException;

    const-string p1, "get signed url error"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
