.class public Lcom/transsion/camera/featurelibs/aicommon/db/AIRequestEntity;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/featurelibs/aicommon/db/AIRequestEntity$Builder;
    }
.end annotation


# instance fields
.field private mEffect:Ljava/lang/String;

.field private mEffectValue:Ljava/lang/String;

.field private mOriginalRequestTime:J

.field private mPreviewJpegPath:Ljava/lang/String;

.field private mRequestId:J

.field private mRequestInfo:Ljava/lang/String;

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
.method public constructor <init>()V
    .registers 1

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/transsion/camera/featurelibs/aicommon/db/AIRequestEntity$Builder;)V
    .registers 4

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    invoke-static {p1}, Lcom/transsion/camera/featurelibs/aicommon/db/AIRequestEntity$Builder;->-$$Nest$fgetmRequestId(Lcom/transsion/camera/featurelibs/aicommon/db/AIRequestEntity$Builder;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/transsion/camera/featurelibs/aicommon/db/AIRequestEntity;->mRequestId:J

    .line 54
    invoke-static {p1}, Lcom/transsion/camera/featurelibs/aicommon/db/AIRequestEntity$Builder;->-$$Nest$fgetmRequestStatus(Lcom/transsion/camera/featurelibs/aicommon/db/AIRequestEntity$Builder;)I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/featurelibs/aicommon/db/AIRequestEntity;->mRequestStatus:I

    .line 55
    invoke-static {p1}, Lcom/transsion/camera/featurelibs/aicommon/db/AIRequestEntity$Builder;->-$$Nest$fgetmOriginalRequestTime(Lcom/transsion/camera/featurelibs/aicommon/db/AIRequestEntity$Builder;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/transsion/camera/featurelibs/aicommon/db/AIRequestEntity;->mOriginalRequestTime:J

    .line 56
    invoke-static {p1}, Lcom/transsion/camera/featurelibs/aicommon/db/AIRequestEntity$Builder;->-$$Nest$fgetmRequestTime(Lcom/transsion/camera/featurelibs/aicommon/db/AIRequestEntity$Builder;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/transsion/camera/featurelibs/aicommon/db/AIRequestEntity;->mRequestTime:J

    .line 57
    invoke-static {p1}, Lcom/transsion/camera/featurelibs/aicommon/db/AIRequestEntity$Builder;->-$$Nest$fgetmRequestLatitude(Lcom/transsion/camera/featurelibs/aicommon/db/AIRequestEntity$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/featurelibs/aicommon/db/AIRequestEntity;->mRequestLatitude:Ljava/lang/String;

    .line 58
    invoke-static {p1}, Lcom/transsion/camera/featurelibs/aicommon/db/AIRequestEntity$Builder;->-$$Nest$fgetmRequestLongitude(Lcom/transsion/camera/featurelibs/aicommon/db/AIRequestEntity$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/featurelibs/aicommon/db/AIRequestEntity;->mRequestLongitude:Ljava/lang/String;

    .line 59
    invoke-static {p1}, Lcom/transsion/camera/featurelibs/aicommon/db/AIRequestEntity$Builder;->-$$Nest$fgetmEffect(Lcom/transsion/camera/featurelibs/aicommon/db/AIRequestEntity$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/featurelibs/aicommon/db/AIRequestEntity;->mEffect:Ljava/lang/String;

    .line 60
    invoke-static {p1}, Lcom/transsion/camera/featurelibs/aicommon/db/AIRequestEntity$Builder;->-$$Nest$fgetmEffectValue(Lcom/transsion/camera/featurelibs/aicommon/db/AIRequestEntity$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/featurelibs/aicommon/db/AIRequestEntity;->mEffectValue:Ljava/lang/String;

    .line 61
    invoke-static {p1}, Lcom/transsion/camera/featurelibs/aicommon/db/AIRequestEntity$Builder;->-$$Nest$fgetmWatermark(Lcom/transsion/camera/featurelibs/aicommon/db/AIRequestEntity$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/featurelibs/aicommon/db/AIRequestEntity;->mWatermark:Ljava/lang/String;

    .line 62
    invoke-static {p1}, Lcom/transsion/camera/featurelibs/aicommon/db/AIRequestEntity$Builder;->-$$Nest$fgetmRequestInfo(Lcom/transsion/camera/featurelibs/aicommon/db/AIRequestEntity$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/featurelibs/aicommon/db/AIRequestEntity;->mRequestInfo:Ljava/lang/String;

    .line 63
    invoke-static {p1}, Lcom/transsion/camera/featurelibs/aicommon/db/AIRequestEntity$Builder;->-$$Nest$fgetmPreviewJpegPath(Lcom/transsion/camera/featurelibs/aicommon/db/AIRequestEntity$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/featurelibs/aicommon/db/AIRequestEntity;->mPreviewJpegPath:Ljava/lang/String;

    .line 64
    invoke-static {p1}, Lcom/transsion/camera/featurelibs/aicommon/db/AIRequestEntity$Builder;->-$$Nest$fgetmRequestJpegPath(Lcom/transsion/camera/featurelibs/aicommon/db/AIRequestEntity$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/featurelibs/aicommon/db/AIRequestEntity;->mRequestJpegPath:Ljava/lang/String;

    .line 65
    invoke-static {p1}, Lcom/transsion/camera/featurelibs/aicommon/db/AIRequestEntity$Builder;->-$$Nest$fgetmResponseTime(Lcom/transsion/camera/featurelibs/aicommon/db/AIRequestEntity$Builder;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/transsion/camera/featurelibs/aicommon/db/AIRequestEntity;->mResponseTime:J

    .line 66
    invoke-static {p1}, Lcom/transsion/camera/featurelibs/aicommon/db/AIRequestEntity$Builder;->-$$Nest$fgetmResponseCode(Lcom/transsion/camera/featurelibs/aicommon/db/AIRequestEntity$Builder;)I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/featurelibs/aicommon/db/AIRequestEntity;->mResponseCode:I

    .line 67
    invoke-static {p1}, Lcom/transsion/camera/featurelibs/aicommon/db/AIRequestEntity$Builder;->-$$Nest$fgetmResponseJpegPath(Lcom/transsion/camera/featurelibs/aicommon/db/AIRequestEntity$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/featurelibs/aicommon/db/AIRequestEntity;->mResponseJpegPath:Ljava/lang/String;

    .line 68
    invoke-static {p1}, Lcom/transsion/camera/featurelibs/aicommon/db/AIRequestEntity$Builder;->-$$Nest$fgetmResponseJpegUri(Lcom/transsion/camera/featurelibs/aicommon/db/AIRequestEntity$Builder;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/featurelibs/aicommon/db/AIRequestEntity;->mResponseJpegUri:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getEffect()Ljava/lang/String;
    .registers 1

    .line 120
    iget-object p0, p0, Lcom/transsion/camera/featurelibs/aicommon/db/AIRequestEntity;->mEffect:Ljava/lang/String;

    return-object p0
.end method

.method public getEffectValue()Ljava/lang/String;
    .registers 1

    .line 128
    iget-object p0, p0, Lcom/transsion/camera/featurelibs/aicommon/db/AIRequestEntity;->mEffectValue:Ljava/lang/String;

    return-object p0
.end method

.method public getOriginalRequestTime()J
    .registers 3

    .line 112
    iget-wide v0, p0, Lcom/transsion/camera/featurelibs/aicommon/db/AIRequestEntity;->mOriginalRequestTime:J

    return-wide v0
.end method

.method public getPreviewJpegPath()Ljava/lang/String;
    .registers 1

    .line 152
    iget-object p0, p0, Lcom/transsion/camera/featurelibs/aicommon/db/AIRequestEntity;->mPreviewJpegPath:Ljava/lang/String;

    return-object p0
.end method

.method public getRequestId()J
    .registers 3

    .line 72
    iget-wide v0, p0, Lcom/transsion/camera/featurelibs/aicommon/db/AIRequestEntity;->mRequestId:J

    return-wide v0
.end method

.method public getRequestInfo()Ljava/lang/String;
    .registers 1

    .line 144
    iget-object p0, p0, Lcom/transsion/camera/featurelibs/aicommon/db/AIRequestEntity;->mRequestInfo:Ljava/lang/String;

    return-object p0
.end method

.method public getRequestJpegPath()Ljava/lang/String;
    .registers 1

    .line 160
    iget-object p0, p0, Lcom/transsion/camera/featurelibs/aicommon/db/AIRequestEntity;->mRequestJpegPath:Ljava/lang/String;

    return-object p0
.end method

.method public getRequestLatitude()Ljava/lang/String;
    .registers 1

    .line 96
    iget-object p0, p0, Lcom/transsion/camera/featurelibs/aicommon/db/AIRequestEntity;->mRequestLatitude:Ljava/lang/String;

    return-object p0
.end method

.method public getRequestLongitude()Ljava/lang/String;
    .registers 1

    .line 104
    iget-object p0, p0, Lcom/transsion/camera/featurelibs/aicommon/db/AIRequestEntity;->mRequestLongitude:Ljava/lang/String;

    return-object p0
.end method

.method public getRequestStatus()I
    .registers 1

    .line 80
    iget p0, p0, Lcom/transsion/camera/featurelibs/aicommon/db/AIRequestEntity;->mRequestStatus:I

    return p0
.end method

.method public getRequestTime()J
    .registers 3

    .line 88
    iget-wide v0, p0, Lcom/transsion/camera/featurelibs/aicommon/db/AIRequestEntity;->mRequestTime:J

    return-wide v0
.end method

.method public getResponseCode()I
    .registers 1

    .line 176
    iget p0, p0, Lcom/transsion/camera/featurelibs/aicommon/db/AIRequestEntity;->mResponseCode:I

    return p0
.end method

.method public getResponseJpegPath()Ljava/lang/String;
    .registers 1

    .line 184
    iget-object p0, p0, Lcom/transsion/camera/featurelibs/aicommon/db/AIRequestEntity;->mResponseJpegPath:Ljava/lang/String;

    return-object p0
.end method

.method public getResponseJpegUri()Ljava/lang/String;
    .registers 1

    .line 192
    iget-object p0, p0, Lcom/transsion/camera/featurelibs/aicommon/db/AIRequestEntity;->mResponseJpegUri:Ljava/lang/String;

    return-object p0
.end method

.method public getResponseTime()J
    .registers 3

    .line 168
    iget-wide v0, p0, Lcom/transsion/camera/featurelibs/aicommon/db/AIRequestEntity;->mResponseTime:J

    return-wide v0
.end method

.method public getWatermark()Ljava/lang/String;
    .registers 1

    .line 136
    iget-object p0, p0, Lcom/transsion/camera/featurelibs/aicommon/db/AIRequestEntity;->mWatermark:Ljava/lang/String;

    return-object p0
.end method

.method public setEffect(Ljava/lang/String;)V
    .registers 2

    .line 124
    iput-object p1, p0, Lcom/transsion/camera/featurelibs/aicommon/db/AIRequestEntity;->mEffect:Ljava/lang/String;

    return-void
.end method

.method public setEffectValue(Ljava/lang/String;)V
    .registers 2

    .line 132
    iput-object p1, p0, Lcom/transsion/camera/featurelibs/aicommon/db/AIRequestEntity;->mEffectValue:Ljava/lang/String;

    return-void
.end method

.method public setOriginalRequestTime(J)V
    .registers 3

    .line 116
    iput-wide p1, p0, Lcom/transsion/camera/featurelibs/aicommon/db/AIRequestEntity;->mOriginalRequestTime:J

    return-void
.end method

.method public setPreviewJpegPath(Ljava/lang/String;)V
    .registers 2

    .line 156
    iput-object p1, p0, Lcom/transsion/camera/featurelibs/aicommon/db/AIRequestEntity;->mPreviewJpegPath:Ljava/lang/String;

    return-void
.end method

.method public setRequestId(J)V
    .registers 3

    .line 76
    iput-wide p1, p0, Lcom/transsion/camera/featurelibs/aicommon/db/AIRequestEntity;->mRequestId:J

    return-void
.end method

.method public setRequestInfo(Ljava/lang/String;)V
    .registers 2

    .line 148
    iput-object p1, p0, Lcom/transsion/camera/featurelibs/aicommon/db/AIRequestEntity;->mRequestInfo:Ljava/lang/String;

    return-void
.end method

.method public setRequestJpegPath(Ljava/lang/String;)V
    .registers 2

    .line 164
    iput-object p1, p0, Lcom/transsion/camera/featurelibs/aicommon/db/AIRequestEntity;->mRequestJpegPath:Ljava/lang/String;

    return-void
.end method

.method public setRequestLatitude(Ljava/lang/String;)V
    .registers 2

    .line 100
    iput-object p1, p0, Lcom/transsion/camera/featurelibs/aicommon/db/AIRequestEntity;->mRequestLatitude:Ljava/lang/String;

    return-void
.end method

.method public setRequestLongitude(Ljava/lang/String;)V
    .registers 2

    .line 108
    iput-object p1, p0, Lcom/transsion/camera/featurelibs/aicommon/db/AIRequestEntity;->mRequestLongitude:Ljava/lang/String;

    return-void
.end method

.method public setRequestStatus(I)V
    .registers 2

    .line 84
    iput p1, p0, Lcom/transsion/camera/featurelibs/aicommon/db/AIRequestEntity;->mRequestStatus:I

    return-void
.end method

.method public setRequestTime(J)V
    .registers 3

    .line 92
    iput-wide p1, p0, Lcom/transsion/camera/featurelibs/aicommon/db/AIRequestEntity;->mRequestTime:J

    return-void
.end method

.method public setResponseCode(I)V
    .registers 2

    .line 180
    iput p1, p0, Lcom/transsion/camera/featurelibs/aicommon/db/AIRequestEntity;->mResponseCode:I

    return-void
.end method

.method public setResponseJpegPath(Ljava/lang/String;)V
    .registers 2

    .line 188
    iput-object p1, p0, Lcom/transsion/camera/featurelibs/aicommon/db/AIRequestEntity;->mResponseJpegPath:Ljava/lang/String;

    return-void
.end method

.method public setResponseJpegUri(Ljava/lang/String;)V
    .registers 2

    .line 196
    iput-object p1, p0, Lcom/transsion/camera/featurelibs/aicommon/db/AIRequestEntity;->mResponseJpegUri:Ljava/lang/String;

    return-void
.end method

.method public setResponseTime(J)V
    .registers 3

    .line 172
    iput-wide p1, p0, Lcom/transsion/camera/featurelibs/aicommon/db/AIRequestEntity;->mResponseTime:J

    return-void
.end method

.method public setWatermark(Ljava/lang/String;)V
    .registers 2

    .line 140
    iput-object p1, p0, Lcom/transsion/camera/featurelibs/aicommon/db/AIRequestEntity;->mWatermark:Ljava/lang/String;

    return-void
.end method
