.class public final Lcom/gallery20/sdk/ai_art/network/OSSExtKt;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "OSSExt"

.field private static volatile obs:Lcom/obs/services/ObsClient; = null

.field private static volatile oss:Lcom/alibaba/sdk/android/oss/OSSClient; = null

.field private static tokenExpirationTime:J = -0x1L

.field private static uploadBucketName:Ljava/lang/String; = ""

.field private static uploadEndPoint:Ljava/lang/String; = ""

.field private static volatile userObs:Z = true


# direct methods
.method public static synthetic $r8$lambda$ICzrm4unmd4APeZwXGRAmu0W8e0(Lcom/gallery20/sdk/ai_art/network/ProgressCallback;[BLcom/obs/services/model/ProgressStatus;)V
    .registers 3

    .line 0
    invoke-static {p0, p1, p2}, Lcom/gallery20/sdk/ai_art/network/OSSExtKt;->uploadToOssCloudStorage$lambda$1(Lcom/gallery20/sdk/ai_art/network/ProgressCallback;[BLcom/obs/services/model/ProgressStatus;)V

    return-void
.end method

.method public static synthetic $r8$lambda$lRdhxrKtv8JSz4WpWz2pxbCvYfc(Lcom/gallery20/sdk/ai_art/network/ProgressCallback;Lcom/obs/services/model/ProgressStatus;)V
    .registers 2

    .line 0
    invoke-static {p0, p1}, Lcom/gallery20/sdk/ai_art/network/OSSExtKt;->downloadFromOssCloudStorage$lambda$3(Lcom/gallery20/sdk/ai_art/network/ProgressCallback;Lcom/obs/services/model/ProgressStatus;)V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public static final synthetic access$downloadFromOssCloudStorage(Ljava/lang/String;Ljava/lang/String;Lcom/gallery20/sdk/ai_art/network/ProgressCallback;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 4

    .line 1
    invoke-static {p0, p1, p2, p3}, Lcom/gallery20/sdk/ai_art/network/OSSExtKt;->downloadFromOssCloudStorage(Ljava/lang/String;Ljava/lang/String;Lcom/gallery20/sdk/ai_art/network/ProgressCallback;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getCloudStorageClient(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 1

    .line 1
    invoke-static {p0}, Lcom/gallery20/sdk/ai_art/network/OSSExtKt;->getCloudStorageClient(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getObs$p()Lcom/obs/services/ObsClient;
    .registers 1

    .line 1
    sget-object v0, Lcom/gallery20/sdk/ai_art/network/OSSExtKt;->obs:Lcom/obs/services/ObsClient;

    return-object v0
.end method

.method public static final synthetic access$getOss$p()Lcom/alibaba/sdk/android/oss/OSSClient;
    .registers 1

    .line 1
    sget-object v0, Lcom/gallery20/sdk/ai_art/network/OSSExtKt;->oss:Lcom/alibaba/sdk/android/oss/OSSClient;

    return-object v0
.end method

.method public static final synthetic access$getTokenExpirationTime$p()J
    .registers 2

    .line 1
    sget-wide v0, Lcom/gallery20/sdk/ai_art/network/OSSExtKt;->tokenExpirationTime:J

    return-wide v0
.end method

.method public static final synthetic access$getUploadEndPoint$p()Ljava/lang/String;
    .registers 1

    .line 1
    sget-object v0, Lcom/gallery20/sdk/ai_art/network/OSSExtKt;->uploadEndPoint:Ljava/lang/String;

    return-object v0
.end method

.method public static final synthetic access$getUserObs$p()Z
    .registers 1

    .line 1
    sget-boolean v0, Lcom/gallery20/sdk/ai_art/network/OSSExtKt;->userObs:Z

    return v0
.end method

.method public static final synthetic access$readBytes(Ljava/io/InputStream;JLcom/gallery20/sdk/ai_art/network/ProgressCallback;)[B
    .registers 4

    .line 1
    invoke-static {p0, p1, p2, p3}, Lcom/gallery20/sdk/ai_art/network/OSSExtKt;->readBytes(Ljava/io/InputStream;JLcom/gallery20/sdk/ai_art/network/ProgressCallback;)[B

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$setObs$p(Lcom/obs/services/ObsClient;)V
    .registers 1

    .line 1
    sput-object p0, Lcom/gallery20/sdk/ai_art/network/OSSExtKt;->obs:Lcom/obs/services/ObsClient;

    return-void
.end method

.method public static final synthetic access$setOss$p(Lcom/alibaba/sdk/android/oss/OSSClient;)V
    .registers 1

    .line 1
    sput-object p0, Lcom/gallery20/sdk/ai_art/network/OSSExtKt;->oss:Lcom/alibaba/sdk/android/oss/OSSClient;

    return-void
.end method

.method public static final synthetic access$setTokenExpirationTime$p(J)V
    .registers 2

    .line 1
    sput-wide p0, Lcom/gallery20/sdk/ai_art/network/OSSExtKt;->tokenExpirationTime:J

    return-void
.end method

.method public static final synthetic access$setUploadBucketName$p(Ljava/lang/String;)V
    .registers 1

    .line 1
    sput-object p0, Lcom/gallery20/sdk/ai_art/network/OSSExtKt;->uploadBucketName:Ljava/lang/String;

    return-void
.end method

.method public static final synthetic access$setUploadEndPoint$p(Ljava/lang/String;)V
    .registers 1

    .line 1
    sput-object p0, Lcom/gallery20/sdk/ai_art/network/OSSExtKt;->uploadEndPoint:Ljava/lang/String;

    return-void
.end method

.method public static final synthetic access$setUserObs$p(Z)V
    .registers 1

    .line 1
    sput-boolean p0, Lcom/gallery20/sdk/ai_art/network/OSSExtKt;->userObs:Z

    return-void
.end method

.method public static final synthetic access$uploadToOssCloudStorage(Ljava/lang/String;[BLcom/gallery20/sdk/ai_art/network/ProgressCallback;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 4

    .line 1
    invoke-static {p0, p1, p2, p3}, Lcom/gallery20/sdk/ai_art/network/OSSExtKt;->uploadToOssCloudStorage(Ljava/lang/String;[BLcom/gallery20/sdk/ai_art/network/ProgressCallback;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final downloadFromCloudStorage(Ljava/lang/String;Ljava/lang/String;Lcom/gallery20/sdk/ai_art/network/ProgressCallback;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/gallery20/sdk/ai_art/network/ProgressCallback;",
            "Lkotlin/coroutines/Continuation<",
            "-[B>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 165
    invoke-static {}, Lcom/gallery20/sdk/ai_art/ext/CommonExtKt;->isIndiaVersion()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 166
    invoke-static {p1, p2, p3}, Lcom/gallery20/sdk/ai_art/network/GcpStorageExtKt;->downloadFromGcpStorage(Ljava/lang/String;Lcom/gallery20/sdk/ai_art/network/ProgressCallback;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 168
    :cond_b
    invoke-static {p0}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_16

    .line 169
    invoke-static {p0, p1, p2, p3}, Lcom/gallery20/sdk/ai_art/network/OSSExtKt;->downloadFromOssCloudStorage(Ljava/lang/String;Ljava/lang/String;Lcom/gallery20/sdk/ai_art/network/ProgressCallback;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 168
    :cond_16
    new-instance p0, Ljava/io/IOException;

    const-string p1, "empty bucket name"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static final downloadFromOssCloudStorage(Ljava/lang/String;Ljava/lang/String;Lcom/gallery20/sdk/ai_art/network/ProgressCallback;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/gallery20/sdk/ai_art/network/ProgressCallback;",
            "Lkotlin/coroutines/Continuation<",
            "-[B>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p3, Lcom/gallery20/sdk/ai_art/network/OSSExtKt$downloadFromOssCloudStorage$1;

    if-eqz v0, :cond_13

    move-object v0, p3

    check-cast v0, Lcom/gallery20/sdk/ai_art/network/OSSExtKt$downloadFromOssCloudStorage$1;

    iget v1, v0, Lcom/gallery20/sdk/ai_art/network/OSSExtKt$downloadFromOssCloudStorage$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_13

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/gallery20/sdk/ai_art/network/OSSExtKt$downloadFromOssCloudStorage$1;->label:I

    goto :goto_18

    :cond_13
    new-instance v0, Lcom/gallery20/sdk/ai_art/network/OSSExtKt$downloadFromOssCloudStorage$1;

    invoke-direct {v0, p3}, Lcom/gallery20/sdk/ai_art/network/OSSExtKt$downloadFromOssCloudStorage$1;-><init>(Lkotlin/coroutines/Continuation;)V

    :goto_18
    iget-object p3, v0, Lcom/gallery20/sdk/ai_art/network/OSSExtKt$downloadFromOssCloudStorage$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 172
    iget v2, v0, Lcom/gallery20/sdk/ai_art/network/OSSExtKt$downloadFromOssCloudStorage$1;->label:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v2, :cond_52

    if-eq v2, v4, :cond_40

    if-ne v2, v3, :cond_38

    iget-object p0, v0, Lcom/gallery20/sdk/ai_art/network/OSSExtKt$downloadFromOssCloudStorage$1;->L$2:Ljava/lang/Object;

    check-cast p0, Lcom/gallery20/sdk/ai_art/network/ProgressCallback;

    iget-object p0, v0, Lcom/gallery20/sdk/ai_art/network/OSSExtKt$downloadFromOssCloudStorage$1;->L$1:Ljava/lang/Object;

    check-cast p0, Ljava/lang/String;

    iget-object p0, v0, Lcom/gallery20/sdk/ai_art/network/OSSExtKt$downloadFromOssCloudStorage$1;->L$0:Ljava/lang/Object;

    check-cast p0, Ljava/lang/String;

    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    return-object p3

    :cond_38
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_40
    iget-object p0, v0, Lcom/gallery20/sdk/ai_art/network/OSSExtKt$downloadFromOssCloudStorage$1;->L$2:Ljava/lang/Object;

    move-object p2, p0

    check-cast p2, Lcom/gallery20/sdk/ai_art/network/ProgressCallback;

    iget-object p0, v0, Lcom/gallery20/sdk/ai_art/network/OSSExtKt$downloadFromOssCloudStorage$1;->L$1:Ljava/lang/Object;

    move-object p1, p0

    check-cast p1, Ljava/lang/String;

    iget-object p0, v0, Lcom/gallery20/sdk/ai_art/network/OSSExtKt$downloadFromOssCloudStorage$1;->L$0:Ljava/lang/Object;

    check-cast p0, Ljava/lang/String;

    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_65

    :cond_52
    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 173
    iput-object p0, v0, Lcom/gallery20/sdk/ai_art/network/OSSExtKt$downloadFromOssCloudStorage$1;->L$0:Ljava/lang/Object;

    iput-object p1, v0, Lcom/gallery20/sdk/ai_art/network/OSSExtKt$downloadFromOssCloudStorage$1;->L$1:Ljava/lang/Object;

    iput-object p2, v0, Lcom/gallery20/sdk/ai_art/network/OSSExtKt$downloadFromOssCloudStorage$1;->L$2:Ljava/lang/Object;

    iput v4, v0, Lcom/gallery20/sdk/ai_art/network/OSSExtKt$downloadFromOssCloudStorage$1;->label:I

    invoke-static {v0}, Lcom/gallery20/sdk/ai_art/network/OSSExtKt;->getCloudStorageClient(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p3

    if-ne p3, v1, :cond_65

    goto/16 :goto_114

    .line 174
    :cond_65
    :goto_65
    sget-boolean v2, Lcom/gallery20/sdk/ai_art/network/OSSExtKt;->userObs:Z

    if-eqz v2, :cond_d3

    .line 175
    instance-of v0, p3, Lcom/obs/services/ObsClient;

    if-eqz v0, :cond_bc

    .line 176
    new-instance v0, Lcom/obs/services/model/GetObjectRequest;

    invoke-direct {v0, p0, p1}, Lcom/obs/services/model/GetObjectRequest;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    new-instance p0, Lcom/gallery20/sdk/ai_art/network/OSSExtKt$$ExternalSyntheticLambda0;

    invoke-direct {p0, p2}, Lcom/gallery20/sdk/ai_art/network/OSSExtKt$$ExternalSyntheticLambda0;-><init>(Lcom/gallery20/sdk/ai_art/network/ProgressCallback;)V

    invoke-virtual {v0, p0}, Lcom/obs/services/model/GetObjectRequest;->setProgressListener(Lcom/obs/services/model/ProgressListener;)V

    .line 180
    :try_start_7a
    check-cast p3, Lcom/obs/services/ObsClient;

    invoke-virtual {p3, v0}, Lcom/obs/services/AbstractObjectClient;->getObject(Lcom/obs/services/model/GetObjectRequest;)Lcom/obs/services/model/ObsObject;

    move-result-object p0
    :try_end_80
    .catch Lcom/obs/services/exception/ObsException; {:try_start_7a .. :try_end_80} :catch_b5

    .line 186
    :try_start_80
    invoke-virtual {p0}, Lcom/obs/services/model/ObsObject;->getObjectContent()Ljava/io/InputStream;

    move-result-object p0
    :try_end_84
    .catch Ljava/io/IOException; {:try_start_80 .. :try_end_84} :catch_ae

    :try_start_84
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {p0}, Lkotlin/io/ByteStreamsKt;->readBytes(Ljava/io/InputStream;)[B

    move-result-object p1
    :try_end_8b
    .catchall {:try_start_84 .. :try_end_8b} :catchall_a7

    const/4 p2, 0x0

    :try_start_8c
    invoke-static {p0, p2}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 187
    const-string p0, "OSSExt"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "onSuccess() called with: result = "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length p3, p1

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p2}, Lcom/gallery20/base/LogExtKt;->ld(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_a6
    .catch Ljava/io/IOException; {:try_start_8c .. :try_end_a6} :catch_ae

    return-object p1

    :catchall_a7
    move-exception p1

    .line 186
    :try_start_a8
    throw p1
    :try_end_a9
    .catchall {:try_start_a8 .. :try_end_a9} :catchall_a9

    :catchall_a9
    move-exception p2

    :try_start_aa
    invoke-static {p0, p1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw p2
    :try_end_ae
    .catch Ljava/io/IOException; {:try_start_aa .. :try_end_ae} :catch_ae

    :catch_ae
    move-exception p0

    .line 190
    new-instance p1, Lcom/gallery20/sdk/ai_art/network/OSSDownloadException;

    invoke-direct {p1, p0}, Lcom/gallery20/sdk/ai_art/network/OSSDownloadException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :catch_b5
    move-exception p0

    .line 182
    new-instance p1, Lcom/gallery20/sdk/ai_art/network/OSSDownloadException;

    invoke-direct {p1, p0}, Lcom/gallery20/sdk/ai_art/network/OSSDownloadException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    .line 175
    :cond_bc
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "not obs: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 195
    :cond_d3
    instance-of v2, p3, Lcom/alibaba/sdk/android/oss/OSSClient;

    if-eqz v2, :cond_116

    .line 314
    iput-object p0, v0, Lcom/gallery20/sdk/ai_art/network/OSSExtKt$downloadFromOssCloudStorage$1;->L$0:Ljava/lang/Object;

    iput-object p1, v0, Lcom/gallery20/sdk/ai_art/network/OSSExtKt$downloadFromOssCloudStorage$1;->L$1:Ljava/lang/Object;

    iput-object p2, v0, Lcom/gallery20/sdk/ai_art/network/OSSExtKt$downloadFromOssCloudStorage$1;->L$2:Ljava/lang/Object;

    iput-object p3, v0, Lcom/gallery20/sdk/ai_art/network/OSSExtKt$downloadFromOssCloudStorage$1;->L$3:Ljava/lang/Object;

    iput v3, v0, Lcom/gallery20/sdk/ai_art/network/OSSExtKt$downloadFromOssCloudStorage$1;->label:I

    .line 315
    new-instance v2, Lkotlinx/coroutines/CancellableContinuationImpl;

    invoke-static {v0}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->intercepted(Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object v3

    invoke-direct {v2, v3, v4}, Lkotlinx/coroutines/CancellableContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;I)V

    .line 321
    invoke-virtual {v2}, Lkotlinx/coroutines/CancellableContinuationImpl;->initCancellability()V

    .line 197
    new-instance v3, Lcom/alibaba/sdk/android/oss/model/GetObjectRequest;

    invoke-direct {v3, p0, p1}, Lcom/alibaba/sdk/android/oss/model/GetObjectRequest;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 198
    check-cast p3, Lcom/alibaba/sdk/android/oss/OSSClient;

    new-instance p0, Lcom/gallery20/sdk/ai_art/network/OSSExtKt$downloadFromOssCloudStorage$5$task$1;

    invoke-direct {p0, v2, p2}, Lcom/gallery20/sdk/ai_art/network/OSSExtKt$downloadFromOssCloudStorage$5$task$1;-><init>(Lkotlinx/coroutines/CancellableContinuation;Lcom/gallery20/sdk/ai_art/network/ProgressCallback;)V

    invoke-virtual {p3, v3, p0}, Lcom/alibaba/sdk/android/oss/OSSClient;->asyncGetObject(Lcom/alibaba/sdk/android/oss/model/GetObjectRequest;Lcom/alibaba/sdk/android/oss/callback/OSSCompletedCallback;)Lcom/alibaba/sdk/android/oss/internal/OSSAsyncTask;

    move-result-object p0

    .line 211
    new-instance p1, Lcom/gallery20/sdk/ai_art/network/OSSExtKt$downloadFromOssCloudStorage$5$1;

    invoke-direct {p1, p0}, Lcom/gallery20/sdk/ai_art/network/OSSExtKt$downloadFromOssCloudStorage$5$1;-><init>(Lcom/alibaba/sdk/android/oss/internal/OSSAsyncTask;)V

    invoke-interface {v2, p1}, Lkotlinx/coroutines/CancellableContinuation;->invokeOnCancellation(Lkotlin/jvm/functions/Function1;)V

    .line 323
    invoke-virtual {v2}, Lkotlinx/coroutines/CancellableContinuationImpl;->getResult()Ljava/lang/Object;

    move-result-object p0

    .line 314
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object p1

    if-ne p0, p1, :cond_112

    invoke-static {v0}, Lkotlin/coroutines/jvm/internal/DebugProbesKt;->probeCoroutineSuspended(Lkotlin/coroutines/Continuation;)V

    :cond_112
    if-ne p0, v1, :cond_115

    :goto_114
    return-object v1

    :cond_115
    return-object p0

    .line 195
    :cond_116
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "not oss: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static final downloadFromOssCloudStorage$lambda$3(Lcom/gallery20/sdk/ai_art/network/ProgressCallback;Lcom/obs/services/model/ProgressStatus;)V
    .registers 6

    const-string v0, "$callback"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 177
    invoke-interface {p1}, Lcom/obs/services/model/ProgressStatus;->getTransferredBytes()J

    move-result-wide v0

    invoke-interface {p1}, Lcom/obs/services/model/ProgressStatus;->getTotalBytes()J

    move-result-wide v2

    invoke-interface {p0, v0, v1, v2, v3}, Lcom/gallery20/sdk/ai_art/network/ProgressCallback;->onProgress(JJ)V

    return-void
.end method

.method private static final getCloudStorageClient(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 51
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v0

    new-instance v1, Lcom/gallery20/sdk/ai_art/network/OSSExtKt$getCloudStorageClient$2;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/gallery20/sdk/ai_art/network/OSSExtKt$getCloudStorageClient$2;-><init>(Lkotlin/coroutines/Continuation;)V

    invoke-static {v0, v1, p0}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private static final objectKeyDir(Ljava/lang/String;)Ljava/lang/String;
    .registers 7

    const/4 v4, 0x6

    const/4 v5, 0x0

    const/16 v1, 0x2f

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    .line 98
    invoke-static/range {v0 .. v5}, Lkotlin/text/StringsKt;->lastIndexOf$default(Ljava/lang/CharSequence;CIZILjava/lang/Object;)I

    move-result p0

    if-ltz p0, :cond_1a

    add-int/lit8 p0, p0, 0x1

    const/4 v1, 0x0

    .line 99
    invoke-virtual {v0, v1, p0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    const-string v0, "substring(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0

    :cond_1a
    const-string p0, ""

    return-object p0
.end method

.method private static final readBytes(Ljava/io/InputStream;JLcom/gallery20/sdk/ai_art/network/ProgressCallback;)[B
    .registers 11

    .line 151
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-virtual {p0}, Ljava/io/InputStream;->available()I

    move-result v1

    const/16 v2, 0x2000

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 153
    new-array v1, v2, [B

    .line 154
    invoke-virtual {p0, v1}, Ljava/io/InputStream;->read([B)I

    move-result v2

    const-wide/16 v3, 0x0

    :goto_17
    if-ltz v2, :cond_27

    const/4 v5, 0x0

    .line 156
    invoke-virtual {v0, v1, v5, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    int-to-long v5, v2

    add-long/2addr v3, v5

    .line 158
    invoke-interface {p3, v3, v4, p1, p2}, Lcom/gallery20/sdk/ai_art/network/ProgressCallback;->onProgress(JJ)V

    .line 159
    invoke-virtual {p0, v1}, Ljava/io/InputStream;->read([B)I

    move-result v2

    goto :goto_17

    .line 161
    :cond_27
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    const-string p1, "toByteArray(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public static final uploadToCloudStorage(Ljava/lang/String;[BLcom/gallery20/sdk/ai_art/network/ProgressCallback;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[B",
            "Lcom/gallery20/sdk/ai_art/network/ProgressCallback;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p3, Lcom/gallery20/sdk/ai_art/network/OSSExtKt$uploadToCloudStorage$1;

    if-eqz v0, :cond_13

    move-object v0, p3

    check-cast v0, Lcom/gallery20/sdk/ai_art/network/OSSExtKt$uploadToCloudStorage$1;

    iget v1, v0, Lcom/gallery20/sdk/ai_art/network/OSSExtKt$uploadToCloudStorage$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_13

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/gallery20/sdk/ai_art/network/OSSExtKt$uploadToCloudStorage$1;->label:I

    goto :goto_18

    :cond_13
    new-instance v0, Lcom/gallery20/sdk/ai_art/network/OSSExtKt$uploadToCloudStorage$1;

    invoke-direct {v0, p3}, Lcom/gallery20/sdk/ai_art/network/OSSExtKt$uploadToCloudStorage$1;-><init>(Lkotlin/coroutines/Continuation;)V

    :goto_18
    iget-object p3, v0, Lcom/gallery20/sdk/ai_art/network/OSSExtKt$uploadToCloudStorage$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 102
    iget v2, v0, Lcom/gallery20/sdk/ai_art/network/OSSExtKt$uploadToCloudStorage$1;->label:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v2, :cond_3c

    if-eq v2, v4, :cond_38

    if-ne v2, v3, :cond_30

    iget-object p0, v0, Lcom/gallery20/sdk/ai_art/network/OSSExtKt$uploadToCloudStorage$1;->L$0:Ljava/lang/Object;

    check-cast p0, Ljava/lang/String;

    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    return-object p0

    :cond_30
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_38
    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    return-object p3

    :cond_3c
    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 103
    invoke-static {}, Lcom/gallery20/sdk/ai_art/ext/CommonExtKt;->isIndiaVersion()Z

    move-result p3

    if-eqz p3, :cond_53

    .line 104
    invoke-static {p0}, Lcom/gallery20/sdk/ai_art/network/OSSExtKt;->objectKeyDir(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    iput v4, v0, Lcom/gallery20/sdk/ai_art/network/OSSExtKt$uploadToCloudStorage$1;->label:I

    invoke-static {p1, p0, p2, v0}, Lcom/gallery20/sdk/ai_art/network/GcpStorageExtKt;->uploadToGcpStorage([BLjava/lang/String;Lcom/gallery20/sdk/ai_art/network/ProgressCallback;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v1, :cond_52

    goto :goto_5d

    :cond_52
    return-object p0

    .line 106
    :cond_53
    iput-object p0, v0, Lcom/gallery20/sdk/ai_art/network/OSSExtKt$uploadToCloudStorage$1;->L$0:Ljava/lang/Object;

    iput v3, v0, Lcom/gallery20/sdk/ai_art/network/OSSExtKt$uploadToCloudStorage$1;->label:I

    invoke-static {p0, p1, p2, v0}, Lcom/gallery20/sdk/ai_art/network/OSSExtKt;->uploadToOssCloudStorage(Ljava/lang/String;[BLcom/gallery20/sdk/ai_art/network/ProgressCallback;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_5e

    :goto_5d
    return-object v1

    :cond_5e
    return-object p0
.end method

.method private static final uploadToOssCloudStorage(Ljava/lang/String;[BLcom/gallery20/sdk/ai_art/network/ProgressCallback;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[B",
            "Lcom/gallery20/sdk/ai_art/network/ProgressCallback;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p3, Lcom/gallery20/sdk/ai_art/network/OSSExtKt$uploadToOssCloudStorage$1;

    if-eqz v0, :cond_13

    move-object v0, p3

    check-cast v0, Lcom/gallery20/sdk/ai_art/network/OSSExtKt$uploadToOssCloudStorage$1;

    iget v1, v0, Lcom/gallery20/sdk/ai_art/network/OSSExtKt$uploadToOssCloudStorage$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_13

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/gallery20/sdk/ai_art/network/OSSExtKt$uploadToOssCloudStorage$1;->label:I

    goto :goto_18

    :cond_13
    new-instance v0, Lcom/gallery20/sdk/ai_art/network/OSSExtKt$uploadToOssCloudStorage$1;

    invoke-direct {v0, p3}, Lcom/gallery20/sdk/ai_art/network/OSSExtKt$uploadToOssCloudStorage$1;-><init>(Lkotlin/coroutines/Continuation;)V

    :goto_18
    iget-object p3, v0, Lcom/gallery20/sdk/ai_art/network/OSSExtKt$uploadToOssCloudStorage$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 110
    iget v2, v0, Lcom/gallery20/sdk/ai_art/network/OSSExtKt$uploadToOssCloudStorage$1;->label:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v2, :cond_57

    if-eq v2, v4, :cond_45

    if-ne v2, v3, :cond_3d

    iget-object p0, v0, Lcom/gallery20/sdk/ai_art/network/OSSExtKt$uploadToOssCloudStorage$1;->L$4:Ljava/lang/Object;

    check-cast p0, Ljava/lang/String;

    iget-object p0, v0, Lcom/gallery20/sdk/ai_art/network/OSSExtKt$uploadToOssCloudStorage$1;->L$2:Ljava/lang/Object;

    check-cast p0, Lcom/gallery20/sdk/ai_art/network/ProgressCallback;

    iget-object p0, v0, Lcom/gallery20/sdk/ai_art/network/OSSExtKt$uploadToOssCloudStorage$1;->L$1:Ljava/lang/Object;

    check-cast p0, [B

    iget-object p0, v0, Lcom/gallery20/sdk/ai_art/network/OSSExtKt$uploadToOssCloudStorage$1;->L$0:Ljava/lang/Object;

    check-cast p0, Ljava/lang/String;

    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_119

    :cond_3d
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_45
    iget-object p0, v0, Lcom/gallery20/sdk/ai_art/network/OSSExtKt$uploadToOssCloudStorage$1;->L$2:Ljava/lang/Object;

    move-object p2, p0

    check-cast p2, Lcom/gallery20/sdk/ai_art/network/ProgressCallback;

    iget-object p0, v0, Lcom/gallery20/sdk/ai_art/network/OSSExtKt$uploadToOssCloudStorage$1;->L$1:Ljava/lang/Object;

    move-object p1, p0

    check-cast p1, [B

    iget-object p0, v0, Lcom/gallery20/sdk/ai_art/network/OSSExtKt$uploadToOssCloudStorage$1;->L$0:Ljava/lang/Object;

    check-cast p0, Ljava/lang/String;

    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_6a

    :cond_57
    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 111
    iput-object p0, v0, Lcom/gallery20/sdk/ai_art/network/OSSExtKt$uploadToOssCloudStorage$1;->L$0:Ljava/lang/Object;

    iput-object p1, v0, Lcom/gallery20/sdk/ai_art/network/OSSExtKt$uploadToOssCloudStorage$1;->L$1:Ljava/lang/Object;

    iput-object p2, v0, Lcom/gallery20/sdk/ai_art/network/OSSExtKt$uploadToOssCloudStorage$1;->L$2:Ljava/lang/Object;

    iput v4, v0, Lcom/gallery20/sdk/ai_art/network/OSSExtKt$uploadToOssCloudStorage$1;->label:I

    invoke-static {v0}, Lcom/gallery20/sdk/ai_art/network/OSSExtKt;->getCloudStorageClient(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p3

    if-ne p3, v1, :cond_6a

    goto/16 :goto_118

    .line 112
    :cond_6a
    :goto_6a
    sget-object v2, Lcom/gallery20/sdk/ai_art/network/OSSExtKt;->uploadBucketName:Ljava/lang/String;

    invoke-static {v2}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_73

    goto :goto_74

    :cond_73
    const/4 v2, 0x0

    :goto_74
    if-eqz v2, :cond_133

    .line 113
    sget-boolean v5, Lcom/gallery20/sdk/ai_art/network/OSSExtKt;->userObs:Z

    if-eqz v5, :cond_cd

    .line 114
    instance-of v0, p3, Lcom/obs/services/ObsClient;

    if-eqz v0, :cond_b6

    .line 115
    new-instance v0, Lcom/obs/services/model/PutObjectRequest;

    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v0, v2, p0, v1}, Lcom/obs/services/model/PutObjectRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)V

    .line 116
    new-instance p0, Lcom/gallery20/sdk/ai_art/network/OSSExtKt$$ExternalSyntheticLambda1;

    invoke-direct {p0, p2, p1}, Lcom/gallery20/sdk/ai_art/network/OSSExtKt$$ExternalSyntheticLambda1;-><init>(Lcom/gallery20/sdk/ai_art/network/ProgressCallback;[B)V

    invoke-virtual {v0, p0}, Lcom/obs/services/model/PutObjectRequest;->setProgressListener(Lcom/obs/services/model/ProgressListener;)V

    .line 120
    :try_start_90
    check-cast p3, Lcom/obs/services/ObsClient;

    invoke-virtual {p3, v0}, Lcom/obs/services/AbstractObjectClient;->putObject(Lcom/obs/services/model/PutObjectRequest;)Lcom/obs/services/model/PutObjectResult;
    :try_end_95
    .catch Lcom/obs/services/exception/ObsException; {:try_start_90 .. :try_end_95} :catch_af

    .line 124
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "onSuccess() called with: result = "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length p1, p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "OSSExt"

    invoke-static {p1, p0}, Lcom/gallery20/base/LogExtKt;->ld(Ljava/lang/String;Ljava/lang/Object;)V

    .line 125
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    :catch_af
    move-exception p0

    .line 122
    new-instance p1, Lcom/gallery20/sdk/ai_art/network/OSSUploadException;

    invoke-direct {p1, p0}, Lcom/gallery20/sdk/ai_art/network/OSSUploadException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    .line 114
    :cond_b6
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "not obs: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 128
    :cond_cd
    instance-of v5, p3, Lcom/alibaba/sdk/android/oss/OSSClient;

    if-eqz v5, :cond_11c

    .line 314
    iput-object p0, v0, Lcom/gallery20/sdk/ai_art/network/OSSExtKt$uploadToOssCloudStorage$1;->L$0:Ljava/lang/Object;

    iput-object p1, v0, Lcom/gallery20/sdk/ai_art/network/OSSExtKt$uploadToOssCloudStorage$1;->L$1:Ljava/lang/Object;

    iput-object p2, v0, Lcom/gallery20/sdk/ai_art/network/OSSExtKt$uploadToOssCloudStorage$1;->L$2:Ljava/lang/Object;

    iput-object p3, v0, Lcom/gallery20/sdk/ai_art/network/OSSExtKt$uploadToOssCloudStorage$1;->L$3:Ljava/lang/Object;

    iput-object v2, v0, Lcom/gallery20/sdk/ai_art/network/OSSExtKt$uploadToOssCloudStorage$1;->L$4:Ljava/lang/Object;

    iput v3, v0, Lcom/gallery20/sdk/ai_art/network/OSSExtKt$uploadToOssCloudStorage$1;->label:I

    .line 315
    new-instance v3, Lkotlinx/coroutines/CancellableContinuationImpl;

    invoke-static {v0}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->intercepted(Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object v5

    invoke-direct {v3, v5, v4}, Lkotlinx/coroutines/CancellableContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;I)V

    .line 321
    invoke-virtual {v3}, Lkotlinx/coroutines/CancellableContinuationImpl;->initCancellability()V

    .line 131
    new-instance v4, Lcom/alibaba/sdk/android/oss/model/PutObjectRequest;

    invoke-direct {v4, v2, p0, p1}, Lcom/alibaba/sdk/android/oss/model/PutObjectRequest;-><init>(Ljava/lang/String;Ljava/lang/String;[B)V

    .line 132
    new-instance p0, Lcom/gallery20/sdk/ai_art/network/OSSExtKt$uploadToOssCloudStorage$3$1;

    invoke-direct {p0, p2}, Lcom/gallery20/sdk/ai_art/network/OSSExtKt$uploadToOssCloudStorage$3$1;-><init>(Lcom/gallery20/sdk/ai_art/network/ProgressCallback;)V

    invoke-virtual {v4, p0}, Lcom/alibaba/sdk/android/oss/model/PutObjectRequest;->setProgressCallback(Lcom/alibaba/sdk/android/oss/callback/OSSProgressCallback;)V

    .line 133
    check-cast p3, Lcom/alibaba/sdk/android/oss/OSSClient;

    new-instance p0, Lcom/gallery20/sdk/ai_art/network/OSSExtKt$uploadToOssCloudStorage$3$task$1;

    invoke-direct {p0, v3}, Lcom/gallery20/sdk/ai_art/network/OSSExtKt$uploadToOssCloudStorage$3$task$1;-><init>(Lkotlinx/coroutines/CancellableContinuation;)V

    invoke-virtual {p3, v4, p0}, Lcom/alibaba/sdk/android/oss/OSSClient;->asyncPutObject(Lcom/alibaba/sdk/android/oss/model/PutObjectRequest;Lcom/alibaba/sdk/android/oss/callback/OSSCompletedCallback;)Lcom/alibaba/sdk/android/oss/internal/OSSAsyncTask;

    move-result-object p0

    .line 144
    new-instance p1, Lcom/gallery20/sdk/ai_art/network/OSSExtKt$uploadToOssCloudStorage$3$2;

    invoke-direct {p1, p0}, Lcom/gallery20/sdk/ai_art/network/OSSExtKt$uploadToOssCloudStorage$3$2;-><init>(Lcom/alibaba/sdk/android/oss/internal/OSSAsyncTask;)V

    invoke-interface {v3, p1}, Lkotlinx/coroutines/CancellableContinuation;->invokeOnCancellation(Lkotlin/jvm/functions/Function1;)V

    .line 323
    invoke-virtual {v3}, Lkotlinx/coroutines/CancellableContinuationImpl;->getResult()Ljava/lang/Object;

    move-result-object p0

    .line 314
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object p1

    if-ne p0, p1, :cond_116

    invoke-static {v0}, Lkotlin/coroutines/jvm/internal/DebugProbesKt;->probeCoroutineSuspended(Lkotlin/coroutines/Continuation;)V

    :cond_116
    if-ne p0, v1, :cond_119

    :goto_118
    return-object v1

    .line 324
    :cond_119
    :goto_119
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    .line 128
    :cond_11c
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "not oss: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 112
    :cond_133
    new-instance p0, Ljava/io/IOException;

    const-string p1, "empty bucket name"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static final uploadToOssCloudStorage$lambda$1(Lcom/gallery20/sdk/ai_art/network/ProgressCallback;[BLcom/obs/services/model/ProgressStatus;)V
    .registers 5

    const-string v0, "$callback"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$data"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 117
    invoke-interface {p2}, Lcom/obs/services/model/ProgressStatus;->getTransferredBytes()J

    move-result-wide v0

    array-length p1, p1

    int-to-long p1, p1

    invoke-interface {p0, v0, v1, p1, p2}, Lcom/gallery20/sdk/ai_art/network/ProgressCallback;->onProgress(JJ)V

    return-void
.end method
