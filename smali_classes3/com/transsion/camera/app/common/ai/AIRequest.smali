.class public Lcom/transsion/camera/app/common/ai/AIRequest;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/app/common/ai/AIRequest$Builder;
    }
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

.field private mTitle:Ljava/lang/String;

.field private mWatermark:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/transsion/camera/app/common/ai/AIRequest$Builder;)V
    .registers 4

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    invoke-static {p1}, Lcom/transsion/camera/app/common/ai/AIRequest$Builder;->-$$Nest$fgetmRequestId(Lcom/transsion/camera/app/common/ai/AIRequest$Builder;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/transsion/camera/app/common/ai/AIRequest;->mRequestId:J

    .line 54
    invoke-static {p1}, Lcom/transsion/camera/app/common/ai/AIRequest$Builder;->-$$Nest$fgetmRequestStatus(Lcom/transsion/camera/app/common/ai/AIRequest$Builder;)I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/app/common/ai/AIRequest;->mRequestStatus:I

    .line 55
    invoke-static {p1}, Lcom/transsion/camera/app/common/ai/AIRequest$Builder;->-$$Nest$fgetmOriginalRequestTime(Lcom/transsion/camera/app/common/ai/AIRequest$Builder;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/transsion/camera/app/common/ai/AIRequest;->mOriginalRequestTime:J

    .line 56
    invoke-static {p1}, Lcom/transsion/camera/app/common/ai/AIRequest$Builder;->-$$Nest$fgetmRequestTime(Lcom/transsion/camera/app/common/ai/AIRequest$Builder;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/transsion/camera/app/common/ai/AIRequest;->mRequestTime:J

    .line 57
    invoke-static {p1}, Lcom/transsion/camera/app/common/ai/AIRequest$Builder;->-$$Nest$fgetmRequestLatitude(Lcom/transsion/camera/app/common/ai/AIRequest$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/app/common/ai/AIRequest;->mRequestLatitude:Ljava/lang/String;

    .line 58
    invoke-static {p1}, Lcom/transsion/camera/app/common/ai/AIRequest$Builder;->-$$Nest$fgetmRequestLongitude(Lcom/transsion/camera/app/common/ai/AIRequest$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/app/common/ai/AIRequest;->mRequestLongitude:Ljava/lang/String;

    .line 59
    invoke-static {p1}, Lcom/transsion/camera/app/common/ai/AIRequest$Builder;->-$$Nest$fgetmEffect(Lcom/transsion/camera/app/common/ai/AIRequest$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/app/common/ai/AIRequest;->mEffect:Ljava/lang/String;

    .line 60
    invoke-static {p1}, Lcom/transsion/camera/app/common/ai/AIRequest$Builder;->-$$Nest$fgetmEffectValue(Lcom/transsion/camera/app/common/ai/AIRequest$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/app/common/ai/AIRequest;->mEffectValue:Ljava/lang/String;

    .line 61
    invoke-static {p1}, Lcom/transsion/camera/app/common/ai/AIRequest$Builder;->-$$Nest$fgetmWatermark(Lcom/transsion/camera/app/common/ai/AIRequest$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/app/common/ai/AIRequest;->mWatermark:Ljava/lang/String;

    .line 62
    invoke-static {p1}, Lcom/transsion/camera/app/common/ai/AIRequest$Builder;->-$$Nest$fgetmRequestInfo(Lcom/transsion/camera/app/common/ai/AIRequest$Builder;)Lcom/transsion/camera/app/common/ai/AIRequestInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/app/common/ai/AIRequest;->mRequestInfo:Lcom/transsion/camera/app/common/ai/AIRequestInfo;

    .line 63
    invoke-static {p1}, Lcom/transsion/camera/app/common/ai/AIRequest$Builder;->-$$Nest$fgetmPreviewJpegPath(Lcom/transsion/camera/app/common/ai/AIRequest$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/app/common/ai/AIRequest;->mPreviewJpegPath:Ljava/lang/String;

    .line 64
    invoke-static {p1}, Lcom/transsion/camera/app/common/ai/AIRequest$Builder;->-$$Nest$fgetmRequestJpegPath(Lcom/transsion/camera/app/common/ai/AIRequest$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/app/common/ai/AIRequest;->mRequestJpegPath:Ljava/lang/String;

    .line 65
    invoke-static {p1}, Lcom/transsion/camera/app/common/ai/AIRequest$Builder;->-$$Nest$fgetmResponseTime(Lcom/transsion/camera/app/common/ai/AIRequest$Builder;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/transsion/camera/app/common/ai/AIRequest;->mResponseTime:J

    .line 66
    invoke-static {p1}, Lcom/transsion/camera/app/common/ai/AIRequest$Builder;->-$$Nest$fgetmResponseCode(Lcom/transsion/camera/app/common/ai/AIRequest$Builder;)I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/app/common/ai/AIRequest;->mResponseCode:I

    .line 67
    invoke-static {p1}, Lcom/transsion/camera/app/common/ai/AIRequest$Builder;->-$$Nest$fgetmResponseJpegPath(Lcom/transsion/camera/app/common/ai/AIRequest$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/app/common/ai/AIRequest;->mResponseJpegPath:Ljava/lang/String;

    .line 68
    invoke-static {p1}, Lcom/transsion/camera/app/common/ai/AIRequest$Builder;->-$$Nest$fgetmResponseJpegUri(Lcom/transsion/camera/app/common/ai/AIRequest$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/app/common/ai/AIRequest;->mResponseJpegUri:Ljava/lang/String;

    .line 69
    invoke-static {p1}, Lcom/transsion/camera/app/common/ai/AIRequest$Builder;->-$$Nest$fgetmProgress(Lcom/transsion/camera/app/common/ai/AIRequest$Builder;)I

    move-result p1

    iput p1, p0, Lcom/transsion/camera/app/common/ai/AIRequest;->mProgress:I

    return-void
.end method


# virtual methods
.method public getEffect()Ljava/lang/String;
    .registers 1

    .line 121
    iget-object p0, p0, Lcom/transsion/camera/app/common/ai/AIRequest;->mEffect:Ljava/lang/String;

    return-object p0
.end method

.method public getEffectValue()Ljava/lang/String;
    .registers 1

    .line 129
    iget-object p0, p0, Lcom/transsion/camera/app/common/ai/AIRequest;->mEffectValue:Ljava/lang/String;

    return-object p0
.end method

.method public getOriginalRequestTime()J
    .registers 3

    .line 89
    iget-wide v0, p0, Lcom/transsion/camera/app/common/ai/AIRequest;->mOriginalRequestTime:J

    return-wide v0
.end method

.method public getPreviewJpegPath()Ljava/lang/String;
    .registers 1

    .line 157
    iget-object p0, p0, Lcom/transsion/camera/app/common/ai/AIRequest;->mPreviewJpegPath:Ljava/lang/String;

    return-object p0
.end method

.method public getProgress()I
    .registers 1

    .line 205
    iget p0, p0, Lcom/transsion/camera/app/common/ai/AIRequest;->mProgress:I

    return p0
.end method

.method public getRequestId()J
    .registers 3

    .line 73
    iget-wide v0, p0, Lcom/transsion/camera/app/common/ai/AIRequest;->mRequestId:J

    return-wide v0
.end method

.method public getRequestInfo()Lcom/transsion/camera/app/common/ai/AIRequestInfo;
    .registers 1

    .line 145
    iget-object p0, p0, Lcom/transsion/camera/app/common/ai/AIRequest;->mRequestInfo:Lcom/transsion/camera/app/common/ai/AIRequestInfo;

    return-object p0
.end method

.method public getRequestInfoJsonString()Ljava/lang/String;
    .registers 1

    .line 149
    iget-object p0, p0, Lcom/transsion/camera/app/common/ai/AIRequest;->mRequestInfo:Lcom/transsion/camera/app/common/ai/AIRequestInfo;

    if-nez p0, :cond_6

    const/4 p0, 0x0

    return-object p0

    :cond_6
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/ai/AIRequestInfo;->toJsonString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getRequestJpegPath()Ljava/lang/String;
    .registers 1

    .line 165
    iget-object p0, p0, Lcom/transsion/camera/app/common/ai/AIRequest;->mRequestJpegPath:Ljava/lang/String;

    return-object p0
.end method

.method public getRequestLatitude()Ljava/lang/String;
    .registers 1

    .line 105
    iget-object p0, p0, Lcom/transsion/camera/app/common/ai/AIRequest;->mRequestLatitude:Ljava/lang/String;

    return-object p0
.end method

.method public getRequestLongitude()Ljava/lang/String;
    .registers 1

    .line 113
    iget-object p0, p0, Lcom/transsion/camera/app/common/ai/AIRequest;->mRequestLongitude:Ljava/lang/String;

    return-object p0
.end method

.method public getRequestStatus()I
    .registers 1

    .line 81
    iget p0, p0, Lcom/transsion/camera/app/common/ai/AIRequest;->mRequestStatus:I

    return p0
.end method

.method public getRequestTime()J
    .registers 3

    .line 97
    iget-wide v0, p0, Lcom/transsion/camera/app/common/ai/AIRequest;->mRequestTime:J

    return-wide v0
.end method

.method public getResponseCode()I
    .registers 1

    .line 181
    iget p0, p0, Lcom/transsion/camera/app/common/ai/AIRequest;->mResponseCode:I

    return p0
.end method

.method public getResponseJpegPath()Ljava/lang/String;
    .registers 1

    .line 189
    iget-object p0, p0, Lcom/transsion/camera/app/common/ai/AIRequest;->mResponseJpegPath:Ljava/lang/String;

    return-object p0
.end method

.method public getResponseJpegUri()Ljava/lang/String;
    .registers 1

    .line 197
    iget-object p0, p0, Lcom/transsion/camera/app/common/ai/AIRequest;->mResponseJpegUri:Ljava/lang/String;

    return-object p0
.end method

.method public getResponseTime()J
    .registers 3

    .line 173
    iget-wide v0, p0, Lcom/transsion/camera/app/common/ai/AIRequest;->mResponseTime:J

    return-wide v0
.end method

.method public getTitle()Ljava/lang/String;
    .registers 1

    .line 213
    iget-object p0, p0, Lcom/transsion/camera/app/common/ai/AIRequest;->mTitle:Ljava/lang/String;

    return-object p0
.end method

.method public getWatermark()Ljava/lang/String;
    .registers 1

    .line 137
    iget-object p0, p0, Lcom/transsion/camera/app/common/ai/AIRequest;->mWatermark:Ljava/lang/String;

    return-object p0
.end method

.method public setEffect(Ljava/lang/String;)V
    .registers 2

    .line 125
    iput-object p1, p0, Lcom/transsion/camera/app/common/ai/AIRequest;->mEffect:Ljava/lang/String;

    return-void
.end method

.method public setEffectValue(Ljava/lang/String;)V
    .registers 2

    .line 133
    iput-object p1, p0, Lcom/transsion/camera/app/common/ai/AIRequest;->mEffectValue:Ljava/lang/String;

    return-void
.end method

.method public setOriginalRequestTime(J)V
    .registers 3

    .line 93
    iput-wide p1, p0, Lcom/transsion/camera/app/common/ai/AIRequest;->mOriginalRequestTime:J

    return-void
.end method

.method public setPreviewJpegPath(Ljava/lang/String;)V
    .registers 2

    .line 161
    iput-object p1, p0, Lcom/transsion/camera/app/common/ai/AIRequest;->mPreviewJpegPath:Ljava/lang/String;

    return-void
.end method

.method public setProgress(I)V
    .registers 2

    .line 209
    iput p1, p0, Lcom/transsion/camera/app/common/ai/AIRequest;->mProgress:I

    return-void
.end method

.method public setRequestId(J)V
    .registers 3

    .line 77
    iput-wide p1, p0, Lcom/transsion/camera/app/common/ai/AIRequest;->mRequestId:J

    return-void
.end method

.method public setRequestInfo(Lcom/transsion/camera/app/common/ai/AIRequestInfo;)V
    .registers 2

    .line 153
    iput-object p1, p0, Lcom/transsion/camera/app/common/ai/AIRequest;->mRequestInfo:Lcom/transsion/camera/app/common/ai/AIRequestInfo;

    return-void
.end method

.method public setRequestJpegPath(Ljava/lang/String;)V
    .registers 2

    .line 169
    iput-object p1, p0, Lcom/transsion/camera/app/common/ai/AIRequest;->mRequestJpegPath:Ljava/lang/String;

    return-void
.end method

.method public setRequestLatitude(Ljava/lang/String;)V
    .registers 2

    .line 109
    iput-object p1, p0, Lcom/transsion/camera/app/common/ai/AIRequest;->mRequestLatitude:Ljava/lang/String;

    return-void
.end method

.method public setRequestLongitude(Ljava/lang/String;)V
    .registers 2

    .line 117
    iput-object p1, p0, Lcom/transsion/camera/app/common/ai/AIRequest;->mRequestLongitude:Ljava/lang/String;

    return-void
.end method

.method public setRequestStatus(I)V
    .registers 2

    .line 85
    iput p1, p0, Lcom/transsion/camera/app/common/ai/AIRequest;->mRequestStatus:I

    return-void
.end method

.method public setRequestTime(J)V
    .registers 3

    .line 101
    iput-wide p1, p0, Lcom/transsion/camera/app/common/ai/AIRequest;->mRequestTime:J

    return-void
.end method

.method public setResponseCode(I)V
    .registers 2

    .line 185
    iput p1, p0, Lcom/transsion/camera/app/common/ai/AIRequest;->mResponseCode:I

    return-void
.end method

.method public setResponseJpegPath(Ljava/lang/String;)V
    .registers 2

    .line 193
    iput-object p1, p0, Lcom/transsion/camera/app/common/ai/AIRequest;->mResponseJpegPath:Ljava/lang/String;

    return-void
.end method

.method public setResponseJpegUri(Ljava/lang/String;)V
    .registers 2

    .line 201
    iput-object p1, p0, Lcom/transsion/camera/app/common/ai/AIRequest;->mResponseJpegUri:Ljava/lang/String;

    return-void
.end method

.method public setResponseTime(J)V
    .registers 3

    .line 177
    iput-wide p1, p0, Lcom/transsion/camera/app/common/ai/AIRequest;->mResponseTime:J

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .registers 2

    .line 217
    iput-object p1, p0, Lcom/transsion/camera/app/common/ai/AIRequest;->mTitle:Ljava/lang/String;

    return-void
.end method

.method public setWatermark(Ljava/lang/String;)V
    .registers 2

    .line 141
    iput-object p1, p0, Lcom/transsion/camera/app/common/ai/AIRequest;->mWatermark:Ljava/lang/String;

    return-void
.end method
