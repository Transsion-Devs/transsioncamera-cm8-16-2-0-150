.class public Lcom/transsion/camera/app/common/ai/AIRequest$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/app/common/ai/AIRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private mEffect:Ljava/lang/String;

.field private mEffectValue:Ljava/lang/String;

.field private mOriginalRequestTime:J

.field private mPreviewJpegPath:Ljava/lang/String;

.field private mProgress:I

.field private mRequestId:J

.field private mRequestInfo:Lcom/transsion/camera/app/common/ai/AIRequestInfo;

.field private mRequestJpegPath:Ljava/lang/String;

.field private mRequestLatitude:Ljava/lang/String;

.field private mRequestLongitude:Ljava/lang/String;

.field private mRequestStatus:I

.field private mRequestTime:J

.field private mResponseCode:I

.field private mResponseJpegPath:Ljava/lang/String;

.field private mResponseJpegUri:Ljava/lang/String;

.field private mResponseTime:J

.field private mWatermark:Ljava/lang/String;


# direct methods
.method static bridge synthetic -$$Nest$fgetmEffect(Lcom/transsion/camera/app/common/ai/AIRequest$Builder;)Ljava/lang/String;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/app/common/ai/AIRequest$Builder;->mEffect:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmEffectValue(Lcom/transsion/camera/app/common/ai/AIRequest$Builder;)Ljava/lang/String;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/app/common/ai/AIRequest$Builder;->mEffectValue:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmOriginalRequestTime(Lcom/transsion/camera/app/common/ai/AIRequest$Builder;)J
    .registers 3

    .line 0
    iget-wide v0, p0, Lcom/transsion/camera/app/common/ai/AIRequest$Builder;->mOriginalRequestTime:J

    return-wide v0
.end method

.method static bridge synthetic -$$Nest$fgetmPreviewJpegPath(Lcom/transsion/camera/app/common/ai/AIRequest$Builder;)Ljava/lang/String;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/app/common/ai/AIRequest$Builder;->mPreviewJpegPath:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmProgress(Lcom/transsion/camera/app/common/ai/AIRequest$Builder;)I
    .registers 1

    .line 0
    iget p0, p0, Lcom/transsion/camera/app/common/ai/AIRequest$Builder;->mProgress:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmRequestId(Lcom/transsion/camera/app/common/ai/AIRequest$Builder;)J
    .registers 3

    .line 0
    iget-wide v0, p0, Lcom/transsion/camera/app/common/ai/AIRequest$Builder;->mRequestId:J

    return-wide v0
.end method

.method static bridge synthetic -$$Nest$fgetmRequestInfo(Lcom/transsion/camera/app/common/ai/AIRequest$Builder;)Lcom/transsion/camera/app/common/ai/AIRequestInfo;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/app/common/ai/AIRequest$Builder;->mRequestInfo:Lcom/transsion/camera/app/common/ai/AIRequestInfo;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmRequestJpegPath(Lcom/transsion/camera/app/common/ai/AIRequest$Builder;)Ljava/lang/String;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/app/common/ai/AIRequest$Builder;->mRequestJpegPath:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmRequestLatitude(Lcom/transsion/camera/app/common/ai/AIRequest$Builder;)Ljava/lang/String;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/app/common/ai/AIRequest$Builder;->mRequestLatitude:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmRequestLongitude(Lcom/transsion/camera/app/common/ai/AIRequest$Builder;)Ljava/lang/String;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/app/common/ai/AIRequest$Builder;->mRequestLongitude:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmRequestStatus(Lcom/transsion/camera/app/common/ai/AIRequest$Builder;)I
    .registers 1

    .line 0
    iget p0, p0, Lcom/transsion/camera/app/common/ai/AIRequest$Builder;->mRequestStatus:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmRequestTime(Lcom/transsion/camera/app/common/ai/AIRequest$Builder;)J
    .registers 3

    .line 0
    iget-wide v0, p0, Lcom/transsion/camera/app/common/ai/AIRequest$Builder;->mRequestTime:J

    return-wide v0
.end method

.method static bridge synthetic -$$Nest$fgetmResponseCode(Lcom/transsion/camera/app/common/ai/AIRequest$Builder;)I
    .registers 1

    .line 0
    iget p0, p0, Lcom/transsion/camera/app/common/ai/AIRequest$Builder;->mResponseCode:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmResponseJpegPath(Lcom/transsion/camera/app/common/ai/AIRequest$Builder;)Ljava/lang/String;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/app/common/ai/AIRequest$Builder;->mResponseJpegPath:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmResponseJpegUri(Lcom/transsion/camera/app/common/ai/AIRequest$Builder;)Ljava/lang/String;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/app/common/ai/AIRequest$Builder;->mResponseJpegUri:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmResponseTime(Lcom/transsion/camera/app/common/ai/AIRequest$Builder;)J
    .registers 3

    .line 0
    iget-wide v0, p0, Lcom/transsion/camera/app/common/ai/AIRequest$Builder;->mResponseTime:J

    return-wide v0
.end method

.method static bridge synthetic -$$Nest$fgetmWatermark(Lcom/transsion/camera/app/common/ai/AIRequest$Builder;)Ljava/lang/String;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/app/common/ai/AIRequest$Builder;->mWatermark:Ljava/lang/String;

    return-object p0
.end method

.method public constructor <init>()V
    .registers 1

    .line 220
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public build()Lcom/transsion/camera/app/common/ai/AIRequest;
    .registers 2

    .line 342
    new-instance v0, Lcom/transsion/camera/app/common/ai/AIRequest;

    invoke-direct {v0, p0}, Lcom/transsion/camera/app/common/ai/AIRequest;-><init>(Lcom/transsion/camera/app/common/ai/AIRequest$Builder;)V

    return-object v0
.end method

.method public effect(Ljava/lang/String;)Lcom/transsion/camera/app/common/ai/AIRequest$Builder;
    .registers 2

    .line 287
    iput-object p1, p0, Lcom/transsion/camera/app/common/ai/AIRequest$Builder;->mEffect:Ljava/lang/String;

    return-object p0
.end method

.method public effectValue(Ljava/lang/String;)Lcom/transsion/camera/app/common/ai/AIRequest$Builder;
    .registers 2

    .line 292
    iput-object p1, p0, Lcom/transsion/camera/app/common/ai/AIRequest$Builder;->mEffectValue:Ljava/lang/String;

    return-object p0
.end method

.method public originalRequestTime(J)Lcom/transsion/camera/app/common/ai/AIRequest$Builder;
    .registers 3

    .line 267
    iput-wide p1, p0, Lcom/transsion/camera/app/common/ai/AIRequest$Builder;->mOriginalRequestTime:J

    return-object p0
.end method

.method public previewJpegPath(Ljava/lang/String;)Lcom/transsion/camera/app/common/ai/AIRequest$Builder;
    .registers 2

    .line 307
    iput-object p1, p0, Lcom/transsion/camera/app/common/ai/AIRequest$Builder;->mPreviewJpegPath:Ljava/lang/String;

    return-object p0
.end method

.method public progress(I)Lcom/transsion/camera/app/common/ai/AIRequest$Builder;
    .registers 2

    .line 337
    iput p1, p0, Lcom/transsion/camera/app/common/ai/AIRequest$Builder;->mProgress:I

    return-object p0
.end method

.method public requestId(J)Lcom/transsion/camera/app/common/ai/AIRequest$Builder;
    .registers 3

    .line 257
    iput-wide p1, p0, Lcom/transsion/camera/app/common/ai/AIRequest$Builder;->mRequestId:J

    return-object p0
.end method

.method public requestInfo(Lcom/transsion/camera/app/common/ai/AIRequestInfo;)Lcom/transsion/camera/app/common/ai/AIRequest$Builder;
    .registers 2

    .line 302
    iput-object p1, p0, Lcom/transsion/camera/app/common/ai/AIRequest$Builder;->mRequestInfo:Lcom/transsion/camera/app/common/ai/AIRequestInfo;

    return-object p0
.end method

.method public requestJpegPath(Ljava/lang/String;)Lcom/transsion/camera/app/common/ai/AIRequest$Builder;
    .registers 2

    .line 312
    iput-object p1, p0, Lcom/transsion/camera/app/common/ai/AIRequest$Builder;->mRequestJpegPath:Ljava/lang/String;

    return-object p0
.end method

.method public requestLatitude(Ljava/lang/String;)Lcom/transsion/camera/app/common/ai/AIRequest$Builder;
    .registers 2

    .line 277
    iput-object p1, p0, Lcom/transsion/camera/app/common/ai/AIRequest$Builder;->mRequestLatitude:Ljava/lang/String;

    return-object p0
.end method

.method public requestLongitude(Ljava/lang/String;)Lcom/transsion/camera/app/common/ai/AIRequest$Builder;
    .registers 2

    .line 282
    iput-object p1, p0, Lcom/transsion/camera/app/common/ai/AIRequest$Builder;->mRequestLongitude:Ljava/lang/String;

    return-object p0
.end method

.method public requestStatus(I)Lcom/transsion/camera/app/common/ai/AIRequest$Builder;
    .registers 2

    .line 262
    iput p1, p0, Lcom/transsion/camera/app/common/ai/AIRequest$Builder;->mRequestStatus:I

    return-object p0
.end method

.method public requestTime(J)Lcom/transsion/camera/app/common/ai/AIRequest$Builder;
    .registers 3

    .line 272
    iput-wide p1, p0, Lcom/transsion/camera/app/common/ai/AIRequest$Builder;->mRequestTime:J

    return-object p0
.end method

.method public responseCode(I)Lcom/transsion/camera/app/common/ai/AIRequest$Builder;
    .registers 2

    .line 322
    iput p1, p0, Lcom/transsion/camera/app/common/ai/AIRequest$Builder;->mResponseCode:I

    return-object p0
.end method

.method public responseJpegPath(Ljava/lang/String;)Lcom/transsion/camera/app/common/ai/AIRequest$Builder;
    .registers 2

    .line 327
    iput-object p1, p0, Lcom/transsion/camera/app/common/ai/AIRequest$Builder;->mResponseJpegPath:Ljava/lang/String;

    return-object p0
.end method

.method public responseJpegUri(Ljava/lang/String;)Lcom/transsion/camera/app/common/ai/AIRequest$Builder;
    .registers 2

    .line 332
    iput-object p1, p0, Lcom/transsion/camera/app/common/ai/AIRequest$Builder;->mResponseJpegUri:Ljava/lang/String;

    return-object p0
.end method

.method public responseTime(J)Lcom/transsion/camera/app/common/ai/AIRequest$Builder;
    .registers 3

    .line 317
    iput-wide p1, p0, Lcom/transsion/camera/app/common/ai/AIRequest$Builder;->mResponseTime:J

    return-object p0
.end method

.method public watermark(Ljava/lang/String;)Lcom/transsion/camera/app/common/ai/AIRequest$Builder;
    .registers 2

    .line 297
    iput-object p1, p0, Lcom/transsion/camera/app/common/ai/AIRequest$Builder;->mWatermark:Ljava/lang/String;

    return-object p0
.end method
