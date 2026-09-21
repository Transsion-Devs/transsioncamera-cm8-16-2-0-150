.class public Lcom/transsion/camera/app/common/provider/QuickCaptureManager;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/app/common/provider/QuickCaptureManager$RecorderHandle;,
        Lcom/transsion/camera/app/common/provider/QuickCaptureManager$QuickCaptureResultListener;
    }
.end annotation


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private mCurActionCount:I

.field private mIsDownReceived:Z

.field private final mJpegItemList:Ljava/util/List;

.field private volatile mPictureProcessingNumber:Ljava/util/concurrent/atomic/AtomicInteger;

.field private mQCHandle:Landroid/os/Handler;

.field private mQCResultListener:Lcom/transsion/camera/app/common/provider/QuickCaptureManager$QuickCaptureResultListener;

.field private volatile mShutterActionMap:Ljava/util/LinkedHashMap;

.field private final mThumbnailItemList:Ljava/util/List;


# direct methods
.method static bridge synthetic -$$Nest$mprocessFinishThisShot(Lcom/transsion/camera/app/common/provider/QuickCaptureManager;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/app/common/provider/QuickCaptureManager;->processFinishThisShot()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mprocessLeave(Lcom/transsion/camera/app/common/provider/QuickCaptureManager;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/app/common/provider/QuickCaptureManager;->processLeave()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mprocessSaveData(Lcom/transsion/camera/app/common/provider/QuickCaptureManager;[BZLcom/transsion/camera/app/common/mode/ICameraMode;J)V
    .registers 6

    .line 0
    invoke-direct/range {p0 .. p5}, Lcom/transsion/camera/app/common/provider/QuickCaptureManager;->processSaveData([BZLcom/transsion/camera/app/common/mode/ICameraMode;J)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mprocessShutterAction(Lcom/transsion/camera/app/common/provider/QuickCaptureManager;I)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/common/provider/QuickCaptureManager;->processShutterAction(I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mprocessShutterStart(Lcom/transsion/camera/app/common/provider/QuickCaptureManager;Z)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/common/provider/QuickCaptureManager;->processShutterStart(Z)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mprocessThumbnail(Lcom/transsion/camera/app/common/provider/QuickCaptureManager;ILandroid/graphics/Bitmap;Lcom/transsion/camera/app/common/mode/ICameraMode;Lcom/transsion/camera/app/common/mode/TimestampInfo;)V
    .registers 5

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/transsion/camera/app/common/provider/QuickCaptureManager;->processThumbnail(ILandroid/graphics/Bitmap;Lcom/transsion/camera/app/common/mode/ICameraMode;Lcom/transsion/camera/app/common/mode/TimestampInfo;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;
    .registers 1

    .line 0
    sget-object v0, Lcom/transsion/camera/app/common/provider/QuickCaptureManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 31
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "QuickCaptureManager"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/app/common/provider/QuickCaptureManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>()V
    .registers 4

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/app/common/provider/QuickCaptureManager;->mShutterActionMap:Ljava/util/LinkedHashMap;

    const/4 v0, 0x0

    .line 49
    iput v0, p0, Lcom/transsion/camera/app/common/provider/QuickCaptureManager;->mCurActionCount:I

    .line 50
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/transsion/camera/app/common/provider/QuickCaptureManager;->mThumbnailItemList:Ljava/util/List;

    .line 51
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/transsion/camera/app/common/provider/QuickCaptureManager;->mJpegItemList:Ljava/util/List;

    .line 52
    new-instance v1, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v1, v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v1, p0, Lcom/transsion/camera/app/common/provider/QuickCaptureManager;->mPictureProcessingNumber:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 53
    iput-boolean v0, p0, Lcom/transsion/camera/app/common/provider/QuickCaptureManager;->mIsDownReceived:Z

    .line 56
    sget-object v0, Lcom/transsion/camera/app/common/provider/QuickCaptureManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "QuickCaptureManager"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 57
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "quickcapture_thread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 58
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 59
    new-instance v1, Lcom/transsion/camera/app/common/provider/QuickCaptureManager$RecorderHandle;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    const/4 v2, 0x0

    invoke-direct {v1, p0, v0, v2}, Lcom/transsion/camera/app/common/provider/QuickCaptureManager$RecorderHandle;-><init>(Lcom/transsion/camera/app/common/provider/QuickCaptureManager;Landroid/os/Looper;Lcom/transsion/camera/app/common/provider/QuickCaptureManager-IA;)V

    iput-object v1, p0, Lcom/transsion/camera/app/common/provider/QuickCaptureManager;->mQCHandle:Landroid/os/Handler;

    return-void
.end method

.method private actionToString(I)Ljava/lang/String;
    .registers 3

    if-eqz p1, :cond_31

    const/4 p0, 0x1

    if-eq p1, p0, :cond_2e

    const/4 p0, 0x2

    if-eq p1, p0, :cond_2b

    const/4 p0, 0x3

    if-eq p1, p0, :cond_28

    const/4 p0, 0x4

    if-eq p1, p0, :cond_25

    .line 240
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "UNKNOWN("

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 238
    :cond_25
    const-string p0, "SHUTTER_ACTION_CANCEL"

    return-object p0

    .line 236
    :cond_28
    const-string p0, "SHUTTER_ACTION_LONG"

    return-object p0

    .line 234
    :cond_2b
    const-string p0, "SHUTTER_ACTION_CLICK"

    return-object p0

    .line 232
    :cond_2e
    const-string p0, "SHUTTER_ACTION_UP"

    return-object p0

    .line 230
    :cond_31
    const-string p0, "SHUTTER_ACTION_DOWN"

    return-object p0
.end method

.method private getCurQCActionItemForShutterStart()Lcom/transsion/camera/app/common/provider/QuickCaptureActionItem;
    .registers 3

    .line 507
    iget-object p0, p0, Lcom/transsion/camera/app/common/provider/QuickCaptureManager;->mShutterActionMap:Ljava/util/LinkedHashMap;

    invoke-virtual {p0}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v0, 0x0

    .line 509
    :cond_b
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_25

    .line 510
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 511
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/camera/app/common/provider/QuickCaptureActionItem;

    if-eqz v0, :cond_b

    .line 512
    invoke-virtual {v0}, Lcom/transsion/camera/app/common/provider/QuickCaptureActionItem;->isQCProcessShutterStartDone()Z

    move-result v1

    if-nez v1, :cond_b

    :cond_25
    return-object v0
.end method

.method private getCurQCActionItemForThumbnail()Lcom/transsion/camera/app/common/provider/QuickCaptureActionItem;
    .registers 3

    .line 494
    iget-object p0, p0, Lcom/transsion/camera/app/common/provider/QuickCaptureManager;->mShutterActionMap:Ljava/util/LinkedHashMap;

    invoke-virtual {p0}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v0, 0x0

    .line 496
    :cond_b
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_25

    .line 497
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 498
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/camera/app/common/provider/QuickCaptureActionItem;

    if-eqz v0, :cond_b

    .line 499
    invoke-virtual {v0}, Lcom/transsion/camera/app/common/provider/QuickCaptureActionItem;->isQCProcessThumbnailDone()Z

    move-result v1

    if-nez v1, :cond_b

    :cond_25
    return-object v0
.end method

.method private getShutterActionMapHeadItem()Lcom/transsion/camera/app/common/provider/QuickCaptureActionItem;
    .registers 2

    .line 474
    iget-object p0, p0, Lcom/transsion/camera/app/common/provider/QuickCaptureManager;->mShutterActionMap:Ljava/util/LinkedHashMap;

    invoke-virtual {p0}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    .line 476
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 477
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Map$Entry;

    .line 478
    invoke-interface {p0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/camera/app/common/provider/QuickCaptureActionItem;

    return-object p0

    :cond_1d
    const/4 p0, 0x0

    return-object p0
.end method

.method private getShutterActionMapHeadKey()Ljava/lang/String;
    .registers 2

    .line 484
    iget-object p0, p0, Lcom/transsion/camera/app/common/provider/QuickCaptureManager;->mShutterActionMap:Ljava/util/LinkedHashMap;

    invoke-virtual {p0}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    .line 486
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 487
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Map$Entry;

    .line 488
    invoke-interface {p0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0

    :cond_1d
    const/4 p0, 0x0

    return-object p0
.end method

.method private isNeedIncreaseCount(I)Z
    .registers 6

    const/4 v0, 0x1

    if-nez p1, :cond_6

    .line 247
    iput-boolean v0, p0, Lcom/transsion/camera/app/common/provider/QuickCaptureManager;->mIsDownReceived:Z

    goto :goto_18

    :cond_6
    const/4 v1, 0x2

    const/4 v2, 0x0

    if-ne p1, v1, :cond_10

    .line 250
    iget-boolean v1, p0, Lcom/transsion/camera/app/common/provider/QuickCaptureManager;->mIsDownReceived:Z

    xor-int/2addr v0, v1

    .line 251
    iput-boolean v2, p0, Lcom/transsion/camera/app/common/provider/QuickCaptureManager;->mIsDownReceived:Z

    goto :goto_18

    :cond_10
    if-eq p1, v0, :cond_15

    const/4 v0, 0x4

    if-ne p1, v0, :cond_17

    .line 253
    :cond_15
    iput-boolean v2, p0, Lcom/transsion/camera/app/common/provider/QuickCaptureManager;->mIsDownReceived:Z

    :cond_17
    move v0, v2

    .line 255
    :goto_18
    sget-object v1, Lcom/transsion/camera/app/common/provider/QuickCaptureManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isNeedIncreaseCount: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, p1}, Lcom/transsion/camera/app/common/provider/QuickCaptureManager;->actionToString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", isNeed = "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, ", mIsDownReceived = "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/transsion/camera/app/common/provider/QuickCaptureManager;->mIsDownReceived:Z

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return v0
.end method

.method private printShutterActionMap()V
    .registers 7

    .line 520
    iget-object v0, p0, Lcom/transsion/camera/app/common/provider/QuickCaptureManager;->mShutterActionMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 523
    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_55

    .line 524
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 525
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 526
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/camera/app/common/provider/QuickCaptureActionItem;

    .line 527
    sget-object v3, Lcom/transsion/camera/app/common/provider/QuickCaptureManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[QuickCapture]printShutterActionMap, key:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", action:"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 528
    invoke-virtual {v1}, Lcom/transsion/camera/app/common/provider/QuickCaptureActionItem;->getQCAction()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/transsion/camera/app/common/provider/QuickCaptureManager;->actionToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", need animation:"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/transsion/camera/app/common/provider/QuickCaptureActionItem;->isQCNeedAnimation()Z

    move-result v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 527
    invoke-static {v3, v1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    goto :goto_a

    .line 530
    :cond_55
    sget-object v0, Lcom/transsion/camera/app/common/provider/QuickCaptureManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[QuickCapture]printShutterActionMap, ActionMap size:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/app/common/provider/QuickCaptureManager;->mShutterActionMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v2}, Ljava/util/AbstractMap;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", Thumbnail List size:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/app/common/provider/QuickCaptureManager;->mThumbnailItemList:Ljava/util/List;

    .line 531
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", Jpeg List size:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/transsion/camera/app/common/provider/QuickCaptureManager;->mJpegItemList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 530
    invoke-static {v0, p0}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method private processFinishThisShot()V
    .registers 5

    .line 420
    iget-object v0, p0, Lcom/transsion/camera/app/common/provider/QuickCaptureManager;->mShutterActionMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/AbstractMap;->size()I

    move-result v0

    if-gtz v0, :cond_10

    .line 421
    sget-object p0, Lcom/transsion/camera/app/common/provider/QuickCaptureManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "[QuickCapture]processFinishThisShot, not need remove"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 424
    :cond_10
    invoke-direct {p0}, Lcom/transsion/camera/app/common/provider/QuickCaptureManager;->getShutterActionMapHeadKey()Ljava/lang/String;

    move-result-object v0

    .line 425
    sget-object v1, Lcom/transsion/camera/app/common/provider/QuickCaptureManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[QuickCapture]processFinishThisShot remove key:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 426
    iget-object v1, p0, Lcom/transsion/camera/app/common/provider/QuickCaptureManager;->mShutterActionMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v1, v0}, Ljava/util/AbstractMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 427
    invoke-direct {p0}, Lcom/transsion/camera/app/common/provider/QuickCaptureManager;->printShutterActionMap()V

    return-void
.end method

.method private processLeave()V
    .registers 13

    .line 431
    iget-object v0, p0, Lcom/transsion/camera/app/common/provider/QuickCaptureManager;->mShutterActionMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 433
    sget-object v1, Lcom/transsion/camera/app/common/provider/QuickCaptureManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[QuickCapture]processLeave, ActionMap size:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/transsion/camera/app/common/provider/QuickCaptureManager;->mShutterActionMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v3}, Ljava/util/AbstractMap;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 434
    :cond_26
    :goto_26
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_14c

    .line 435
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 436
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/transsion/camera/app/common/provider/QuickCaptureActionItem;

    .line 437
    sget-object v3, Lcom/transsion/camera/app/common/provider/QuickCaptureManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[QuickCapture]processLeave, action:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/transsion/camera/app/common/provider/QuickCaptureActionItem;->getQCAction()I

    move-result v5

    invoke-direct {p0, v5}, Lcom/transsion/camera/app/common/provider/QuickCaptureManager;->actionToString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", key:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 438
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 437
    invoke-static {v3, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 439
    invoke-virtual {v2}, Lcom/transsion/camera/app/common/provider/QuickCaptureActionItem;->getQCAction()I

    move-result v1

    const/4 v4, 0x2

    const/4 v5, 0x0

    if-eq v1, v4, :cond_b4

    invoke-virtual {v2}, Lcom/transsion/camera/app/common/provider/QuickCaptureActionItem;->getQCAction()I

    move-result v1

    const/4 v4, 0x1

    if-ne v1, v4, :cond_74

    goto :goto_b4

    .line 454
    :cond_74
    invoke-virtual {v2}, Lcom/transsion/camera/app/common/provider/QuickCaptureActionItem;->getQCAction()I

    move-result v1

    const/4 v4, 0x3

    if-eq v1, v4, :cond_82

    invoke-virtual {v2}, Lcom/transsion/camera/app/common/provider/QuickCaptureActionItem;->getQCAction()I

    move-result v1

    const/4 v4, 0x4

    if-ne v1, v4, :cond_26

    .line 455
    :cond_82
    iget-object v1, p0, Lcom/transsion/camera/app/common/provider/QuickCaptureManager;->mThumbnailItemList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_a0

    .line 456
    invoke-virtual {v2}, Lcom/transsion/camera/app/common/provider/QuickCaptureActionItem;->isQCProcessThumbnailDone()Z

    move-result v1

    if-eqz v1, :cond_96

    .line 457
    const-string v1, "[QuickCapture]processLeave, cur item error, not need discard thumbnail."

    invoke-static {v3, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    goto :goto_a0

    .line 459
    :cond_96
    iget-object v1, p0, Lcom/transsion/camera/app/common/provider/QuickCaptureManager;->mThumbnailItemList:Ljava/util/List;

    invoke-interface {v1, v5}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 460
    const-string v1, "[QuickCapture]processLeave, need discard this thumbnail data"

    invoke-static {v3, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 463
    :cond_a0
    :goto_a0
    iget-object v1, p0, Lcom/transsion/camera/app/common/provider/QuickCaptureManager;->mJpegItemList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_26

    .line 464
    iget-object v1, p0, Lcom/transsion/camera/app/common/provider/QuickCaptureManager;->mJpegItemList:Ljava/util/List;

    invoke-interface {v1, v5}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 465
    const-string v1, "[QuickCapture]processLeave, need discard this jpeg data"

    invoke-static {v3, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    goto/16 :goto_26

    .line 440
    :cond_b4
    :goto_b4
    iget-object v1, p0, Lcom/transsion/camera/app/common/provider/QuickCaptureManager;->mThumbnailItemList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_106

    iget-object v1, p0, Lcom/transsion/camera/app/common/provider/QuickCaptureManager;->mQCResultListener:Lcom/transsion/camera/app/common/provider/QuickCaptureManager$QuickCaptureResultListener;

    if-eqz v1, :cond_106

    .line 441
    invoke-virtual {v2}, Lcom/transsion/camera/app/common/provider/QuickCaptureActionItem;->isQCProcessThumbnailDone()Z

    move-result v1

    if-eqz v1, :cond_cc

    .line 442
    const-string v1, "[QuickCapture]processLeave, cur item error, not need update thumbnail."

    invoke-static {v3, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    goto :goto_106

    .line 444
    :cond_cc
    iget-object v1, p0, Lcom/transsion/camera/app/common/provider/QuickCaptureManager;->mQCResultListener:Lcom/transsion/camera/app/common/provider/QuickCaptureManager$QuickCaptureResultListener;

    iget-object v2, p0, Lcom/transsion/camera/app/common/provider/QuickCaptureManager;->mThumbnailItemList:Ljava/util/List;

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/transsion/camera/app/common/provider/QuickCaptureItem;

    invoke-virtual {v2}, Lcom/transsion/camera/app/common/provider/QuickCaptureItem;->getWhichThumbnail()I

    move-result v2

    iget-object v3, p0, Lcom/transsion/camera/app/common/provider/QuickCaptureManager;->mThumbnailItemList:Ljava/util/List;

    .line 445
    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/transsion/camera/app/common/provider/QuickCaptureItem;

    invoke-virtual {v3}, Lcom/transsion/camera/app/common/provider/QuickCaptureItem;->getCurBitmap()Landroid/graphics/Bitmap;

    move-result-object v3

    iget-object v4, p0, Lcom/transsion/camera/app/common/provider/QuickCaptureManager;->mThumbnailItemList:Ljava/util/List;

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/transsion/camera/app/common/provider/QuickCaptureItem;

    invoke-virtual {v4}, Lcom/transsion/camera/app/common/provider/QuickCaptureItem;->getCurCameraMode()Lcom/transsion/camera/app/common/mode/ICameraMode;

    move-result-object v4

    iget-object v6, p0, Lcom/transsion/camera/app/common/provider/QuickCaptureManager;->mThumbnailItemList:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/transsion/camera/app/common/provider/QuickCaptureItem;

    invoke-virtual {v6}, Lcom/transsion/camera/app/common/provider/QuickCaptureItem;->getTimestampInfo()Lcom/transsion/camera/app/common/mode/TimestampInfo;

    move-result-object v6

    .line 444
    invoke-interface {v1, v2, v3, v4, v6}, Lcom/transsion/camera/app/common/provider/QuickCaptureManager$QuickCaptureResultListener;->needQCUpdateThumbnailView(ILandroid/graphics/Bitmap;Lcom/transsion/camera/app/common/mode/ICameraMode;Lcom/transsion/camera/app/common/mode/TimestampInfo;)I

    .line 446
    iget-object v1, p0, Lcom/transsion/camera/app/common/provider/QuickCaptureManager;->mThumbnailItemList:Ljava/util/List;

    invoke-interface {v1, v5}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 449
    :cond_106
    :goto_106
    iget-object v1, p0, Lcom/transsion/camera/app/common/provider/QuickCaptureManager;->mJpegItemList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_26

    iget-object v6, p0, Lcom/transsion/camera/app/common/provider/QuickCaptureManager;->mQCResultListener:Lcom/transsion/camera/app/common/provider/QuickCaptureManager$QuickCaptureResultListener;

    if-eqz v6, :cond_26

    .line 450
    iget-object v1, p0, Lcom/transsion/camera/app/common/provider/QuickCaptureManager;->mJpegItemList:Ljava/util/List;

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/camera/app/common/provider/QuickCaptureItem;

    invoke-virtual {v1}, Lcom/transsion/camera/app/common/provider/QuickCaptureItem;->getCurJpeg()[B

    move-result-object v7

    iget-object v1, p0, Lcom/transsion/camera/app/common/provider/QuickCaptureManager;->mJpegItemList:Ljava/util/List;

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/camera/app/common/provider/QuickCaptureItem;

    invoke-virtual {v1}, Lcom/transsion/camera/app/common/provider/QuickCaptureItem;->isCurBGImage()Z

    move-result v8

    iget-object v1, p0, Lcom/transsion/camera/app/common/provider/QuickCaptureManager;->mJpegItemList:Ljava/util/List;

    .line 451
    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/camera/app/common/provider/QuickCaptureItem;

    invoke-virtual {v1}, Lcom/transsion/camera/app/common/provider/QuickCaptureItem;->getCurCameraMode()Lcom/transsion/camera/app/common/mode/ICameraMode;

    move-result-object v9

    iget-object v1, p0, Lcom/transsion/camera/app/common/provider/QuickCaptureManager;->mJpegItemList:Ljava/util/List;

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/camera/app/common/provider/QuickCaptureItem;

    invoke-virtual {v1}, Lcom/transsion/camera/app/common/provider/QuickCaptureItem;->getTimeStamp()J

    move-result-wide v10

    .line 450
    invoke-interface/range {v6 .. v11}, Lcom/transsion/camera/app/common/provider/QuickCaptureManager$QuickCaptureResultListener;->needQCSaveJpegToFile([BZLcom/transsion/camera/app/common/mode/ICameraMode;J)I

    .line 452
    iget-object v1, p0, Lcom/transsion/camera/app/common/provider/QuickCaptureManager;->mJpegItemList:Ljava/util/List;

    invoke-interface {v1, v5}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_26

    .line 469
    :cond_14c
    iget-object v0, p0, Lcom/transsion/camera/app/common/provider/QuickCaptureManager;->mShutterActionMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->clear()V

    .line 470
    invoke-direct {p0}, Lcom/transsion/camera/app/common/provider/QuickCaptureManager;->printShutterActionMap()V

    return-void
.end method

.method private processSaveData([BZLcom/transsion/camera/app/common/mode/ICameraMode;J)V
    .registers 13

    .line 382
    invoke-direct {p0}, Lcom/transsion/camera/app/common/provider/QuickCaptureManager;->getShutterActionMapHeadItem()Lcom/transsion/camera/app/common/provider/QuickCaptureActionItem;

    move-result-object v0

    if-nez v0, :cond_15

    .line 384
    sget-object v0, Lcom/transsion/camera/app/common/provider/QuickCaptureManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "[QuickCapture]processSaveData, error"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 385
    iget-object p0, p0, Lcom/transsion/camera/app/common/provider/QuickCaptureManager;->mQCResultListener:Lcom/transsion/camera/app/common/provider/QuickCaptureManager$QuickCaptureResultListener;

    if-eqz p0, :cond_df

    .line 386
    invoke-interface/range {p0 .. p5}, Lcom/transsion/camera/app/common/provider/QuickCaptureManager$QuickCaptureResultListener;->needQCSaveJpegToFile([BZLcom/transsion/camera/app/common/mode/ICameraMode;J)I

    return-void

    .line 391
    :cond_15
    invoke-virtual {v0}, Lcom/transsion/camera/app/common/provider/QuickCaptureActionItem;->getQCAction()I

    move-result v1

    .line 392
    sget-object v2, Lcom/transsion/camera/app/common/provider/QuickCaptureManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[QuickCapture]processSaveData, oldActionState:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, v1}, Lcom/transsion/camera/app/common/provider/QuickCaptureManager;->actionToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", key:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 393
    invoke-virtual {v0}, Lcom/transsion/camera/app/common/provider/QuickCaptureActionItem;->getQCItemKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", isBGImage:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 392
    invoke-static {v2, v3}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    if-nez v1, :cond_74

    .line 396
    new-instance v0, Lcom/transsion/camera/app/common/provider/QuickCaptureItem;

    invoke-direct {v0}, Lcom/transsion/camera/app/common/provider/QuickCaptureItem;-><init>()V

    .line 397
    invoke-virtual {v0, p1, p2, p4, p5}, Lcom/transsion/camera/app/common/provider/QuickCaptureItem;->setJpegItem([BZJ)V

    .line 398
    invoke-virtual {v0, p3}, Lcom/transsion/camera/app/common/provider/QuickCaptureItem;->setCurCameraMode(Lcom/transsion/camera/app/common/mode/ICameraMode;)V

    .line 399
    iget-object p1, p0, Lcom/transsion/camera/app/common/provider/QuickCaptureManager;->mJpegItemList:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 400
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "[QuickCapture]processSaveData, add new jpeg data, Jpeg List size:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/transsion/camera/app/common/provider/QuickCaptureManager;->mJpegItemList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    :cond_74
    const/4 v3, 0x2

    if-eq v1, v3, :cond_ae

    const/4 v3, 0x1

    if-ne v1, v3, :cond_7b

    goto :goto_ae

    .line 409
    :cond_7b
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "[QuickCapture]processSaveData, need discard this jpeg data and finish this shot, FinishThisShot remove key:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 410
    invoke-virtual {v0}, Lcom/transsion/camera/app/common/provider/QuickCaptureActionItem;->getQCItemKey()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 409
    invoke-static {v2, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 411
    iget-object p1, p0, Lcom/transsion/camera/app/common/provider/QuickCaptureManager;->mQCResultListener:Lcom/transsion/camera/app/common/provider/QuickCaptureManager$QuickCaptureResultListener;

    if-eqz p1, :cond_df

    .line 412
    iget-object p1, p0, Lcom/transsion/camera/app/common/provider/QuickCaptureManager;->mShutterActionMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/provider/QuickCaptureActionItem;->getQCItemKey()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/AbstractMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 413
    iget-object v1, p0, Lcom/transsion/camera/app/common/provider/QuickCaptureManager;->mQCResultListener:Lcom/transsion/camera/app/common/provider/QuickCaptureManager$QuickCaptureResultListener;

    const/4 v3, 0x0

    const-wide/16 v5, -0x1

    const/4 v2, 0x0

    move-object v4, p3

    invoke-interface/range {v1 .. v6}, Lcom/transsion/camera/app/common/provider/QuickCaptureManager$QuickCaptureResultListener;->needQCSaveJpegToFile([BZLcom/transsion/camera/app/common/mode/ICameraMode;J)I

    .line 414
    invoke-direct {p0}, Lcom/transsion/camera/app/common/provider/QuickCaptureManager;->printShutterActionMap()V

    return-void

    .line 402
    :cond_ae
    :goto_ae
    iget-object v1, p0, Lcom/transsion/camera/app/common/provider/QuickCaptureManager;->mQCResultListener:Lcom/transsion/camera/app/common/provider/QuickCaptureManager$QuickCaptureResultListener;

    if-eqz v1, :cond_df

    .line 403
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[QuickCapture]processSaveData, needQCSaveJpegToFile and FinishThisShot remove key:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/provider/QuickCaptureActionItem;->getQCItemKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 404
    iget-object v1, p0, Lcom/transsion/camera/app/common/provider/QuickCaptureManager;->mShutterActionMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/provider/QuickCaptureActionItem;->getQCItemKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/AbstractMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 405
    iget-object v0, p0, Lcom/transsion/camera/app/common/provider/QuickCaptureManager;->mQCResultListener:Lcom/transsion/camera/app/common/provider/QuickCaptureManager$QuickCaptureResultListener;

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-wide v4, p4

    invoke-interface/range {v0 .. v5}, Lcom/transsion/camera/app/common/provider/QuickCaptureManager$QuickCaptureResultListener;->needQCSaveJpegToFile([BZLcom/transsion/camera/app/common/mode/ICameraMode;J)I

    .line 406
    invoke-direct {p0}, Lcom/transsion/camera/app/common/provider/QuickCaptureManager;->printShutterActionMap()V

    :cond_df
    return-void
.end method

.method private processShutterAction(I)V
    .registers 13

    .line 260
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/common/provider/QuickCaptureManager;->isNeedIncreaseCount(I)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_c

    .line 261
    iget v0, p0, Lcom/transsion/camera/app/common/provider/QuickCaptureManager;->mCurActionCount:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/transsion/camera/app/common/provider/QuickCaptureManager;->mCurActionCount:I

    .line 264
    :cond_c
    iget-object v0, p0, Lcom/transsion/camera/app/common/provider/QuickCaptureManager;->mShutterActionMap:Ljava/util/LinkedHashMap;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Shutter"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/transsion/camera/app/common/provider/QuickCaptureManager;->mCurActionCount:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/AbstractMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x2

    if-eqz v0, :cond_45

    .line 265
    iget-object v0, p0, Lcom/transsion/camera/app/common/provider/QuickCaptureManager;->mShutterActionMap:Ljava/util/LinkedHashMap;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/transsion/camera/app/common/provider/QuickCaptureManager;->mCurActionCount:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/camera/app/common/provider/QuickCaptureActionItem;

    .line 266
    invoke-virtual {v0, p1}, Lcom/transsion/camera/app/common/provider/QuickCaptureActionItem;->setQCAction(I)V

    goto :goto_7e

    :cond_45
    if-eqz p1, :cond_4c

    if-ne p1, v2, :cond_4a

    goto :goto_4c

    :cond_4a
    const/4 v0, 0x0

    goto :goto_7e

    .line 269
    :cond_4c
    :goto_4c
    new-instance v0, Lcom/transsion/camera/app/common/provider/QuickCaptureActionItem;

    invoke-direct {v0}, Lcom/transsion/camera/app/common/provider/QuickCaptureActionItem;-><init>()V

    .line 270
    invoke-virtual {v0, p1}, Lcom/transsion/camera/app/common/provider/QuickCaptureActionItem;->setQCAction(I)V

    .line 271
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/transsion/camera/app/common/provider/QuickCaptureManager;->mCurActionCount:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/transsion/camera/app/common/provider/QuickCaptureActionItem;->setQCItemKey(Ljava/lang/String;)V

    .line 272
    iget-object v4, p0, Lcom/transsion/camera/app/common/provider/QuickCaptureManager;->mShutterActionMap:Ljava/util/LinkedHashMap;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p0, Lcom/transsion/camera/app/common/provider/QuickCaptureManager;->mCurActionCount:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5, v0}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_7e
    if-nez v0, :cond_97

    .line 277
    sget-object p0, Lcom/transsion/camera/app/common/provider/QuickCaptureManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[QuickCapture]processShutterAction error, action:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 281
    :cond_97
    invoke-virtual {v0}, Lcom/transsion/camera/app/common/provider/QuickCaptureActionItem;->getQCAction()I

    move-result p1

    .line 282
    sget-object v4, Lcom/transsion/camera/app/common/provider/QuickCaptureManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[QuickCapture]processShutterAction, action:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, p1}, Lcom/transsion/camera/app/common/provider/QuickCaptureManager;->actionToString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ", key:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/transsion/camera/app/common/provider/QuickCaptureManager;->mCurActionCount:I

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 v3, 0x0

    if-eq p1, v2, :cond_156

    if-ne p1, v1, :cond_c9

    goto/16 :goto_156

    :cond_c9
    const/4 v1, 0x3

    const/4 v2, 0x4

    if-eq p1, v1, :cond_cf

    if-ne p1, v2, :cond_216

    :cond_cf
    if-ne p1, v2, :cond_da

    .line 304
    iget-object v1, p0, Lcom/transsion/camera/app/common/provider/QuickCaptureManager;->mQCResultListener:Lcom/transsion/camera/app/common/provider/QuickCaptureManager$QuickCaptureResultListener;

    if-eqz v1, :cond_da

    const/16 v2, 0x57

    .line 305
    invoke-interface {v1, v2}, Lcom/transsion/camera/app/common/provider/QuickCaptureManager$QuickCaptureResultListener;->needQCNotifyActionToAppUI(I)I

    .line 307
    :cond_da
    iget-object v1, p0, Lcom/transsion/camera/app/common/provider/QuickCaptureManager;->mThumbnailItemList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_ff

    .line 308
    iget-object v1, p0, Lcom/transsion/camera/app/common/provider/QuickCaptureManager;->mThumbnailItemList:Ljava/util/List;

    invoke-interface {v1, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 309
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[QuickCapture]processShutterAction, need discard this thumbnail data, action:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, p1}, Lcom/transsion/camera/app/common/provider/QuickCaptureManager;->actionToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 311
    :cond_ff
    iget-object v1, p0, Lcom/transsion/camera/app/common/provider/QuickCaptureManager;->mJpegItemList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_216

    iget-object v1, p0, Lcom/transsion/camera/app/common/provider/QuickCaptureManager;->mQCResultListener:Lcom/transsion/camera/app/common/provider/QuickCaptureManager$QuickCaptureResultListener;

    if-eqz v1, :cond_216

    .line 312
    iget-object v1, p0, Lcom/transsion/camera/app/common/provider/QuickCaptureManager;->mJpegItemList:Ljava/util/List;

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/camera/app/common/provider/QuickCaptureItem;

    invoke-virtual {v1}, Lcom/transsion/camera/app/common/provider/QuickCaptureItem;->getCurCameraMode()Lcom/transsion/camera/app/common/mode/ICameraMode;

    move-result-object v8

    .line 313
    iget-object v1, p0, Lcom/transsion/camera/app/common/provider/QuickCaptureManager;->mJpegItemList:Ljava/util/List;

    invoke-interface {v1, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 314
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[QuickCapture]processShutterAction, need discard this jpeg data, action:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, p1}, Lcom/transsion/camera/app/common/provider/QuickCaptureManager;->actionToString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", FinishThisShot remove key:"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 315
    invoke-virtual {v0}, Lcom/transsion/camera/app/common/provider/QuickCaptureActionItem;->getQCItemKey()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 314
    invoke-static {v4, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 316
    iget-object p1, p0, Lcom/transsion/camera/app/common/provider/QuickCaptureManager;->mShutterActionMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/provider/QuickCaptureActionItem;->getQCItemKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/AbstractMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 317
    iget-object v5, p0, Lcom/transsion/camera/app/common/provider/QuickCaptureManager;->mQCResultListener:Lcom/transsion/camera/app/common/provider/QuickCaptureManager$QuickCaptureResultListener;

    const/4 v7, 0x0

    const-wide/16 v9, -0x1

    const/4 v6, 0x0

    invoke-interface/range {v5 .. v10}, Lcom/transsion/camera/app/common/provider/QuickCaptureManager$QuickCaptureResultListener;->needQCSaveJpegToFile([BZLcom/transsion/camera/app/common/mode/ICameraMode;J)I

    .line 318
    invoke-direct {p0}, Lcom/transsion/camera/app/common/provider/QuickCaptureManager;->printShutterActionMap()V

    return-void

    .line 285
    :cond_156
    :goto_156
    invoke-virtual {v0}, Lcom/transsion/camera/app/common/provider/QuickCaptureActionItem;->isQCNeedAnimation()Z

    move-result p1

    if-eqz p1, :cond_16a

    iget-object p1, p0, Lcom/transsion/camera/app/common/provider/QuickCaptureManager;->mQCResultListener:Lcom/transsion/camera/app/common/provider/QuickCaptureManager$QuickCaptureResultListener;

    if-eqz p1, :cond_16a

    .line 286
    invoke-virtual {v0, v3}, Lcom/transsion/camera/app/common/provider/QuickCaptureActionItem;->setQCNeedAnimation(Z)V

    .line 287
    iget-object p1, p0, Lcom/transsion/camera/app/common/provider/QuickCaptureManager;->mQCResultListener:Lcom/transsion/camera/app/common/provider/QuickCaptureManager$QuickCaptureResultListener;

    const/16 v1, 0x96

    invoke-interface {p1, v1}, Lcom/transsion/camera/app/common/provider/QuickCaptureManager$QuickCaptureResultListener;->needQCNotifyActionToAppUI(I)I

    .line 290
    :cond_16a
    iget-object p1, p0, Lcom/transsion/camera/app/common/provider/QuickCaptureManager;->mThumbnailItemList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_1ae

    iget-object p1, p0, Lcom/transsion/camera/app/common/provider/QuickCaptureManager;->mQCResultListener:Lcom/transsion/camera/app/common/provider/QuickCaptureManager$QuickCaptureResultListener;

    if-eqz p1, :cond_1ae

    .line 291
    iget-object v1, p0, Lcom/transsion/camera/app/common/provider/QuickCaptureManager;->mThumbnailItemList:Ljava/util/List;

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/camera/app/common/provider/QuickCaptureItem;

    invoke-virtual {v1}, Lcom/transsion/camera/app/common/provider/QuickCaptureItem;->getWhichThumbnail()I

    move-result v1

    iget-object v2, p0, Lcom/transsion/camera/app/common/provider/QuickCaptureManager;->mThumbnailItemList:Ljava/util/List;

    .line 292
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/transsion/camera/app/common/provider/QuickCaptureItem;

    invoke-virtual {v2}, Lcom/transsion/camera/app/common/provider/QuickCaptureItem;->getCurBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    iget-object v5, p0, Lcom/transsion/camera/app/common/provider/QuickCaptureManager;->mThumbnailItemList:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/transsion/camera/app/common/provider/QuickCaptureItem;

    invoke-virtual {v5}, Lcom/transsion/camera/app/common/provider/QuickCaptureItem;->getCurCameraMode()Lcom/transsion/camera/app/common/mode/ICameraMode;

    move-result-object v5

    iget-object v6, p0, Lcom/transsion/camera/app/common/provider/QuickCaptureManager;->mThumbnailItemList:Ljava/util/List;

    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/transsion/camera/app/common/provider/QuickCaptureItem;

    invoke-virtual {v6}, Lcom/transsion/camera/app/common/provider/QuickCaptureItem;->getTimestampInfo()Lcom/transsion/camera/app/common/mode/TimestampInfo;

    move-result-object v6

    .line 291
    invoke-interface {p1, v1, v2, v5, v6}, Lcom/transsion/camera/app/common/provider/QuickCaptureManager$QuickCaptureResultListener;->needQCUpdateThumbnailView(ILandroid/graphics/Bitmap;Lcom/transsion/camera/app/common/mode/ICameraMode;Lcom/transsion/camera/app/common/mode/TimestampInfo;)I

    .line 293
    iget-object p1, p0, Lcom/transsion/camera/app/common/provider/QuickCaptureManager;->mThumbnailItemList:Ljava/util/List;

    invoke-interface {p1, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 295
    :cond_1ae
    iget-object p1, p0, Lcom/transsion/camera/app/common/provider/QuickCaptureManager;->mJpegItemList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_216

    iget-object v5, p0, Lcom/transsion/camera/app/common/provider/QuickCaptureManager;->mQCResultListener:Lcom/transsion/camera/app/common/provider/QuickCaptureManager$QuickCaptureResultListener;

    if-eqz v5, :cond_216

    .line 296
    iget-object p1, p0, Lcom/transsion/camera/app/common/provider/QuickCaptureManager;->mJpegItemList:Ljava/util/List;

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/transsion/camera/app/common/provider/QuickCaptureItem;

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/provider/QuickCaptureItem;->getCurJpeg()[B

    move-result-object v6

    iget-object p1, p0, Lcom/transsion/camera/app/common/provider/QuickCaptureManager;->mJpegItemList:Ljava/util/List;

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/transsion/camera/app/common/provider/QuickCaptureItem;

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/provider/QuickCaptureItem;->isCurBGImage()Z

    move-result v7

    iget-object p1, p0, Lcom/transsion/camera/app/common/provider/QuickCaptureManager;->mJpegItemList:Ljava/util/List;

    .line 297
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/transsion/camera/app/common/provider/QuickCaptureItem;

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/provider/QuickCaptureItem;->getCurCameraMode()Lcom/transsion/camera/app/common/mode/ICameraMode;

    move-result-object v8

    iget-object p1, p0, Lcom/transsion/camera/app/common/provider/QuickCaptureManager;->mJpegItemList:Ljava/util/List;

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/transsion/camera/app/common/provider/QuickCaptureItem;

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/provider/QuickCaptureItem;->getTimeStamp()J

    move-result-wide v9

    .line 296
    invoke-interface/range {v5 .. v10}, Lcom/transsion/camera/app/common/provider/QuickCaptureManager$QuickCaptureResultListener;->needQCSaveJpegToFile([BZLcom/transsion/camera/app/common/mode/ICameraMode;J)I

    .line 298
    iget-object p1, p0, Lcom/transsion/camera/app/common/provider/QuickCaptureManager;->mJpegItemList:Ljava/util/List;

    invoke-interface {p1, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 299
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[QuickCapture]processShutterAction, needQCSaveJpegToFile and FinishThisShot remove key:"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/provider/QuickCaptureActionItem;->getQCItemKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 300
    iget-object p1, p0, Lcom/transsion/camera/app/common/provider/QuickCaptureManager;->mShutterActionMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/provider/QuickCaptureActionItem;->getQCItemKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/AbstractMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 301
    invoke-direct {p0}, Lcom/transsion/camera/app/common/provider/QuickCaptureManager;->printShutterActionMap()V

    :cond_216
    return-void
.end method

.method private processShutterStart(Z)V
    .registers 7

    .line 325
    invoke-direct {p0}, Lcom/transsion/camera/app/common/provider/QuickCaptureManager;->getCurQCActionItemForShutterStart()Lcom/transsion/camera/app/common/provider/QuickCaptureActionItem;

    move-result-object v0

    if-nez v0, :cond_7

    return-void

    :cond_7
    const/4 v1, 0x1

    if-nez p1, :cond_15

    .line 332
    sget-object p0, Lcom/transsion/camera/app/common/provider/QuickCaptureManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "[QuickCapture]processShutterStart, not need animation return."

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 333
    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/provider/QuickCaptureActionItem;->setQCProcessShutterStartDone(Z)V

    return-void

    .line 337
    :cond_15
    invoke-virtual {v0}, Lcom/transsion/camera/app/common/provider/QuickCaptureActionItem;->getQCAction()I

    move-result p1

    .line 338
    sget-object v2, Lcom/transsion/camera/app/common/provider/QuickCaptureManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[QuickCapture]processShutterStart, oldActionState:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, p1}, Lcom/transsion/camera/app/common/provider/QuickCaptureManager;->actionToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", key:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 339
    invoke-virtual {v0}, Lcom/transsion/camera/app/common/provider/QuickCaptureActionItem;->getQCItemKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 338
    invoke-static {v2, v3}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    if-nez p1, :cond_45

    .line 342
    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/provider/QuickCaptureActionItem;->setQCNeedAnimation(Z)V

    goto :goto_53

    :cond_45
    const/4 v2, 0x2

    if-eq p1, v2, :cond_4a

    if-ne p1, v1, :cond_53

    .line 346
    :cond_4a
    iget-object p0, p0, Lcom/transsion/camera/app/common/provider/QuickCaptureManager;->mQCResultListener:Lcom/transsion/camera/app/common/provider/QuickCaptureManager$QuickCaptureResultListener;

    if-eqz p0, :cond_53

    const/16 p1, 0x96

    .line 347
    invoke-interface {p0, p1}, Lcom/transsion/camera/app/common/provider/QuickCaptureManager$QuickCaptureResultListener;->needQCNotifyActionToAppUI(I)I

    .line 350
    :cond_53
    :goto_53
    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/provider/QuickCaptureActionItem;->setQCProcessShutterStartDone(Z)V

    return-void
.end method

.method private processThumbnail(ILandroid/graphics/Bitmap;Lcom/transsion/camera/app/common/mode/ICameraMode;Lcom/transsion/camera/app/common/mode/TimestampInfo;)V
    .registers 10

    .line 354
    invoke-direct {p0}, Lcom/transsion/camera/app/common/provider/QuickCaptureManager;->getCurQCActionItemForThumbnail()Lcom/transsion/camera/app/common/provider/QuickCaptureActionItem;

    move-result-object v0

    if-nez v0, :cond_e

    .line 356
    sget-object p0, Lcom/transsion/camera/app/common/provider/QuickCaptureManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "[QuickCapture]processThumbnail, error"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 360
    :cond_e
    invoke-virtual {v0}, Lcom/transsion/camera/app/common/provider/QuickCaptureActionItem;->getQCAction()I

    move-result v1

    .line 361
    sget-object v2, Lcom/transsion/camera/app/common/provider/QuickCaptureManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[QuickCapture]processThumbnail, oldActionState:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, v1}, Lcom/transsion/camera/app/common/provider/QuickCaptureManager;->actionToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", key:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 362
    invoke-virtual {v0}, Lcom/transsion/camera/app/common/provider/QuickCaptureActionItem;->getQCItemKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", whichThumbnail:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 361
    invoke-static {v2, v3}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 v3, 0x1

    if-nez v1, :cond_71

    .line 365
    new-instance v1, Lcom/transsion/camera/app/common/provider/QuickCaptureItem;

    invoke-direct {v1}, Lcom/transsion/camera/app/common/provider/QuickCaptureItem;-><init>()V

    .line 366
    invoke-virtual {v1, p1, p2}, Lcom/transsion/camera/app/common/provider/QuickCaptureItem;->setThumbnailItem(ILandroid/graphics/Bitmap;)V

    .line 367
    invoke-virtual {v1, p3}, Lcom/transsion/camera/app/common/provider/QuickCaptureItem;->setCurCameraMode(Lcom/transsion/camera/app/common/mode/ICameraMode;)V

    .line 368
    invoke-virtual {v1, p4}, Lcom/transsion/camera/app/common/provider/QuickCaptureItem;->setTimestampInfo(Lcom/transsion/camera/app/common/mode/TimestampInfo;)V

    .line 369
    iget-object p1, p0, Lcom/transsion/camera/app/common/provider/QuickCaptureManager;->mThumbnailItemList:Ljava/util/List;

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 370
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "[QuickCapture]processThumbnail, add new thumbnail data, Thumbnail List size:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/transsion/camera/app/common/provider/QuickCaptureManager;->mThumbnailItemList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    goto :goto_84

    :cond_71
    const/4 v4, 0x2

    if-eq v1, v4, :cond_7d

    if-ne v1, v3, :cond_77

    goto :goto_7d

    .line 376
    :cond_77
    const-string p0, "[QuickCapture]processThumbnail, need discard this thumbnail data."

    invoke-static {v2, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    goto :goto_84

    .line 372
    :cond_7d
    :goto_7d
    iget-object p0, p0, Lcom/transsion/camera/app/common/provider/QuickCaptureManager;->mQCResultListener:Lcom/transsion/camera/app/common/provider/QuickCaptureManager$QuickCaptureResultListener;

    if-eqz p0, :cond_84

    .line 373
    invoke-interface {p0, p1, p2, p3, p4}, Lcom/transsion/camera/app/common/provider/QuickCaptureManager$QuickCaptureResultListener;->needQCUpdateThumbnailView(ILandroid/graphics/Bitmap;Lcom/transsion/camera/app/common/mode/ICameraMode;Lcom/transsion/camera/app/common/mode/TimestampInfo;)I

    .line 378
    :cond_84
    :goto_84
    invoke-virtual {v0, v3}, Lcom/transsion/camera/app/common/provider/QuickCaptureActionItem;->setQCProcessThumbnailDone(Z)V

    return-void
.end method


# virtual methods
.method public getPictureProcessingNumber()I
    .registers 1

    .line 166
    iget-object p0, p0, Lcom/transsion/camera/app/common/provider/QuickCaptureManager;->mPictureProcessingNumber:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p0

    return p0
.end method

.method public processQCPictureData()I
    .registers 5

    .line 78
    iget-object v0, p0, Lcom/transsion/camera/app/common/provider/QuickCaptureManager;->mPictureProcessingNumber:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-lez v0, :cond_e

    .line 80
    iget-object v1, p0, Lcom/transsion/camera/app/common/provider/QuickCaptureManager;->mPictureProcessingNumber:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    goto :goto_14

    .line 82
    :cond_e
    iget-object v1, p0, Lcom/transsion/camera/app/common/provider/QuickCaptureManager;->mPictureProcessingNumber:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 84
    :goto_14
    sget-object v1, Lcom/transsion/camera/app/common/provider/QuickCaptureManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[QuickCapture]processQCPictureData, need process picture count:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/transsion/camera/app/common/provider/QuickCaptureManager;->mPictureProcessingNumber:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return v0
.end method

.method public sendFinishThisShot()Z
    .registers 5

    .line 149
    iget-object v0, p0, Lcom/transsion/camera/app/common/provider/QuickCaptureManager;->mPictureProcessingNumber:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_3b

    .line 150
    iget-object v0, p0, Lcom/transsion/camera/app/common/provider/QuickCaptureManager;->mPictureProcessingNumber:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    .line 156
    sget-object v0, Lcom/transsion/camera/app/common/provider/QuickCaptureManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[QuickCapture]sendFinishThisShot, need process picture count:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/transsion/camera/app/common/provider/QuickCaptureManager;->mPictureProcessingNumber:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 157
    iget-object p0, p0, Lcom/transsion/camera/app/common/provider/QuickCaptureManager;->mQCHandle:Landroid/os/Handler;

    if-nez p0, :cond_34

    .line 158
    const-string p0, "[QuickCapture]sendFinishThisShot, mQCHandle == null, return"

    invoke-static {v0, p0}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return v1

    :cond_34
    const/16 v0, 0xcd

    .line 161
    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    const/4 p0, 0x1

    return p0

    .line 152
    :cond_3b
    iget-object p0, p0, Lcom/transsion/camera/app/common/provider/QuickCaptureManager;->mPictureProcessingNumber:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 153
    sget-object p0, Lcom/transsion/camera/app/common/provider/QuickCaptureManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "[QuickCapture]sendFinishThisShot return, picture count is 0"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return v1
.end method

.method public sendSaveData([BZLcom/transsion/camera/app/common/mode/ICameraMode;J)I
    .registers 9

    .line 129
    sget-object v0, Lcom/transsion/camera/app/common/provider/QuickCaptureManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[QuickCapture]sendSaveData, isBGImage:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 130
    iget-object p0, p0, Lcom/transsion/camera/app/common/provider/QuickCaptureManager;->mQCHandle:Landroid/os/Handler;

    const/4 v1, 0x0

    if-nez p0, :cond_21

    .line 132
    const-string p0, "[QuickCapture]sendSaveData, mQCHandle == null, return"

    invoke-static {v0, p0}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return v1

    .line 135
    :cond_21
    new-instance v2, Lcom/transsion/camera/app/common/provider/QuickCaptureItem;

    invoke-direct {v2}, Lcom/transsion/camera/app/common/provider/QuickCaptureItem;-><init>()V

    .line 136
    invoke-virtual {v2, p3}, Lcom/transsion/camera/app/common/provider/QuickCaptureItem;->setCurCameraMode(Lcom/transsion/camera/app/common/mode/ICameraMode;)V

    .line 137
    invoke-virtual {v2, p1, p2, p4, p5}, Lcom/transsion/camera/app/common/provider/QuickCaptureItem;->setJpegItem([BZJ)V

    const/16 p1, 0xcc

    .line 139
    invoke-virtual {p0, p1, v1, v1, v2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 140
    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    move-result p0

    if-nez p0, :cond_3e

    .line 142
    const-string p0, "[QuickCapture]sendSaveData failed: quick capture thread may have quit"

    invoke-static {v0, p0}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return v1

    :cond_3e
    const/4 p0, -0x1

    return p0
.end method

.method public sendShutterAction(II)Z
    .registers 7

    .line 89
    sget-object v0, Lcom/transsion/camera/app/common/provider/QuickCaptureManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[QuickCapture]sendShutterAction, action:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, p1}, Lcom/transsion/camera/app/common/provider/QuickCaptureManager;->actionToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", curPriority:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    if-eqz p1, :cond_27

    const/4 p2, 0x2

    if-ne p1, p2, :cond_50

    .line 91
    :cond_27
    iget-object p2, p0, Lcom/transsion/camera/app/common/provider/QuickCaptureManager;->mPictureProcessingNumber:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 92
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, p1}, Lcom/transsion/camera/app/common/provider/QuickCaptureManager;->actionToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", need process picture count:"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/transsion/camera/app/common/provider/QuickCaptureManager;->mPictureProcessingNumber:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 93
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 92
    invoke-static {v0, p2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 96
    :cond_50
    iget-object p0, p0, Lcom/transsion/camera/app/common/provider/QuickCaptureManager;->mQCHandle:Landroid/os/Handler;

    const/4 p2, 0x0

    if-nez p0, :cond_5b

    .line 97
    const-string p0, "[QuickCapture]sendShutterAction, mQCHandle == null, return"

    invoke-static {v0, p0}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return p2

    :cond_5b
    const/16 v0, 0xc9

    .line 100
    invoke-virtual {p0, v0, p1, p2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    const/4 p0, 0x1

    return p0
.end method

.method public sendShutterStart(Z)Z
    .registers 4

    .line 106
    iget-object p0, p0, Lcom/transsion/camera/app/common/provider/QuickCaptureManager;->mQCHandle:Landroid/os/Handler;

    const/4 v0, 0x0

    if-nez p0, :cond_d

    .line 107
    sget-object p0, Lcom/transsion/camera/app/common/provider/QuickCaptureManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "[QuickCapture]sendShutterStart, mQCHandle == null, return"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return v0

    :cond_d
    const/16 v1, 0xca

    .line 110
    invoke-virtual {p0, v1, p1, v0}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    const/4 p0, 0x1

    return p0
.end method

.method public sendThumbnailView(ILandroid/graphics/Bitmap;Lcom/transsion/camera/app/common/mode/ICameraMode;Lcom/transsion/camera/app/common/mode/TimestampInfo;)I
    .registers 8

    .line 115
    sget-object v0, Lcom/transsion/camera/app/common/provider/QuickCaptureManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[QuickCapture]sendThumbnailView, whichThumbnail:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 116
    iget-object v1, p0, Lcom/transsion/camera/app/common/provider/QuickCaptureManager;->mQCHandle:Landroid/os/Handler;

    const/4 v2, 0x0

    if-nez v1, :cond_21

    .line 117
    const-string p0, "[QuickCapture]sendThumbnailView, mQCHandle == null, return"

    invoke-static {v0, p0}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return v2

    .line 120
    :cond_21
    new-instance v0, Lcom/transsion/camera/app/common/provider/QuickCaptureItem;

    invoke-direct {v0}, Lcom/transsion/camera/app/common/provider/QuickCaptureItem;-><init>()V

    .line 121
    invoke-virtual {v0, p1, p2}, Lcom/transsion/camera/app/common/provider/QuickCaptureItem;->setThumbnailItem(ILandroid/graphics/Bitmap;)V

    .line 122
    invoke-virtual {v0, p3}, Lcom/transsion/camera/app/common/provider/QuickCaptureItem;->setCurCameraMode(Lcom/transsion/camera/app/common/mode/ICameraMode;)V

    .line 123
    invoke-virtual {v0, p4}, Lcom/transsion/camera/app/common/provider/QuickCaptureItem;->setTimestampInfo(Lcom/transsion/camera/app/common/mode/TimestampInfo;)V

    .line 124
    iget-object p0, p0, Lcom/transsion/camera/app/common/provider/QuickCaptureManager;->mQCHandle:Landroid/os/Handler;

    const/16 p1, 0xcb

    invoke-virtual {p0, p1, v2, v2, v0}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    const/4 p0, -0x1

    return p0
.end method

.method public setQuickCaptureResultListener(Lcom/transsion/camera/app/common/provider/QuickCaptureManager$QuickCaptureResultListener;)V
    .registers 2

    .line 74
    iput-object p1, p0, Lcom/transsion/camera/app/common/provider/QuickCaptureManager;->mQCResultListener:Lcom/transsion/camera/app/common/provider/QuickCaptureManager$QuickCaptureResultListener;

    return-void
.end method

.method public uninit()V
    .registers 4

    .line 63
    sget-object v0, Lcom/transsion/camera/app/common/provider/QuickCaptureManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string/jumbo v1, "uninit start"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 64
    iget-object v1, p0, Lcom/transsion/camera/app/common/provider/QuickCaptureManager;->mQCHandle:Landroid/os/Handler;

    if-eqz v1, :cond_22

    const/16 v2, 0xc8

    .line 65
    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 66
    iget-object v1, p0, Lcom/transsion/camera/app/common/provider/QuickCaptureManager;->mQCHandle:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 67
    iget-object v1, p0, Lcom/transsion/camera/app/common/provider/QuickCaptureManager;->mQCHandle:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->quitSafely()V

    const/4 v1, 0x0

    .line 68
    iput-object v1, p0, Lcom/transsion/camera/app/common/provider/QuickCaptureManager;->mQCHandle:Landroid/os/Handler;

    .line 70
    :cond_22
    const-string/jumbo p0, "uninit end"

    invoke-static {v0, p0}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method
