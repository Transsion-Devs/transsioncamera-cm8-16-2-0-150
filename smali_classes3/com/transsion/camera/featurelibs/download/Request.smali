.class public Lcom/transsion/camera/featurelibs/download/Request;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/featurelibs/download/Request$Builder;
    }
.end annotation


# instance fields
.field private mConnectTimeout:I

.field private mFormBody:Ljava/util/Map;

.field private mHeaders:Ljava/util/Map;

.field private mIsWriteToFile:Z

.field private mJsonBody:Ljava/lang/String;

.field private mMaxRetryTime:I

.field private mReadTimeout:I

.field private mRequestResponse:Lcom/transsion/camera/featurelibs/download/IRequestResponse;

.field private mTargetFile:Ljava/io/File;

.field private final mType:I

.field private final mUrl:Ljava/net/URL;


# direct methods
.method public static synthetic $r8$lambda$3d78QUO8mPQa7DEVgGx2v72_VJE(Lcom/transsion/camera/featurelibs/download/Request;[B)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/featurelibs/download/Request;->lambda$onSuccess$1([B)V

    return-void
.end method

.method public static synthetic $r8$lambda$neK2CnyHcc7EMzBOn6IH4dIdMxg(Lcom/transsion/camera/featurelibs/download/Request;JJ)V
    .registers 5

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/transsion/camera/featurelibs/download/Request;->lambda$onProgress$0(JJ)V

    return-void
.end method

.method public static synthetic $r8$lambda$rnK5biexCz0xlPXMaAbzyYwlTok(Lcom/transsion/camera/featurelibs/download/Request;IILjava/lang/String;)V
    .registers 4

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lcom/transsion/camera/featurelibs/download/Request;->lambda$onError$2(IILjava/lang/String;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$msetRequestHeaders(Lcom/transsion/camera/featurelibs/download/Request;Ljava/util/Map;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/featurelibs/download/Request;->setRequestHeaders(Ljava/util/Map;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$msetRequestJsonBody(Lcom/transsion/camera/featurelibs/download/Request;Ljava/lang/String;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/featurelibs/download/Request;->setRequestJsonBody(Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$msetRequestResponse(Lcom/transsion/camera/featurelibs/download/Request;Lcom/transsion/camera/featurelibs/download/IRequestResponse;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/featurelibs/download/Request;->setRequestResponse(Lcom/transsion/camera/featurelibs/download/IRequestResponse;)V

    return-void
.end method

.method private constructor <init>(Lcom/transsion/camera/featurelibs/download/Request;)V
    .registers 3

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0xbb8

    .line 14
    iput v0, p0, Lcom/transsion/camera/featurelibs/download/Request;->mConnectTimeout:I

    .line 15
    iput v0, p0, Lcom/transsion/camera/featurelibs/download/Request;->mReadTimeout:I

    const/4 v0, 0x3

    .line 16
    iput v0, p0, Lcom/transsion/camera/featurelibs/download/Request;->mMaxRetryTime:I

    const/4 v0, 0x0

    .line 20
    iput-boolean v0, p0, Lcom/transsion/camera/featurelibs/download/Request;->mIsWriteToFile:Z

    .line 25
    iget v0, p1, Lcom/transsion/camera/featurelibs/download/Request;->mType:I

    iput v0, p0, Lcom/transsion/camera/featurelibs/download/Request;->mType:I

    .line 26
    iget-object v0, p1, Lcom/transsion/camera/featurelibs/download/Request;->mUrl:Ljava/net/URL;

    iput-object v0, p0, Lcom/transsion/camera/featurelibs/download/Request;->mUrl:Ljava/net/URL;

    .line 27
    iget v0, p1, Lcom/transsion/camera/featurelibs/download/Request;->mConnectTimeout:I

    iput v0, p0, Lcom/transsion/camera/featurelibs/download/Request;->mConnectTimeout:I

    .line 28
    iget v0, p1, Lcom/transsion/camera/featurelibs/download/Request;->mReadTimeout:I

    iput v0, p0, Lcom/transsion/camera/featurelibs/download/Request;->mReadTimeout:I

    .line 29
    iget v0, p1, Lcom/transsion/camera/featurelibs/download/Request;->mMaxRetryTime:I

    iput v0, p0, Lcom/transsion/camera/featurelibs/download/Request;->mMaxRetryTime:I

    .line 30
    iget-object v0, p1, Lcom/transsion/camera/featurelibs/download/Request;->mHeaders:Ljava/util/Map;

    iput-object v0, p0, Lcom/transsion/camera/featurelibs/download/Request;->mHeaders:Ljava/util/Map;

    .line 31
    iget-object v0, p1, Lcom/transsion/camera/featurelibs/download/Request;->mFormBody:Ljava/util/Map;

    iput-object v0, p0, Lcom/transsion/camera/featurelibs/download/Request;->mFormBody:Ljava/util/Map;

    .line 32
    iget-object v0, p1, Lcom/transsion/camera/featurelibs/download/Request;->mJsonBody:Ljava/lang/String;

    iput-object v0, p0, Lcom/transsion/camera/featurelibs/download/Request;->mJsonBody:Ljava/lang/String;

    .line 33
    iget-object v0, p1, Lcom/transsion/camera/featurelibs/download/Request;->mRequestResponse:Lcom/transsion/camera/featurelibs/download/IRequestResponse;

    iput-object v0, p0, Lcom/transsion/camera/featurelibs/download/Request;->mRequestResponse:Lcom/transsion/camera/featurelibs/download/IRequestResponse;

    .line 34
    iget-object v0, p1, Lcom/transsion/camera/featurelibs/download/Request;->mTargetFile:Ljava/io/File;

    iput-object v0, p0, Lcom/transsion/camera/featurelibs/download/Request;->mTargetFile:Ljava/io/File;

    .line 35
    iget-boolean p1, p1, Lcom/transsion/camera/featurelibs/download/Request;->mIsWriteToFile:Z

    iput-boolean p1, p0, Lcom/transsion/camera/featurelibs/download/Request;->mIsWriteToFile:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/transsion/camera/featurelibs/download/Request;Lcom/transsion/camera/featurelibs/download/Request-IA;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/featurelibs/download/Request;-><init>(Lcom/transsion/camera/featurelibs/download/Request;)V

    return-void
.end method

.method private constructor <init>(Ljava/net/URL;I)V
    .registers 4

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0xbb8

    .line 14
    iput v0, p0, Lcom/transsion/camera/featurelibs/download/Request;->mConnectTimeout:I

    .line 15
    iput v0, p0, Lcom/transsion/camera/featurelibs/download/Request;->mReadTimeout:I

    const/4 v0, 0x3

    .line 16
    iput v0, p0, Lcom/transsion/camera/featurelibs/download/Request;->mMaxRetryTime:I

    const/4 v0, 0x0

    .line 20
    iput-boolean v0, p0, Lcom/transsion/camera/featurelibs/download/Request;->mIsWriteToFile:Z

    .line 39
    iput p2, p0, Lcom/transsion/camera/featurelibs/download/Request;->mType:I

    .line 40
    iput-object p1, p0, Lcom/transsion/camera/featurelibs/download/Request;->mUrl:Ljava/net/URL;

    return-void
.end method

.method synthetic constructor <init>(Ljava/net/URL;ILcom/transsion/camera/featurelibs/download/Request-IA;)V
    .registers 4

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/featurelibs/download/Request;-><init>(Ljava/net/URL;I)V

    return-void
.end method

.method private synthetic lambda$onError$2(IILjava/lang/String;)V
    .registers 5

    .line 175
    iget-object v0, p0, Lcom/transsion/camera/featurelibs/download/Request;->mRequestResponse:Lcom/transsion/camera/featurelibs/download/IRequestResponse;

    invoke-interface {v0, p0, p1, p2, p3}, Lcom/transsion/camera/featurelibs/download/IRequestResponse;->onError(Lcom/transsion/camera/featurelibs/download/Request;IILjava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$onProgress$0(JJ)V
    .registers 11

    .line 153
    iget-object v0, p0, Lcom/transsion/camera/featurelibs/download/Request;->mRequestResponse:Lcom/transsion/camera/featurelibs/download/IRequestResponse;

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    invoke-interface/range {v0 .. v5}, Lcom/transsion/camera/featurelibs/download/IRequestResponse;->onProgress(Lcom/transsion/camera/featurelibs/download/Request;JJ)V

    return-void
.end method

.method private synthetic lambda$onSuccess$1([B)V
    .registers 3

    .line 164
    iget-object v0, p0, Lcom/transsion/camera/featurelibs/download/Request;->mRequestResponse:Lcom/transsion/camera/featurelibs/download/IRequestResponse;

    invoke-interface {v0, p0, p1}, Lcom/transsion/camera/featurelibs/download/IRequestResponse;->onSuccess(Lcom/transsion/camera/featurelibs/download/Request;[B)V

    return-void
.end method

.method private setRequestHeaders(Ljava/util/Map;)V
    .registers 2

    .line 56
    iput-object p1, p0, Lcom/transsion/camera/featurelibs/download/Request;->mHeaders:Ljava/util/Map;

    return-void
.end method

.method private setRequestJsonBody(Ljava/lang/String;)V
    .registers 2

    .line 64
    iput-object p1, p0, Lcom/transsion/camera/featurelibs/download/Request;->mJsonBody:Ljava/lang/String;

    return-void
.end method

.method private setRequestResponse(Lcom/transsion/camera/featurelibs/download/IRequestResponse;)V
    .registers 2

    .line 75
    iput-object p1, p0, Lcom/transsion/camera/featurelibs/download/Request;->mRequestResponse:Lcom/transsion/camera/featurelibs/download/IRequestResponse;

    return-void
.end method


# virtual methods
.method public dump()Ljava/lang/String;
    .registers 5

    .line 135
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/transsion/camera/featurelibs/download/Request;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 136
    iget-object v1, p0, Lcom/transsion/camera/featurelibs/download/Request;->mHeaders:Ljava/util/Map;

    if-eqz v1, :cond_50

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    if-lez v1, :cond_50

    .line 137
    const-string v1, "\nheaders=[\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 138
    iget-object v1, p0, Lcom/transsion/camera/featurelibs/download/Request;->mHeaders:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_22
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 139
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ":"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_22

    .line 141
    :cond_4b
    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 143
    :cond_50
    iget-object v1, p0, Lcom/transsion/camera/featurelibs/download/Request;->mJsonBody:Ljava/lang/String;

    if-eqz v1, :cond_5e

    .line 144
    const-string v1, "\nJsonBody="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/transsion/camera/featurelibs/download/Request;->mJsonBody:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 146
    :cond_5e
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getFormBody()Ljava/util/Map;
    .registers 1

    .line 104
    iget-object p0, p0, Lcom/transsion/camera/featurelibs/download/Request;->mFormBody:Ljava/util/Map;

    return-object p0
.end method

.method public getHeaders()Ljava/util/Map;
    .registers 1

    .line 100
    iget-object p0, p0, Lcom/transsion/camera/featurelibs/download/Request;->mHeaders:Ljava/util/Map;

    return-object p0
.end method

.method public getJsonBody()Ljava/lang/String;
    .registers 1

    .line 108
    iget-object p0, p0, Lcom/transsion/camera/featurelibs/download/Request;->mJsonBody:Ljava/lang/String;

    return-object p0
.end method

.method public getMaxRetryTime()I
    .registers 1

    .line 96
    iget p0, p0, Lcom/transsion/camera/featurelibs/download/Request;->mMaxRetryTime:I

    return p0
.end method

.method public getTargetFile()Ljava/io/File;
    .registers 1

    .line 116
    iget-object p0, p0, Lcom/transsion/camera/featurelibs/download/Request;->mTargetFile:Ljava/io/File;

    return-object p0
.end method

.method public getType()I
    .registers 1

    .line 80
    iget p0, p0, Lcom/transsion/camera/featurelibs/download/Request;->mType:I

    return p0
.end method

.method public getUrl()Ljava/net/URL;
    .registers 1

    .line 84
    iget-object p0, p0, Lcom/transsion/camera/featurelibs/download/Request;->mUrl:Ljava/net/URL;

    return-object p0
.end method

.method public isWriteToFile()Z
    .registers 1

    .line 112
    iget-boolean p0, p0, Lcom/transsion/camera/featurelibs/download/Request;->mIsWriteToFile:Z

    return p0
.end method

.method public onError(IILjava/lang/String;)V
    .registers 6

    .line 172
    iget-object v0, p0, Lcom/transsion/camera/featurelibs/download/Request;->mRequestResponse:Lcom/transsion/camera/featurelibs/download/IRequestResponse;

    if-eqz v0, :cond_18

    .line 173
    invoke-interface {v0}, Lcom/transsion/camera/featurelibs/download/IRequestResponse;->getExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 175
    new-instance v1, Lcom/transsion/camera/featurelibs/download/Request$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/transsion/camera/featurelibs/download/Request$$ExternalSyntheticLambda0;-><init>(Lcom/transsion/camera/featurelibs/download/Request;IILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void

    .line 177
    :cond_13
    iget-object v0, p0, Lcom/transsion/camera/featurelibs/download/Request;->mRequestResponse:Lcom/transsion/camera/featurelibs/download/IRequestResponse;

    invoke-interface {v0, p0, p1, p2, p3}, Lcom/transsion/camera/featurelibs/download/IRequestResponse;->onError(Lcom/transsion/camera/featurelibs/download/Request;IILjava/lang/String;)V

    :cond_18
    return-void
.end method

.method public onProgress(JJ)V
    .registers 13

    .line 150
    iget-object v0, p0, Lcom/transsion/camera/featurelibs/download/Request;->mRequestResponse:Lcom/transsion/camera/featurelibs/download/IRequestResponse;

    if-eqz v0, :cond_22

    .line 151
    invoke-interface {v0}, Lcom/transsion/camera/featurelibs/download/IRequestResponse;->getExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    if-eqz v0, :cond_16

    .line 153
    new-instance v1, Lcom/transsion/camera/featurelibs/download/Request$$ExternalSyntheticLambda1;

    move-object v2, p0

    move-wide v3, p1

    move-wide v5, p3

    invoke-direct/range {v1 .. v6}, Lcom/transsion/camera/featurelibs/download/Request$$ExternalSyntheticLambda1;-><init>(Lcom/transsion/camera/featurelibs/download/Request;JJ)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void

    :cond_16
    move-object v2, p0

    move-wide v3, p1

    move-wide v5, p3

    .line 155
    iget-object p0, v2, Lcom/transsion/camera/featurelibs/download/Request;->mRequestResponse:Lcom/transsion/camera/featurelibs/download/IRequestResponse;

    move-wide v6, v5

    move-wide v4, v3

    move-object v3, v2

    move-object v2, p0

    invoke-interface/range {v2 .. v7}, Lcom/transsion/camera/featurelibs/download/IRequestResponse;->onProgress(Lcom/transsion/camera/featurelibs/download/Request;JJ)V

    :cond_22
    return-void
.end method

.method public onSuccess([B)V
    .registers 4

    .line 161
    iget-object v0, p0, Lcom/transsion/camera/featurelibs/download/Request;->mRequestResponse:Lcom/transsion/camera/featurelibs/download/IRequestResponse;

    if-eqz v0, :cond_18

    .line 162
    invoke-interface {v0}, Lcom/transsion/camera/featurelibs/download/IRequestResponse;->getExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 164
    new-instance v1, Lcom/transsion/camera/featurelibs/download/Request$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, p1}, Lcom/transsion/camera/featurelibs/download/Request$$ExternalSyntheticLambda2;-><init>(Lcom/transsion/camera/featurelibs/download/Request;[B)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void

    .line 166
    :cond_13
    iget-object v0, p0, Lcom/transsion/camera/featurelibs/download/Request;->mRequestResponse:Lcom/transsion/camera/featurelibs/download/IRequestResponse;

    invoke-interface {v0, p0, p1}, Lcom/transsion/camera/featurelibs/download/IRequestResponse;->onSuccess(Lcom/transsion/camera/featurelibs/download/Request;[B)V

    :cond_18
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 121
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 122
    const-string v1, "Request{method="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 123
    iget v1, p0, Lcom/transsion/camera/featurelibs/download/Request;->mType:I

    if-nez v1, :cond_14

    .line 124
    const-string v1, "GET"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1c

    :cond_14
    const/4 v2, 0x1

    if-ne v1, v2, :cond_1c

    .line 126
    const-string v1, "POST"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 128
    :cond_1c
    :goto_1c
    const-string v1, ", url="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 129
    iget-object p0, p0, Lcom/transsion/camera/featurelibs/download/Request;->mUrl:Ljava/net/URL;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    .line 130
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 131
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
