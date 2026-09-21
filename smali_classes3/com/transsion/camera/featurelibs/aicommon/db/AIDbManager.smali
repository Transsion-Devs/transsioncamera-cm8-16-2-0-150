.class public Lcom/transsion/camera/featurelibs/aicommon/db/AIDbManager;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/featurelibs/aicommon/db/IAIDbManager;


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private final mAIRequestDao:Lcom/transsion/camera/featurelibs/aicommon/db/AIRequestDao;


# direct methods
.method public static synthetic $r8$lambda$6Ldkl-xdvjIMRIlC_oA0Gp5cDEU(Lcom/transsion/camera/featurelibs/aicommon/db/AIDbManager;Lcom/transsion/camera/featurelibs/aicommon/db/AIRequestEntity;)Lcom/transsion/camera/app/common/ai/AIRequest;
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/featurelibs/aicommon/db/AIDbManager;->entityToRequest(Lcom/transsion/camera/featurelibs/aicommon/db/AIRequestEntity;)Lcom/transsion/camera/app/common/ai/AIRequest;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 27
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "AIDbManager"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/featurelibs/aicommon/db/AIDbManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .registers 4

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    new-instance v0, Lcom/transsion/camera/featurelibs/aicommon/db/AIRequestDao;

    invoke-direct {v0, p1, p2}, Lcom/transsion/camera/featurelibs/aicommon/db/AIRequestDao;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/transsion/camera/featurelibs/aicommon/db/AIDbManager;->mAIRequestDao:Lcom/transsion/camera/featurelibs/aicommon/db/AIRequestDao;

    return-void
.end method

.method private entityToRequest(Lcom/transsion/camera/featurelibs/aicommon/db/AIRequestEntity;)Lcom/transsion/camera/app/common/ai/AIRequest;
    .registers 4

    .line 93
    new-instance p0, Lcom/transsion/camera/app/common/ai/AIRequest$Builder;

    invoke-direct {p0}, Lcom/transsion/camera/app/common/ai/AIRequest$Builder;-><init>()V

    .line 94
    invoke-virtual {p1}, Lcom/transsion/camera/featurelibs/aicommon/db/AIRequestEntity;->getRequestId()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/transsion/camera/app/common/ai/AIRequest$Builder;->requestId(J)Lcom/transsion/camera/app/common/ai/AIRequest$Builder;

    move-result-object p0

    .line 95
    invoke-virtual {p1}, Lcom/transsion/camera/featurelibs/aicommon/db/AIRequestEntity;->getRequestStatus()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/common/ai/AIRequest$Builder;->requestStatus(I)Lcom/transsion/camera/app/common/ai/AIRequest$Builder;

    move-result-object p0

    .line 96
    invoke-virtual {p1}, Lcom/transsion/camera/featurelibs/aicommon/db/AIRequestEntity;->getOriginalRequestTime()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/transsion/camera/app/common/ai/AIRequest$Builder;->originalRequestTime(J)Lcom/transsion/camera/app/common/ai/AIRequest$Builder;

    move-result-object p0

    .line 97
    invoke-virtual {p1}, Lcom/transsion/camera/featurelibs/aicommon/db/AIRequestEntity;->getRequestTime()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/transsion/camera/app/common/ai/AIRequest$Builder;->requestTime(J)Lcom/transsion/camera/app/common/ai/AIRequest$Builder;

    move-result-object p0

    .line 98
    invoke-virtual {p1}, Lcom/transsion/camera/featurelibs/aicommon/db/AIRequestEntity;->getRequestLatitude()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/common/ai/AIRequest$Builder;->requestLatitude(Ljava/lang/String;)Lcom/transsion/camera/app/common/ai/AIRequest$Builder;

    move-result-object p0

    .line 99
    invoke-virtual {p1}, Lcom/transsion/camera/featurelibs/aicommon/db/AIRequestEntity;->getRequestLongitude()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/common/ai/AIRequest$Builder;->requestLongitude(Ljava/lang/String;)Lcom/transsion/camera/app/common/ai/AIRequest$Builder;

    move-result-object p0

    .line 100
    invoke-virtual {p1}, Lcom/transsion/camera/featurelibs/aicommon/db/AIRequestEntity;->getEffect()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/common/ai/AIRequest$Builder;->effect(Ljava/lang/String;)Lcom/transsion/camera/app/common/ai/AIRequest$Builder;

    move-result-object p0

    .line 101
    invoke-virtual {p1}, Lcom/transsion/camera/featurelibs/aicommon/db/AIRequestEntity;->getEffectValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/common/ai/AIRequest$Builder;->effectValue(Ljava/lang/String;)Lcom/transsion/camera/app/common/ai/AIRequest$Builder;

    move-result-object p0

    .line 102
    invoke-virtual {p1}, Lcom/transsion/camera/featurelibs/aicommon/db/AIRequestEntity;->getWatermark()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/common/ai/AIRequest$Builder;->watermark(Ljava/lang/String;)Lcom/transsion/camera/app/common/ai/AIRequest$Builder;

    move-result-object p0

    .line 103
    invoke-virtual {p1}, Lcom/transsion/camera/featurelibs/aicommon/db/AIRequestEntity;->getRequestInfo()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/transsion/camera/app/common/ai/AIRequestInfo;->fromJsonString(Ljava/lang/String;)Lcom/transsion/camera/app/common/ai/AIRequestInfo;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/common/ai/AIRequest$Builder;->requestInfo(Lcom/transsion/camera/app/common/ai/AIRequestInfo;)Lcom/transsion/camera/app/common/ai/AIRequest$Builder;

    move-result-object p0

    .line 104
    invoke-virtual {p1}, Lcom/transsion/camera/featurelibs/aicommon/db/AIRequestEntity;->getPreviewJpegPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/common/ai/AIRequest$Builder;->previewJpegPath(Ljava/lang/String;)Lcom/transsion/camera/app/common/ai/AIRequest$Builder;

    move-result-object p0

    .line 105
    invoke-virtual {p1}, Lcom/transsion/camera/featurelibs/aicommon/db/AIRequestEntity;->getRequestJpegPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/common/ai/AIRequest$Builder;->requestJpegPath(Ljava/lang/String;)Lcom/transsion/camera/app/common/ai/AIRequest$Builder;

    move-result-object p0

    .line 106
    invoke-virtual {p1}, Lcom/transsion/camera/featurelibs/aicommon/db/AIRequestEntity;->getResponseTime()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/transsion/camera/app/common/ai/AIRequest$Builder;->responseTime(J)Lcom/transsion/camera/app/common/ai/AIRequest$Builder;

    move-result-object p0

    .line 107
    invoke-virtual {p1}, Lcom/transsion/camera/featurelibs/aicommon/db/AIRequestEntity;->getResponseCode()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/common/ai/AIRequest$Builder;->responseCode(I)Lcom/transsion/camera/app/common/ai/AIRequest$Builder;

    move-result-object p0

    .line 108
    invoke-virtual {p1}, Lcom/transsion/camera/featurelibs/aicommon/db/AIRequestEntity;->getResponseJpegPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/common/ai/AIRequest$Builder;->responseJpegPath(Ljava/lang/String;)Lcom/transsion/camera/app/common/ai/AIRequest$Builder;

    move-result-object p0

    .line 109
    invoke-virtual {p1}, Lcom/transsion/camera/featurelibs/aicommon/db/AIRequestEntity;->getResponseJpegUri()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/ai/AIRequest$Builder;->responseJpegUri(Ljava/lang/String;)Lcom/transsion/camera/app/common/ai/AIRequest$Builder;

    move-result-object p0

    .line 110
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/ai/AIRequest$Builder;->build()Lcom/transsion/camera/app/common/ai/AIRequest;

    move-result-object p0

    return-object p0
.end method

.method private requestToEntity(Lcom/transsion/camera/app/common/ai/AIRequest;)Lcom/transsion/camera/featurelibs/aicommon/db/AIRequestEntity;
    .registers 4

    .line 114
    new-instance p0, Lcom/transsion/camera/featurelibs/aicommon/db/AIRequestEntity$Builder;

    invoke-direct {p0}, Lcom/transsion/camera/featurelibs/aicommon/db/AIRequestEntity$Builder;-><init>()V

    .line 115
    invoke-virtual {p1}, Lcom/transsion/camera/app/common/ai/AIRequest;->getRequestId()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/transsion/camera/featurelibs/aicommon/db/AIRequestEntity$Builder;->requestId(J)Lcom/transsion/camera/featurelibs/aicommon/db/AIRequestEntity$Builder;

    move-result-object p0

    .line 116
    invoke-virtual {p1}, Lcom/transsion/camera/app/common/ai/AIRequest;->getRequestStatus()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/transsion/camera/featurelibs/aicommon/db/AIRequestEntity$Builder;->requestStatus(I)Lcom/transsion/camera/featurelibs/aicommon/db/AIRequestEntity$Builder;

    move-result-object p0

    .line 117
    invoke-virtual {p1}, Lcom/transsion/camera/app/common/ai/AIRequest;->getOriginalRequestTime()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/transsion/camera/featurelibs/aicommon/db/AIRequestEntity$Builder;->originalRequestTime(J)Lcom/transsion/camera/featurelibs/aicommon/db/AIRequestEntity$Builder;

    move-result-object p0

    .line 118
    invoke-virtual {p1}, Lcom/transsion/camera/app/common/ai/AIRequest;->getRequestTime()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/transsion/camera/featurelibs/aicommon/db/AIRequestEntity$Builder;->requestTime(J)Lcom/transsion/camera/featurelibs/aicommon/db/AIRequestEntity$Builder;

    move-result-object p0

    .line 119
    invoke-virtual {p1}, Lcom/transsion/camera/app/common/ai/AIRequest;->getRequestLatitude()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/transsion/camera/featurelibs/aicommon/db/AIRequestEntity$Builder;->requestLatitude(Ljava/lang/String;)Lcom/transsion/camera/featurelibs/aicommon/db/AIRequestEntity$Builder;

    move-result-object p0

    .line 120
    invoke-virtual {p1}, Lcom/transsion/camera/app/common/ai/AIRequest;->getRequestLongitude()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/transsion/camera/featurelibs/aicommon/db/AIRequestEntity$Builder;->requestLongitude(Ljava/lang/String;)Lcom/transsion/camera/featurelibs/aicommon/db/AIRequestEntity$Builder;

    move-result-object p0

    .line 121
    invoke-virtual {p1}, Lcom/transsion/camera/app/common/ai/AIRequest;->getEffect()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/transsion/camera/featurelibs/aicommon/db/AIRequestEntity$Builder;->effect(Ljava/lang/String;)Lcom/transsion/camera/featurelibs/aicommon/db/AIRequestEntity$Builder;

    move-result-object p0

    .line 122
    invoke-virtual {p1}, Lcom/transsion/camera/app/common/ai/AIRequest;->getEffectValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/transsion/camera/featurelibs/aicommon/db/AIRequestEntity$Builder;->effectValue(Ljava/lang/String;)Lcom/transsion/camera/featurelibs/aicommon/db/AIRequestEntity$Builder;

    move-result-object p0

    .line 123
    invoke-virtual {p1}, Lcom/transsion/camera/app/common/ai/AIRequest;->getWatermark()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/transsion/camera/featurelibs/aicommon/db/AIRequestEntity$Builder;->watermark(Ljava/lang/String;)Lcom/transsion/camera/featurelibs/aicommon/db/AIRequestEntity$Builder;

    move-result-object p0

    .line 124
    invoke-virtual {p1}, Lcom/transsion/camera/app/common/ai/AIRequest;->getRequestInfoJsonString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/transsion/camera/featurelibs/aicommon/db/AIRequestEntity$Builder;->requestInfo(Ljava/lang/String;)Lcom/transsion/camera/featurelibs/aicommon/db/AIRequestEntity$Builder;

    move-result-object p0

    .line 125
    invoke-virtual {p1}, Lcom/transsion/camera/app/common/ai/AIRequest;->getPreviewJpegPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/transsion/camera/featurelibs/aicommon/db/AIRequestEntity$Builder;->previewJpegPath(Ljava/lang/String;)Lcom/transsion/camera/featurelibs/aicommon/db/AIRequestEntity$Builder;

    move-result-object p0

    .line 126
    invoke-virtual {p1}, Lcom/transsion/camera/app/common/ai/AIRequest;->getRequestJpegPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/transsion/camera/featurelibs/aicommon/db/AIRequestEntity$Builder;->requestJpegPath(Ljava/lang/String;)Lcom/transsion/camera/featurelibs/aicommon/db/AIRequestEntity$Builder;

    move-result-object p0

    .line 127
    invoke-virtual {p1}, Lcom/transsion/camera/app/common/ai/AIRequest;->getResponseTime()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/transsion/camera/featurelibs/aicommon/db/AIRequestEntity$Builder;->responseTime(J)Lcom/transsion/camera/featurelibs/aicommon/db/AIRequestEntity$Builder;

    move-result-object p0

    .line 128
    invoke-virtual {p1}, Lcom/transsion/camera/app/common/ai/AIRequest;->getResponseCode()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/transsion/camera/featurelibs/aicommon/db/AIRequestEntity$Builder;->responseCode(I)Lcom/transsion/camera/featurelibs/aicommon/db/AIRequestEntity$Builder;

    move-result-object p0

    .line 129
    invoke-virtual {p1}, Lcom/transsion/camera/app/common/ai/AIRequest;->getResponseJpegPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/transsion/camera/featurelibs/aicommon/db/AIRequestEntity$Builder;->responseJpegPath(Ljava/lang/String;)Lcom/transsion/camera/featurelibs/aicommon/db/AIRequestEntity$Builder;

    move-result-object p0

    .line 130
    invoke-virtual {p1}, Lcom/transsion/camera/app/common/ai/AIRequest;->getResponseJpegUri()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/transsion/camera/featurelibs/aicommon/db/AIRequestEntity$Builder;->responseJpegUri(Ljava/lang/String;)Lcom/transsion/camera/featurelibs/aicommon/db/AIRequestEntity$Builder;

    move-result-object p0

    .line 131
    invoke-virtual {p0}, Lcom/transsion/camera/featurelibs/aicommon/db/AIRequestEntity$Builder;->build()Lcom/transsion/camera/featurelibs/aicommon/db/AIRequestEntity;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public add(Lcom/transsion/camera/app/common/ai/AIRequest;)V
    .registers 7

    .line 37
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 38
    sget-object v2, Lcom/transsion/camera/featurelibs/aicommon/db/AIDbManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v3, "insert start"

    invoke-static {v2, v3}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 40
    iget-object v3, p0, Lcom/transsion/camera/featurelibs/aicommon/db/AIDbManager;->mAIRequestDao:Lcom/transsion/camera/featurelibs/aicommon/db/AIRequestDao;

    invoke-direct {p0, p1}, Lcom/transsion/camera/featurelibs/aicommon/db/AIDbManager;->requestToEntity(Lcom/transsion/camera/app/common/ai/AIRequest;)Lcom/transsion/camera/featurelibs/aicommon/db/AIRequestEntity;

    move-result-object p0

    invoke-virtual {v3, p0}, Lcom/transsion/camera/featurelibs/aicommon/db/AIRequestDao;->insert(Lcom/transsion/camera/featurelibs/aicommon/db/AIRequestEntity;)J

    move-result-wide v3

    .line 41
    invoke-virtual {p1, v3, v4}, Lcom/transsion/camera/app/common/ai/AIRequest;->setRequestId(J)V

    .line 43
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "insert end: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long/2addr v3, v0

    invoke-virtual {p0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, "ms"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method public query(I)Ljava/util/List;
    .registers 7

    .line 78
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 79
    sget-object v2, Lcom/transsion/camera/featurelibs/aicommon/db/AIDbManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "query start, requestStatus: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 81
    iget-object v3, p0, Lcom/transsion/camera/featurelibs/aicommon/db/AIDbManager;->mAIRequestDao:Lcom/transsion/camera/featurelibs/aicommon/db/AIRequestDao;

    .line 82
    invoke-static {p1}, Lcom/transsion/camera/featurelibs/aicommon/db/QueryInfoFactory;->buildQueryInfo(I)Lcom/transsion/camera/featurelibs/aicommon/db/QueryInfo;

    move-result-object p1

    invoke-virtual {v3, p1}, Lcom/transsion/camera/featurelibs/aicommon/db/AIRequestDao;->query(Lcom/transsion/camera/featurelibs/aicommon/db/QueryInfo;)Ljava/util/List;

    move-result-object p1

    .line 83
    invoke-interface {p1}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object p1

    new-instance v3, Lcom/transsion/camera/featurelibs/aicommon/db/AIDbManager$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0}, Lcom/transsion/camera/featurelibs/aicommon/db/AIDbManager$$ExternalSyntheticLambda0;-><init>(Lcom/transsion/camera/featurelibs/aicommon/db/AIDbManager;)V

    .line 84
    invoke-interface {p1, v3}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p0

    .line 85
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    .line 87
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "query end, size: "

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", elapsedTime: "

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long/2addr v3, v0

    invoke-virtual {p1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, "ms"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-object p0
.end method

.method public remove(Lcom/transsion/camera/app/common/ai/AIRequest;)V
    .registers 7

    .line 48
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 49
    sget-object v2, Lcom/transsion/camera/featurelibs/aicommon/db/AIDbManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v3, "delete start"

    invoke-static {v2, v3}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 51
    iget-object v3, p0, Lcom/transsion/camera/featurelibs/aicommon/db/AIDbManager;->mAIRequestDao:Lcom/transsion/camera/featurelibs/aicommon/db/AIRequestDao;

    invoke-direct {p0, p1}, Lcom/transsion/camera/featurelibs/aicommon/db/AIDbManager;->requestToEntity(Lcom/transsion/camera/app/common/ai/AIRequest;)Lcom/transsion/camera/featurelibs/aicommon/db/AIRequestEntity;

    move-result-object p0

    invoke-virtual {v3, p0}, Lcom/transsion/camera/featurelibs/aicommon/db/AIRequestDao;->delete(Lcom/transsion/camera/featurelibs/aicommon/db/AIRequestEntity;)V

    .line 53
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "delete end: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long/2addr v3, v0

    invoke-virtual {p0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, "ms"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method public update(II)V
    .registers 7

    .line 68
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 69
    sget-object v2, Lcom/transsion/camera/featurelibs/aicommon/db/AIDbManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string/jumbo v3, "update start"

    invoke-static {v2, v3}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 71
    iget-object p0, p0, Lcom/transsion/camera/featurelibs/aicommon/db/AIDbManager;->mAIRequestDao:Lcom/transsion/camera/featurelibs/aicommon/db/AIRequestDao;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/camera/featurelibs/aicommon/db/AIRequestDao;->update(II)V

    .line 73
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p1, "update end: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    sub-long/2addr p1, v0

    invoke-virtual {p0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, "ms"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method public update(Lcom/transsion/camera/app/common/ai/AIRequest;)V
    .registers 7

    .line 58
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 59
    sget-object v2, Lcom/transsion/camera/featurelibs/aicommon/db/AIDbManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string/jumbo v3, "update start"

    invoke-static {v2, v3}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 61
    iget-object v3, p0, Lcom/transsion/camera/featurelibs/aicommon/db/AIDbManager;->mAIRequestDao:Lcom/transsion/camera/featurelibs/aicommon/db/AIRequestDao;

    invoke-direct {p0, p1}, Lcom/transsion/camera/featurelibs/aicommon/db/AIDbManager;->requestToEntity(Lcom/transsion/camera/app/common/ai/AIRequest;)Lcom/transsion/camera/featurelibs/aicommon/db/AIRequestEntity;

    move-result-object p0

    invoke-virtual {v3, p0}, Lcom/transsion/camera/featurelibs/aicommon/db/AIRequestDao;->update(Lcom/transsion/camera/featurelibs/aicommon/db/AIRequestEntity;)V

    .line 63
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p1, "update end: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long/2addr v3, v0

    invoke-virtual {p0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, "ms"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method
