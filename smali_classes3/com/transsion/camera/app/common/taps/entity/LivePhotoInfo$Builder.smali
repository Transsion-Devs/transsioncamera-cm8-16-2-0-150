.class public Lcom/transsion/camera/app/common/taps/entity/LivePhotoInfo$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/app/common/taps/entity/LivePhotoInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private mCamFilePath:Ljava/lang/String;

.field private mCount:Ljava/util/concurrent/CountDownLatch;

.field private mGyroFilePath:Ljava/lang/String;

.field private mLivePhotoVideoPath:Ljava/lang/String;

.field private mPresentationTimeUs:J

.field private mProcessing:Z

.field private final mTimestampKey:J


# direct methods
.method public constructor <init>(J)V
    .registers 3

    .line 136
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 137
    iput-wide p1, p0, Lcom/transsion/camera/app/common/taps/entity/LivePhotoInfo$Builder;->mTimestampKey:J

    return-void
.end method

.method public constructor <init>(Lcom/transsion/camera/app/common/taps/entity/LivePhotoInfo;)V
    .registers 4

    .line 140
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 141
    invoke-virtual {p1}, Lcom/transsion/camera/app/common/taps/entity/BaseInfo;->getTimestampKey()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/transsion/camera/app/common/taps/entity/LivePhotoInfo$Builder;->mTimestampKey:J

    .line 142
    invoke-virtual {p1}, Lcom/transsion/camera/app/common/taps/entity/LivePhotoInfo;->getPresentationTimeUs()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/transsion/camera/app/common/taps/entity/LivePhotoInfo$Builder;->mPresentationTimeUs:J

    .line 143
    invoke-virtual {p1}, Lcom/transsion/camera/app/common/taps/entity/LivePhotoInfo;->getLivePhotoVideoPath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/app/common/taps/entity/LivePhotoInfo$Builder;->mLivePhotoVideoPath:Ljava/lang/String;

    .line 144
    invoke-virtual {p1}, Lcom/transsion/camera/app/common/taps/entity/LivePhotoInfo;->isProcessing()Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/camera/app/common/taps/entity/LivePhotoInfo$Builder;->mProcessing:Z

    .line 145
    invoke-static {p1}, Lcom/transsion/camera/app/common/taps/entity/LivePhotoInfo;->-$$Nest$fgetmCount(Lcom/transsion/camera/app/common/taps/entity/LivePhotoInfo;)Ljava/util/concurrent/CountDownLatch;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/app/common/taps/entity/LivePhotoInfo$Builder;->mCount:Ljava/util/concurrent/CountDownLatch;

    return-void
.end method


# virtual methods
.method public build()Lcom/transsion/camera/app/common/taps/entity/LivePhotoInfo;
    .registers 12

    .line 174
    new-instance v0, Lcom/transsion/camera/app/common/taps/entity/LivePhotoInfo;

    iget-wide v1, p0, Lcom/transsion/camera/app/common/taps/entity/LivePhotoInfo$Builder;->mTimestampKey:J

    iget-wide v3, p0, Lcom/transsion/camera/app/common/taps/entity/LivePhotoInfo$Builder;->mPresentationTimeUs:J

    iget-object v5, p0, Lcom/transsion/camera/app/common/taps/entity/LivePhotoInfo$Builder;->mLivePhotoVideoPath:Ljava/lang/String;

    iget-boolean v6, p0, Lcom/transsion/camera/app/common/taps/entity/LivePhotoInfo$Builder;->mProcessing:Z

    iget-object v7, p0, Lcom/transsion/camera/app/common/taps/entity/LivePhotoInfo$Builder;->mCount:Ljava/util/concurrent/CountDownLatch;

    iget-object v8, p0, Lcom/transsion/camera/app/common/taps/entity/LivePhotoInfo$Builder;->mCamFilePath:Ljava/lang/String;

    iget-object v9, p0, Lcom/transsion/camera/app/common/taps/entity/LivePhotoInfo$Builder;->mGyroFilePath:Ljava/lang/String;

    const/4 v10, 0x0

    invoke-direct/range {v0 .. v10}, Lcom/transsion/camera/app/common/taps/entity/LivePhotoInfo;-><init>(JJLjava/lang/String;ZLjava/util/concurrent/CountDownLatch;Ljava/lang/String;Ljava/lang/String;Lcom/transsion/camera/app/common/taps/entity/LivePhotoInfo-IA;)V

    return-object v0
.end method

.method public setCamFilePath(Ljava/lang/String;)Lcom/transsion/camera/app/common/taps/entity/LivePhotoInfo$Builder;
    .registers 2

    .line 164
    iput-object p1, p0, Lcom/transsion/camera/app/common/taps/entity/LivePhotoInfo$Builder;->mCamFilePath:Ljava/lang/String;

    return-object p0
.end method

.method public setGyroFilePath(Ljava/lang/String;)Lcom/transsion/camera/app/common/taps/entity/LivePhotoInfo$Builder;
    .registers 2

    .line 169
    iput-object p1, p0, Lcom/transsion/camera/app/common/taps/entity/LivePhotoInfo$Builder;->mGyroFilePath:Ljava/lang/String;

    return-object p0
.end method

.method public setLivePhotoVideoPath(Ljava/lang/String;)Lcom/transsion/camera/app/common/taps/entity/LivePhotoInfo$Builder;
    .registers 2

    .line 154
    iput-object p1, p0, Lcom/transsion/camera/app/common/taps/entity/LivePhotoInfo$Builder;->mLivePhotoVideoPath:Ljava/lang/String;

    return-object p0
.end method

.method public setPresentationTimeUs(J)Lcom/transsion/camera/app/common/taps/entity/LivePhotoInfo$Builder;
    .registers 3

    .line 149
    iput-wide p1, p0, Lcom/transsion/camera/app/common/taps/entity/LivePhotoInfo$Builder;->mPresentationTimeUs:J

    return-object p0
.end method

.method public setProcessing(Z)Lcom/transsion/camera/app/common/taps/entity/LivePhotoInfo$Builder;
    .registers 2

    .line 159
    iput-boolean p1, p0, Lcom/transsion/camera/app/common/taps/entity/LivePhotoInfo$Builder;->mProcessing:Z

    return-object p0
.end method
