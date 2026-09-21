.class Lcom/transsion/camera/app/common/groupcapture/GroupCaptureManager$CaptureInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/app/common/groupcapture/GroupCaptureManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CaptureInfo"
.end annotation


# instance fields
.field private mCaptureFailedCount:I

.field private mCaptureTag:I

.field mIsMakeUpOn:Z

.field mJpegInfo:Ljava/util/List;

.field private mReceivedJpegCountOnCaptureFailed:I

.field mTimestamp:J


# direct methods
.method static bridge synthetic -$$Nest$fgetmCaptureTag(Lcom/transsion/camera/app/common/groupcapture/GroupCaptureManager$CaptureInfo;)I
    .registers 1

    .line 0
    iget p0, p0, Lcom/transsion/camera/app/common/groupcapture/GroupCaptureManager$CaptureInfo;->mCaptureTag:I

    return p0
.end method

.method public constructor <init>(Lcom/transsion/camera/app/common/groupcapture/GroupCaptureManager;II)V
    .registers 6

    .line 428
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 421
    iput p1, p0, Lcom/transsion/camera/app/common/groupcapture/GroupCaptureManager$CaptureInfo;->mCaptureFailedCount:I

    .line 422
    iput p1, p0, Lcom/transsion/camera/app/common/groupcapture/GroupCaptureManager$CaptureInfo;->mReceivedJpegCountOnCaptureFailed:I

    const-wide/16 v0, -0x1

    .line 423
    iput-wide v0, p0, Lcom/transsion/camera/app/common/groupcapture/GroupCaptureManager$CaptureInfo;->mTimestamp:J

    .line 426
    iput-boolean p1, p0, Lcom/transsion/camera/app/common/groupcapture/GroupCaptureManager$CaptureInfo;->mIsMakeUpOn:Z

    .line 429
    iput p2, p0, Lcom/transsion/camera/app/common/groupcapture/GroupCaptureManager$CaptureInfo;->mCaptureTag:I

    .line 430
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1, p3}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p1, p0, Lcom/transsion/camera/app/common/groupcapture/GroupCaptureManager$CaptureInfo;->mJpegInfo:Ljava/util/List;

    return-void
.end method


# virtual methods
.method addCaptureFailedCount()V
    .registers 4

    .line 447
    iget v0, p0, Lcom/transsion/camera/app/common/groupcapture/GroupCaptureManager$CaptureInfo;->mCaptureFailedCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/transsion/camera/app/common/groupcapture/GroupCaptureManager$CaptureInfo;->mCaptureFailedCount:I

    .line 448
    invoke-static {}, Lcom/transsion/camera/app/common/groupcapture/GroupCaptureManager;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addCaptureFailedCount, mCaptureFailedCount: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/transsion/camera/app/common/groupcapture/GroupCaptureManager$CaptureInfo;->mCaptureFailedCount:I

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method addJpegInfo(Lcom/transsion/camera/app/common/groupcapture/GroupCaptureManager$JpegInfo;)V
    .registers 4

    .line 438
    iget v0, p0, Lcom/transsion/camera/app/common/groupcapture/GroupCaptureManager$CaptureInfo;->mCaptureFailedCount:I

    if-lez v0, :cond_25

    .line 439
    iget p1, p0, Lcom/transsion/camera/app/common/groupcapture/GroupCaptureManager$CaptureInfo;->mReceivedJpegCountOnCaptureFailed:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/transsion/camera/app/common/groupcapture/GroupCaptureManager$CaptureInfo;->mReceivedJpegCountOnCaptureFailed:I

    .line 440
    invoke-static {}, Lcom/transsion/camera/app/common/groupcapture/GroupCaptureManager;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "addJpegInfo, mReceivedJpegCountOnCaptureFailed: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/transsion/camera/app/common/groupcapture/GroupCaptureManager$CaptureInfo;->mReceivedJpegCountOnCaptureFailed:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 443
    :cond_25
    iget-object p0, p0, Lcom/transsion/camera/app/common/groupcapture/GroupCaptureManager$CaptureInfo;->mJpegInfo:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method getJpegInfoByIndex(I)Lcom/transsion/camera/app/common/groupcapture/GroupCaptureManager$JpegInfo;
    .registers 2

    .line 434
    iget-object p0, p0, Lcom/transsion/camera/app/common/groupcapture/GroupCaptureManager$CaptureInfo;->mJpegInfo:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/camera/app/common/groupcapture/GroupCaptureManager$JpegInfo;

    return-object p0
.end method

.method isAllJpegReceivedOnCaptureFailed()Z
    .registers 3

    .line 466
    iget v0, p0, Lcom/transsion/camera/app/common/groupcapture/GroupCaptureManager$CaptureInfo;->mCaptureFailedCount:I

    const/4 v1, 0x0

    if-lez v0, :cond_d

    .line 467
    iget p0, p0, Lcom/transsion/camera/app/common/groupcapture/GroupCaptureManager$CaptureInfo;->mReceivedJpegCountOnCaptureFailed:I

    add-int/2addr v0, p0

    const/4 p0, 0x4

    if-ne v0, p0, :cond_d

    const/4 p0, 0x1

    return p0

    :cond_d
    return v1
.end method

.method isValid()Z
    .registers 5

    .line 452
    iget-object v0, p0, Lcom/transsion/camera/app/common/groupcapture/GroupCaptureManager$CaptureInfo;->mJpegInfo:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x4

    const/4 v2, 0x0

    if-ge v0, v1, :cond_31

    .line 453
    invoke-static {}, Lcom/transsion/camera/app/common/groupcapture/GroupCaptureManager;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isValid, CaptureInfo not valid, mJpegInfo size: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/transsion/camera/app/common/groupcapture/GroupCaptureManager$CaptureInfo;->mJpegInfo:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ","

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return v2

    .line 456
    :cond_31
    iget-object v0, p0, Lcom/transsion/camera/app/common/groupcapture/GroupCaptureManager$CaptureInfo;->mJpegInfo:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_37
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_62

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/camera/app/common/groupcapture/GroupCaptureManager$JpegInfo;

    .line 457
    invoke-virtual {v1}, Lcom/transsion/camera/app/common/groupcapture/GroupCaptureManager$JpegInfo;->isValid()Z

    move-result v1

    if-nez v1, :cond_37

    .line 458
    invoke-static {}, Lcom/transsion/camera/app/common/groupcapture/GroupCaptureManager;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isValid, CaptureInfo not valid, JpegInfo is invalid:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return v2

    :cond_62
    const/4 p0, 0x1

    return p0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 474
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CaptureInfo{ mCaptureTag= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/transsion/camera/app/common/groupcapture/GroupCaptureManager$CaptureInfo;->mCaptureTag:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo p0, "}"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
