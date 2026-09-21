.class final Lcom/gallery20/sdk/ai_art/network/OSSExtKt$getCloudStorageClient$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gallery20/sdk/ai_art/network/OSSExtKt;->getCloudStorageClient(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
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
    c = "com.gallery20.sdk.ai_art.network.OSSExtKt$getCloudStorageClient$2"
    f = "OSSExt.kt"
    l = {
        0x37
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field private synthetic L$0:Ljava/lang/Object;

.field label:I


# direct methods
.method constructor <init>(Lkotlin/coroutines/Continuation;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/gallery20/sdk/ai_art/network/OSSExtKt$getCloudStorageClient$2;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x2

    invoke-direct {p0, v0, p1}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .registers 3
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

    new-instance p0, Lcom/gallery20/sdk/ai_art/network/OSSExtKt$getCloudStorageClient$2;

    invoke-direct {p0, p2}, Lcom/gallery20/sdk/ai_art/network/OSSExtKt$getCloudStorageClient$2;-><init>(Lkotlin/coroutines/Continuation;)V

    iput-object p1, p0, Lcom/gallery20/sdk/ai_art/network/OSSExtKt$getCloudStorageClient$2;->L$0:Ljava/lang/Object;

    return-object p0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 0
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/gallery20/sdk/ai_art/network/OSSExtKt$getCloudStorageClient$2;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/gallery20/sdk/ai_art/network/OSSExtKt$getCloudStorageClient$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/gallery20/sdk/ai_art/network/OSSExtKt$getCloudStorageClient$2;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/gallery20/sdk/ai_art/network/OSSExtKt$getCloudStorageClient$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 12

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 51
    iget v1, p0, Lcom/gallery20/sdk/ai_art/network/OSSExtKt$getCloudStorageClient$2;->label:I

    const-string v2, "OSSExt"

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v1, :cond_1e

    if-ne v1, v3, :cond_16

    iget-object p0, p0, Lcom/gallery20/sdk/ai_art/network/OSSExtKt$getCloudStorageClient$2;->L$0:Ljava/lang/Object;

    check-cast p0, Lkotlinx/coroutines/CoroutineScope;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_63

    :cond_16
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1e
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/gallery20/sdk/ai_art/network/OSSExtKt$getCloudStorageClient$2;->L$0:Ljava/lang/Object;

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    .line 52
    # getter for: Lcom/gallery20/sdk/ai_art/network/OSSExtKt;->tokenExpirationTime:J
    invoke-static {}, Lcom/gallery20/sdk/ai_art/network/OSSExtKt;->access$getTokenExpirationTime$p()J

    move-result-wide v5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    cmp-long v1, v5, v7

    if-lez v1, :cond_47

    # getter for: Lcom/gallery20/sdk/ai_art/network/OSSExtKt;->userObs:Z
    invoke-static {}, Lcom/gallery20/sdk/ai_art/network/OSSExtKt;->access$getUserObs$p()Z

    move-result p0

    if-eqz p0, :cond_3f

    # getter for: Lcom/gallery20/sdk/ai_art/network/OSSExtKt;->obs:Lcom/obs/services/ObsClient;
    invoke-static {}, Lcom/gallery20/sdk/ai_art/network/OSSExtKt;->access$getObs$p()Lcom/obs/services/ObsClient;

    move-result-object p0

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    return-object p0

    :cond_3f
    # getter for: Lcom/gallery20/sdk/ai_art/network/OSSExtKt;->oss:Lcom/alibaba/sdk/android/oss/OSSClient;
    invoke-static {}, Lcom/gallery20/sdk/ai_art/network/OSSExtKt;->access$getOss$p()Lcom/alibaba/sdk/android/oss/OSSClient;

    move-result-object p0

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    return-object p0

    .line 53
    :cond_47
    const-class v1, Lcom/gallery20/sdk/ai_art/network/AIArtApiService;

    const/4 v5, 0x6

    invoke-static {v1, v4, v4, v5, v4}, Lorg/koin/java/KoinJavaComponent;->get$default(Ljava/lang/Class;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/gallery20/sdk/ai_art/network/AIArtApiService;

    .line 54
    const-string v5, "get token start"

    invoke-static {v2, v5}, Lcom/gallery20/base/LogExtKt;->ld(Ljava/lang/String;Ljava/lang/Object;)V

    .line 55
    iput-object p1, p0, Lcom/gallery20/sdk/ai_art/network/OSSExtKt$getCloudStorageClient$2;->L$0:Ljava/lang/Object;

    iput v3, p0, Lcom/gallery20/sdk/ai_art/network/OSSExtKt$getCloudStorageClient$2;->label:I

    invoke-interface {v1, p0}, Lcom/gallery20/sdk/ai_art/network/AIArtApiService;->getToken(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v0, :cond_60

    return-object v0

    :cond_60
    move-object v9, p1

    move-object p1, p0

    move-object p0, v9

    .line 51
    :goto_63
    check-cast p1, Lcom/gallery20/sdk/ai_art/network/bean/TokenBean;

    .line 56
    const-string v0, "get token end"

    invoke-static {v2, v0}, Lcom/gallery20/base/LogExtKt;->ld(Ljava/lang/String;Ljava/lang/Object;)V

    .line 57
    invoke-static {p0}, Lkotlinx/coroutines/CoroutineScopeKt;->ensureActive(Lkotlinx/coroutines/CoroutineScope;)V

    .line 58
    iget-object p0, p1, Lcom/gallery20/sdk/ai_art/network/bean/TokenBean;->code:Ljava/lang/Integer;

    if-eqz p0, :cond_1a8

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    const/16 v0, 0xc8

    if-ne p0, v0, :cond_1a8

    iget-object p0, p1, Lcom/gallery20/sdk/ai_art/network/bean/TokenBean;->data:Lcom/gallery20/sdk/ai_art/network/bean/TokenBean$DataBean;

    if-eqz p0, :cond_80

    iget-object p0, p0, Lcom/gallery20/sdk/ai_art/network/bean/TokenBean$DataBean;->accessKeyId:Ljava/lang/String;

    goto :goto_81

    :cond_80
    move-object p0, v4

    :goto_81
    if-eqz p0, :cond_1a8

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result p0

    if-eqz p0, :cond_1a8

    iget-object p0, p1, Lcom/gallery20/sdk/ai_art/network/bean/TokenBean;->data:Lcom/gallery20/sdk/ai_art/network/bean/TokenBean$DataBean;

    if-eqz p0, :cond_90

    iget-object p0, p0, Lcom/gallery20/sdk/ai_art/network/bean/TokenBean$DataBean;->accessKeySecret:Ljava/lang/String;

    goto :goto_91

    :cond_90
    move-object p0, v4

    :goto_91
    if-eqz p0, :cond_1a8

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result p0

    if-eqz p0, :cond_1a8

    iget-object p0, p1, Lcom/gallery20/sdk/ai_art/network/bean/TokenBean;->data:Lcom/gallery20/sdk/ai_art/network/bean/TokenBean$DataBean;

    if-eqz p0, :cond_a0

    iget-object p0, p0, Lcom/gallery20/sdk/ai_art/network/bean/TokenBean$DataBean;->securityToken:Ljava/lang/String;

    goto :goto_a1

    :cond_a0
    move-object p0, v4

    :goto_a1
    if-eqz p0, :cond_1a8

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result p0

    if-eqz p0, :cond_1a8

    .line 59
    iget-object p0, p1, Lcom/gallery20/sdk/ai_art/network/bean/TokenBean;->data:Lcom/gallery20/sdk/ai_art/network/bean/TokenBean$DataBean;

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/gallery20/sdk/ai_art/network/bean/TokenBean$DataBean;->accessKeyId:Ljava/lang/String;

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 60
    iget-object v0, p1, Lcom/gallery20/sdk/ai_art/network/bean/TokenBean;->data:Lcom/gallery20/sdk/ai_art/network/bean/TokenBean$DataBean;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v0, v0, Lcom/gallery20/sdk/ai_art/network/bean/TokenBean$DataBean;->accessKeySecret:Ljava/lang/String;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 61
    iget-object v1, p1, Lcom/gallery20/sdk/ai_art/network/bean/TokenBean;->data:Lcom/gallery20/sdk/ai_art/network/bean/TokenBean$DataBean;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v1, v1, Lcom/gallery20/sdk/ai_art/network/bean/TokenBean$DataBean;->securityToken:Ljava/lang/String;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 62
    iget-object v2, p1, Lcom/gallery20/sdk/ai_art/network/bean/TokenBean;->data:Lcom/gallery20/sdk/ai_art/network/bean/TokenBean$DataBean;

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v2, v2, Lcom/gallery20/sdk/ai_art/network/bean/TokenBean$DataBean;->expiration:Ljava/lang/String;

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {v2}, Ljava/time/Instant;->parse(Ljava/lang/CharSequence;)Ljava/time/Instant;

    move-result-object v2

    invoke-virtual {v2}, Ljava/time/Instant;->toEpochMilli()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/gallery20/sdk/ai_art/network/OSSExtKt;->access$setTokenExpirationTime$p(J)V

    .line 63
    iget-object v2, p1, Lcom/gallery20/sdk/ai_art/network/bean/TokenBean;->data:Lcom/gallery20/sdk/ai_art/network/bean/TokenBean$DataBean;

    if-eqz v2, :cond_1a0

    iget-object v2, v2, Lcom/gallery20/sdk/ai_art/network/bean/TokenBean$DataBean;->bucketName:Ljava/lang/String;

    if-eqz v2, :cond_1a0

    invoke-static {v2}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_eb

    goto :goto_ec

    :cond_eb
    move-object v2, v4

    :goto_ec
    if-eqz v2, :cond_1a0

    invoke-static {v2}, Lcom/gallery20/sdk/ai_art/network/OSSExtKt;->access$setUploadBucketName$p(Ljava/lang/String;)V

    .line 64
    iget-object v2, p1, Lcom/gallery20/sdk/ai_art/network/bean/TokenBean;->data:Lcom/gallery20/sdk/ai_art/network/bean/TokenBean$DataBean;

    const-string v3, "empty upload end point"

    if-eqz v2, :cond_19a

    iget-object v2, v2, Lcom/gallery20/sdk/ai_art/network/bean/TokenBean$DataBean;->endpoint:Ljava/lang/String;

    if-eqz v2, :cond_19a

    invoke-static {v2}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_102

    goto :goto_103

    :cond_102
    move-object v2, v4

    :goto_103
    if-eqz v2, :cond_19a

    invoke-static {v2}, Lcom/gallery20/sdk/ai_art/network/OSSExtKt;->access$setUploadEndPoint$p(Ljava/lang/String;)V

    .line 66
    iget-object p1, p1, Lcom/gallery20/sdk/ai_art/network/bean/TokenBean;->data:Lcom/gallery20/sdk/ai_art/network/bean/TokenBean$DataBean;

    if-eqz p1, :cond_10f

    iget-object p1, p1, Lcom/gallery20/sdk/ai_art/network/bean/TokenBean$DataBean;->type:Ljava/lang/String;

    goto :goto_110

    :cond_10f
    move-object p1, v4

    :goto_110
    const-string v2, "obs"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    invoke-static {p1}, Lcom/gallery20/sdk/ai_art/network/OSSExtKt;->access$setUserObs$p(Z)V

    .line 67
    # getter for: Lcom/gallery20/sdk/ai_art/network/OSSExtKt;->userObs:Z
    invoke-static {}, Lcom/gallery20/sdk/ai_art/network/OSSExtKt;->access$getUserObs$p()Z

    move-result p1

    if-eqz p1, :cond_13c

    .line 68
    # getter for: Lcom/gallery20/sdk/ai_art/network/OSSExtKt;->obs:Lcom/obs/services/ObsClient;
    invoke-static {}, Lcom/gallery20/sdk/ai_art/network/OSSExtKt;->access$getObs$p()Lcom/obs/services/ObsClient;

    move-result-object p1

    if-eqz p1, :cond_128

    invoke-virtual {p1}, Lcom/obs/services/AbstractClient;->close()V

    .line 69
    :cond_128
    new-instance p1, Lcom/obs/services/ObsClient;

    # getter for: Lcom/gallery20/sdk/ai_art/network/OSSExtKt;->uploadEndPoint:Ljava/lang/String;
    invoke-static {}, Lcom/gallery20/sdk/ai_art/network/OSSExtKt;->access$getUploadEndPoint$p()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p1, p0, v0, v1, v2}, Lcom/obs/services/ObsClient;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/gallery20/sdk/ai_art/network/OSSExtKt;->access$setObs$p(Lcom/obs/services/ObsClient;)V

    .line 70
    # getter for: Lcom/gallery20/sdk/ai_art/network/OSSExtKt;->obs:Lcom/obs/services/ObsClient;
    invoke-static {}, Lcom/gallery20/sdk/ai_art/network/OSSExtKt;->access$getObs$p()Lcom/obs/services/ObsClient;

    move-result-object p0

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    return-object p0

    .line 73
    :cond_13c
    # getter for: Lcom/gallery20/sdk/ai_art/network/OSSExtKt;->oss:Lcom/alibaba/sdk/android/oss/OSSClient;
    invoke-static {}, Lcom/gallery20/sdk/ai_art/network/OSSExtKt;->access$getOss$p()Lcom/alibaba/sdk/android/oss/OSSClient;

    move-result-object p1

    if-eqz p1, :cond_159

    .line 74
    # getter for: Lcom/gallery20/sdk/ai_art/network/OSSExtKt;->oss:Lcom/alibaba/sdk/android/oss/OSSClient;
    invoke-static {}, Lcom/gallery20/sdk/ai_art/network/OSSExtKt;->access$getOss$p()Lcom/alibaba/sdk/android/oss/OSSClient;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    new-instance v2, Lcom/alibaba/sdk/android/oss/common/auth/OSSStsTokenCredentialProvider;

    invoke-direct {v2, p0, v0, v1}, Lcom/alibaba/sdk/android/oss/common/auth/OSSStsTokenCredentialProvider;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v2}, Lcom/alibaba/sdk/android/oss/OSSClient;->updateCredentialProvider(Lcom/alibaba/sdk/android/oss/common/auth/OSSCredentialProvider;)V

    .line 75
    # getter for: Lcom/gallery20/sdk/ai_art/network/OSSExtKt;->oss:Lcom/alibaba/sdk/android/oss/OSSClient;
    invoke-static {}, Lcom/gallery20/sdk/ai_art/network/OSSExtKt;->access$getOss$p()Lcom/alibaba/sdk/android/oss/OSSClient;

    move-result-object p0

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    return-object p0

    .line 78
    :cond_159
    # getter for: Lcom/gallery20/sdk/ai_art/network/OSSExtKt;->uploadEndPoint:Ljava/lang/String;
    invoke-static {}, Lcom/gallery20/sdk/ai_art/network/OSSExtKt;->access$getUploadEndPoint$p()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_164

    move-object v4, p1

    :cond_164
    if-eqz v4, :cond_194

    .line 79
    new-instance p1, Lcom/alibaba/sdk/android/oss/ClientConfiguration;

    invoke-direct {p1}, Lcom/alibaba/sdk/android/oss/ClientConfiguration;-><init>()V

    const/16 v2, 0x7530

    .line 80
    invoke-virtual {p1, v2}, Lcom/alibaba/sdk/android/oss/ClientConfiguration;->setConnectionTimeout(I)V

    .line 81
    invoke-virtual {p1, v2}, Lcom/alibaba/sdk/android/oss/ClientConfiguration;->setSocketTimeout(I)V

    const/4 v2, 0x5

    .line 82
    invoke-virtual {p1, v2}, Lcom/alibaba/sdk/android/oss/ClientConfiguration;->setMaxConcurrentRequest(I)V

    const/4 v2, 0x2

    .line 83
    invoke-virtual {p1, v2}, Lcom/alibaba/sdk/android/oss/ClientConfiguration;->setMaxErrorRetry(I)V

    .line 85
    new-instance v2, Lcom/alibaba/sdk/android/oss/OSSClient;

    invoke-static {}, Lcom/gallery20/base/base_app/BaseSdkKt;->getApp()Landroid/content/Context;

    move-result-object v3

    new-instance v5, Lcom/alibaba/sdk/android/oss/common/auth/OSSStsTokenCredentialProvider;

    invoke-direct {v5, p0, v0, v1}, Lcom/alibaba/sdk/android/oss/common/auth/OSSStsTokenCredentialProvider;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v2, v3, v4, v5, p1}, Lcom/alibaba/sdk/android/oss/OSSClient;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/alibaba/sdk/android/oss/common/auth/OSSCredentialProvider;Lcom/alibaba/sdk/android/oss/ClientConfiguration;)V

    invoke-static {v2}, Lcom/gallery20/sdk/ai_art/network/OSSExtKt;->access$setOss$p(Lcom/alibaba/sdk/android/oss/OSSClient;)V

    .line 86
    # getter for: Lcom/gallery20/sdk/ai_art/network/OSSExtKt;->oss:Lcom/alibaba/sdk/android/oss/OSSClient;
    invoke-static {}, Lcom/gallery20/sdk/ai_art/network/OSSExtKt;->access$getOss$p()Lcom/alibaba/sdk/android/oss/OSSClient;

    move-result-object p0

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    return-object p0

    .line 78
    :cond_194
    new-instance p0, Ljava/io/IOException;

    invoke-direct {p0, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 64
    :cond_19a
    new-instance p0, Ljava/io/IOException;

    invoke-direct {p0, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 63
    :cond_1a0
    new-instance p0, Ljava/io/IOException;

    const-string p1, "empty upload bucket name"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 58
    :cond_1a8
    new-instance p0, Ljava/io/IOException;

    const-string p1, "get token error"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
