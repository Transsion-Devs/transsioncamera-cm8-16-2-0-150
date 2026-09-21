.class public Lcom/transsion/camera/feature/mode/vlog/setting/FrameSelect;
.super Lcom/transsion/camera/app/common/setting/SettingBase;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/app/common/setting/ICameraSetting$IParametersConfigure;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/feature/mode/vlog/setting/FrameSelect$FrameSelectHandler;
    }
.end annotation


# static fields
.field private static final MSG_FRAME_INIT:I = 0x1

.field private static final MSG_FRAME_SELECT:I = 0x0

.field private static final MSG_FRAME_UNIT:I = 0x2

.field private static final RECOGNIZE_INTERNAL_TIME:I = 0x3e8

.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

.field private static final TARGET_HEIGHT:I = 0x438

.field private static final TARGET_WIDTH:I = 0x780

.field private static final sDebug:Z = false


# instance fields
.field private isFrameSelectAvailable:Z

.field private isModeSupport:Z

.field private volatile isRecording:Z

.field private mFirstSelect:Z

.field private final mHLResults:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/volcengine/ck/highlight/data/HLResult;",
            ">;"
        }
    .end annotation
.end field

.field private volatile mInitialed:Z

.field private mLastRecognizeTime:J

.field private final mPreviewDataCallback:Lcom/transsion/camera/adapter/CameraProxy$CameraSettingPreviewDataCallback;

.field private final mPreviewStateCallback:Lcom/transsion/camera/app/common/setting/ICameraSetting$PreviewStateCallback;

.field private final mRecognizeFrames:Ljava/util/concurrent/atomic/AtomicInteger;

.field private mRecordStartTime:J

.field private mSupportFreeShot:Z

.field private mVideoHintOrientation:I

.field private mWorkHandler:Landroid/os/Handler;


# direct methods
.method public static synthetic $r8$lambda$hQb5-y-ysM6t6DTnN0a9edf7Xzc(Lcom/transsion/camera/feature/mode/vlog/setting/FrameSelect;Landroid/media/Image;III)V
    .registers 5

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/transsion/camera/feature/mode/vlog/setting/FrameSelect;->lambda$new$0(Landroid/media/Image;III)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetmHLResults(Lcom/transsion/camera/feature/mode/vlog/setting/FrameSelect;)Ljava/util/List;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/setting/FrameSelect;->mHLResults:Ljava/util/List;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmInitialed(Lcom/transsion/camera/feature/mode/vlog/setting/FrameSelect;)Z
    .registers 1

    .line 0
    iget-boolean p0, p0, Lcom/transsion/camera/feature/mode/vlog/setting/FrameSelect;->mInitialed:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmVideoHintOrientation(Lcom/transsion/camera/feature/mode/vlog/setting/FrameSelect;)I
    .registers 1

    .line 0
    iget p0, p0, Lcom/transsion/camera/feature/mode/vlog/setting/FrameSelect;->mVideoHintOrientation:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fputmInitialed(Lcom/transsion/camera/feature/mode/vlog/setting/FrameSelect;Z)V
    .registers 2

    .line 0
    iput-boolean p1, p0, Lcom/transsion/camera/feature/mode/vlog/setting/FrameSelect;->mInitialed:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$mgetTransformOrientation(Lcom/transsion/camera/feature/mode/vlog/setting/FrameSelect;IZ)I
    .registers 3

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/feature/mode/vlog/setting/FrameSelect;->getTransformOrientation(IZ)I

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;
    .registers 1

    .line 0
    sget-object v0, Lcom/transsion/camera/feature/mode/vlog/setting/FrameSelect;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 45
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "Vlog_FrameSelect"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/feature/mode/vlog/setting/FrameSelect;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .line 44
    invoke-direct {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;-><init>()V

    .line 56
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/setting/FrameSelect;->mHLResults:Ljava/util/List;

    .line 57
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/setting/FrameSelect;->mRecognizeFrames:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 62
    iput-boolean v1, p0, Lcom/transsion/camera/feature/mode/vlog/setting/FrameSelect;->isModeSupport:Z

    .line 63
    iput-boolean v1, p0, Lcom/transsion/camera/feature/mode/vlog/setting/FrameSelect;->isFrameSelectAvailable:Z

    .line 64
    iput-boolean v1, p0, Lcom/transsion/camera/feature/mode/vlog/setting/FrameSelect;->mFirstSelect:Z

    .line 65
    iput-boolean v1, p0, Lcom/transsion/camera/feature/mode/vlog/setting/FrameSelect;->mSupportFreeShot:Z

    .line 67
    iput-boolean v1, p0, Lcom/transsion/camera/feature/mode/vlog/setting/FrameSelect;->mInitialed:Z

    .line 68
    iput-boolean v1, p0, Lcom/transsion/camera/feature/mode/vlog/setting/FrameSelect;->isRecording:Z

    .line 202
    new-instance v0, Lcom/transsion/camera/feature/mode/vlog/setting/FrameSelect$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/transsion/camera/feature/mode/vlog/setting/FrameSelect$$ExternalSyntheticLambda0;-><init>(Lcom/transsion/camera/feature/mode/vlog/setting/FrameSelect;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/setting/FrameSelect;->mPreviewDataCallback:Lcom/transsion/camera/adapter/CameraProxy$CameraSettingPreviewDataCallback;

    .line 348
    new-instance v0, Lcom/transsion/camera/feature/mode/vlog/setting/FrameSelect$1;

    invoke-direct {v0, p0}, Lcom/transsion/camera/feature/mode/vlog/setting/FrameSelect$1;-><init>(Lcom/transsion/camera/feature/mode/vlog/setting/FrameSelect;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/setting/FrameSelect;->mPreviewStateCallback:Lcom/transsion/camera/app/common/setting/ICameraSetting$PreviewStateCallback;

    return-void
.end method

.method static synthetic access$000(Lcom/transsion/camera/feature/mode/vlog/setting/FrameSelect;)Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;
    .registers 1

    .line 44
    iget-object p0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDeviceRequester:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;

    return-object p0
.end method

.method private getTransformOrientation(IZ)I
    .registers 5

    const/4 p0, 0x2

    const/4 v0, 0x0

    if-eqz p1, :cond_19

    const/16 v1, 0x5a

    if-eq p1, v1, :cond_17

    const/16 v1, 0xb4

    if-eq p1, v1, :cond_13

    const/16 p0, 0x10e

    if-eq p1, p0, :cond_11

    return v0

    :cond_11
    const/4 p0, 0x3

    return p0

    :cond_13
    if-eqz p2, :cond_16

    return v0

    :cond_16
    return p0

    :cond_17
    const/4 p0, 0x1

    return p0

    :cond_19
    if-eqz p2, :cond_1c

    return p0

    :cond_1c
    return v0
.end method

.method private synthetic lambda$new$0(Landroid/media/Image;III)V
    .registers 13

    .line 208
    iget-boolean p4, p0, Lcom/transsion/camera/feature/mode/vlog/setting/FrameSelect;->isRecording:Z

    if-eqz p4, :cond_5a

    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/vlog/setting/FrameSelect;->isSupport()Z

    move-result p4

    if-eqz p4, :cond_5a

    iget-object p4, p0, Lcom/transsion/camera/feature/mode/vlog/setting/FrameSelect;->mWorkHandler:Landroid/os/Handler;

    if-nez p4, :cond_f

    goto :goto_5a

    .line 212
    :cond_f
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 213
    iget-boolean p4, p0, Lcom/transsion/camera/feature/mode/vlog/setting/FrameSelect;->mFirstSelect:Z

    if-nez p4, :cond_21

    iget-wide v2, p0, Lcom/transsion/camera/feature/mode/vlog/setting/FrameSelect;->mLastRecognizeTime:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0x3e8

    cmp-long p4, v2, v4

    if-ltz p4, :cond_5a

    .line 214
    :cond_21
    iget-boolean p4, p0, Lcom/transsion/camera/feature/mode/vlog/setting/FrameSelect;->mInitialed:Z

    if-nez p4, :cond_34

    .line 215
    iget-object p4, p0, Lcom/transsion/camera/feature/mode/vlog/setting/FrameSelect;->mWorkHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {p4, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 216
    iget-object p4, p0, Lcom/transsion/camera/feature/mode/vlog/setting/FrameSelect;->mWorkHandler:Landroid/os/Handler;

    invoke-virtual {p4, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p4

    invoke-virtual {p4}, Landroid/os/Message;->sendToTarget()V

    .line 219
    :cond_34
    iget-object p4, p0, Lcom/transsion/camera/feature/mode/vlog/setting/FrameSelect;->mRecognizeFrames:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p4}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 220
    invoke-static {p1}, Lcom/transsion/camera/utils/CameraUtil;->getNV21Buffer(Landroid/media/Image;)[B

    move-result-object v7

    .line 221
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/transsion/camera/feature/mode/vlog/setting/FrameSelect;->mLastRecognizeTime:J

    .line 222
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/vlog/setting/FrameSelect;->mWorkHandler:Landroid/os/Handler;

    new-instance v2, Lcom/transsion/camera/feature/mode/vlog/bean/FrameSelectInfo;

    iget-wide v3, p0, Lcom/transsion/camera/feature/mode/vlog/setting/FrameSelect;->mRecordStartTime:J

    sub-long v5, v0, v3

    move v3, p2

    move v4, p3

    invoke-direct/range {v2 .. v7}, Lcom/transsion/camera/feature/mode/vlog/bean/FrameSelectInfo;-><init>(IIJ[B)V

    const/4 p2, 0x0

    invoke-virtual {p1, p2, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 223
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 224
    iput-boolean p2, p0, Lcom/transsion/camera/feature/mode/vlog/setting/FrameSelect;->mFirstSelect:Z

    :cond_5a
    :goto_5a
    return-void
.end method


# virtual methods
.method public configCommand(Lcom/transsion/camera/adapter/CameraProxy;)V
    .registers 4

    .line 338
    invoke-virtual {p1}, Lcom/transsion/camera/adapter/CameraProxy;->getCameraParameters()Lcom/transsion/camera/adapter/CameraParameters;

    move-result-object v0

    .line 339
    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/vlog/setting/FrameSelect;->isSupport()Z

    move-result v1

    if-eqz v1, :cond_14

    const/4 v1, 0x1

    .line 340
    invoke-virtual {v0, v1}, Lcom/transsion/camera/adapter/CameraParameters;->openYUVDataWhenRecording(Z)V

    .line 341
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/setting/FrameSelect;->mPreviewDataCallback:Lcom/transsion/camera/adapter/CameraProxy$CameraSettingPreviewDataCallback;

    invoke-virtual {p1, p0}, Lcom/transsion/camera/adapter/CameraProxy;->registerSettingPreviewDataCallback(Lcom/transsion/camera/adapter/CameraProxy$CameraSettingPreviewDataCallback;)V

    return-void

    :cond_14
    const/4 v1, 0x0

    .line 343
    invoke-virtual {v0, v1}, Lcom/transsion/camera/adapter/CameraParameters;->openYUVDataWhenRecording(Z)V

    .line 344
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/setting/FrameSelect;->mPreviewDataCallback:Lcom/transsion/camera/adapter/CameraProxy$CameraSettingPreviewDataCallback;

    invoke-virtual {p1, p0}, Lcom/transsion/camera/adapter/CameraProxy;->unRegisterSettingPreviewDataCallback(Lcom/transsion/camera/adapter/CameraProxy$CameraSettingPreviewDataCallback;)V

    return-void
.end method

.method public configParameters(Lcom/transsion/camera/adapter/CameraParameters;)I
    .registers 2

    const/4 p0, 0x0

    return p0
.end method

.method public bridge synthetic forceApplyValue(Ljava/lang/String;)V
    .registers 2

    .line 0
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/setting/ISetting;->forceApplyValue(Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic forceUpdateValue(Ljava/lang/String;)V
    .registers 2

    .line 0
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/setting/ISetting;->forceUpdateValue(Ljava/lang/String;)V

    return-void
.end method

.method public getHLResult(JJ)Lcom/volcengine/ck/highlight/data/HLExtractorResult;
    .registers 7

    .line 156
    sget-object v0, Lcom/transsion/camera/feature/mode/vlog/setting/FrameSelect;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "getHLResult START"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 157
    new-instance v1, Lcom/volcengine/ck/highlight/config/HLExtractorRequirement;

    long-to-int p1, p1

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {v1, p1, p2}, Lcom/volcengine/ck/highlight/config/HLExtractorRequirement;-><init>(ILjava/util/List;)V

    .line 158
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/vlog/setting/FrameSelect;->mHLResults:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_38

    .line 160
    sget-object p1, Lcom/volcengine/ck/highlight/HLSDK;->INSTANCE:Lcom/volcengine/ck/highlight/HLSDK;

    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/setting/FrameSelect;->mHLResults:Ljava/util/List;

    long-to-int p2, p3

    invoke-virtual {p1, v1, p0, p2}, Lcom/volcengine/ck/highlight/HLSDK;->extract(Lcom/volcengine/ck/highlight/config/HLExtractorRequirement;Ljava/util/List;I)Lcom/volcengine/ck/highlight/data/HLExtractorResult;

    move-result-object p0

    .line 161
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "getHLResult END, highlightResult: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-object p0

    :cond_38
    const/4 p0, 0x0

    return-object p0
.end method

.method public getHLResults()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/volcengine/ck/highlight/data/HLResult;",
            ">;"
        }
    .end annotation

    .line 169
    new-instance v0, Ljava/util/ArrayList;

    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/setting/FrameSelect;->mHLResults:Ljava/util/List;

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public getKey()Ljava/lang/String;
    .registers 1

    .line 129
    const-string p0, "key_frame_select"

    return-object p0
.end method

.method public getParametersConfigure()Lcom/transsion/camera/app/common/setting/ICameraSetting$IParametersConfigure;
    .registers 1

    return-object p0
.end method

.method public getPreviewStateCallback()Lcom/transsion/camera/app/common/setting/ICameraSetting$PreviewStateCallback;
    .registers 1

    .line 119
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/setting/FrameSelect;->mPreviewStateCallback:Lcom/transsion/camera/app/common/setting/ICameraSetting$PreviewStateCallback;

    return-object p0
.end method

.method public bridge synthetic getSeekBarValue(I)Ljava/lang/String;
    .registers 2

    .line 0
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/setting/ISetting;->getSeekBarValue(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getSettingType()Lcom/transsion/camera/app/common/setting/ICameraSetting$SettingType;
    .registers 1

    .line 109
    sget-object p0, Lcom/transsion/camera/app/common/setting/ICameraSetting$SettingType;->VIDEO:Lcom/transsion/camera/app/common/setting/ICameraSetting$SettingType;

    return-object p0
.end method

.method public getSupport()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 p0, 0x0

    return-object p0
.end method

.method public bridge synthetic getTempSettingValue()Ljava/lang/String;
    .registers 1

    .line 0
    invoke-super {p0}, Lcom/transsion/camera/app/common/setting/ISetting;->getTempSettingValue()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public init(Landroid/content/Context;Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;Lcom/transsion/camera/app/common/storage/DataStore;)V
    .registers 4

    .line 76
    invoke-super {p0, p1, p2, p3}, Lcom/transsion/camera/app/common/setting/SettingBase;->init(Landroid/content/Context;Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;Lcom/transsion/camera/app/common/storage/DataStore;)V

    .line 78
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/transsion/camera/feature/vlog/R$bool;->vlog_mode_support_free_shot:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p1

    iput-boolean p1, p0, Lcom/transsion/camera/feature/mode/vlog/setting/FrameSelect;->mSupportFreeShot:Z

    return-void
.end method

.method protected initValueAndSupport(Ljava/util/List;Ljava/lang/String;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    return-void
.end method

.method public initWorkHandlerIfNeed()V
    .registers 4

    .line 191
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/setting/FrameSelect;->mWorkHandler:Landroid/os/Handler;

    if-nez v0, :cond_1f

    iget-boolean v0, p0, Lcom/transsion/camera/feature/mode/vlog/setting/FrameSelect;->isModeSupport:Z

    if-eqz v0, :cond_1f

    .line 192
    new-instance v0, Landroid/os/HandlerThread;

    const-string/jumbo v1, "vlog-frame-select-thread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 193
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 194
    new-instance v1, Lcom/transsion/camera/feature/mode/vlog/setting/FrameSelect$FrameSelectHandler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    const/4 v2, 0x0

    invoke-direct {v1, p0, v0, v2}, Lcom/transsion/camera/feature/mode/vlog/setting/FrameSelect$FrameSelectHandler;-><init>(Lcom/transsion/camera/feature/mode/vlog/setting/FrameSelect;Landroid/os/Looper;Lcom/transsion/camera/feature/mode/vlog/setting/FrameSelect-IA;)V

    iput-object v1, p0, Lcom/transsion/camera/feature/mode/vlog/setting/FrameSelect;->mWorkHandler:Landroid/os/Handler;

    :cond_1f
    return-void
.end method

.method public isHLInitialized()Z
    .registers 1

    .line 199
    iget-boolean p0, p0, Lcom/transsion/camera/feature/mode/vlog/setting/FrameSelect;->mInitialed:Z

    return p0
.end method

.method public isSupport()Z
    .registers 2

    .line 99
    iget-boolean v0, p0, Lcom/transsion/camera/feature/mode/vlog/setting/FrameSelect;->isModeSupport:Z

    if-eqz v0, :cond_a

    iget-boolean p0, p0, Lcom/transsion/camera/feature/mode/vlog/setting/FrameSelect;->isFrameSelectAvailable:Z

    if-eqz p0, :cond_a

    const/4 p0, 0x1

    return p0

    :cond_a
    const/4 p0, 0x0

    return p0
.end method

.method public declared-synchronized onModeClosed(Ljava/lang/String;)V
    .registers 5

    monitor-enter p0

    .line 90
    :try_start_1
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/setting/SettingBase;->onModeClosed(Ljava/lang/String;)V

    .line 91
    sget-object v0, Lcom/transsion/camera/feature/mode/vlog/setting/FrameSelect;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[onModeClosed] modeKey: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 92
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/vlog/setting/FrameSelect;->mWorkHandler:Landroid/os/Handler;

    if-eqz p1, :cond_2f

    iget-boolean p1, p0, Lcom/transsion/camera/feature/mode/vlog/setting/FrameSelect;->mInitialed:Z

    if-eqz p1, :cond_2f

    .line 93
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/vlog/setting/FrameSelect;->mWorkHandler:Landroid/os/Handler;

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    goto :goto_2f

    :catchall_2d
    move-exception p1

    goto :goto_34

    :cond_2f
    :goto_2f
    const/4 p1, 0x0

    .line 95
    iput-boolean p1, p0, Lcom/transsion/camera/feature/mode/vlog/setting/FrameSelect;->isModeSupport:Z
    :try_end_32
    .catchall {:try_start_1 .. :try_end_32} :catchall_2d

    .line 96
    monitor-exit p0

    return-void

    :goto_34
    :try_start_34
    monitor-exit p0
    :try_end_35
    .catchall {:try_start_34 .. :try_end_35} :catchall_2d

    throw p1
.end method

.method public onModeOpened(Ljava/lang/String;Lcom/transsion/camera/app/common/mode/ICameraMode$ModeType;[Ljava/lang/String;)V
    .registers 6

    .line 83
    invoke-super {p0, p1, p2, p3}, Lcom/transsion/camera/app/common/setting/SettingBase;->onModeOpened(Ljava/lang/String;Lcom/transsion/camera/app/common/mode/ICameraMode$ModeType;[Ljava/lang/String;)V

    .line 84
    sget-object p2, Lcom/transsion/camera/feature/mode/vlog/setting/FrameSelect;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[onModeOpened] modeKey:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", modeFeature: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p3}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " mSupportFreeShot: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p1, p0, Lcom/transsion/camera/feature/mode/vlog/setting/FrameSelect;->mSupportFreeShot:Z

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 85
    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/vlog/setting/FrameSelect;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-static {p3, p1}, Lcom/transsion/camera/utils/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/transsion/camera/feature/mode/vlog/setting/FrameSelect;->isModeSupport:Z

    return-void
.end method

.method public onValueChanged(Ljava/lang/String;)V
    .registers 2

    return-void
.end method

.method public onVideoRecordStart(I)V
    .registers 5

    .line 133
    sget-object v0, Lcom/transsion/camera/feature/mode/vlog/setting/FrameSelect;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onVideoRecordStart, videoHintOrientation: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 134
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/transsion/camera/feature/mode/vlog/setting/FrameSelect;->mRecordStartTime:J

    .line 135
    iput p1, p0, Lcom/transsion/camera/feature/mode/vlog/setting/FrameSelect;->mVideoHintOrientation:I

    const/4 p1, 0x1

    .line 136
    iput-boolean p1, p0, Lcom/transsion/camera/feature/mode/vlog/setting/FrameSelect;->isRecording:Z

    .line 137
    iput-boolean p1, p0, Lcom/transsion/camera/feature/mode/vlog/setting/FrameSelect;->mFirstSelect:Z

    .line 138
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/vlog/setting/FrameSelect;->mRecognizeFrames:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 139
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/setting/FrameSelect;->mHLResults:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public onVideoRecordStop()V
    .registers 4

    .line 143
    sget-object v0, Lcom/transsion/camera/feature/mode/vlog/setting/FrameSelect;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onVideoRecordStop, mHLResults size: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/feature/mode/vlog/setting/FrameSelect;->mHLResults:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", mRecognizeFrames: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/feature/mode/vlog/setting/FrameSelect;->mRecognizeFrames:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 144
    iput-boolean v0, p0, Lcom/transsion/camera/feature/mode/vlog/setting/FrameSelect;->isRecording:Z

    return-void
.end method

.method public bridge synthetic onZoomUIStateChanged(Z)V
    .registers 2

    .line 0
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/setting/ISetting;->onZoomUIStateChanged(Z)V

    return-void
.end method

.method public sendFrameInitMsg()V
    .registers 4

    .line 180
    sget-object v0, Lcom/transsion/camera/feature/mode/vlog/setting/FrameSelect;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sendFrameInitMsg, mInitialed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/transsion/camera/feature/mode/vlog/setting/FrameSelect;->mInitialed:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", isModeSupport: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/transsion/camera/feature/mode/vlog/setting/FrameSelect;->isModeSupport:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", mSupportFreeShot: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/transsion/camera/feature/mode/vlog/setting/FrameSelect;->mSupportFreeShot:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " ,mWorkHandler :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/feature/mode/vlog/setting/FrameSelect;->mWorkHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 182
    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/vlog/setting/FrameSelect;->initWorkHandlerIfNeed()V

    .line 184
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/setting/FrameSelect;->mWorkHandler:Landroid/os/Handler;

    if-eqz v0, :cond_58

    iget-boolean v0, p0, Lcom/transsion/camera/feature/mode/vlog/setting/FrameSelect;->mInitialed:Z

    if-nez v0, :cond_58

    iget-boolean v0, p0, Lcom/transsion/camera/feature/mode/vlog/setting/FrameSelect;->isModeSupport:Z

    if-eqz v0, :cond_58

    iget-boolean v0, p0, Lcom/transsion/camera/feature/mode/vlog/setting/FrameSelect;->mSupportFreeShot:Z

    if-eqz v0, :cond_58

    .line 185
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/setting/FrameSelect;->mWorkHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 186
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/setting/FrameSelect;->mWorkHandler:Landroid/os/Handler;

    invoke-virtual {p0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    :cond_58
    return-void
.end method

.method public sendSettingChangeRequest()V
    .registers 1

    return-void
.end method

.method public setCameraCapabilities(Lcom/transsion/camera/adapter/ICameraCapabilities;)V
    .registers 2

    return-void
.end method

.method public setFrameSelectAvailable(Z)V
    .registers 4

    .line 173
    iget-boolean v0, p0, Lcom/transsion/camera/feature/mode/vlog/setting/FrameSelect;->isFrameSelectAvailable:Z

    if-eq v0, p1, :cond_f

    .line 174
    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDeviceRequester:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/vlog/setting/FrameSelect;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;->requestChangeCommand(Ljava/lang/String;)V

    .line 175
    iput-boolean p1, p0, Lcom/transsion/camera/feature/mode/vlog/setting/FrameSelect;->isFrameSelectAvailable:Z

    :cond_f
    return-void
.end method

.method public bridge synthetic setRealZoomValue(Ljava/lang/String;)V
    .registers 2

    .line 0
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/setting/ISetting;->setRealZoomValue(Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic setRestrict3ATouchArea(Landroid/graphics/Rect;)V
    .registers 2

    .line 0
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/setting/ISetting;->setRestrict3ATouchArea(Landroid/graphics/Rect;)V

    return-void
.end method

.method public unInit()V
    .registers 2

    .line 149
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/setting/FrameSelect;->mWorkHandler:Landroid/os/Handler;

    if-eqz v0, :cond_e

    .line 150
    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quitSafely()V

    const/4 v0, 0x0

    .line 151
    iput-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/setting/FrameSelect;->mWorkHandler:Landroid/os/Handler;

    :cond_e
    return-void
.end method

.method public bridge synthetic updateEntryValueList(Z)V
    .registers 2

    .line 0
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/setting/ISetting;->updateEntryValueList(Z)V

    return-void
.end method
