.class public Lcom/transsion/camera/app/common/taps/entity/LivePhotoInfo;
.super Lcom/transsion/camera/app/common/taps/entity/BaseInfo;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/app/common/taps/entity/LivePhotoInfo$Builder;
    }
.end annotation


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private final mCamFilePath:Ljava/lang/String;

.field private final mCount:Ljava/util/concurrent/CountDownLatch;

.field private final mGyroFilePath:Ljava/lang/String;

.field private final mLivePhotoVideoPath:Ljava/lang/String;

.field private final mPresentationTimeUs:J

.field private final mProcessing:Z


# direct methods
.method static bridge synthetic -$$Nest$fgetmCount(Lcom/transsion/camera/app/common/taps/entity/LivePhotoInfo;)Ljava/util/concurrent/CountDownLatch;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/app/common/taps/entity/LivePhotoInfo;->mCount:Ljava/util/concurrent/CountDownLatch;

    return-object p0
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 16
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "LivePhotoInfo"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/app/common/taps/entity/LivePhotoInfo;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method private constructor <init>(JJLjava/lang/String;ZLjava/util/concurrent/CountDownLatch;Ljava/lang/String;Ljava/lang/String;)V
    .registers 10

    .line 30
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/app/common/taps/entity/BaseInfo;-><init>(J)V

    .line 31
    iput-wide p3, p0, Lcom/transsion/camera/app/common/taps/entity/LivePhotoInfo;->mPresentationTimeUs:J

    .line 32
    iput-object p5, p0, Lcom/transsion/camera/app/common/taps/entity/LivePhotoInfo;->mLivePhotoVideoPath:Ljava/lang/String;

    .line 33
    iput-boolean p6, p0, Lcom/transsion/camera/app/common/taps/entity/LivePhotoInfo;->mProcessing:Z

    if-eqz p6, :cond_48

    if-eqz p7, :cond_1b

    .line 35
    invoke-virtual {p7}, Ljava/util/concurrent/CountDownLatch;->getCount()J

    move-result-wide p1

    const-wide/16 p3, 0x0

    cmp-long p1, p1, p3

    if-nez p1, :cond_18

    goto :goto_1b

    .line 38
    :cond_18
    iput-object p7, p0, Lcom/transsion/camera/app/common/taps/entity/LivePhotoInfo;->mCount:Ljava/util/concurrent/CountDownLatch;

    goto :goto_23

    .line 36
    :cond_1b
    :goto_1b
    new-instance p1, Ljava/util/concurrent/CountDownLatch;

    const/4 p2, 0x1

    invoke-direct {p1, p2}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object p1, p0, Lcom/transsion/camera/app/common/taps/entity/LivePhotoInfo;->mCount:Ljava/util/concurrent/CountDownLatch;

    .line 40
    :goto_23
    sget-object p1, Lcom/transsion/camera/app/common/taps/entity/LivePhotoInfo;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "["

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/taps/entity/BaseInfo;->getTimestampKey()J

    move-result-wide p3

    invoke-virtual {p2, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p3, "] lock = "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/transsion/camera/app/common/taps/entity/LivePhotoInfo;->mCount:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    goto :goto_4a

    .line 42
    :cond_48
    iput-object p7, p0, Lcom/transsion/camera/app/common/taps/entity/LivePhotoInfo;->mCount:Ljava/util/concurrent/CountDownLatch;

    .line 44
    :goto_4a
    iput-object p8, p0, Lcom/transsion/camera/app/common/taps/entity/LivePhotoInfo;->mCamFilePath:Ljava/lang/String;

    .line 45
    iput-object p9, p0, Lcom/transsion/camera/app/common/taps/entity/LivePhotoInfo;->mGyroFilePath:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(JJLjava/lang/String;ZLjava/util/concurrent/CountDownLatch;Ljava/lang/String;Ljava/lang/String;Lcom/transsion/camera/app/common/taps/entity/LivePhotoInfo-IA;)V
    .registers 11

    .line 0
    invoke-direct/range {p0 .. p9}, Lcom/transsion/camera/app/common/taps/entity/LivePhotoInfo;-><init>(JJLjava/lang/String;ZLjava/util/concurrent/CountDownLatch;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static getAvailablePath(Landroid/content/Context;Lcom/transsion/camera/app/common/taps/entity/LivePhotoInfo;)Ljava/lang/String;
    .registers 8

    .line 226
    const-string v0, ""

    const-string v1, "getAvailablePath: "

    if-eqz p1, :cond_9b

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/taps/entity/BaseInfo;->getTimestampKey()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_9b

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/taps/entity/LivePhotoInfo;->getPresentationTimeUs()J

    move-result-wide v2

    cmp-long v2, v2, v4

    if-gtz v2, :cond_1a

    goto/16 :goto_9b

    .line 230
    :cond_1a
    invoke-virtual {p1}, Lcom/transsion/camera/app/common/taps/entity/LivePhotoInfo;->getLivePhotoVideoPath()Ljava/lang/String;

    move-result-object v2

    .line 231
    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object p0

    .line 233
    sget-object v3, Lcom/transsion/camera/app/common/taps/entity/LivePhotoInfo;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getAvailablePath: path: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", cacheDir.getPath(): "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " ,livePhotoInfo :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 234
    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_5c

    .line 235
    new-instance p0, Ljava/io/File;

    invoke-direct {p0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    goto :goto_62

    .line 237
    :cond_5c
    new-instance p1, Ljava/io/File;

    invoke-direct {p1, p0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object p0, p1

    .line 239
    :goto_62
    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p1

    .line 240
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_84

    .line 241
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " is not exist"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-object v0

    .line 244
    :cond_84
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 245
    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 227
    :cond_9b
    :goto_9b
    sget-object p0, Lcom/transsion/camera/app/common/taps/entity/LivePhotoInfo;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " is invalid"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-object v0
.end method

.method public static getInstance(JJLjava/lang/String;ZLjava/lang/String;Ljava/lang/String;)Lcom/transsion/camera/app/common/taps/entity/LivePhotoInfo;
    .registers 9

    .line 196
    new-instance v0, Lcom/transsion/camera/app/common/taps/entity/LivePhotoInfo$Builder;

    invoke-direct {v0, p0, p1}, Lcom/transsion/camera/app/common/taps/entity/LivePhotoInfo$Builder;-><init>(J)V

    .line 197
    invoke-virtual {v0, p2, p3}, Lcom/transsion/camera/app/common/taps/entity/LivePhotoInfo$Builder;->setPresentationTimeUs(J)Lcom/transsion/camera/app/common/taps/entity/LivePhotoInfo$Builder;

    move-result-object p0

    .line 198
    invoke-virtual {p0, p4}, Lcom/transsion/camera/app/common/taps/entity/LivePhotoInfo$Builder;->setLivePhotoVideoPath(Ljava/lang/String;)Lcom/transsion/camera/app/common/taps/entity/LivePhotoInfo$Builder;

    move-result-object p0

    .line 199
    invoke-virtual {p0, p5}, Lcom/transsion/camera/app/common/taps/entity/LivePhotoInfo$Builder;->setProcessing(Z)Lcom/transsion/camera/app/common/taps/entity/LivePhotoInfo$Builder;

    move-result-object p0

    .line 200
    invoke-virtual {p0, p6}, Lcom/transsion/camera/app/common/taps/entity/LivePhotoInfo$Builder;->setCamFilePath(Ljava/lang/String;)Lcom/transsion/camera/app/common/taps/entity/LivePhotoInfo$Builder;

    move-result-object p0

    .line 201
    invoke-virtual {p0, p7}, Lcom/transsion/camera/app/common/taps/entity/LivePhotoInfo$Builder;->setGyroFilePath(Ljava/lang/String;)Lcom/transsion/camera/app/common/taps/entity/LivePhotoInfo$Builder;

    move-result-object p0

    .line 202
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/taps/entity/LivePhotoInfo$Builder;->build()Lcom/transsion/camera/app/common/taps/entity/LivePhotoInfo;

    move-result-object p0

    return-object p0
.end method

.method public static getInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/camera/app/common/taps/entity/LivePhotoInfo;
    .registers 13

    .line 179
    sget-object v0, Lcom/transsion/camera/app/common/taps/entity/LivePhotoInfo;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getInstance: name = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " ,camFilePath :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " ,gyroFilePath :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 182
    const-string v0, ".mp4"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 183
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 184
    array-length v1, v0

    const/4 v2, 0x3

    if-le v1, v2, :cond_57

    .line 185
    array-length v1, v0

    add-int/lit8 v1, v1, -0x2

    aget-object v1, v0, v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    .line 186
    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    aget-object v0, v0, v1

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    const/4 v7, 0x0

    move-object v6, p0

    move-object v8, p1

    move-object v9, p2

    .line 187
    invoke-static/range {v2 .. v9}, Lcom/transsion/camera/app/common/taps/entity/LivePhotoInfo;->getInstance(JJLjava/lang/String;ZLjava/lang/String;Ljava/lang/String;)Lcom/transsion/camera/app/common/taps/entity/LivePhotoInfo;

    move-result-object p0

    return-object p0

    :cond_57
    const/4 p0, 0x0

    return-object p0
.end method

.method public static isCamValidName(Ljava/lang/String;)Z
    .registers 2

    if-eqz p0, :cond_12

    .line 213
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_12

    const-string v0, "_camFile"

    .line 214
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_12

    const/4 p0, 0x1

    return p0

    :cond_12
    const/4 p0, 0x0

    return p0
.end method

.method public static isGyroValidName(Ljava/lang/String;)Z
    .registers 2

    if-eqz p0, :cond_12

    .line 219
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_12

    const-string v0, "_gyroFile"

    .line 220
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_12

    const/4 p0, 0x1

    return p0

    :cond_12
    const/4 p0, 0x0

    return p0
.end method

.method public static isVideoValidName(Ljava/lang/String;)Z
    .registers 2

    .line 206
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_18

    const-string v0, "live_video_"

    .line 207
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_18

    const-string v0, ".mp4"

    .line 208
    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_18

    const/4 p0, 0x1

    return p0

    :cond_18
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public complete()V
    .registers 5

    .line 83
    iget-boolean v0, p0, Lcom/transsion/camera/app/common/taps/entity/LivePhotoInfo;->mProcessing:Z

    if-nez v0, :cond_2f

    iget-object v0, p0, Lcom/transsion/camera/app/common/taps/entity/LivePhotoInfo;->mCount:Ljava/util/concurrent/CountDownLatch;

    if-eqz v0, :cond_2f

    .line 84
    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 85
    sget-object v0, Lcom/transsion/camera/app/common/taps/entity/LivePhotoInfo;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/taps/entity/BaseInfo;->getTimestampKey()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, "] unlock = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/transsion/camera/app/common/taps/entity/LivePhotoInfo;->mCount:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    :cond_2f
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 9

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 94
    :cond_4
    instance-of v1, p1, Lcom/transsion/camera/app/common/taps/entity/LivePhotoInfo;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    .line 97
    :cond_a
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/taps/entity/BaseInfo;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_11

    return v2

    .line 100
    :cond_11
    check-cast p1, Lcom/transsion/camera/app/common/taps/entity/LivePhotoInfo;

    .line 101
    iget-wide v3, p0, Lcom/transsion/camera/app/common/taps/entity/LivePhotoInfo;->mPresentationTimeUs:J

    iget-wide v5, p1, Lcom/transsion/camera/app/common/taps/entity/LivePhotoInfo;->mPresentationTimeUs:J

    cmp-long v1, v3, v5

    if-nez v1, :cond_40

    iget-object v1, p0, Lcom/transsion/camera/app/common/taps/entity/LivePhotoInfo;->mLivePhotoVideoPath:Ljava/lang/String;

    iget-object v3, p1, Lcom/transsion/camera/app/common/taps/entity/LivePhotoInfo;->mLivePhotoVideoPath:Ljava/lang/String;

    .line 102
    invoke-static {v1, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_40

    iget-boolean v1, p0, Lcom/transsion/camera/app/common/taps/entity/LivePhotoInfo;->mProcessing:Z

    iget-boolean v3, p1, Lcom/transsion/camera/app/common/taps/entity/LivePhotoInfo;->mProcessing:Z

    if-ne v1, v3, :cond_40

    iget-object v1, p0, Lcom/transsion/camera/app/common/taps/entity/LivePhotoInfo;->mCamFilePath:Ljava/lang/String;

    iget-object v3, p1, Lcom/transsion/camera/app/common/taps/entity/LivePhotoInfo;->mCamFilePath:Ljava/lang/String;

    .line 104
    invoke-static {v1, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_40

    iget-object p0, p0, Lcom/transsion/camera/app/common/taps/entity/LivePhotoInfo;->mGyroFilePath:Ljava/lang/String;

    iget-object p1, p1, Lcom/transsion/camera/app/common/taps/entity/LivePhotoInfo;->mGyroFilePath:Ljava/lang/String;

    .line 105
    invoke-static {p0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_40

    return v0

    :cond_40
    return v2
.end method

.method public getCamFilePath()Ljava/lang/String;
    .registers 1

    .line 75
    iget-object p0, p0, Lcom/transsion/camera/app/common/taps/entity/LivePhotoInfo;->mCamFilePath:Ljava/lang/String;

    return-object p0
.end method

.method public getGyroFilePath()Ljava/lang/String;
    .registers 1

    .line 79
    iget-object p0, p0, Lcom/transsion/camera/app/common/taps/entity/LivePhotoInfo;->mGyroFilePath:Ljava/lang/String;

    return-object p0
.end method

.method public getLivePhotoVideoPath()Ljava/lang/String;
    .registers 1

    .line 53
    iget-object p0, p0, Lcom/transsion/camera/app/common/taps/entity/LivePhotoInfo;->mLivePhotoVideoPath:Ljava/lang/String;

    return-object p0
.end method

.method public getPresentationTimeUs()J
    .registers 3

    .line 49
    iget-wide v0, p0, Lcom/transsion/camera/app/common/taps/entity/LivePhotoInfo;->mPresentationTimeUs:J

    return-wide v0
.end method

.method public hashCode()I
    .registers 5

    .line 110
    invoke-super {p0}, Lcom/transsion/camera/app/common/taps/entity/BaseInfo;->hashCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-wide v1, p0, Lcom/transsion/camera/app/common/taps/entity/LivePhotoInfo;->mPresentationTimeUs:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iget-object v2, p0, Lcom/transsion/camera/app/common/taps/entity/LivePhotoInfo;->mLivePhotoVideoPath:Ljava/lang/String;

    iget-object v3, p0, Lcom/transsion/camera/app/common/taps/entity/LivePhotoInfo;->mCamFilePath:Ljava/lang/String;

    iget-object p0, p0, Lcom/transsion/camera/app/common/taps/entity/LivePhotoInfo;->mGyroFilePath:Ljava/lang/String;

    filled-new-array {v0, v1, v2, v3, p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public isProcessing()Z
    .registers 2

    const/4 v0, 0x0

    .line 57
    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/common/taps/entity/LivePhotoInfo;->isProcessing(Z)Z

    move-result p0

    return p0
.end method

.method public isProcessing(Z)Z
    .registers 6

    if-eqz p1, :cond_3c

    .line 61
    iget-object v0, p0, Lcom/transsion/camera/app/common/taps/entity/LivePhotoInfo;->mCount:Ljava/util/concurrent/CountDownLatch;

    if-eqz v0, :cond_3c

    .line 62
    sget-object v0, Lcom/transsion/camera/app/common/taps/entity/LivePhotoInfo;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isProcessing: block = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, ", mCount = "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/transsion/camera/app/common/taps/entity/LivePhotoInfo;->mCount:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 64
    :try_start_26
    iget-object p1, p0, Lcom/transsion/camera/app/common/taps/entity/LivePhotoInfo;->mCount:Ljava/util/concurrent/CountDownLatch;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0xbb8

    invoke-virtual {p1, v2, v3, v1}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result p1

    if-nez p1, :cond_3c

    .line 65
    const-string p1, "isProcessing: time out"

    invoke-static {v0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V
    :try_end_37
    .catch Ljava/lang/InterruptedException; {:try_start_26 .. :try_end_37} :catch_38

    goto :goto_3c

    :catch_38
    move-exception p1

    .line 68
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 71
    :cond_3c
    :goto_3c
    iget-boolean p0, p0, Lcom/transsion/camera/app/common/taps/entity/LivePhotoInfo;->mProcessing:Z

    return p0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 116
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "{ mTimestampKey: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 117
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/taps/entity/BaseInfo;->getTimestampKey()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", mLivePhotoVideoPath: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/transsion/camera/app/common/taps/entity/LivePhotoInfo;->mLivePhotoVideoPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mPresentationTimeUs: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/transsion/camera/app/common/taps/entity/LivePhotoInfo;->mPresentationTimeUs:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", mProcessing: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/transsion/camera/app/common/taps/entity/LivePhotoInfo;->mProcessing:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mCamFile"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/transsion/camera/app/common/taps/entity/LivePhotoInfo;->mCamFilePath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mGyroFile"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/transsion/camera/app/common/taps/entity/LivePhotoInfo;->mGyroFilePath:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo p0, "}"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
