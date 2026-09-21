.class public Lcom/transsion/camera/featurelibs/download/control/OkHttpRequestControl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/featurelibs/download/control/IRequestControl;


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private final client:Lokhttp3/OkHttpClient;

.field private final mRequestCallMap:Ljava/util/Map;

.field private final mRequestExecutor:Ljava/util/concurrent/Executor;


# direct methods
.method public static synthetic $r8$lambda$5xSzRhXwXubvYMHTEKKMTTLtS98(Lcom/transsion/camera/featurelibs/download/control/OkHttpRequestControl;Lcom/transsion/camera/featurelibs/download/Request;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/featurelibs/download/control/OkHttpRequestControl;->lambda$request$0(Lcom/transsion/camera/featurelibs/download/Request;)V

    return-void
.end method

.method public static synthetic $r8$lambda$COMJKEvRhPCebytNoguPavd_0Bo(Lcom/transsion/camera/featurelibs/download/control/OkHttpRequestControl;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/featurelibs/download/control/OkHttpRequestControl;->lambda$cancelAll$2()V

    return-void
.end method

.method public static synthetic $r8$lambda$Ii2YWidIMzGVD2FHQYgxJTNEcps(Lcom/transsion/camera/featurelibs/download/control/OkHttpRequestControl;Lcom/transsion/camera/featurelibs/download/Request;Lokhttp3/OkHttpClient;Lokhttp3/Call;Lokhttp3/Callback;)V
    .registers 5

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/transsion/camera/featurelibs/download/control/OkHttpRequestControl;->lambda$retryWhenException$5(Lcom/transsion/camera/featurelibs/download/Request;Lokhttp3/OkHttpClient;Lokhttp3/Call;Lokhttp3/Callback;)V

    return-void
.end method

.method public static synthetic $r8$lambda$YXjKDcxzBl4wCKBq_4nc5H8U74A(Lcom/transsion/camera/featurelibs/download/control/OkHttpRequestControl;Lcom/transsion/camera/featurelibs/download/Request;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/featurelibs/download/control/OkHttpRequestControl;->lambda$cancel$1(Lcom/transsion/camera/featurelibs/download/Request;)V

    return-void
.end method

.method public static synthetic $r8$lambda$_Vj8uXilkm3Q2EHxWcz1c4AmlII(Lcom/transsion/camera/featurelibs/download/control/OkHttpRequestControl;Lcom/transsion/camera/featurelibs/download/Request;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/featurelibs/download/control/OkHttpRequestControl;->lambda$onError$4(Lcom/transsion/camera/featurelibs/download/Request;)V

    return-void
.end method

.method public static synthetic $r8$lambda$y05zO8LFZ1Dl34CEzBVV_CMOMlc(Lcom/transsion/camera/featurelibs/download/control/OkHttpRequestControl;Lcom/transsion/camera/featurelibs/download/Request;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/featurelibs/download/control/OkHttpRequestControl;->lambda$onSuccess$3(Lcom/transsion/camera/featurelibs/download/Request;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$monError(Lcom/transsion/camera/featurelibs/download/control/OkHttpRequestControl;Lcom/transsion/camera/featurelibs/download/Request;IILjava/lang/String;)V
    .registers 5

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/transsion/camera/featurelibs/download/control/OkHttpRequestControl;->onError(Lcom/transsion/camera/featurelibs/download/Request;IILjava/lang/String;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mprocessResponse(Lcom/transsion/camera/featurelibs/download/control/OkHttpRequestControl;Lcom/transsion/camera/featurelibs/download/Request;Lokhttp3/Response;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/featurelibs/download/control/OkHttpRequestControl;->processResponse(Lcom/transsion/camera/featurelibs/download/Request;Lokhttp3/Response;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mretryWhenException(Lcom/transsion/camera/featurelibs/download/control/OkHttpRequestControl;Lokhttp3/OkHttpClient;Lokhttp3/Call;Lcom/transsion/camera/featurelibs/download/Request;Lokhttp3/Callback;)V
    .registers 5

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/transsion/camera/featurelibs/download/control/OkHttpRequestControl;->retryWhenException(Lokhttp3/OkHttpClient;Lokhttp3/Call;Lcom/transsion/camera/featurelibs/download/Request;Lokhttp3/Callback;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;
    .registers 1

    .line 0
    sget-object v0, Lcom/transsion/camera/featurelibs/download/control/OkHttpRequestControl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 39
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "OkHttpRequest"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/featurelibs/download/control/OkHttpRequestControl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>()V
    .registers 6

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/featurelibs/download/control/OkHttpRequestControl;->mRequestCallMap:Ljava/util/Map;

    .line 45
    new-instance v0, Lcom/transsion/camera/featurelibs/download/control/MyThreadFactory;

    const-string v1, "Request"

    invoke-direct {v0, v1}, Lcom/transsion/camera/featurelibs/download/control/MyThreadFactory;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/featurelibs/download/control/OkHttpRequestControl;->mRequestExecutor:Ljava/util/concurrent/Executor;

    .line 46
    new-instance v0, Lokhttp3/Dispatcher;

    invoke-direct {v0}, Lokhttp3/Dispatcher;-><init>()V

    .line 50
    new-instance v1, Lokhttp3/OkHttpClient$Builder;

    invoke-direct {v1}, Lokhttp3/OkHttpClient$Builder;-><init>()V

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v3, 0xbb8

    .line 51
    invoke-virtual {v1, v3, v4, v2}, Lokhttp3/OkHttpClient$Builder;->connectTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v1

    .line 52
    invoke-virtual {v1, v3, v4, v2}, Lokhttp3/OkHttpClient$Builder;->readTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v1

    const/4 v2, 0x0

    .line 53
    invoke-virtual {v1, v2}, Lokhttp3/OkHttpClient$Builder;->retryOnConnectionFailure(Z)Lokhttp3/OkHttpClient$Builder;

    move-result-object v1

    .line 54
    invoke-virtual {v1, v0}, Lokhttp3/OkHttpClient$Builder;->dispatcher(Lokhttp3/Dispatcher;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    .line 55
    invoke-virtual {v0}, Lokhttp3/OkHttpClient$Builder;->build()Lokhttp3/OkHttpClient;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/featurelibs/download/control/OkHttpRequestControl;->client:Lokhttp3/OkHttpClient;

    return-void
.end method

.method private cancelCall(Lokhttp3/Call;)V
    .registers 2

    if-eqz p1, :cond_5

    .line 91
    invoke-interface {p1}, Lokhttp3/Call;->cancel()V

    :cond_5
    return-void
.end method

.method private static createOkHttpRequest(Lcom/transsion/camera/featurelibs/download/Request;)Lokhttp3/Request;
    .registers 6

    .line 147
    new-instance v0, Lokhttp3/Request$Builder;

    invoke-direct {v0}, Lokhttp3/Request$Builder;-><init>()V

    .line 148
    invoke-virtual {p0}, Lcom/transsion/camera/featurelibs/download/Request;->getUrl()Ljava/net/URL;

    move-result-object v1

    invoke-virtual {v0, v1}, Lokhttp3/Request$Builder;->url(Ljava/net/URL;)Lokhttp3/Request$Builder;

    .line 149
    invoke-virtual {p0}, Lcom/transsion/camera/featurelibs/download/Request;->getType()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_64

    .line 150
    invoke-virtual {p0}, Lcom/transsion/camera/featurelibs/download/Request;->getJsonBody()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_27

    .line 152
    const-string v2, "application/json;charset=utf-8"

    invoke-static {v2}, Lokhttp3/MediaType;->parse(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object v2

    .line 153
    invoke-static {v1, v2}, Lokhttp3/RequestBody;->create(Ljava/lang/String;Lokhttp3/MediaType;)Lokhttp3/RequestBody;

    move-result-object v1

    .line 154
    invoke-virtual {v0, v1}, Lokhttp3/Request$Builder;->post(Lokhttp3/RequestBody;)Lokhttp3/Request$Builder;

    goto :goto_67

    .line 156
    :cond_27
    new-instance v1, Lokhttp3/FormBody$Builder;

    invoke-direct {v1}, Lokhttp3/FormBody$Builder;-><init>()V

    .line 157
    invoke-virtual {p0}, Lcom/transsion/camera/featurelibs/download/Request;->getFormBody()Ljava/util/Map;

    move-result-object v2

    if-eqz v2, :cond_5c

    .line 158
    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v3

    if-lez v3, :cond_5c

    .line 159
    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_40
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 160
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v1, v4, v3}, Lokhttp3/FormBody$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/FormBody$Builder;

    goto :goto_40

    .line 163
    :cond_5c
    invoke-virtual {v1}, Lokhttp3/FormBody$Builder;->build()Lokhttp3/FormBody;

    move-result-object v1

    invoke-virtual {v0, v1}, Lokhttp3/Request$Builder;->post(Lokhttp3/RequestBody;)Lokhttp3/Request$Builder;

    goto :goto_67

    .line 166
    :cond_64
    invoke-virtual {v0}, Lokhttp3/Request$Builder;->get()Lokhttp3/Request$Builder;

    .line 169
    :goto_67
    invoke-virtual {p0}, Lcom/transsion/camera/featurelibs/download/Request;->getHeaders()Ljava/util/Map;

    move-result-object v1

    if-eqz v1, :cond_9a

    .line 171
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_75
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_9a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 172
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v0, v3}, Lokhttp3/Request$Builder;->removeHeader(Ljava/lang/String;)Lokhttp3/Request$Builder;

    .line 173
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v3, v2}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    goto :goto_75

    .line 178
    :cond_9a
    invoke-virtual {p0}, Lcom/transsion/camera/featurelibs/download/Request;->isWriteToFile()Z

    move-result v1

    if-eqz v1, :cond_c9

    .line 179
    invoke-virtual {p0}, Lcom/transsion/camera/featurelibs/download/Request;->getTargetFile()Ljava/io/File;

    move-result-object v1

    .line 180
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_c9

    .line 181
    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v1

    .line 182
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "bytes="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "-"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "range"

    invoke-virtual {v0, v2, v1}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    .line 185
    :cond_c9
    sget-object v1, Lcom/transsion/camera/featurelibs/download/control/OkHttpRequestControl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "createOkHttpRequest request: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/transsion/camera/featurelibs/download/Request;->dump()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 186
    invoke-virtual {v0}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object p0

    return-object p0
.end method

.method private createResponseCallback(Lcom/transsion/camera/featurelibs/download/Request;Lokhttp3/OkHttpClient;)Lokhttp3/Callback;
    .registers 4

    .line 190
    new-instance v0, Lcom/transsion/camera/featurelibs/download/control/OkHttpRequestControl$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/transsion/camera/featurelibs/download/control/OkHttpRequestControl$1;-><init>(Lcom/transsion/camera/featurelibs/download/control/OkHttpRequestControl;Lcom/transsion/camera/featurelibs/download/Request;Lokhttp3/OkHttpClient;)V

    return-object v0
.end method

.method private synthetic lambda$cancel$1(Lcom/transsion/camera/featurelibs/download/Request;)V
    .registers 6

    .line 82
    iget-object v0, p0, Lcom/transsion/camera/featurelibs/download/control/OkHttpRequestControl;->mRequestCallMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lokhttp3/Call;

    .line 83
    sget-object v1, Lcom/transsion/camera/featurelibs/download/control/OkHttpRequestControl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cancel:\n "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/transsion/camera/featurelibs/download/Request;->getUrl()Ljava/net/URL;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 84
    invoke-direct {p0, v0}, Lcom/transsion/camera/featurelibs/download/control/OkHttpRequestControl;->cancelCall(Lokhttp3/Call;)V

    .line 85
    iget-object p0, p0, Lcom/transsion/camera/featurelibs/download/control/OkHttpRequestControl;->mRequestCallMap:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private synthetic lambda$cancelAll$2()V
    .registers 7

    .line 98
    iget-object v0, p0, Lcom/transsion/camera/featurelibs/download/control/OkHttpRequestControl;->mRequestCallMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_48

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 99
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/transsion/camera/featurelibs/download/Request;

    .line 100
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lokhttp3/Call;

    .line 101
    sget-object v3, Lcom/transsion/camera/featurelibs/download/control/OkHttpRequestControl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "cancelAll:\n "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/transsion/camera/featurelibs/download/Request;->getUrl()Ljava/net/URL;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 102
    invoke-direct {p0, v1}, Lcom/transsion/camera/featurelibs/download/control/OkHttpRequestControl;->cancelCall(Lokhttp3/Call;)V

    goto :goto_a

    .line 104
    :cond_48
    iget-object p0, p0, Lcom/transsion/camera/featurelibs/download/control/OkHttpRequestControl;->mRequestCallMap:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->clear()V

    return-void
.end method

.method private synthetic lambda$onError$4(Lcom/transsion/camera/featurelibs/download/Request;)V
    .registers 2

    .line 130
    iget-object p0, p0, Lcom/transsion/camera/featurelibs/download/control/OkHttpRequestControl;->mRequestCallMap:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private synthetic lambda$onSuccess$3(Lcom/transsion/camera/featurelibs/download/Request;)V
    .registers 2

    .line 125
    iget-object p0, p0, Lcom/transsion/camera/featurelibs/download/control/OkHttpRequestControl;->mRequestCallMap:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private synthetic lambda$request$0(Lcom/transsion/camera/featurelibs/download/Request;)V
    .registers 4

    .line 63
    invoke-static {p1}, Lcom/transsion/camera/featurelibs/download/control/OkHttpRequestControl;->createOkHttpRequest(Lcom/transsion/camera/featurelibs/download/Request;)Lokhttp3/Request;

    move-result-object v0

    .line 65
    iget-object v1, p0, Lcom/transsion/camera/featurelibs/download/control/OkHttpRequestControl;->client:Lokhttp3/OkHttpClient;

    invoke-virtual {v1, v0}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object v0

    .line 66
    iget-object v1, p0, Lcom/transsion/camera/featurelibs/download/control/OkHttpRequestControl;->client:Lokhttp3/OkHttpClient;

    invoke-direct {p0, p1, v1}, Lcom/transsion/camera/featurelibs/download/control/OkHttpRequestControl;->createResponseCallback(Lcom/transsion/camera/featurelibs/download/Request;Lokhttp3/OkHttpClient;)Lokhttp3/Callback;

    move-result-object v1

    .line 67
    invoke-direct {p0, p1, v0, v1}, Lcom/transsion/camera/featurelibs/download/control/OkHttpRequestControl;->requestCall(Lcom/transsion/camera/featurelibs/download/Request;Lokhttp3/Call;Lokhttp3/Callback;)V

    return-void
.end method

.method private synthetic lambda$retryWhenException$5(Lcom/transsion/camera/featurelibs/download/Request;Lokhttp3/OkHttpClient;Lokhttp3/Call;Lokhttp3/Callback;)V
    .registers 7

    .line 242
    invoke-static {p1}, Lcom/transsion/camera/featurelibs/download/control/OkHttpRequestControl;->createOkHttpRequest(Lcom/transsion/camera/featurelibs/download/Request;)Lokhttp3/Request;

    move-result-object v0

    .line 243
    invoke-virtual {p2, v0}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object p2

    .line 244
    invoke-direct {p0, p3}, Lcom/transsion/camera/featurelibs/download/control/OkHttpRequestControl;->cancelCall(Lokhttp3/Call;)V

    const-wide/16 v0, 0x64

    .line 246
    :try_start_d
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_10
    .catch Ljava/lang/InterruptedException; {:try_start_d .. :try_end_10} :catch_11

    goto :goto_15

    :catch_11
    move-exception p3

    .line 248
    invoke-virtual {p3}, Ljava/lang/Throwable;->printStackTrace()V

    .line 250
    :goto_15
    invoke-direct {p0, p1, p2, p4}, Lcom/transsion/camera/featurelibs/download/control/OkHttpRequestControl;->requestCall(Lcom/transsion/camera/featurelibs/download/Request;Lokhttp3/Call;Lokhttp3/Callback;)V

    return-void
.end method

.method private onError(Lcom/transsion/camera/featurelibs/download/Request;IILjava/lang/String;)V
    .registers 7

    .line 130
    iget-object v0, p0, Lcom/transsion/camera/featurelibs/download/control/OkHttpRequestControl;->mRequestExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/transsion/camera/featurelibs/download/control/OkHttpRequestControl$$ExternalSyntheticLambda5;

    invoke-direct {v1, p0, p1}, Lcom/transsion/camera/featurelibs/download/control/OkHttpRequestControl$$ExternalSyntheticLambda5;-><init>(Lcom/transsion/camera/featurelibs/download/control/OkHttpRequestControl;Lcom/transsion/camera/featurelibs/download/Request;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 131
    invoke-virtual {p1, p2, p3, p4}, Lcom/transsion/camera/featurelibs/download/Request;->onError(IILjava/lang/String;)V

    return-void
.end method

.method private onProgress(Lcom/transsion/camera/featurelibs/download/Request;JJ)V
    .registers 6

    .line 121
    invoke-virtual {p1, p2, p3, p4, p5}, Lcom/transsion/camera/featurelibs/download/Request;->onProgress(JJ)V

    return-void
.end method

.method private onSuccess(Lcom/transsion/camera/featurelibs/download/Request;[B)V
    .registers 5

    .line 125
    iget-object v0, p0, Lcom/transsion/camera/featurelibs/download/control/OkHttpRequestControl;->mRequestExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/transsion/camera/featurelibs/download/control/OkHttpRequestControl$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0, p1}, Lcom/transsion/camera/featurelibs/download/control/OkHttpRequestControl$$ExternalSyntheticLambda4;-><init>(Lcom/transsion/camera/featurelibs/download/control/OkHttpRequestControl;Lcom/transsion/camera/featurelibs/download/Request;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 126
    invoke-virtual {p1, p2}, Lcom/transsion/camera/featurelibs/download/Request;->onSuccess([B)V

    return-void
.end method

.method private processResponse(Lcom/transsion/camera/featurelibs/download/Request;Lokhttp3/Response;)V
    .registers 6

    .line 256
    invoke-virtual {p2}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object p2

    const/4 v0, 0x0

    if-nez p2, :cond_d

    .line 258
    const-string p2, "body is null."

    invoke-direct {p0, p1, v0, v0, p2}, Lcom/transsion/camera/featurelibs/download/control/OkHttpRequestControl;->onError(Lcom/transsion/camera/featurelibs/download/Request;IILjava/lang/String;)V

    return-void

    .line 261
    :cond_d
    invoke-virtual {p1}, Lcom/transsion/camera/featurelibs/download/Request;->isWriteToFile()Z

    move-result v1

    if-eqz v1, :cond_17

    .line 262
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/featurelibs/download/control/OkHttpRequestControl;->writeToFile(Lcom/transsion/camera/featurelibs/download/Request;Lokhttp3/ResponseBody;)V

    goto :goto_2b

    .line 265
    :cond_17
    :try_start_17
    invoke-virtual {p2}, Lokhttp3/ResponseBody;->bytes()[B

    move-result-object v1

    invoke-direct {p0, p1, v1}, Lcom/transsion/camera/featurelibs/download/control/OkHttpRequestControl;->onSuccess(Lcom/transsion/camera/featurelibs/download/Request;[B)V
    :try_end_1e
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_1e} :catch_1f

    goto :goto_2b

    :catch_1f
    move-exception v1

    .line 267
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 v2, 0x3

    .line 268
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1, v2, v0, v1}, Lcom/transsion/camera/featurelibs/download/control/OkHttpRequestControl;->onError(Lcom/transsion/camera/featurelibs/download/Request;IILjava/lang/String;)V

    .line 271
    :goto_2b
    invoke-virtual {p2}, Lokhttp3/ResponseBody;->close()V

    return-void
.end method

.method private requestCall(Lcom/transsion/camera/featurelibs/download/Request;Lokhttp3/Call;Lokhttp3/Callback;)V
    .registers 6

    .line 72
    iget-object p0, p0, Lcom/transsion/camera/featurelibs/download/control/OkHttpRequestControl;->mRequestCallMap:Ljava/util/Map;

    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    sget-object p0, Lcom/transsion/camera/featurelibs/download/control/OkHttpRequestControl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "request:\n "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/transsion/camera/featurelibs/download/Request;->getUrl()Ljava/net/URL;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 76
    invoke-interface {p2, p3}, Lokhttp3/Call;->enqueue(Lokhttp3/Callback;)V

    return-void
.end method

.method private retryWhenException(Lokhttp3/OkHttpClient;Lokhttp3/Call;Lcom/transsion/camera/featurelibs/download/Request;Lokhttp3/Callback;)V
    .registers 12

    .line 241
    iget-object v0, p0, Lcom/transsion/camera/featurelibs/download/control/OkHttpRequestControl;->mRequestExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/transsion/camera/featurelibs/download/control/OkHttpRequestControl$$ExternalSyntheticLambda3;

    move-object v2, p0

    move-object v4, p1

    move-object v5, p2

    move-object v3, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/transsion/camera/featurelibs/download/control/OkHttpRequestControl$$ExternalSyntheticLambda3;-><init>(Lcom/transsion/camera/featurelibs/download/control/OkHttpRequestControl;Lcom/transsion/camera/featurelibs/download/Request;Lokhttp3/OkHttpClient;Lokhttp3/Call;Lokhttp3/Callback;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private writeToFile(Lcom/transsion/camera/featurelibs/download/Request;Lokhttp3/ResponseBody;)V
    .registers 18

    .line 275
    invoke-virtual/range {p1 .. p1}, Lcom/transsion/camera/featurelibs/download/Request;->getTargetFile()Ljava/io/File;

    move-result-object v0

    .line 277
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_10

    .line 278
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v1

    :goto_e
    move-wide v7, v1

    goto :goto_13

    :cond_10
    const-wide/16 v1, 0x0

    goto :goto_e

    :goto_13
    const/4 v9, 0x0

    .line 280
    :try_start_14
    invoke-virtual/range {p2 .. p2}, Lokhttp3/ResponseBody;->byteStream()Ljava/io/InputStream;

    move-result-object v10
    :try_end_18
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_18} :catch_93

    .line 282
    :try_start_18
    new-instance v11, Ljava/io/RandomAccessFile;

    const-string v1, "rw"

    invoke-direct {v11, v0, v1}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_1f
    .catchall {:try_start_18 .. :try_end_1f} :catchall_84

    .line 285
    :try_start_1f
    invoke-virtual/range {p2 .. p2}, Lokhttp3/ResponseBody;->contentLength()J

    move-result-wide v12

    .line 286
    invoke-virtual {v11, v7, v8}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 288
    sget-object v0, Lcom/transsion/camera/featurelibs/download/control/OkHttpRequestControl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "response length: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, "+"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/16 v0, 0x800

    .line 301
    new-array v0, v0, [B

    move v1, v9

    .line 304
    :goto_49
    invoke-virtual {v10, v0}, Ljava/io/InputStream;->read([B)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_69

    .line 306
    invoke-virtual {v11, v0, v9, v2}, Ljava/io/RandomAccessFile;->write([BII)V
    :try_end_53
    .catchall {:try_start_1f .. :try_end_53} :catchall_65

    add-int v14, v1, v2

    int-to-long v1, v14

    add-long v3, v1, v7

    add-long v5, v12, v7

    move-object v1, p0

    move-object/from16 v2, p1

    .line 309
    :try_start_5d
    invoke-direct/range {v1 .. v6}, Lcom/transsion/camera/featurelibs/download/control/OkHttpRequestControl;->onProgress(Lcom/transsion/camera/featurelibs/download/Request;JJ)V

    move v1, v14

    goto :goto_49

    :catchall_62
    move-exception v0

    :goto_63
    move-object v3, v0

    goto :goto_7b

    :catchall_65
    move-exception v0

    move-object/from16 v2, p1

    goto :goto_63

    :cond_69
    move-object/from16 v2, p1

    const/4 v0, 0x0

    .line 311
    invoke-direct {p0, v2, v0}, Lcom/transsion/camera/featurelibs/download/control/OkHttpRequestControl;->onSuccess(Lcom/transsion/camera/featurelibs/download/Request;[B)V
    :try_end_6f
    .catchall {:try_start_5d .. :try_end_6f} :catchall_62

    .line 312
    :try_start_6f
    invoke-virtual {v11}, Ljava/io/RandomAccessFile;->close()V
    :try_end_72
    .catchall {:try_start_6f .. :try_end_72} :catchall_78

    :try_start_72
    invoke-virtual {v10}, Ljava/io/InputStream;->close()V
    :try_end_75
    .catch Ljava/io/IOException; {:try_start_72 .. :try_end_75} :catch_76

    return-void

    :catch_76
    move-exception v0

    goto :goto_96

    :catchall_78
    move-exception v0

    :goto_79
    move-object v3, v0

    goto :goto_88

    .line 280
    :goto_7b
    :try_start_7b
    invoke-virtual {v11}, Ljava/io/RandomAccessFile;->close()V
    :try_end_7e
    .catchall {:try_start_7b .. :try_end_7e} :catchall_7f

    goto :goto_83

    :catchall_7f
    move-exception v0

    :try_start_80
    invoke-virtual {v3, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_83
    throw v3
    :try_end_84
    .catchall {:try_start_80 .. :try_end_84} :catchall_78

    :catchall_84
    move-exception v0

    move-object/from16 v2, p1

    goto :goto_79

    :goto_88
    if-eqz v10, :cond_92

    :try_start_8a
    invoke-virtual {v10}, Ljava/io/InputStream;->close()V
    :try_end_8d
    .catchall {:try_start_8a .. :try_end_8d} :catchall_8e

    goto :goto_92

    :catchall_8e
    move-exception v0

    :try_start_8f
    invoke-virtual {v3, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_92
    :goto_92
    throw v3
    :try_end_93
    .catch Ljava/io/IOException; {:try_start_8f .. :try_end_93} :catch_76

    :catch_93
    move-exception v0

    move-object/from16 v2, p1

    .line 313
    :goto_96
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 314
    instance-of v3, v0, Ljava/net/SocketTimeoutException;

    if-nez v3, :cond_d0

    instance-of v3, v0, Lcom/transsion/camera/featurelibs/download/exception/ReadTimeoutException;

    if-nez v3, :cond_d0

    .line 318
    instance-of v3, v0, Ljava/net/SocketException;

    const/4 v4, 0x2

    if-eqz v3, :cond_c8

    .line 319
    sget-object v3, Lcom/transsion/camera/featurelibs/download/control/OkHttpRequestControl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SocketException: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 320
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v2, v4, v9, v0}, Lcom/transsion/camera/featurelibs/download/control/OkHttpRequestControl;->onError(Lcom/transsion/camera/featurelibs/download/Request;IILjava/lang/String;)V

    goto :goto_cf

    .line 322
    :cond_c8
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v2, v4, v9, v0}, Lcom/transsion/camera/featurelibs/download/control/OkHttpRequestControl;->onError(Lcom/transsion/camera/featurelibs/download/Request;IILjava/lang/String;)V

    :goto_cf
    return-void

    .line 316
    :cond_d0
    sget-object p0, Lcom/transsion/camera/featurelibs/download/control/OkHttpRequestControl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SocketTimeoutException: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 317
    new-instance p0, Lcom/transsion/camera/featurelibs/download/exception/ReadTimeoutException;

    invoke-direct {p0, v0}, Lcom/transsion/camera/featurelibs/download/exception/ReadTimeoutException;-><init>(Ljava/lang/Throwable;)V

    throw p0
.end method


# virtual methods
.method public cancel(Lcom/transsion/camera/featurelibs/download/Request;)V
    .registers 4

    .line 81
    iget-object v0, p0, Lcom/transsion/camera/featurelibs/download/control/OkHttpRequestControl;->mRequestExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/transsion/camera/featurelibs/download/control/OkHttpRequestControl$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lcom/transsion/camera/featurelibs/download/control/OkHttpRequestControl$$ExternalSyntheticLambda0;-><init>(Lcom/transsion/camera/featurelibs/download/control/OkHttpRequestControl;Lcom/transsion/camera/featurelibs/download/Request;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public cancelAll()V
    .registers 3

    .line 97
    iget-object v0, p0, Lcom/transsion/camera/featurelibs/download/control/OkHttpRequestControl;->mRequestExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/transsion/camera/featurelibs/download/control/OkHttpRequestControl$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/transsion/camera/featurelibs/download/control/OkHttpRequestControl$$ExternalSyntheticLambda1;-><init>(Lcom/transsion/camera/featurelibs/download/control/OkHttpRequestControl;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public request(Lcom/transsion/camera/featurelibs/download/Request;)V
    .registers 4

    .line 60
    iget-object v0, p0, Lcom/transsion/camera/featurelibs/download/control/OkHttpRequestControl;->mRequestExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/transsion/camera/featurelibs/download/control/OkHttpRequestControl$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, p1}, Lcom/transsion/camera/featurelibs/download/control/OkHttpRequestControl$$ExternalSyntheticLambda2;-><init>(Lcom/transsion/camera/featurelibs/download/control/OkHttpRequestControl;Lcom/transsion/camera/featurelibs/download/Request;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
