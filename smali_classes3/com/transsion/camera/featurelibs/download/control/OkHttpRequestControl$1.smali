.class Lcom/transsion/camera/featurelibs/download/control/OkHttpRequestControl$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lokhttp3/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/camera/featurelibs/download/control/OkHttpRequestControl;->createResponseCallback(Lcom/transsion/camera/featurelibs/download/Request;Lokhttp3/OkHttpClient;)Lokhttp3/Callback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field mRetryCount:I

.field final synthetic this$0:Lcom/transsion/camera/featurelibs/download/control/OkHttpRequestControl;

.field final synthetic val$client:Lokhttp3/OkHttpClient;

.field final synthetic val$request:Lcom/transsion/camera/featurelibs/download/Request;


# direct methods
.method constructor <init>(Lcom/transsion/camera/featurelibs/download/control/OkHttpRequestControl;Lcom/transsion/camera/featurelibs/download/Request;Lokhttp3/OkHttpClient;)V
    .registers 4

    .line 190
    iput-object p1, p0, Lcom/transsion/camera/featurelibs/download/control/OkHttpRequestControl$1;->this$0:Lcom/transsion/camera/featurelibs/download/control/OkHttpRequestControl;

    iput-object p2, p0, Lcom/transsion/camera/featurelibs/download/control/OkHttpRequestControl$1;->val$request:Lcom/transsion/camera/featurelibs/download/Request;

    iput-object p3, p0, Lcom/transsion/camera/featurelibs/download/control/OkHttpRequestControl$1;->val$client:Lokhttp3/OkHttpClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 191
    iput p1, p0, Lcom/transsion/camera/featurelibs/download/control/OkHttpRequestControl$1;->mRetryCount:I

    return-void
.end method


# virtual methods
.method public onFailure(Lokhttp3/Call;Ljava/io/IOException;)V
    .registers 6

    .line 194
    invoke-virtual {p2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 195
    invoke-static {}, Lcom/transsion/camera/featurelibs/download/control/OkHttpRequestControl;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onFailure: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/transsion/camera/featurelibs/download/control/OkHttpRequestControl$1;->mRetryCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", call: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 199
    instance-of v0, p2, Ljava/net/SocketTimeoutException;

    const/4 v1, 0x0

    if-eqz v0, :cond_57

    .line 200
    iget p2, p0, Lcom/transsion/camera/featurelibs/download/control/OkHttpRequestControl$1;->mRetryCount:I

    iget-object v0, p0, Lcom/transsion/camera/featurelibs/download/control/OkHttpRequestControl$1;->val$request:Lcom/transsion/camera/featurelibs/download/Request;

    invoke-virtual {v0}, Lcom/transsion/camera/featurelibs/download/Request;->getMaxRetryTime()I

    move-result v0

    if-ge p2, v0, :cond_4c

    .line 201
    iget-object p2, p0, Lcom/transsion/camera/featurelibs/download/control/OkHttpRequestControl$1;->this$0:Lcom/transsion/camera/featurelibs/download/control/OkHttpRequestControl;

    iget-object v0, p0, Lcom/transsion/camera/featurelibs/download/control/OkHttpRequestControl$1;->val$client:Lokhttp3/OkHttpClient;

    iget-object v1, p0, Lcom/transsion/camera/featurelibs/download/control/OkHttpRequestControl$1;->val$request:Lcom/transsion/camera/featurelibs/download/Request;

    invoke-static {p2, v0, p1, v1, p0}, Lcom/transsion/camera/featurelibs/download/control/OkHttpRequestControl;->-$$Nest$mretryWhenException(Lcom/transsion/camera/featurelibs/download/control/OkHttpRequestControl;Lokhttp3/OkHttpClient;Lokhttp3/Call;Lcom/transsion/camera/featurelibs/download/Request;Lokhttp3/Callback;)V

    .line 202
    iget p1, p0, Lcom/transsion/camera/featurelibs/download/control/OkHttpRequestControl$1;->mRetryCount:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/transsion/camera/featurelibs/download/control/OkHttpRequestControl$1;->mRetryCount:I

    return-void

    .line 204
    :cond_4c
    iget-object p1, p0, Lcom/transsion/camera/featurelibs/download/control/OkHttpRequestControl$1;->this$0:Lcom/transsion/camera/featurelibs/download/control/OkHttpRequestControl;

    iget-object p0, p0, Lcom/transsion/camera/featurelibs/download/control/OkHttpRequestControl$1;->val$request:Lcom/transsion/camera/featurelibs/download/Request;

    const/4 p2, 0x4

    const-string v0, "retry time over."

    invoke-static {p1, p0, p2, v1, v0}, Lcom/transsion/camera/featurelibs/download/control/OkHttpRequestControl;->-$$Nest$monError(Lcom/transsion/camera/featurelibs/download/control/OkHttpRequestControl;Lcom/transsion/camera/featurelibs/download/Request;IILjava/lang/String;)V

    return-void

    .line 207
    :cond_57
    instance-of p1, p2, Ljavax/net/ssl/SSLHandshakeException;

    if-eqz p1, :cond_67

    .line 208
    iget-object p1, p0, Lcom/transsion/camera/featurelibs/download/control/OkHttpRequestControl$1;->this$0:Lcom/transsion/camera/featurelibs/download/control/OkHttpRequestControl;

    iget-object p0, p0, Lcom/transsion/camera/featurelibs/download/control/OkHttpRequestControl$1;->val$request:Lcom/transsion/camera/featurelibs/download/Request;

    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p0, v1, v1, p2}, Lcom/transsion/camera/featurelibs/download/control/OkHttpRequestControl;->-$$Nest$monError(Lcom/transsion/camera/featurelibs/download/control/OkHttpRequestControl;Lcom/transsion/camera/featurelibs/download/Request;IILjava/lang/String;)V

    return-void

    .line 210
    :cond_67
    iget-object p1, p0, Lcom/transsion/camera/featurelibs/download/control/OkHttpRequestControl$1;->this$0:Lcom/transsion/camera/featurelibs/download/control/OkHttpRequestControl;

    iget-object p0, p0, Lcom/transsion/camera/featurelibs/download/control/OkHttpRequestControl$1;->val$request:Lcom/transsion/camera/featurelibs/download/Request;

    const/4 v0, 0x3

    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p0, v0, v1, p2}, Lcom/transsion/camera/featurelibs/download/control/OkHttpRequestControl;->-$$Nest$monError(Lcom/transsion/camera/featurelibs/download/control/OkHttpRequestControl;Lcom/transsion/camera/featurelibs/download/Request;IILjava/lang/String;)V

    return-void
.end method

.method public onResponse(Lokhttp3/Call;Lokhttp3/Response;)V
    .registers 9

    .line 216
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const/4 v2, 0x0

    .line 218
    :try_start_5
    invoke-interface {p1}, Lokhttp3/Call;->isCanceled()Z

    move-result v3

    if-eqz v3, :cond_18

    .line 219
    iget-object p2, p0, Lcom/transsion/camera/featurelibs/download/control/OkHttpRequestControl$1;->this$0:Lcom/transsion/camera/featurelibs/download/control/OkHttpRequestControl;

    iget-object v3, p0, Lcom/transsion/camera/featurelibs/download/control/OkHttpRequestControl$1;->val$request:Lcom/transsion/camera/featurelibs/download/Request;

    const-string v4, "request is canceled."

    const/4 v5, 0x2

    invoke-static {p2, v3, v5, v2, v4}, Lcom/transsion/camera/featurelibs/download/control/OkHttpRequestControl;->-$$Nest$monError(Lcom/transsion/camera/featurelibs/download/control/OkHttpRequestControl;Lcom/transsion/camera/featurelibs/download/Request;IILjava/lang/String;)V

    goto :goto_84

    :catch_16
    move-exception p2

    goto :goto_33

    .line 220
    :cond_18
    invoke-virtual {p2}, Lokhttp3/Response;->isSuccessful()Z

    move-result v3

    if-nez v3, :cond_2b

    .line 221
    iget-object v3, p0, Lcom/transsion/camera/featurelibs/download/control/OkHttpRequestControl$1;->this$0:Lcom/transsion/camera/featurelibs/download/control/OkHttpRequestControl;

    iget-object v4, p0, Lcom/transsion/camera/featurelibs/download/control/OkHttpRequestControl$1;->val$request:Lcom/transsion/camera/featurelibs/download/Request;

    invoke-virtual {p2}, Lokhttp3/Response;->code()I

    move-result p2

    const/4 v5, 0x0

    invoke-static {v3, v4, v2, p2, v5}, Lcom/transsion/camera/featurelibs/download/control/OkHttpRequestControl;->-$$Nest$monError(Lcom/transsion/camera/featurelibs/download/control/OkHttpRequestControl;Lcom/transsion/camera/featurelibs/download/Request;IILjava/lang/String;)V

    goto :goto_84

    .line 223
    :cond_2b
    iget-object v3, p0, Lcom/transsion/camera/featurelibs/download/control/OkHttpRequestControl$1;->this$0:Lcom/transsion/camera/featurelibs/download/control/OkHttpRequestControl;

    iget-object v4, p0, Lcom/transsion/camera/featurelibs/download/control/OkHttpRequestControl$1;->val$request:Lcom/transsion/camera/featurelibs/download/Request;

    invoke-static {v3, v4, p2}, Lcom/transsion/camera/featurelibs/download/control/OkHttpRequestControl;->-$$Nest$mprocessResponse(Lcom/transsion/camera/featurelibs/download/control/OkHttpRequestControl;Lcom/transsion/camera/featurelibs/download/Request;Lokhttp3/Response;)V
    :try_end_32
    .catch Lcom/transsion/camera/featurelibs/download/exception/ReadTimeoutException; {:try_start_5 .. :try_end_32} :catch_16

    goto :goto_84

    .line 227
    :goto_33
    invoke-static {}, Lcom/transsion/camera/featurelibs/download/control/OkHttpRequestControl;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", ReadTimeoutException retry !!!!! "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/transsion/camera/featurelibs/download/control/OkHttpRequestControl$1;->mRetryCount:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v3, p2}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 228
    iget p2, p0, Lcom/transsion/camera/featurelibs/download/control/OkHttpRequestControl$1;->mRetryCount:I

    iget-object v3, p0, Lcom/transsion/camera/featurelibs/download/control/OkHttpRequestControl$1;->val$request:Lcom/transsion/camera/featurelibs/download/Request;

    invoke-virtual {v3}, Lcom/transsion/camera/featurelibs/download/Request;->getMaxRetryTime()I

    move-result v3

    if-ge p2, v3, :cond_7a

    .line 229
    iget-object p2, p0, Lcom/transsion/camera/featurelibs/download/control/OkHttpRequestControl$1;->this$0:Lcom/transsion/camera/featurelibs/download/control/OkHttpRequestControl;

    iget-object v2, p0, Lcom/transsion/camera/featurelibs/download/control/OkHttpRequestControl$1;->val$client:Lokhttp3/OkHttpClient;

    iget-object v3, p0, Lcom/transsion/camera/featurelibs/download/control/OkHttpRequestControl$1;->val$request:Lcom/transsion/camera/featurelibs/download/Request;

    invoke-static {p2, v2, p1, v3, p0}, Lcom/transsion/camera/featurelibs/download/control/OkHttpRequestControl;->-$$Nest$mretryWhenException(Lcom/transsion/camera/featurelibs/download/control/OkHttpRequestControl;Lokhttp3/OkHttpClient;Lokhttp3/Call;Lcom/transsion/camera/featurelibs/download/Request;Lokhttp3/Callback;)V

    .line 230
    iget p1, p0, Lcom/transsion/camera/featurelibs/download/control/OkHttpRequestControl$1;->mRetryCount:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/transsion/camera/featurelibs/download/control/OkHttpRequestControl$1;->mRetryCount:I

    goto :goto_84

    .line 232
    :cond_7a
    iget-object p1, p0, Lcom/transsion/camera/featurelibs/download/control/OkHttpRequestControl$1;->this$0:Lcom/transsion/camera/featurelibs/download/control/OkHttpRequestControl;

    iget-object p0, p0, Lcom/transsion/camera/featurelibs/download/control/OkHttpRequestControl$1;->val$request:Lcom/transsion/camera/featurelibs/download/Request;

    const/4 p2, 0x4

    const-string v3, "retry time over."

    invoke-static {p1, p0, p2, v2, v3}, Lcom/transsion/camera/featurelibs/download/control/OkHttpRequestControl;->-$$Nest$monError(Lcom/transsion/camera/featurelibs/download/control/OkHttpRequestControl;Lcom/transsion/camera/featurelibs/download/Request;IILjava/lang/String;)V

    .line 235
    :goto_84
    invoke-static {}, Lcom/transsion/camera/featurelibs/download/control/OkHttpRequestControl;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "processResponse: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v0

    invoke-virtual {p1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p2, " ms."

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method
