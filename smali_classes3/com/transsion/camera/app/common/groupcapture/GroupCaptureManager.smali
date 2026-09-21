.class public Lcom/transsion/camera/app/common/groupcapture/GroupCaptureManager;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/app/common/groupcapture/GroupCaptureManager$PictureCallback;,
        Lcom/transsion/camera/app/common/groupcapture/GroupCaptureManager$CaptureInfo;,
        Lcom/transsion/camera/app/common/groupcapture/GroupCaptureManager$JpegInfo;
    }
.end annotation


# static fields
.field private static final CAPTURE_ID_LENGTH:I

.field private static final DUMP_ENABLED:Z

.field private static final ENABLE_ZSL:Ljava/lang/Boolean;

.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

.field private static final ZSL_DIFF_MILLS:J

.field private static final ZSL_GAP_MILLS:J


# instance fields
.field private mCameraDeviceControl:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

.field private mCaptureTag:I

.field private volatile mIsCapturing:Z

.field private mIsGroupScene:Z

.field private mNeedWaitingPreJpeg:Z

.field private mPendingCaptureInfo:Ljava/util/concurrent/ConcurrentHashMap;

.field private mPictureCallback:Lcom/transsion/camera/app/common/groupcapture/GroupCaptureManager$PictureCallback;

.field private mPictureDataMerger:Lcom/transsion/camera/utils/PictureDataMerger;

.field private final mSavingLock:Ljava/lang/Object;

.field private mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

.field private volatile mShutterStartCount:I

.field private mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

.field private mTimeConsumingCaptureInfo:Ljava/util/concurrent/ConcurrentHashMap;

.field private mTimeConsumingCountOfNoneGroupCapture:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method static bridge synthetic -$$Nest$fgetmCameraDeviceControl(Lcom/transsion/camera/app/common/groupcapture/GroupCaptureManager;)Lcom/transsion/camera/app/common/mode/CameraDeviceControl;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/app/common/groupcapture/GroupCaptureManager;->mCameraDeviceControl:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmIsGroupScene(Lcom/transsion/camera/app/common/groupcapture/GroupCaptureManager;)Z
    .registers 1

    .line 0
    iget-boolean p0, p0, Lcom/transsion/camera/app/common/groupcapture/GroupCaptureManager;->mIsGroupScene:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmTimeConsumingCaptureInfo(Lcom/transsion/camera/app/common/groupcapture/GroupCaptureManager;)Ljava/util/concurrent/ConcurrentHashMap;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/app/common/groupcapture/GroupCaptureManager;->mTimeConsumingCaptureInfo:Ljava/util/concurrent/ConcurrentHashMap;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmTimeConsumingCountOfNoneGroupCapture(Lcom/transsion/camera/app/common/groupcapture/GroupCaptureManager;)Ljava/util/concurrent/atomic/AtomicInteger;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/app/common/groupcapture/GroupCaptureManager;->mTimeConsumingCountOfNoneGroupCapture:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmIsGroupScene(Lcom/transsion/camera/app/common/groupcapture/GroupCaptureManager;Z)V
    .registers 2

    .line 0
    iput-boolean p1, p0, Lcom/transsion/camera/app/common/groupcapture/GroupCaptureManager;->mIsGroupScene:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$misFaceBeautyOn(Lcom/transsion/camera/app/common/groupcapture/GroupCaptureManager;)Z
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/app/common/groupcapture/GroupCaptureManager;->isFaceBeautyOn()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;
    .registers 1

    .line 0
    sget-object v0, Lcom/transsion/camera/app/common/groupcapture/GroupCaptureManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 3

    .line 36
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "GroupCaptureManager"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/app/common/groupcapture/GroupCaptureManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const/16 v0, 0x9

    .line 39
    sput v0, Lcom/transsion/camera/app/common/groupcapture/GroupCaptureManager;->CAPTURE_ID_LENGTH:I

    .line 42
    const-string v0, "debug.camera.dump_group_photo"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_18

    move v1, v2

    :cond_18
    sput-boolean v1, Lcom/transsion/camera/app/common/groupcapture/GroupCaptureManager;->DUMP_ENABLED:Z

    .line 43
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/camera/utils/CustomConfigUtil;->isGroupCaptureEnableZSL()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/transsion/camera/app/common/groupcapture/GroupCaptureManager;->ENABLE_ZSL:Ljava/lang/Boolean;

    .line 48
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/camera/utils/CustomConfigUtil;->getGroupCaptureZslDiffMills()I

    move-result v0

    .line 46
    const-string v1, "debug.camera.group_capture_zsl_diff_mills"

    invoke-static {v1, v0}, Lcom/transsion/camera/utils/SystemProperties;->getLong(Ljava/lang/String;I)J

    move-result-wide v0

    sput-wide v0, Lcom/transsion/camera/app/common/groupcapture/GroupCaptureManager;->ZSL_DIFF_MILLS:J

    .line 49
    const-string v0, "debug.camera.group_capture_zsl_gap_mills"

    const/16 v1, 0x64

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/SystemProperties;->getLong(Ljava/lang/String;I)J

    move-result-wide v0

    sput-wide v0, Lcom/transsion/camera/app/common/groupcapture/GroupCaptureManager;->ZSL_GAP_MILLS:J

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/app/common/groupcapture/GroupCaptureManager;->mSavingLock:Ljava/lang/Object;

    const/4 v0, 0x0

    .line 55
    iput v0, p0, Lcom/transsion/camera/app/common/groupcapture/GroupCaptureManager;->mShutterStartCount:I

    .line 64
    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v1, p0, Lcom/transsion/camera/app/common/groupcapture/GroupCaptureManager;->mPendingCaptureInfo:Ljava/util/concurrent/ConcurrentHashMap;

    .line 70
    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v1, p0, Lcom/transsion/camera/app/common/groupcapture/GroupCaptureManager;->mTimeConsumingCaptureInfo:Ljava/util/concurrent/ConcurrentHashMap;

    .line 71
    new-instance v1, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v1, v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v1, p0, Lcom/transsion/camera/app/common/groupcapture/GroupCaptureManager;->mTimeConsumingCountOfNoneGroupCapture:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 97
    new-instance v0, Lcom/transsion/camera/app/common/groupcapture/GroupCaptureManager$1;

    invoke-direct {v0, p0}, Lcom/transsion/camera/app/common/groupcapture/GroupCaptureManager$1;-><init>(Lcom/transsion/camera/app/common/groupcapture/GroupCaptureManager;)V

    iput-object v0, p0, Lcom/transsion/camera/app/common/groupcapture/GroupCaptureManager;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    return-void
.end method

.method private appendPicture(Lcom/transsion/camera/app/common/groupcapture/GroupCaptureManager$CaptureInfo;)V
    .registers 8

    .line 332
    sget-object v0, Lcom/transsion/camera/app/common/groupcapture/GroupCaptureManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "appendPicture, captureInfo: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/transsion/camera/app/common/groupcapture/GroupCaptureManager$CaptureInfo;->-$$Nest$fgetmCaptureTag(Lcom/transsion/camera/app/common/groupcapture/GroupCaptureManager$CaptureInfo;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", timestamp: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p1, Lcom/transsion/camera/app/common/groupcapture/GroupCaptureManager$CaptureInfo;->mTimestamp:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 334
    new-instance v0, Lcom/transsion/camera/utils/PictureDataMerger$PictureInfo;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/PictureDataMerger$PictureInfo;-><init>(I)V

    .line 336
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/common/groupcapture/GroupCaptureManager;->updateExif(Lcom/transsion/camera/app/common/groupcapture/GroupCaptureManager$CaptureInfo;)[B

    move-result-object v1

    .line 337
    invoke-virtual {v0, v1}, Lcom/transsion/camera/utils/PictureDataMerger$PictureInfo;->setOriginalBytes([B)V

    const/4 v1, 0x3

    .line 339
    invoke-virtual {p1, v1}, Lcom/transsion/camera/app/common/groupcapture/GroupCaptureManager$CaptureInfo;->getJpegInfoByIndex(I)Lcom/transsion/camera/app/common/groupcapture/GroupCaptureManager$JpegInfo;

    move-result-object v1

    .line 340
    iget-object v2, p1, Lcom/transsion/camera/app/common/groupcapture/GroupCaptureManager$CaptureInfo;->mJpegInfo:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 341
    iget-object v2, p1, Lcom/transsion/camera/app/common/groupcapture/GroupCaptureManager$CaptureInfo;->mJpegInfo:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_41
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_53

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/transsion/camera/app/common/groupcapture/GroupCaptureManager$JpegInfo;

    .line 342
    iget-object v3, v3, Lcom/transsion/camera/app/common/groupcapture/GroupCaptureManager$JpegInfo;->mJpegData:[B

    invoke-virtual {v0, v3}, Lcom/transsion/camera/utils/PictureDataMerger$PictureInfo;->addAppendingBytes([B)Lcom/transsion/camera/utils/PictureDataMerger$PictureInfo;

    goto :goto_41

    .line 345
    :cond_53
    iget-object v2, p0, Lcom/transsion/camera/app/common/groupcapture/GroupCaptureManager;->mPictureDataMerger:Lcom/transsion/camera/utils/PictureDataMerger;

    invoke-virtual {v2, v0}, Lcom/transsion/camera/utils/PictureDataMerger;->appendPicture(Lcom/transsion/camera/utils/PictureDataMerger$PictureInfo;)[B

    move-result-object v2

    .line 346
    iget-object v3, p0, Lcom/transsion/camera/app/common/groupcapture/GroupCaptureManager;->mPictureCallback:Lcom/transsion/camera/app/common/groupcapture/GroupCaptureManager$PictureCallback;

    iget-boolean v1, v1, Lcom/transsion/camera/app/common/groupcapture/GroupCaptureManager$JpegInfo;->mIsBGImage:Z

    iget-wide v4, p1, Lcom/transsion/camera/app/common/groupcapture/GroupCaptureManager$CaptureInfo;->mTimestamp:J

    invoke-interface {v3, v2, v1, v4, v5}, Lcom/transsion/camera/app/common/groupcapture/GroupCaptureManager$PictureCallback;->onPictureReady([BZJ)V

    .line 348
    sget-boolean p1, Lcom/transsion/camera/app/common/groupcapture/GroupCaptureManager;->DUMP_ENABLED:Z

    if-eqz p1, :cond_69

    .line 349
    invoke-direct {p0, v0}, Lcom/transsion/camera/app/common/groupcapture/GroupCaptureManager;->saveDumpFile(Lcom/transsion/camera/utils/PictureDataMerger$PictureInfo;)V

    :cond_69
    return-void
.end method

.method private getCaptureIdInExif([B)I
    .registers 3

    .line 315
    invoke-static {p1}, Lcom/transsion/camera/utils/exif/Exif;->getExif([B)Lcom/transsion/camera/utils/exif/ExifInterface;

    move-result-object p0

    .line 316
    sget p1, Lcom/transsion/camera/utils/exif/ExifInterface;->TAG_USER_COMMENT:I

    invoke-virtual {p0, p1}, Lcom/transsion/camera/utils/exif/ExifInterface;->getTagStringValue(I)Ljava/lang/String;

    move-result-object p0

    const/4 p1, -0x1

    if-eqz p0, :cond_2d

    .line 318
    const-string v0, "captureId"

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-ne v0, p1, :cond_16

    return p1

    .line 322
    :cond_16
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    .line 323
    const-string p1, ";"

    invoke-virtual {p0, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p1

    .line 324
    sget v0, Lcom/transsion/camera/app/common/groupcapture/GroupCaptureManager;->CAPTURE_ID_LENGTH:I

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 325
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    return p0

    :cond_2d
    return p1
.end method

.method private isFaceBeautyOn()Z
    .registers 3

    .line 171
    iget-object v0, p0, Lcom/transsion/camera/app/common/groupcapture/GroupCaptureManager;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    invoke-interface {v0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->getSettingProvide()Lcom/transsion/camera/app/common/setting/ISettingManager$SettingProvide;

    move-result-object v0

    const-string v1, "key_mu_face_beauty"

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingProvide;->findISettingByKey(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/ISetting;

    move-result-object v0

    if-eqz v0, :cond_24

    .line 173
    invoke-interface {v0}, Lcom/transsion/camera/app/common/setting/ISetting;->isModeSupport()Z

    move-result v0

    if-eqz v0, :cond_24

    iget-object p0, p0, Lcom/transsion/camera/app/common/groupcapture/GroupCaptureManager;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    .line 174
    invoke-interface {p0, v1}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "off"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_24

    const/4 p0, 0x1

    return p0

    :cond_24
    const/4 p0, 0x0

    return p0
.end method

.method private isSettingOn()Z
    .registers 4

    .line 224
    iget-object p0, p0, Lcom/transsion/camera/app/common/groupcapture/GroupCaptureManager;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    const-string v0, "key_group_capture"

    invoke-interface {p0, v0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 225
    sget-object v0, Lcom/transsion/camera/app/common/groupcapture/GroupCaptureManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isSettingOn, setting value: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 226
    const-string v0, "on"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private saveDumpFile(Lcom/transsion/camera/utils/PictureDataMerger$PictureInfo;)V
    .registers 9

    .line 367
    new-instance p0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v0, "yyyyMMdd_HHmmss_SSS"

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-direct {p0, v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    new-instance v0, Ljava/sql/Date;

    .line 368
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/sql/Date;-><init>(J)V

    invoke-virtual {p0, v0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    .line 369
    new-instance v0, Ljava/io/File;

    const-string v1, "/sdcard/dump/group_photo"

    invoke-direct {v0, v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 370
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_28

    .line 372
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v1

    :cond_28
    if-nez v1, :cond_41

    .line 376
    sget-object p0, Lcom/transsion/camera/app/common/groupcapture/GroupCaptureManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "saveDumpFile, failed to create dir: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 380
    :cond_41
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 381
    sget-object v0, Lcom/transsion/camera/app/common/groupcapture/GroupCaptureManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "saveDumpFile, path: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 383
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_1.jpg"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 384
    invoke-virtual {p1}, Lcom/transsion/camera/utils/PictureDataMerger$PictureInfo;->getOriginalBytes()[B

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/transsion/camera/utils/FileUtil;->saveByteArrayToFile(Ljava/lang/String;[BZ)Z

    .line 386
    invoke-virtual {p1}, Lcom/transsion/camera/utils/PictureDataMerger$PictureInfo;->getAppendingBytes()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_91
    if-ge v1, v0, :cond_d4

    .line 388
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v4, v1, 0x2

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ".jpg"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 389
    sget-object v4, Lcom/transsion/camera/app/common/groupcapture/GroupCaptureManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "saveDumpFile, fileName: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 390
    invoke-virtual {p1}, Lcom/transsion/camera/utils/PictureDataMerger$PictureInfo;->getAppendingBytes()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [B

    invoke-static {v3, v4, v2}, Lcom/transsion/camera/utils/FileUtil;->saveByteArrayToFile(Ljava/lang/String;[BZ)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_91

    :cond_d4
    return-void
.end method

.method private setZSLTimestamps()V
    .registers 9

    .line 151
    sget-object v0, Lcom/transsion/camera/app/common/groupcapture/GroupCaptureManager;->ENABLE_ZSL:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_9

    return-void

    .line 154
    :cond_9
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v0

    sget-wide v2, Lcom/transsion/camera/app/common/groupcapture/GroupCaptureManager;->ZSL_DIFF_MILLS:J

    const-wide/32 v4, 0xf4240

    mul-long/2addr v2, v4

    sub-long/2addr v0, v2

    .line 155
    sget-wide v2, Lcom/transsion/camera/app/common/groupcapture/GroupCaptureManager;->ZSL_GAP_MILLS:J

    mul-long/2addr v2, v4

    sub-long v4, v0, v2

    add-long/2addr v2, v0

    const/4 v6, 0x3

    .line 156
    new-array v6, v6, [J

    const/4 v7, 0x0

    aput-wide v4, v6, v7

    const/4 v4, 0x1

    aput-wide v0, v6, v4

    const/4 v0, 0x2

    aput-wide v2, v6, v0

    .line 157
    iget-object p0, p0, Lcom/transsion/camera/app/common/groupcapture/GroupCaptureManager;->mCameraDeviceControl:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    invoke-virtual {p0, v6}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->setCaptureZSLTimestamps([J)V

    .line 158
    sget-object p0, Lcom/transsion/camera/app/common/groupcapture/GroupCaptureManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setZSLTimestamps, value: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v6}, Ljava/util/Arrays;->toString([J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method private updateCaptureInfo(Lcom/transsion/camera/app/common/groupcapture/GroupCaptureManager$CaptureInfo;)V
    .registers 4

    .line 162
    iget-object v0, p0, Lcom/transsion/camera/app/common/groupcapture/GroupCaptureManager;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    invoke-interface {v0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->getSettingProvide()Lcom/transsion/camera/app/common/setting/ISettingManager$SettingProvide;

    move-result-object v0

    const-string v1, "key_makeup_feature"

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingProvide;->findISettingByKey(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/ISetting;

    move-result-object v0

    if-eqz v0, :cond_27

    .line 163
    invoke-interface {v0}, Lcom/transsion/camera/app/common/setting/ISetting;->isModeSupport()Z

    move-result v0

    if-eqz v0, :cond_27

    .line 164
    iget-object p0, p0, Lcom/transsion/camera/app/common/groupcapture/GroupCaptureManager;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    invoke-interface {p0, v1}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 165
    invoke-static {p0}, Lcom/transsion/camera/app/common/setting/makeup/MakeUpItemInfo;->toObject(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/makeup/MakeUpItemInfo;

    move-result-object p0

    .line 166
    iget p0, p0, Lcom/transsion/camera/app/common/setting/makeup/MakeUpItemInfo;->styleNumber:I

    if-eqz p0, :cond_24

    const/4 p0, 0x1

    goto :goto_25

    :cond_24
    const/4 p0, 0x0

    :goto_25
    iput-boolean p0, p1, Lcom/transsion/camera/app/common/groupcapture/GroupCaptureManager$CaptureInfo;->mIsMakeUpOn:Z

    :cond_27
    return-void
.end method

.method private updateExif(Lcom/transsion/camera/app/common/groupcapture/GroupCaptureManager$CaptureInfo;)[B
    .registers 3

    const/4 p0, 0x3

    .line 354
    invoke-virtual {p1, p0}, Lcom/transsion/camera/app/common/groupcapture/GroupCaptureManager$CaptureInfo;->getJpegInfoByIndex(I)Lcom/transsion/camera/app/common/groupcapture/GroupCaptureManager$JpegInfo;

    move-result-object p0

    .line 355
    iget-object p0, p0, Lcom/transsion/camera/app/common/groupcapture/GroupCaptureManager$JpegInfo;->mJpegData:[B

    .line 359
    iget-boolean p1, p1, Lcom/transsion/camera/app/common/groupcapture/GroupCaptureManager$CaptureInfo;->mIsMakeUpOn:Z

    const-string v0, "category:1"

    if-eqz p1, :cond_1e

    .line 360
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ";makeup"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 362
    :cond_1e
    sget p1, Lcom/transsion/camera/utils/exif/ExifInterface;->TAG_USER_COMMENT:I

    invoke-static {p0, p1, v0}, Lcom/transsion/camera/utils/exif/ExifTools;->extendExifStringValue([BILjava/lang/String;)[B

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public hasPendingCapture()Z
    .registers 1

    .line 201
    iget-object p0, p0, Lcom/transsion/camera/app/common/groupcapture/GroupCaptureManager;->mPendingCaptureInfo:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result p0

    if-lez p0, :cond_a

    const/4 p0, 0x1

    return p0

    :cond_a
    const/4 p0, 0x0

    return p0
.end method

.method public init(Lcom/transsion/camera/app/common/mode/CameraDeviceControl;Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;Lcom/transsion/camera/app/common/groupcapture/GroupCaptureManager$PictureCallback;)V
    .registers 4

    .line 83
    iput-object p1, p0, Lcom/transsion/camera/app/common/groupcapture/GroupCaptureManager;->mCameraDeviceControl:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    .line 84
    new-instance p1, Lcom/transsion/camera/utils/PictureDataMerger;

    invoke-direct {p1}, Lcom/transsion/camera/utils/PictureDataMerger;-><init>()V

    iput-object p1, p0, Lcom/transsion/camera/app/common/groupcapture/GroupCaptureManager;->mPictureDataMerger:Lcom/transsion/camera/utils/PictureDataMerger;

    .line 85
    iput-object p3, p0, Lcom/transsion/camera/app/common/groupcapture/GroupCaptureManager;->mPictureCallback:Lcom/transsion/camera/app/common/groupcapture/GroupCaptureManager$PictureCallback;

    .line 86
    iput-object p2, p0, Lcom/transsion/camera/app/common/groupcapture/GroupCaptureManager;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    .line 87
    invoke-interface {p2}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->getStatusMonitor()Lcom/transsion/camera/app/common/setting/StatusMonitor;

    move-result-object p1

    const-string p2, "key_group_capture_scene_state"

    iget-object p3, p0, Lcom/transsion/camera/app/common/groupcapture/GroupCaptureManager;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    .line 88
    invoke-virtual {p1, p2, p3}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->registerValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 89
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/camera/utils/CustomConfigUtil;->needWaitingGroupCapturePreJpeg()Z

    move-result p1

    iput-boolean p1, p0, Lcom/transsion/camera/app/common/groupcapture/GroupCaptureManager;->mNeedWaitingPreJpeg:Z

    if-eqz p1, :cond_31

    .line 91
    iget-object p1, p0, Lcom/transsion/camera/app/common/groupcapture/GroupCaptureManager;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    invoke-interface {p1}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->getStatusMonitor()Lcom/transsion/camera/app/common/setting/StatusMonitor;

    move-result-object p1

    const-string p2, "capture_state"

    iget-object p0, p0, Lcom/transsion/camera/app/common/groupcapture/GroupCaptureManager;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    .line 92
    invoke-virtual {p1, p2, p0}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->registerValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 94
    :cond_31
    sget-object p0, Lcom/transsion/camera/app/common/groupcapture/GroupCaptureManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "init, ZSL_DIFF_MILLS: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-wide p2, Lcom/transsion/camera/app/common/groupcapture/GroupCaptureManager;->ZSL_DIFF_MILLS:J

    invoke-virtual {p1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p2, ", ZSL_GAP_MILLS: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-wide p2, Lcom/transsion/camera/app/common/groupcapture/GroupCaptureManager;->ZSL_GAP_MILLS:J

    invoke-virtual {p1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method public isCaptureSoundNeeded()Z
    .registers 4

    .line 230
    sget-object v0, Lcom/transsion/camera/app/common/groupcapture/GroupCaptureManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isCaptureSoundNeeded, mShutterStartCount: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/transsion/camera/app/common/groupcapture/GroupCaptureManager;->mShutterStartCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 231
    iget p0, p0, Lcom/transsion/camera/app/common/groupcapture/GroupCaptureManager;->mShutterStartCount:I

    const/4 v0, 0x1

    if-gt p0, v0, :cond_1e

    return v0

    :cond_1e
    const/4 p0, 0x0

    return p0
.end method

.method public isCapturing()Z
    .registers 1

    .line 178
    iget-boolean p0, p0, Lcom/transsion/camera/app/common/groupcapture/GroupCaptureManager;->mIsCapturing:Z

    return p0
.end method

.method public isGroupScene()Z
    .registers 5

    .line 205
    invoke-direct {p0}, Lcom/transsion/camera/app/common/groupcapture/GroupCaptureManager;->isSettingOn()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_f

    .line 206
    sget-object p0, Lcom/transsion/camera/app/common/groupcapture/GroupCaptureManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "isReadyToCapture, setting is off"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return v1

    .line 209
    :cond_f
    iget-boolean v0, p0, Lcom/transsion/camera/app/common/groupcapture/GroupCaptureManager;->mIsGroupScene:Z

    if-nez v0, :cond_1b

    .line 210
    sget-object p0, Lcom/transsion/camera/app/common/groupcapture/GroupCaptureManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "isReadyToCapture, not GroupScene"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return v1

    .line 213
    :cond_1b
    iget-object p0, p0, Lcom/transsion/camera/app/common/groupcapture/GroupCaptureManager;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    invoke-interface {p0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->getDataStore()Lcom/transsion/camera/app/common/storage/DataStore;

    move-result-object p0

    .line 214
    const-string v0, "on"

    .line 215
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v2

    .line 214
    const-string v3, "key_group_capture_icon_state"

    invoke-virtual {p0, v3, v0, v2}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 216
    const-string v0, "off"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3d

    .line 217
    sget-object p0, Lcom/transsion/camera/app/common/groupcapture/GroupCaptureManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "isReadyToCapture, icon is off"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return v1

    :cond_3d
    const/4 p0, 0x1

    return p0
.end method

.method public needWaitingGroupCapture()Z
    .registers 5

    .line 186
    iget-boolean v0, p0, Lcom/transsion/camera/app/common/groupcapture/GroupCaptureManager;->mNeedWaitingPreJpeg:Z

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    .line 190
    :cond_6
    sget-object v0, Lcom/transsion/camera/app/common/groupcapture/GroupCaptureManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "needWaitingGroupCapture, mTimeConsumingCaptureInfo: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/transsion/camera/app/common/groupcapture/GroupCaptureManager;->mTimeConsumingCaptureInfo:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", mTimeConsumingCountOfNoneGroupCapture: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/transsion/camera/app/common/groupcapture/GroupCaptureManager;->mTimeConsumingCountOfNoneGroupCapture:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 192
    iget-object v0, p0, Lcom/transsion/camera/app/common/groupcapture/GroupCaptureManager;->mTimeConsumingCaptureInfo:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v0

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-lt v0, v2, :cond_37

    return v3

    .line 196
    :cond_37
    iget-object v0, p0, Lcom/transsion/camera/app/common/groupcapture/GroupCaptureManager;->mTimeConsumingCaptureInfo:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_48

    iget-object p0, p0, Lcom/transsion/camera/app/common/groupcapture/GroupCaptureManager;->mTimeConsumingCountOfNoneGroupCapture:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 197
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p0

    if-lez p0, :cond_48

    return v3

    :cond_48
    return v1
.end method

.method public notifyPictureTaken([BJZI)I
    .registers 11

    .line 277
    iget-object p5, p0, Lcom/transsion/camera/app/common/groupcapture/GroupCaptureManager;->mSavingLock:Ljava/lang/Object;

    monitor-enter p5

    .line 278
    :try_start_3
    iget-object v0, p0, Lcom/transsion/camera/app/common/groupcapture/GroupCaptureManager;->mPendingCaptureInfo:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_11

    .line 279
    monitor-exit p5

    return v1

    :catchall_e
    move-exception p0

    goto/16 :goto_107

    .line 281
    :cond_11
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/common/groupcapture/GroupCaptureManager;->getCaptureIdInExif([B)I

    move-result v0

    .line 282
    sget-object v2, Lcom/transsion/camera/app/common/groupcapture/GroupCaptureManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "notifyPictureTaken++, mPendingCaptureInfo: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/transsion/camera/app/common/groupcapture/GroupCaptureManager;->mPendingCaptureInfo:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ", captureId: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", timestamp: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v2, p2}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 284
    iget-object p2, p0, Lcom/transsion/camera/app/common/groupcapture/GroupCaptureManager;->mPendingCaptureInfo:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/transsion/camera/app/common/groupcapture/GroupCaptureManager$CaptureInfo;

    const/4 p3, -0x1

    if-nez p2, :cond_66

    .line 286
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "notifyPictureTaken, captureInfo not existing, captureId: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    if-ne v0, p3, :cond_63

    goto :goto_64

    :cond_63
    move v1, p3

    .line 287
    :goto_64
    monitor-exit p5

    return v1

    .line 290
    :cond_66
    new-instance v0, Lcom/transsion/camera/app/common/groupcapture/GroupCaptureManager$JpegInfo;

    invoke-direct {v0, p0, p1, p4}, Lcom/transsion/camera/app/common/groupcapture/GroupCaptureManager$JpegInfo;-><init>(Lcom/transsion/camera/app/common/groupcapture/GroupCaptureManager;[BZ)V

    invoke-virtual {p2, v0}, Lcom/transsion/camera/app/common/groupcapture/GroupCaptureManager$CaptureInfo;->addJpegInfo(Lcom/transsion/camera/app/common/groupcapture/GroupCaptureManager$JpegInfo;)V

    .line 291
    invoke-virtual {p2}, Lcom/transsion/camera/app/common/groupcapture/GroupCaptureManager$CaptureInfo;->isValid()Z

    move-result p1

    if-eqz p1, :cond_ba

    .line 292
    iget-object p1, p0, Lcom/transsion/camera/app/common/groupcapture/GroupCaptureManager;->mPendingCaptureInfo:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p2}, Lcom/transsion/camera/app/common/groupcapture/GroupCaptureManager$CaptureInfo;->-$$Nest$fgetmCaptureTag(Lcom/transsion/camera/app/common/groupcapture/GroupCaptureManager$CaptureInfo;)I

    move-result p4

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    invoke-virtual {p1, p4}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 293
    iget-object p1, p0, Lcom/transsion/camera/app/common/groupcapture/GroupCaptureManager;->mTimeConsumingCaptureInfo:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p2}, Lcom/transsion/camera/app/common/groupcapture/GroupCaptureManager$CaptureInfo;->-$$Nest$fgetmCaptureTag(Lcom/transsion/camera/app/common/groupcapture/GroupCaptureManager$CaptureInfo;)I

    move-result p4

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    invoke-virtual {p1, p4}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/transsion/camera/app/common/groupcapture/GroupCaptureManager$CaptureInfo;

    if-eqz p1, :cond_b6

    .line 294
    iget-object p1, p0, Lcom/transsion/camera/app/common/groupcapture/GroupCaptureManager;->mTimeConsumingCountOfNoneGroupCapture:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p1

    if-lez p1, :cond_b6

    .line 295
    iget-object p1, p0, Lcom/transsion/camera/app/common/groupcapture/GroupCaptureManager;->mTimeConsumingCountOfNoneGroupCapture:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndDecrement()I

    .line 296
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "notifyPictureTaken, mTimeConsumingCountOfNoneGroupCapture: "

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p4, p0, Lcom/transsion/camera/app/common/groupcapture/GroupCaptureManager;->mTimeConsumingCountOfNoneGroupCapture:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 300
    :cond_b6
    invoke-direct {p0, p2}, Lcom/transsion/camera/app/common/groupcapture/GroupCaptureManager;->appendPicture(Lcom/transsion/camera/app/common/groupcapture/GroupCaptureManager$CaptureInfo;)V

    goto :goto_da

    .line 301
    :cond_ba
    invoke-virtual {p2}, Lcom/transsion/camera/app/common/groupcapture/GroupCaptureManager$CaptureInfo;->isAllJpegReceivedOnCaptureFailed()Z

    move-result p1

    if-eqz p1, :cond_da

    .line 302
    iget-object p1, p0, Lcom/transsion/camera/app/common/groupcapture/GroupCaptureManager;->mPendingCaptureInfo:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p2}, Lcom/transsion/camera/app/common/groupcapture/GroupCaptureManager$CaptureInfo;->-$$Nest$fgetmCaptureTag(Lcom/transsion/camera/app/common/groupcapture/GroupCaptureManager$CaptureInfo;)I

    move-result p4

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    invoke-virtual {p1, p4}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 303
    iget-object p1, p0, Lcom/transsion/camera/app/common/groupcapture/GroupCaptureManager;->mTimeConsumingCaptureInfo:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p2}, Lcom/transsion/camera/app/common/groupcapture/GroupCaptureManager$CaptureInfo;->-$$Nest$fgetmCaptureTag(Lcom/transsion/camera/app/common/groupcapture/GroupCaptureManager$CaptureInfo;)I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 305
    :cond_da
    :goto_da
    iget-object p1, p0, Lcom/transsion/camera/app/common/groupcapture/GroupCaptureManager;->mPendingCaptureInfo:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result p1

    if-nez p1, :cond_e5

    .line 306
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/groupcapture/GroupCaptureManager;->resetCapturingState()V

    .line 308
    :cond_e5
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "notifyPictureTaken--, mPendingCaptureInfo: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/transsion/camera/app/common/groupcapture/GroupCaptureManager;->mPendingCaptureInfo:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, ", mTimeConsumingCaptureInfo: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/transsion/camera/app/common/groupcapture/GroupCaptureManager;->mTimeConsumingCaptureInfo:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 310
    monitor-exit p5

    return p3

    .line 311
    :goto_107
    monitor-exit p5
    :try_end_108
    .catchall {:try_start_3 .. :try_end_108} :catchall_e

    throw p0
.end method

.method public onCaptureFailed()V
    .registers 5

    .line 261
    iget-object v0, p0, Lcom/transsion/camera/app/common/groupcapture/GroupCaptureManager;->mSavingLock:Ljava/lang/Object;

    monitor-enter v0

    .line 262
    :try_start_3
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/groupcapture/GroupCaptureManager;->isCapturing()Z

    move-result v1

    if-eqz v1, :cond_45

    iget-object v1, p0, Lcom/transsion/camera/app/common/groupcapture/GroupCaptureManager;->mPendingCaptureInfo:Ljava/util/concurrent/ConcurrentHashMap;

    if-eqz v1, :cond_45

    iget v2, p0, Lcom/transsion/camera/app/common/groupcapture/GroupCaptureManager;->mCaptureTag:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_45

    .line 263
    sget-object v1, Lcom/transsion/camera/app/common/groupcapture/GroupCaptureManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onCaptureFailed, mCaptureTag: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/transsion/camera/app/common/groupcapture/GroupCaptureManager;->mCaptureTag:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 264
    iget-object v1, p0, Lcom/transsion/camera/app/common/groupcapture/GroupCaptureManager;->mPendingCaptureInfo:Ljava/util/concurrent/ConcurrentHashMap;

    iget v2, p0, Lcom/transsion/camera/app/common/groupcapture/GroupCaptureManager;->mCaptureTag:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/camera/app/common/groupcapture/GroupCaptureManager$CaptureInfo;

    invoke-virtual {v1}, Lcom/transsion/camera/app/common/groupcapture/GroupCaptureManager$CaptureInfo;->addCaptureFailedCount()V

    goto :goto_45

    :catchall_43
    move-exception p0

    goto :goto_7f

    .line 266
    :cond_45
    :goto_45
    invoke-static {}, Lcom/transsion/camera/app/common/isphidl/ISPHIDLController;->getInstance()Lcom/transsion/camera/app/common/isphidl/ISPHIDLController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/transsion/camera/app/common/isphidl/ISPHIDLController;->isPostAlgoShot2Shoting()Z

    move-result v1

    if-eqz v1, :cond_7d

    .line 267
    iget-object v1, p0, Lcom/transsion/camera/app/common/groupcapture/GroupCaptureManager;->mPendingCaptureInfo:Ljava/util/concurrent/ConcurrentHashMap;

    iget v2, p0, Lcom/transsion/camera/app/common/groupcapture/GroupCaptureManager;->mCaptureTag:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 268
    iget-object v1, p0, Lcom/transsion/camera/app/common/groupcapture/GroupCaptureManager;->mPendingCaptureInfo:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v1

    if-nez v1, :cond_65

    .line 269
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/groupcapture/GroupCaptureManager;->resetCapturingState()V

    .line 271
    :cond_65
    sget-object v1, Lcom/transsion/camera/app/common/groupcapture/GroupCaptureManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onCaptureFailed, postAlgoShot remove captureTag:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/transsion/camera/app/common/groupcapture/GroupCaptureManager;->mCaptureTag:I

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 273
    :cond_7d
    monitor-exit v0

    return-void

    :goto_7f
    monitor-exit v0
    :try_end_80
    .catchall {:try_start_3 .. :try_end_80} :catchall_43

    throw p0
.end method

.method public onModeCaptureStarted(J)V
    .registers 6

    .line 240
    iget-object v0, p0, Lcom/transsion/camera/app/common/groupcapture/GroupCaptureManager;->mPendingCaptureInfo:Ljava/util/concurrent/ConcurrentHashMap;

    iget v1, p0, Lcom/transsion/camera/app/common/groupcapture/GroupCaptureManager;->mCaptureTag:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/camera/app/common/groupcapture/GroupCaptureManager$CaptureInfo;

    if-nez v0, :cond_18

    .line 242
    sget-object p0, Lcom/transsion/camera/app/common/groupcapture/GroupCaptureManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "onModeCaptureStarted: captureInfo not found"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 245
    :cond_18
    invoke-static {}, Lcom/transsion/camera/app/common/isphidl/ISPHIDLController;->getInstance()Lcom/transsion/camera/app/common/isphidl/ISPHIDLController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/transsion/camera/app/common/isphidl/ISPHIDLController;->isPostAlgoShot2Shoting()Z

    move-result v1

    if-eqz v1, :cond_5f

    .line 246
    iget-object p1, p0, Lcom/transsion/camera/app/common/groupcapture/GroupCaptureManager;->mPendingCaptureInfo:Ljava/util/concurrent/ConcurrentHashMap;

    iget p2, p0, Lcom/transsion/camera/app/common/groupcapture/GroupCaptureManager;->mCaptureTag:I

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 247
    iget-object p1, p0, Lcom/transsion/camera/app/common/groupcapture/GroupCaptureManager;->mPendingCaptureInfo:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result p1

    if-nez p1, :cond_38

    .line 248
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/groupcapture/GroupCaptureManager;->resetCapturingState()V

    .line 250
    :cond_38
    sget-object p1, Lcom/transsion/camera/app/common/groupcapture/GroupCaptureManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onModeCaptureStarted, postAlgoShot remove captureTag:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/transsion/camera/app/common/groupcapture/GroupCaptureManager;->mCaptureTag:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " mPendingCaptureInfo size = "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/transsion/camera/app/common/groupcapture/GroupCaptureManager;->mPendingCaptureInfo:Ljava/util/concurrent/ConcurrentHashMap;

    .line 251
    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 250
    invoke-static {p1, p0}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 255
    :cond_5f
    iput-wide p1, v0, Lcom/transsion/camera/app/common/groupcapture/GroupCaptureManager$CaptureInfo;->mTimestamp:J

    .line 256
    sget-object v0, Lcom/transsion/camera/app/common/groupcapture/GroupCaptureManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onModeCaptureStarted, update timestamp: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, ", captureTag: "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/transsion/camera/app/common/groupcapture/GroupCaptureManager;->mCaptureTag:I

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method public onShutterStart()V
    .registers 4

    .line 235
    iget v0, p0, Lcom/transsion/camera/app/common/groupcapture/GroupCaptureManager;->mShutterStartCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/transsion/camera/app/common/groupcapture/GroupCaptureManager;->mShutterStartCount:I

    .line 236
    sget-object v0, Lcom/transsion/camera/app/common/groupcapture/GroupCaptureManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onShutterStart, mShutterStartCount: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/transsion/camera/app/common/groupcapture/GroupCaptureManager;->mShutterStartCount:I

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method public resetCapturingState()V
    .registers 2

    const/4 v0, 0x0

    .line 182
    iput-boolean v0, p0, Lcom/transsion/camera/app/common/groupcapture/GroupCaptureManager;->mIsCapturing:Z

    return-void
.end method

.method public takePicture()V
    .registers 5

    const/4 v0, 0x1

    .line 127
    iput-boolean v0, p0, Lcom/transsion/camera/app/common/groupcapture/GroupCaptureManager;->mIsCapturing:Z

    .line 128
    new-instance v1, Ljava/util/Random;

    invoke-direct {v1}, Ljava/util/Random;-><init>()V

    const v2, 0x7fffffff

    invoke-virtual {v1, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    add-int/2addr v1, v0

    iput v1, p0, Lcom/transsion/camera/app/common/groupcapture/GroupCaptureManager;->mCaptureTag:I

    .line 129
    iget-object v0, p0, Lcom/transsion/camera/app/common/groupcapture/GroupCaptureManager;->mCameraDeviceControl:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->setCaptureTag(I)V

    .line 130
    new-instance v0, Lcom/transsion/camera/app/common/groupcapture/GroupCaptureManager$CaptureInfo;

    iget v1, p0, Lcom/transsion/camera/app/common/groupcapture/GroupCaptureManager;->mCaptureTag:I

    const/4 v2, 0x4

    invoke-direct {v0, p0, v1, v2}, Lcom/transsion/camera/app/common/groupcapture/GroupCaptureManager$CaptureInfo;-><init>(Lcom/transsion/camera/app/common/groupcapture/GroupCaptureManager;II)V

    .line 131
    invoke-direct {p0, v0}, Lcom/transsion/camera/app/common/groupcapture/GroupCaptureManager;->updateCaptureInfo(Lcom/transsion/camera/app/common/groupcapture/GroupCaptureManager$CaptureInfo;)V

    .line 132
    iget-object v1, p0, Lcom/transsion/camera/app/common/groupcapture/GroupCaptureManager;->mPendingCaptureInfo:Ljava/util/concurrent/ConcurrentHashMap;

    iget v2, p0, Lcom/transsion/camera/app/common/groupcapture/GroupCaptureManager;->mCaptureTag:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    iget-boolean v1, p0, Lcom/transsion/camera/app/common/groupcapture/GroupCaptureManager;->mNeedWaitingPreJpeg:Z

    if-eqz v1, :cond_5a

    invoke-direct {p0}, Lcom/transsion/camera/app/common/groupcapture/GroupCaptureManager;->isFaceBeautyOn()Z

    move-result v1

    if-eqz v1, :cond_5a

    .line 135
    iget-object v1, p0, Lcom/transsion/camera/app/common/groupcapture/GroupCaptureManager;->mTimeConsumingCaptureInfo:Ljava/util/concurrent/ConcurrentHashMap;

    iget v2, p0, Lcom/transsion/camera/app/common/groupcapture/GroupCaptureManager;->mCaptureTag:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    sget-object v1, Lcom/transsion/camera/app/common/groupcapture/GroupCaptureManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "takePicture, faceBeauty captureTag: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/transsion/camera/app/common/groupcapture/GroupCaptureManager;->mCaptureTag:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 138
    :cond_5a
    invoke-direct {p0}, Lcom/transsion/camera/app/common/groupcapture/GroupCaptureManager;->setZSLTimestamps()V

    .line 139
    sget-object v1, Lcom/transsion/camera/app/common/groupcapture/GroupCaptureManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "takePicture: captureTag: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/transsion/camera/app/common/groupcapture/GroupCaptureManager;->mCaptureTag:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ",isMakeUpOn: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, v0, Lcom/transsion/camera/app/common/groupcapture/GroupCaptureManager$CaptureInfo;->mIsMakeUpOn:Z

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 140
    iput v0, p0, Lcom/transsion/camera/app/common/groupcapture/GroupCaptureManager;->mShutterStartCount:I

    .line 141
    iget-object p0, p0, Lcom/transsion/camera/app/common/groupcapture/GroupCaptureManager;->mCameraDeviceControl:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->takePicture()V

    return-void
.end method

.method public unInit()V
    .registers 4

    .line 395
    iget-object v0, p0, Lcom/transsion/camera/app/common/groupcapture/GroupCaptureManager;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    invoke-interface {v0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->getStatusMonitor()Lcom/transsion/camera/app/common/setting/StatusMonitor;

    move-result-object v0

    const-string v1, "key_group_capture_scene_state"

    iget-object v2, p0, Lcom/transsion/camera/app/common/groupcapture/GroupCaptureManager;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    .line 396
    invoke-virtual {v0, v1, v2}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->unregisterValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 397
    iget-boolean v0, p0, Lcom/transsion/camera/app/common/groupcapture/GroupCaptureManager;->mNeedWaitingPreJpeg:Z

    if-eqz v0, :cond_1e

    .line 398
    iget-object v0, p0, Lcom/transsion/camera/app/common/groupcapture/GroupCaptureManager;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    invoke-interface {v0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->getStatusMonitor()Lcom/transsion/camera/app/common/setting/StatusMonitor;

    move-result-object v0

    const-string v1, "capture_state"

    iget-object p0, p0, Lcom/transsion/camera/app/common/groupcapture/GroupCaptureManager;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    .line 399
    invoke-virtual {v0, v1, p0}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->unregisterValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    :cond_1e
    return-void
.end method

.method public updateCaptureCount(Lcom/transsion/camera/app/common/mode/CaptureInfo;)V
    .registers 2

    .line 145
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/groupcapture/GroupCaptureManager;->isGroupScene()Z

    move-result p0

    if-eqz p0, :cond_a

    const/4 p0, 0x4

    .line 146
    invoke-virtual {p1, p0}, Lcom/transsion/camera/app/common/mode/CaptureInfo;->setCaptureCount(I)V

    :cond_a
    return-void
.end method
