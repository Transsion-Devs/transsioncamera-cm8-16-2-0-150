.class public abstract Lcom/transsion/camera/app/common/recorder/baseimpl/RecorderCallback;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/app/common/recorder/IVideoContract$IMediaRecorderCallback;


# static fields
.field private static final MIN_LIMIT_RECORD_DURATION:I = 0x3e8

.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private final mRecorderPolicy:Lcom/transsion/camera/app/common/recorder/baseimpl/RecorderPolicy;

.field private final mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

.field private mStartRecordTime:J

.field private mStorageOperator:Lcom/transsion/camera/app/common/storage/IStorage$IStorageOperator;

.field private final mVideoHelper:Lcom/transsion/camera/app/common/mode/CommonVideoHelper;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 38
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "RecorderCallback"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/app/common/recorder/baseimpl/RecorderCallback;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Lcom/transsion/camera/app/common/mode/CommonVideoHelper;Lcom/transsion/camera/app/common/recorder/baseimpl/RecorderPolicy;Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;)V
    .registers 4

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iput-object p1, p0, Lcom/transsion/camera/app/common/recorder/baseimpl/RecorderCallback;->mVideoHelper:Lcom/transsion/camera/app/common/mode/CommonVideoHelper;

    .line 56
    iput-object p2, p0, Lcom/transsion/camera/app/common/recorder/baseimpl/RecorderCallback;->mRecorderPolicy:Lcom/transsion/camera/app/common/recorder/baseimpl/RecorderPolicy;

    .line 57
    iput-object p3, p0, Lcom/transsion/camera/app/common/recorder/baseimpl/RecorderCallback;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    return-void
.end method

.method private addVideoToDataBase(Lcom/transsion/camera/app/common/recorder/data/VideoFileInfo;J)V
    .registers 6

    .line 178
    iget-object v0, p0, Lcom/transsion/camera/app/common/recorder/baseimpl/RecorderCallback;->mStorageOperator:Lcom/transsion/camera/app/common/storage/IStorage$IStorageOperator;

    if-eqz p1, :cond_27

    if-nez v0, :cond_7

    goto :goto_27

    .line 184
    :cond_7
    iget-object v0, p0, Lcom/transsion/camera/app/common/recorder/baseimpl/RecorderCallback;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    invoke-interface {v0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->getLocationManager()Lcom/transsion/camera/app/common/location/LocationManager;

    move-result-object v0

    const-string v1, "key_location"

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/location/LocationManager;->getCurrentLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v0

    .line 185
    iget-object v1, p0, Lcom/transsion/camera/app/common/recorder/baseimpl/RecorderCallback;->mVideoHelper:Lcom/transsion/camera/app/common/mode/CommonVideoHelper;

    invoke-virtual {v1, p1, p2, p3, v0}, Lcom/transsion/camera/app/common/mode/CommonVideoHelper;->createVideoContentValues(Lcom/transsion/camera/app/common/recorder/data/VideoFileInfo;JLandroid/location/Location;)Landroid/content/ContentValues;

    move-result-object p2

    .line 187
    invoke-virtual {p1}, Lcom/transsion/camera/app/common/recorder/data/VideoFileInfo;->getFileTempPath()Ljava/lang/String;

    move-result-object p1

    .line 188
    const-string p3, "_data"

    invoke-virtual {p2, p3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 190
    invoke-virtual {p0, p2, p1, p3}, Lcom/transsion/camera/app/common/recorder/baseimpl/RecorderCallback;->addVideoSaveRequest(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 180
    :cond_27
    :goto_27
    sget-object p0, Lcom/transsion/camera/app/common/recorder/baseimpl/RecorderCallback;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "addVideoToDataBase mVideoFileInfo or mStorageOperator is null,we have not information to save"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method private getVideoDuration(Lcom/transsion/camera/app/common/recorder/data/VideoFileInfo;)J
    .registers 9

    .line 149
    iget-object p0, p0, Lcom/transsion/camera/app/common/recorder/baseimpl/RecorderCallback;->mStorageOperator:Lcom/transsion/camera/app/common/storage/IStorage$IStorageOperator;

    const-wide/16 v0, 0x0

    if-eqz p1, :cond_48

    if-nez p0, :cond_9

    goto :goto_48

    .line 156
    :cond_9
    invoke-virtual {p1}, Lcom/transsion/camera/app/common/recorder/data/VideoFileInfo;->getFileTempPath()Ljava/lang/String;

    move-result-object v2

    .line 157
    invoke-virtual {p1}, Lcom/transsion/camera/app/common/recorder/data/VideoFileInfo;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object p1

    .line 158
    sget-object v3, Lcom/transsion/camera/app/common/recorder/baseimpl/RecorderCallback;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "checkMinDuration, file size = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p0}, Lcom/transsion/camera/app/common/storage/IStorage$IStorageOperator;->getVideoTempFileSize()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    if-eqz p1, :cond_3b

    .line 160
    :try_start_2d
    invoke-virtual {p1}, Ljava/io/FileDescriptor;->valid()Z

    move-result p0

    if-eqz p0, :cond_3b

    .line 161
    invoke-virtual {p1}, Ljava/io/FileDescriptor;->sync()V

    .line 162
    invoke-static {p1}, Lcom/transsion/camera/app/common/mode/CommonVideoHelper;->getDuration(Ljava/io/FileDescriptor;)J

    move-result-wide p0

    return-wide p0

    .line 164
    :cond_3b
    invoke-static {v2}, Lcom/transsion/camera/app/common/mode/CommonVideoHelper;->getDuration(Ljava/lang/String;)J

    move-result-wide p0
    :try_end_3f
    .catch Ljava/io/IOException; {:try_start_2d .. :try_end_3f} :catch_40

    return-wide p0

    .line 167
    :catch_40
    sget-object p0, Lcom/transsion/camera/app/common/recorder/baseimpl/RecorderCallback;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "checkMinDuration exception, e"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-wide v0

    .line 151
    :cond_48
    :goto_48
    sget-object v2, Lcom/transsion/camera/app/common/recorder/baseimpl/RecorderCallback;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "checkMinDuration mVideoFileInfo: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", mStorageOperator: "

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-wide v0
.end method

.method private isDurationInValid(J)Z
    .registers 5

    const-wide/16 v0, 0x3e8

    cmp-long p0, p1, v0

    if-gez p0, :cond_8

    const/4 p0, 0x1

    return p0

    :cond_8
    const/4 p0, 0x0

    return p0
.end method

.method private stopWithInValidFile(I)Z
    .registers 2

    if-eqz p1, :cond_6

    const/4 p0, 0x1

    if-eq p1, p0, :cond_6

    return p0

    :cond_6
    const/4 p0, 0x0

    return p0
.end method

.method private storingVideoFile()V
    .registers 7

    .line 126
    iget-object v0, p0, Lcom/transsion/camera/app/common/recorder/baseimpl/RecorderCallback;->mRecorderPolicy:Lcom/transsion/camera/app/common/recorder/baseimpl/RecorderPolicy;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/recorder/baseimpl/RecorderPolicy;->videoFileInfo()Lcom/transsion/camera/app/common/recorder/data/VideoFileInfo;

    move-result-object v0

    .line 127
    iget-object v1, p0, Lcom/transsion/camera/app/common/recorder/baseimpl/RecorderCallback;->mStorageOperator:Lcom/transsion/camera/app/common/storage/IStorage$IStorageOperator;

    if-eqz v0, :cond_38

    if-nez v1, :cond_d

    goto :goto_38

    .line 135
    :cond_d
    invoke-direct {p0, v0}, Lcom/transsion/camera/app/common/recorder/baseimpl/RecorderCallback;->getVideoDuration(Lcom/transsion/camera/app/common/recorder/data/VideoFileInfo;)J

    move-result-wide v2

    .line 136
    invoke-direct {p0, v2, v3}, Lcom/transsion/camera/app/common/recorder/baseimpl/RecorderCallback;->isDurationInValid(J)Z

    move-result v4

    if-eqz v4, :cond_34

    .line 137
    sget-object v0, Lcom/transsion/camera/app/common/recorder/baseimpl/RecorderCallback;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "storingVideoFile duration too short, duration: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 138
    invoke-interface {v1}, Lcom/transsion/camera/app/common/storage/IStorage$IStorageOperator;->deleteTempVideoFile()V

    .line 139
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/recorder/baseimpl/RecorderCallback;->handleStopFailed()V

    return-void

    .line 143
    :cond_34
    invoke-direct {p0, v0, v2, v3}, Lcom/transsion/camera/app/common/recorder/baseimpl/RecorderCallback;->addVideoToDataBase(Lcom/transsion/camera/app/common/recorder/data/VideoFileInfo;J)V

    return-void

    .line 130
    :cond_38
    :goto_38
    sget-object v0, Lcom/transsion/camera/app/common/recorder/baseimpl/RecorderCallback;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "storingVideoFile mVideoFileInfo or mStorageOperator is null,we have not information to save"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 131
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/recorder/baseimpl/RecorderCallback;->handleStopFailed()V

    return-void
.end method


# virtual methods
.method protected abstract addVideoSaveRequest(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method protected handleStopFailed()V
    .registers 1

    .line 118
    iget-object p0, p0, Lcom/transsion/camera/app/common/recorder/baseimpl/RecorderCallback;->mStorageOperator:Lcom/transsion/camera/app/common/storage/IStorage$IStorageOperator;

    if-eqz p0, :cond_7

    .line 120
    invoke-interface {p0}, Lcom/transsion/camera/app/common/storage/IStorage$IStorageOperator;->deleteTempVideoFile()V

    :cond_7
    return-void
.end method

.method public onMediaRecorderPaused()V
    .registers 1

    return-void
.end method

.method public onMediaRecorderPrepareAbort()V
    .registers 1

    return-void
.end method

.method public onMediaRecorderPrepared(Landroid/view/Surface;IIIZ)V
    .registers 6

    return-void
.end method

.method public onMediaRecorderPreparing()V
    .registers 1

    return-void
.end method

.method public onMediaRecorderProcessing()V
    .registers 1

    return-void
.end method

.method public onMediaRecorderResumed()V
    .registers 1

    return-void
.end method

.method public onMediaRecorderStarted()V
    .registers 3

    .line 76
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/transsion/camera/app/common/recorder/baseimpl/RecorderCallback;->mStartRecordTime:J

    return-void
.end method

.method public onMediaRecorderStopped(IZ)V
    .registers 7

    .line 96
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/common/recorder/baseimpl/RecorderCallback;->stopWithInValidFile(I)Z

    move-result p2

    if-eqz p2, :cond_20

    .line 97
    sget-object p2, Lcom/transsion/camera/app/common/recorder/baseimpl/RecorderCallback;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onMediaRecorderStopped stop with invalid file, reason: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 98
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/recorder/baseimpl/RecorderCallback;->handleStopFailed()V

    return-void

    .line 102
    :cond_20
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/transsion/camera/app/common/recorder/baseimpl/RecorderCallback;->mStartRecordTime:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x3e8

    cmp-long p2, v0, v2

    if-gez p2, :cond_47

    .line 104
    sget-object p2, Lcom/transsion/camera/app/common/recorder/baseimpl/RecorderCallback;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onMediaRecorderStopped recordTime: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 105
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/recorder/baseimpl/RecorderCallback;->handleStopFailed()V

    return-void

    .line 109
    :cond_47
    invoke-direct {p0}, Lcom/transsion/camera/app/common/recorder/baseimpl/RecorderCallback;->storingVideoFile()V

    return-void
.end method

.method public onMediaRecorderStopping(IZ)V
    .registers 3

    return-void
.end method

.method public setStorageOperator(Lcom/transsion/camera/app/common/storage/IStorage$IStorageOperator;)V
    .registers 2

    .line 61
    iput-object p1, p0, Lcom/transsion/camera/app/common/recorder/baseimpl/RecorderCallback;->mStorageOperator:Lcom/transsion/camera/app/common/storage/IStorage$IStorageOperator;

    return-void
.end method
