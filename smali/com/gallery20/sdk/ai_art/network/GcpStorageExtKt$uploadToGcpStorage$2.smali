.class final Lcom/gallery20/sdk/ai_art/network/GcpStorageExtKt$uploadToGcpStorage$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gallery20/sdk/ai_art/network/GcpStorageExtKt;->uploadToGcpStorage([BLjava/lang/String;Lcom/gallery20/sdk/ai_art/network/ProgressCallback;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
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
    c = "com.gallery20.sdk.ai_art.network.GcpStorageExtKt$uploadToGcpStorage$2"
    f = "GcpStorageExt.kt"
    l = {
        0x22
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $callback:Lcom/gallery20/sdk/ai_art/network/ProgressCallback;

.field final synthetic $data:[B

.field final synthetic $objectNamePrefix:Ljava/lang/String;

.field private synthetic L$0:Ljava/lang/Object;

.field label:I


# direct methods
.method constructor <init>(Ljava/lang/String;[BLcom/gallery20/sdk/ai_art/network/ProgressCallback;Lkotlin/coroutines/Continuation;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[B",
            "Lcom/gallery20/sdk/ai_art/network/ProgressCallback;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/gallery20/sdk/ai_art/network/GcpStorageExtKt$uploadToGcpStorage$2;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/gallery20/sdk/ai_art/network/GcpStorageExtKt$uploadToGcpStorage$2;->$objectNamePrefix:Ljava/lang/String;

    iput-object p2, p0, Lcom/gallery20/sdk/ai_art/network/GcpStorageExtKt$uploadToGcpStorage$2;->$data:[B

    iput-object p3, p0, Lcom/gallery20/sdk/ai_art/network/GcpStorageExtKt$uploadToGcpStorage$2;->$callback:Lcom/gallery20/sdk/ai_art/network/ProgressCallback;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .registers 6
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

    new-instance v0, Lcom/gallery20/sdk/ai_art/network/GcpStorageExtKt$uploadToGcpStorage$2;

    iget-object v1, p0, Lcom/gallery20/sdk/ai_art/network/GcpStorageExtKt$uploadToGcpStorage$2;->$objectNamePrefix:Ljava/lang/String;

    iget-object v2, p0, Lcom/gallery20/sdk/ai_art/network/GcpStorageExtKt$uploadToGcpStorage$2;->$data:[B

    iget-object p0, p0, Lcom/gallery20/sdk/ai_art/network/GcpStorageExtKt$uploadToGcpStorage$2;->$callback:Lcom/gallery20/sdk/ai_art/network/ProgressCallback;

    invoke-direct {v0, v1, v2, p0, p2}, Lcom/gallery20/sdk/ai_art/network/GcpStorageExtKt$uploadToGcpStorage$2;-><init>(Ljava/lang/String;[BLcom/gallery20/sdk/ai_art/network/ProgressCallback;Lkotlin/coroutines/Continuation;)V

    iput-object p1, v0, Lcom/gallery20/sdk/ai_art/network/GcpStorageExtKt$uploadToGcpStorage$2;->L$0:Ljava/lang/Object;

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 0
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/gallery20/sdk/ai_art/network/GcpStorageExtKt$uploadToGcpStorage$2;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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
            "-",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/gallery20/sdk/ai_art/network/GcpStorageExtKt$uploadToGcpStorage$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/gallery20/sdk/ai_art/network/GcpStorageExtKt$uploadToGcpStorage$2;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/gallery20/sdk/ai_art/network/GcpStorageExtKt$uploadToGcpStorage$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 15

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 31
    iget v1, p0, Lcom/gallery20/sdk/ai_art/network/GcpStorageExtKt$uploadToGcpStorage$2;->label:I

    const/4 v2, 0x1

    const-string v3, "GcpStorageExt"

    const/4 v4, 0x0

    if-eqz v1, :cond_1e

    if-ne v1, v2, :cond_16

    iget-object v0, p0, Lcom/gallery20/sdk/ai_art/network/GcpStorageExtKt$uploadToGcpStorage$2;->L$0:Ljava/lang/Object;

    check-cast v0, Lkotlinx/coroutines/CoroutineScope;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_4e

    :cond_16
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1e
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/gallery20/sdk/ai_art/network/GcpStorageExtKt$uploadToGcpStorage$2;->L$0:Ljava/lang/Object;

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    .line 32
    const-class v1, Lcom/gallery20/sdk/ai_art/network/AIArtApiService;

    const/4 v5, 0x6

    invoke-static {v1, v4, v4, v5, v4}, Lorg/koin/java/KoinJavaComponent;->get$default(Ljava/lang/Class;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/gallery20/sdk/ai_art/network/AIArtApiService;

    .line 33
    const-string v5, "getSignedUrl PUT start"

    invoke-static {v3, v5}, Lcom/gallery20/base/LogExtKt;->ld(Ljava/lang/String;Ljava/lang/Object;)V

    .line 35
    new-instance v6, Lcom/gallery20/sdk/ai_art/network/SignedUrlParams;

    .line 38
    iget-object v10, p0, Lcom/gallery20/sdk/ai_art/network/GcpStorageExtKt$uploadToGcpStorage$2;->$objectNamePrefix:Ljava/lang/String;

    const/4 v11, 0x4

    const/4 v12, 0x0

    .line 35
    const-string v7, "PUT"

    const-string v8, "image/jpeg"

    const/4 v9, 0x0

    invoke-direct/range {v6 .. v12}, Lcom/gallery20/sdk/ai_art/network/SignedUrlParams;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 34
    iput-object p1, p0, Lcom/gallery20/sdk/ai_art/network/GcpStorageExtKt$uploadToGcpStorage$2;->L$0:Ljava/lang/Object;

    iput v2, p0, Lcom/gallery20/sdk/ai_art/network/GcpStorageExtKt$uploadToGcpStorage$2;->label:I

    invoke-interface {v1, v6, p0}, Lcom/gallery20/sdk/ai_art/network/AIArtApiService;->getSignedUrl(Lcom/gallery20/sdk/ai_art/network/SignedUrlParams;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v0, :cond_4c

    return-object v0

    :cond_4c
    move-object v0, p1

    move-object p1, v1

    .line 31
    :goto_4e
    check-cast p1, Lcom/gallery20/sdk/ai_art/network/bean/SignedUrlBean;

    .line 41
    const-string v1, "getSignedUrl PUT end"

    invoke-static {v3, v1}, Lcom/gallery20/base/LogExtKt;->ld(Ljava/lang/String;Ljava/lang/Object;)V

    .line 42
    invoke-static {v0}, Lkotlinx/coroutines/CoroutineScopeKt;->ensureActive(Lkotlinx/coroutines/CoroutineScope;)V

    .line 43
    iget-object v0, p1, Lcom/gallery20/sdk/ai_art/network/bean/SignedUrlBean;->code:Ljava/lang/Integer;

    if-eqz v0, :cond_141

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0xc8

    if-ne v0, v1, :cond_141

    iget-object v0, p1, Lcom/gallery20/sdk/ai_art/network/bean/SignedUrlBean;->success:Ljava/lang/Boolean;

    invoke-static {v2}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_141

    .line 44
    iget-object v0, p1, Lcom/gallery20/sdk/ai_art/network/bean/SignedUrlBean;->data:Lcom/gallery20/sdk/ai_art/network/bean/SignedUrlBean$DataBean;

    if-eqz v0, :cond_139

    iget-object v0, v0, Lcom/gallery20/sdk/ai_art/network/bean/SignedUrlBean$DataBean;->signedUrl:Ljava/lang/String;

    if-eqz v0, :cond_139

    invoke-static {v0}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_7f

    goto :goto_80

    :cond_7f
    move-object v0, v4

    :goto_80
    if-eqz v0, :cond_139

    .line 45
    iget-object v1, p1, Lcom/gallery20/sdk/ai_art/network/bean/SignedUrlBean;->data:Lcom/gallery20/sdk/ai_art/network/bean/SignedUrlBean$DataBean;

    if-eqz v1, :cond_131

    iget-object v1, v1, Lcom/gallery20/sdk/ai_art/network/bean/SignedUrlBean$DataBean;->objectName:Ljava/lang/String;

    if-eqz v1, :cond_131

    invoke-static {v1}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_91

    goto :goto_92

    :cond_91
    move-object v1, v4

    :goto_92
    if-eqz v1, :cond_131

    .line 46
    iget-object p1, p1, Lcom/gallery20/sdk/ai_art/network/bean/SignedUrlBean;->data:Lcom/gallery20/sdk/ai_art/network/bean/SignedUrlBean$DataBean;

    if-eqz p1, :cond_a6

    iget-object p1, p1, Lcom/gallery20/sdk/ai_art/network/bean/SignedUrlBean$DataBean;->contentType:Ljava/lang/String;

    if-eqz p1, :cond_a6

    invoke-static {p1}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_a3

    goto :goto_a4

    :cond_a3
    move-object p1, v4

    :goto_a4
    if-nez p1, :cond_a8

    :cond_a6
    const-string p1, "image/jpeg"

    .line 48
    :cond_a8
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "gcp PUT start: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/gallery20/base/LogExtKt;->ld(Ljava/lang/String;Ljava/lang/Object;)V

    .line 49
    sget-object v2, Lokhttp3/MediaType;->Companion:Lokhttp3/MediaType$Companion;

    invoke-virtual {v2, p1}, Lokhttp3/MediaType$Companion;->get(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object p1

    .line 50
    new-instance v2, Lokhttp3/Request$Builder;

    invoke-direct {v2}, Lokhttp3/Request$Builder;-><init>()V

    .line 51
    invoke-virtual {v2, v0}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v0

    .line 52
    new-instance v2, Lcom/gallery20/sdk/ai_art/network/ProgressRequestBody;

    iget-object v5, p0, Lcom/gallery20/sdk/ai_art/network/GcpStorageExtKt$uploadToGcpStorage$2;->$data:[B

    iget-object p0, p0, Lcom/gallery20/sdk/ai_art/network/GcpStorageExtKt$uploadToGcpStorage$2;->$callback:Lcom/gallery20/sdk/ai_art/network/ProgressCallback;

    invoke-direct {v2, v5, p1, p0}, Lcom/gallery20/sdk/ai_art/network/ProgressRequestBody;-><init>([BLokhttp3/MediaType;Lcom/gallery20/sdk/ai_art/network/ProgressCallback;)V

    invoke-virtual {v0, v2}, Lokhttp3/Request$Builder;->put(Lokhttp3/RequestBody;)Lokhttp3/Request$Builder;

    move-result-object p0

    .line 53
    invoke-virtual {p0}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object p0

    .line 54
    # invokes: Lcom/gallery20/sdk/ai_art/network/GcpStorageExtKt;->getGcpHttpClient()Lokhttp3/OkHttpClient;
    invoke-static {}, Lcom/gallery20/sdk/ai_art/network/GcpStorageExtKt;->access$getGcpHttpClient()Lokhttp3/OkHttpClient;

    move-result-object p1

    invoke-virtual {p1, p0}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object p0

    invoke-interface {p0}, Lokhttp3/Call;->execute()Lokhttp3/Response;

    move-result-object p0

    .line 55
    :try_start_e8
    invoke-virtual {p0}, Lokhttp3/Response;->isSuccessful()Z

    move-result p1

    if-eqz p1, :cond_10b

    .line 56
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_f0
    .catchall {:try_start_e8 .. :try_end_f0} :catchall_108

    .line 54
    invoke-static {p0, v4}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 57
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "gcp PUT end: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Lcom/gallery20/base/LogExtKt;->ld(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v1

    :catchall_108
    move-exception v0

    move-object p1, v0

    goto :goto_12b

    .line 55
    :cond_10b
    :try_start_10b
    new-instance p1, Lcom/gallery20/sdk/ai_art/network/OSSUploadException;

    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "gcp upload failed: HTTP "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lokhttp3/Response;->code()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-direct {p1, v0}, Lcom/gallery20/sdk/ai_art/network/OSSUploadException;-><init>(Ljava/lang/Throwable;)V

    throw p1
    :try_end_12b
    .catchall {:try_start_10b .. :try_end_12b} :catchall_108

    .line 54
    :goto_12b
    :try_start_12b
    throw p1
    :try_end_12c
    .catchall {:try_start_12b .. :try_end_12c} :catchall_12c

    :catchall_12c
    move-exception v0

    invoke-static {p0, p1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v0

    .line 45
    :cond_131
    new-instance p0, Ljava/io/IOException;

    const-string p1, "empty object name"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 44
    :cond_139
    new-instance p0, Ljava/io/IOException;

    const-string p1, "empty signed url"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 43
    :cond_141
    new-instance p0, Ljava/io/IOException;

    const-string p1, "get signed url error"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
