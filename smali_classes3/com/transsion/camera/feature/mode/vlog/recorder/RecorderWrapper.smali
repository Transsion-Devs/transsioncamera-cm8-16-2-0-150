.class public Lcom/transsion/camera/feature/mode/vlog/recorder/RecorderWrapper;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/feature/mode/vlog/recorder/RecorderWrapper$ICallbackListener;
    }
.end annotation


# static fields
.field private static final FREE_SHOT_PREFIX:Ljava/lang/String; = "free_shot"

.field private static final LANDSCAPE_PREFIX:Ljava/lang/String; = "landscape"

.field private static final PORTRAIT_PREFIX:Ljava/lang/String; = "portrait"

.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private mCallbackListener:Lcom/transsion/camera/feature/mode/vlog/recorder/RecorderWrapper$ICallbackListener;

.field private final mContext:Landroid/content/Context;

.field private mCurrentPage:I
    .annotation build Lcom/transsion/camera/feature/mode/vlog/IVlog$Page;
    .end annotation
.end field

.field private mCurrentSegmentIndex:I

.field private mFrameSelect:Lcom/transsion/camera/feature/mode/vlog/setting/FrameSelect;

.field private final mMainHandler:Landroid/os/Handler;

.field private mNeedMirror:Z

.field private final mNeedPostProcess:Z

.field private final mNeedRecognize:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mOrientation:I

.field private final mRecorder:Lcom/transsion/camera/feature/mode/vlog/recorder/VlogRecorder;

.field private final mRecorderCallback:Lcom/transsion/camera/feature/mode/vlog/recorder/listener/IVlogRecordContract$IRecorderCallback;

.field private final mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

.field private mTemplateWrapItemData:Lcom/transsion/camera/feature/mode/vlog/bean/TemplateWrapItemData;

.field private mVideoFileInfo:Lcom/transsion/camera/app/common/recorder/data/VideoFileInfo;

.field private mVideoHintOrientation:I

.field private final mVlogHelper:Lcom/transsion/camera/feature/mode/vlog/VlogHelper;


# direct methods
.method static bridge synthetic -$$Nest$fgetmCallbackListener(Lcom/transsion/camera/feature/mode/vlog/recorder/RecorderWrapper;)Lcom/transsion/camera/feature/mode/vlog/recorder/RecorderWrapper$ICallbackListener;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/recorder/RecorderWrapper;->mCallbackListener:Lcom/transsion/camera/feature/mode/vlog/recorder/RecorderWrapper$ICallbackListener;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmCurrentPage(Lcom/transsion/camera/feature/mode/vlog/recorder/RecorderWrapper;)I
    .registers 1

    .line 0
    iget p0, p0, Lcom/transsion/camera/feature/mode/vlog/recorder/RecorderWrapper;->mCurrentPage:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmCurrentSegmentIndex(Lcom/transsion/camera/feature/mode/vlog/recorder/RecorderWrapper;)I
    .registers 1

    .line 0
    iget p0, p0, Lcom/transsion/camera/feature/mode/vlog/recorder/RecorderWrapper;->mCurrentSegmentIndex:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmFrameSelect(Lcom/transsion/camera/feature/mode/vlog/recorder/RecorderWrapper;)Lcom/transsion/camera/feature/mode/vlog/setting/FrameSelect;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/recorder/RecorderWrapper;->mFrameSelect:Lcom/transsion/camera/feature/mode/vlog/setting/FrameSelect;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmMainHandler(Lcom/transsion/camera/feature/mode/vlog/recorder/RecorderWrapper;)Landroid/os/Handler;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/recorder/RecorderWrapper;->mMainHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmNeedPostProcess(Lcom/transsion/camera/feature/mode/vlog/recorder/RecorderWrapper;)Z
    .registers 1

    .line 0
    iget-boolean p0, p0, Lcom/transsion/camera/feature/mode/vlog/recorder/RecorderWrapper;->mNeedPostProcess:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmNeedRecognize(Lcom/transsion/camera/feature/mode/vlog/recorder/RecorderWrapper;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/recorder/RecorderWrapper;->mNeedRecognize:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmTemplateWrapItemData(Lcom/transsion/camera/feature/mode/vlog/recorder/RecorderWrapper;)Lcom/transsion/camera/feature/mode/vlog/bean/TemplateWrapItemData;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/recorder/RecorderWrapper;->mTemplateWrapItemData:Lcom/transsion/camera/feature/mode/vlog/bean/TemplateWrapItemData;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmVideoFileInfo(Lcom/transsion/camera/feature/mode/vlog/recorder/RecorderWrapper;)Lcom/transsion/camera/app/common/recorder/data/VideoFileInfo;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/recorder/RecorderWrapper;->mVideoFileInfo:Lcom/transsion/camera/app/common/recorder/data/VideoFileInfo;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmVideoHintOrientation(Lcom/transsion/camera/feature/mode/vlog/recorder/RecorderWrapper;)I
    .registers 1

    .line 0
    iget p0, p0, Lcom/transsion/camera/feature/mode/vlog/recorder/RecorderWrapper;->mVideoHintOrientation:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmVlogHelper(Lcom/transsion/camera/feature/mode/vlog/recorder/RecorderWrapper;)Lcom/transsion/camera/feature/mode/vlog/VlogHelper;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/recorder/RecorderWrapper;->mVlogHelper:Lcom/transsion/camera/feature/mode/vlog/VlogHelper;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mgetHLResult(Lcom/transsion/camera/feature/mode/vlog/recorder/RecorderWrapper;Ljava/lang/String;JJ)Lcom/volcengine/ck/highlight/data/HLExtractorResult;
    .registers 6

    .line 0
    invoke-direct/range {p0 .. p5}, Lcom/transsion/camera/feature/mode/vlog/recorder/RecorderWrapper;->getHLResult(Ljava/lang/String;JJ)Lcom/volcengine/ck/highlight/data/HLExtractorResult;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$misDurationValid(Lcom/transsion/camera/feature/mode/vlog/recorder/RecorderWrapper;JJ)Z
    .registers 5

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/transsion/camera/feature/mode/vlog/recorder/RecorderWrapper;->isDurationValid(JJ)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mrotateVideo(Lcom/transsion/camera/feature/mode/vlog/recorder/RecorderWrapper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lcom/transsion/camera/feature/mode/vlog/recorder/RecorderWrapper;->rotateVideo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;
    .registers 1

    .line 0
    sget-object v0, Lcom/transsion/camera/feature/mode/vlog/recorder/RecorderWrapper;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 54
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "Vlog_Record"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/feature/mode/vlog/recorder/RecorderWrapper;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/transsion/camera/feature/mode/vlog/recorder/VlogRecorder;ZILcom/transsion/camera/app/common/setting/ISettingManager$SettingController;)V
    .registers 8

    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/recorder/RecorderWrapper;->mMainHandler:Landroid/os/Handler;

    .line 68
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/recorder/RecorderWrapper;->mNeedRecognize:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    .line 76
    iput v0, p0, Lcom/transsion/camera/feature/mode/vlog/recorder/RecorderWrapper;->mCurrentSegmentIndex:I

    .line 78
    iput v0, p0, Lcom/transsion/camera/feature/mode/vlog/recorder/RecorderWrapper;->mCurrentPage:I

    .line 81
    iput-boolean v0, p0, Lcom/transsion/camera/feature/mode/vlog/recorder/RecorderWrapper;->mNeedMirror:Z

    .line 211
    new-instance v0, Lcom/transsion/camera/feature/mode/vlog/recorder/RecorderWrapper$1;

    invoke-direct {v0, p0}, Lcom/transsion/camera/feature/mode/vlog/recorder/RecorderWrapper$1;-><init>(Lcom/transsion/camera/feature/mode/vlog/recorder/RecorderWrapper;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/recorder/RecorderWrapper;->mRecorderCallback:Lcom/transsion/camera/feature/mode/vlog/recorder/listener/IVlogRecordContract$IRecorderCallback;

    .line 85
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/vlog/recorder/RecorderWrapper;->mContext:Landroid/content/Context;

    .line 86
    iput-object p2, p0, Lcom/transsion/camera/feature/mode/vlog/recorder/RecorderWrapper;->mRecorder:Lcom/transsion/camera/feature/mode/vlog/recorder/VlogRecorder;

    .line 87
    iput-boolean p3, p0, Lcom/transsion/camera/feature/mode/vlog/recorder/RecorderWrapper;->mNeedPostProcess:Z

    .line 88
    iput p4, p0, Lcom/transsion/camera/feature/mode/vlog/recorder/RecorderWrapper;->mOrientation:I

    .line 89
    iput-object p5, p0, Lcom/transsion/camera/feature/mode/vlog/recorder/RecorderWrapper;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    .line 90
    new-instance p1, Lcom/transsion/camera/feature/mode/vlog/recorder/RecorderWrapper$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lcom/transsion/camera/feature/mode/vlog/recorder/RecorderWrapper$$ExternalSyntheticLambda0;-><init>(Lcom/transsion/camera/feature/mode/vlog/recorder/RecorderWrapper;)V

    invoke-virtual {p2, p1}, Lcom/transsion/camera/feature/mode/vlog/recorder/VlogRecorder;->setRecorderPolicy(Lcom/transsion/camera/feature/mode/vlog/recorder/listener/IVlogRecordContract$IVlogRecorderPolicy;)V

    .line 91
    invoke-virtual {p2, v0}, Lcom/transsion/camera/feature/mode/vlog/recorder/VlogRecorder;->setRecorderCallback(Lcom/transsion/camera/feature/mode/vlog/recorder/listener/IVlogRecordContract$IRecorderCallback;)V

    .line 93
    invoke-virtual {p2}, Lcom/transsion/camera/feature/mode/vlog/recorder/VlogRecorder;->getVlogHelper()Lcom/transsion/camera/feature/mode/vlog/VlogHelper;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/feature/mode/vlog/recorder/RecorderWrapper;->mVlogHelper:Lcom/transsion/camera/feature/mode/vlog/VlogHelper;

    .line 94
    invoke-interface {p5}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->getSettingProvide()Lcom/transsion/camera/app/common/setting/ISettingManager$SettingProvide;

    move-result-object p1

    const-string p2, "key_frame_select"

    invoke-interface {p1, p2}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingProvide;->findISettingByKey(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/ISetting;

    move-result-object p1

    check-cast p1, Lcom/transsion/camera/feature/mode/vlog/setting/FrameSelect;

    iput-object p1, p0, Lcom/transsion/camera/feature/mode/vlog/recorder/RecorderWrapper;->mFrameSelect:Lcom/transsion/camera/feature/mode/vlog/setting/FrameSelect;

    return-void
.end method

.method private getHLResult(Ljava/lang/String;JJ)Lcom/volcengine/ck/highlight/data/HLExtractorResult;
    .registers 16

    .line 356
    sget-object v0, Lcom/transsion/camera/feature/mode/vlog/recorder/RecorderWrapper;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "getHLResult begin"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 358
    new-instance v2, Lcom/volcengine/ck/highlight/data/RecognizeMedia;

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v1, p0, Lcom/transsion/camera/feature/mode/vlog/recorder/RecorderWrapper;->mVideoFileInfo:Lcom/transsion/camera/app/common/recorder/data/VideoFileInfo;

    .line 359
    invoke-virtual {v1}, Lcom/transsion/camera/app/common/recorder/data/VideoFileInfo;->getVideoSize()Landroid/util/Size;

    move-result-object v1

    invoke-virtual {v1}, Landroid/util/Size;->getWidth()I

    move-result v6

    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/recorder/RecorderWrapper;->mVideoFileInfo:Lcom/transsion/camera/app/common/recorder/data/VideoFileInfo;

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/recorder/data/VideoFileInfo;->getVideoSize()Landroid/util/Size;

    move-result-object p0

    invoke-virtual {p0}, Landroid/util/Size;->getHeight()I

    move-result v7

    const/4 v5, 0x2

    move-object v4, p1

    move-wide v8, p2

    invoke-direct/range {v2 .. v9}, Lcom/volcengine/ck/highlight/data/RecognizeMedia;-><init>(Ljava/lang/String;Ljava/lang/String;IIIJ)V

    .line 360
    new-instance p0, Ljava/util/ArrayList;

    sget-object p1, Lcom/volcengine/ck/highlight/HLSDK;->INSTANCE:Lcom/volcengine/ck/highlight/HLSDK;

    invoke-virtual {p1, v2}, Lcom/volcengine/ck/highlight/HLSDK;->recognize(Lcom/volcengine/ck/highlight/data/RecognizeMedia;)Ljava/util/List;

    move-result-object p2

    invoke-direct {p0, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 362
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "getHLResult recognize results: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 364
    new-instance p2, Lcom/volcengine/ck/highlight/config/HLExtractorRequirement;

    long-to-int p3, p4

    new-instance p4, Ljava/util/ArrayList;

    invoke-direct {p4}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {p2, p3, p4}, Lcom/volcengine/ck/highlight/config/HLExtractorRequirement;-><init>(ILjava/util/List;)V

    long-to-int p3, v8

    .line 365
    invoke-virtual {p1, p2, p0, p3}, Lcom/volcengine/ck/highlight/HLSDK;->extract(Lcom/volcengine/ck/highlight/config/HLExtractorRequirement;Ljava/util/List;I)Lcom/volcengine/ck/highlight/data/HLExtractorResult;

    move-result-object p0

    .line 367
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "getHLResult end, highlightResult: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-object p0
.end method

.method private getVideoHintOrientation(ILjava/lang/String;Z)I
    .registers 8

    const/4 v0, 0x0

    if-nez p2, :cond_b

    .line 191
    sget-object p0, Lcom/transsion/camera/feature/mode/vlog/recorder/RecorderWrapper;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "getVideoHintOrientation, mCurrentCameraId == null, so return 0"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return v0

    .line 195
    :cond_b
    sget-object v1, Lcom/transsion/camera/feature/mode/vlog/recorder/RecorderWrapper;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getVideoHintOrientation, activityOrientation: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", currentCameraId: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", mirrorOn: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 197
    invoke-static {}, Lcom/transsion/camera/adapter/CameraAgentFactory;->getCameraAgent()Lcom/transsion/camera/adapter/CameraAgent;

    move-result-object v2

    invoke-virtual {v2}, Lcom/transsion/camera/adapter/CameraAgent;->getCameraDeviceInfo()Lcom/transsion/camera/adapter/ICameraDeviceInfo;

    move-result-object v2

    invoke-interface {v2, p2}, Lcom/transsion/camera/adapter/ICameraDeviceInfo;->getCameraInfo(Ljava/lang/String;)Lcom/transsion/camera/adapter/ICameraInfo;

    move-result-object p2

    .line 198
    invoke-interface {p2}, Lcom/transsion/camera/adapter/ICameraInfo;->getSensorOrientation()I

    move-result v2

    .line 199
    invoke-interface {p2}, Lcom/transsion/camera/adapter/ICameraInfo;->getFacing()I

    move-result p2

    const/4 v3, 0x1

    if-ne p2, v3, :cond_49

    move v0, v3

    :cond_49
    iput-boolean v0, p0, Lcom/transsion/camera/feature/mode/vlog/recorder/RecorderWrapper;->mNeedMirror:Z

    if-eqz p3, :cond_58

    .line 200
    invoke-static {}, Lcom/transsion/camera/utils/FeatureSupport;->isSprdPlatform()Z

    move-result p2

    if-nez p2, :cond_58

    .line 201
    iget-boolean p2, p0, Lcom/transsion/camera/feature/mode/vlog/recorder/RecorderWrapper;->mNeedMirror:Z

    xor-int/2addr p2, v3

    iput-boolean p2, p0, Lcom/transsion/camera/feature/mode/vlog/recorder/RecorderWrapper;->mNeedMirror:Z

    .line 203
    :cond_58
    iget-boolean p0, p0, Lcom/transsion/camera/feature/mode/vlog/recorder/RecorderWrapper;->mNeedMirror:Z

    invoke-static {p1, v2, p0}, Lcom/transsion/camera/utils/CameraUtil;->getRotation(IIZ)I

    move-result p0

    .line 205
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "getVideoHintOrientation, result: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return p0
.end method

.method private isDurationValid(JJ)Z
    .registers 5

    cmp-long p0, p1, p3

    if-ltz p0, :cond_c

    const-wide/16 p3, 0x3e8

    cmp-long p0, p1, p3

    if-ltz p0, :cond_c

    const/4 p0, 0x1

    return p0

    :cond_c
    const/4 p0, 0x0

    return p0
.end method

.method private rotateVideo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 9

    .line 373
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/recorder/RecorderWrapper;->mVlogHelper:Lcom/transsion/camera/feature/mode/vlog/VlogHelper;

    invoke-virtual {v0, p2, p3}, Lcom/transsion/camera/feature/mode/vlog/VlogHelper;->getCacheFileName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 374
    new-instance p3, Ljava/io/File;

    invoke-direct {p3, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 376
    invoke-static {}, Lcom/transsion/camera/adapter/CameraAgentFactory;->getCameraAgent()Lcom/transsion/camera/adapter/CameraAgent;

    move-result-object p2

    invoke-virtual {p2}, Lcom/transsion/camera/adapter/CameraAgent;->getCameraDeviceInfo()Lcom/transsion/camera/adapter/ICameraDeviceInfo;

    move-result-object p2

    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/recorder/RecorderWrapper;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    invoke-interface {v0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->getCameraId()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0}, Lcom/transsion/camera/adapter/ICameraDeviceInfo;->getCameraInfo(Ljava/lang/String;)Lcom/transsion/camera/adapter/ICameraInfo;

    move-result-object p2

    .line 377
    invoke-interface {p2}, Lcom/transsion/camera/adapter/ICameraInfo;->getFacing()I

    move-result p2

    if-nez p2, :cond_25

    const/4 p2, 0x1

    goto :goto_26

    :cond_25
    const/4 p2, 0x0

    .line 378
    :goto_26
    invoke-virtual {p3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    .line 380
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/vlog/recorder/RecorderWrapper;->mTemplateWrapItemData:Lcom/transsion/camera/feature/mode/vlog/bean/TemplateWrapItemData;

    invoke-virtual {v1}, Lcom/transsion/camera/feature/mode/vlog/bean/TemplateWrapItemData;->getOrientation()I

    move-result v1

    if-eqz p2, :cond_38

    if-nez v1, :cond_38

    .line 381
    iget v2, p0, Lcom/transsion/camera/feature/mode/vlog/recorder/RecorderWrapper;->mVideoHintOrientation:I

    if-eqz v2, :cond_50

    :cond_38
    iget-boolean v2, p0, Lcom/transsion/camera/feature/mode/vlog/recorder/RecorderWrapper;->mNeedMirror:Z

    if-nez v2, :cond_46

    if-nez p2, :cond_46

    if-nez v1, :cond_46

    iget v3, p0, Lcom/transsion/camera/feature/mode/vlog/recorder/RecorderWrapper;->mVideoHintOrientation:I

    const/16 v4, 0xb4

    if-eq v3, v4, :cond_50

    :cond_46
    if-eqz v2, :cond_55

    if-nez p2, :cond_55

    if-nez v1, :cond_55

    iget p2, p0, Lcom/transsion/camera/feature/mode/vlog/recorder/RecorderWrapper;->mVideoHintOrientation:I

    if-nez p2, :cond_55

    .line 384
    :cond_50
    iget p0, p0, Lcom/transsion/camera/feature/mode/vlog/recorder/RecorderWrapper;->mVideoHintOrientation:I

    :cond_52
    add-int/lit8 p0, p0, -0x5a

    goto :goto_5d

    .line 386
    :cond_55
    iget p0, p0, Lcom/transsion/camera/feature/mode/vlog/recorder/RecorderWrapper;->mVideoHintOrientation:I

    rem-int/lit16 p2, p0, 0xb4

    if-nez p2, :cond_52

    add-int/lit8 p0, p0, 0x5a

    .line 389
    :goto_5d
    invoke-virtual {p3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2, p0}, Lcom/ss/android/vesdk/VEUtils;->addVideoRotateByCommand(Ljava/lang/String;Ljava/lang/String;I)I

    return-object v0
.end method


# virtual methods
.method public createMediaInfo(Landroid/media/CamcorderProfile;)Lcom/transsion/camera/app/common/recorder/data/VideoFileInfo;
    .registers 8

    .line 163
    new-instance v0, Lcom/transsion/camera/app/common/recorder/data/VideoFileInfo$Builder;

    invoke-direct {v0, p1}, Lcom/transsion/camera/app/common/recorder/data/VideoFileInfo$Builder;-><init>(Landroid/media/CamcorderProfile;)V

    .line 165
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/vlog/recorder/RecorderWrapper;->mVlogHelper:Lcom/transsion/camera/feature/mode/vlog/VlogHelper;

    invoke-virtual {p1}, Lcom/transsion/camera/feature/mode/vlog/VlogHelper;->getCacheFold()Ljava/io/File;

    move-result-object p1

    .line 166
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/vlog/recorder/RecorderWrapper;->mVlogHelper:Lcom/transsion/camera/feature/mode/vlog/VlogHelper;

    invoke-virtual {v1}, Lcom/transsion/camera/feature/mode/vlog/VlogHelper;->getCacheFileName()Ljava/lang/String;

    move-result-object v1

    .line 167
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 169
    invoke-static {}, Lcom/transsion/camera/adapter/CameraAgentFactory;->getCameraAgent()Lcom/transsion/camera/adapter/CameraAgent;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/camera/adapter/CameraAgent;->getCameraDeviceInfo()Lcom/transsion/camera/adapter/ICameraDeviceInfo;

    move-result-object p1

    iget-object v1, p0, Lcom/transsion/camera/feature/mode/vlog/recorder/RecorderWrapper;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    invoke-interface {v1}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->getCameraId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Lcom/transsion/camera/adapter/ICameraDeviceInfo;->getCameraInfo(Ljava/lang/String;)Lcom/transsion/camera/adapter/ICameraInfo;

    move-result-object p1

    .line 170
    invoke-interface {p1}, Lcom/transsion/camera/adapter/ICameraInfo;->getFacing()I

    move-result p1

    const/4 v1, 0x0

    const/4 v3, 0x1

    if-ne p1, v3, :cond_32

    move p1, v3

    goto :goto_33

    :cond_32
    move p1, v1

    .line 172
    :goto_33
    iget v4, p0, Lcom/transsion/camera/feature/mode/vlog/recorder/RecorderWrapper;->mOrientation:I

    iget-object v5, p0, Lcom/transsion/camera/feature/mode/vlog/recorder/RecorderWrapper;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    invoke-interface {v5}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->getCameraId()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v4, v5, p1}, Lcom/transsion/camera/feature/mode/vlog/recorder/RecorderWrapper;->getVideoHintOrientation(ILjava/lang/String;Z)I

    move-result p1

    iput p1, p0, Lcom/transsion/camera/feature/mode/vlog/recorder/RecorderWrapper;->mVideoHintOrientation:I

    .line 174
    invoke-virtual {v0, p1}, Lcom/transsion/camera/app/common/recorder/data/VideoFileInfo$Builder;->setVideoOrientation(I)Lcom/transsion/camera/app/common/recorder/data/VideoFileInfo$Builder;

    move-result-object p1

    const/16 v4, 0x3a98

    .line 175
    invoke-virtual {p1, v4}, Lcom/transsion/camera/app/common/recorder/data/VideoFileInfo$Builder;->setMaxDuration(I)Lcom/transsion/camera/app/common/recorder/data/VideoFileInfo$Builder;

    move-result-object p1

    .line 176
    invoke-virtual {p1, v3}, Lcom/transsion/camera/app/common/recorder/data/VideoFileInfo$Builder;->setAudioFlag(Z)Lcom/transsion/camera/app/common/recorder/data/VideoFileInfo$Builder;

    move-result-object p1

    .line 177
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/transsion/camera/app/common/recorder/data/VideoFileInfo$Builder;->setFileTempPath(Ljava/lang/String;)Lcom/transsion/camera/app/common/recorder/data/VideoFileInfo$Builder;

    .line 178
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/vlog/recorder/RecorderWrapper;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v3, Lcom/transsion/camera/feature/vlog/R$bool;->vlog_mode_support_audio_build:I

    invoke-virtual {p1, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p1

    if-nez p1, :cond_6e

    .line 179
    sget-object p1, Lcom/transsion/camera/feature/mode/vlog/recorder/RecorderWrapper;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v3, "createMediaInfo: audio is not supported"

    invoke-static {p1, v3}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 180
    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/recorder/data/VideoFileInfo$Builder;->setAudioFlag(Z)Lcom/transsion/camera/app/common/recorder/data/VideoFileInfo$Builder;

    .line 182
    :cond_6e
    invoke-virtual {v0}, Lcom/transsion/camera/app/common/recorder/data/VideoFileInfo$Builder;->build()Lcom/transsion/camera/app/common/recorder/data/VideoFileInfo;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/feature/mode/vlog/recorder/RecorderWrapper;->mVideoFileInfo:Lcom/transsion/camera/app/common/recorder/data/VideoFileInfo;

    .line 184
    sget-object p1, Lcom/transsion/camera/feature/mode/vlog/recorder/RecorderWrapper;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "createMediaInfo, current segment path: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 186
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/recorder/RecorderWrapper;->mVideoFileInfo:Lcom/transsion/camera/app/common/recorder/data/VideoFileInfo;

    return-object p0
.end method

.method public enter(Lcom/transsion/camera/feature/mode/vlog/bean/TemplateWrapItemData;ILcom/transsion/camera/feature/mode/vlog/recorder/RecorderWrapper$ICallbackListener;)V
    .registers 6

    .line 98
    sget-object v0, Lcom/transsion/camera/feature/mode/vlog/recorder/RecorderWrapper;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "cutSame enter recorder"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 99
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/vlog/recorder/RecorderWrapper;->mTemplateWrapItemData:Lcom/transsion/camera/feature/mode/vlog/bean/TemplateWrapItemData;

    .line 100
    invoke-virtual {p0, p2}, Lcom/transsion/camera/feature/mode/vlog/recorder/RecorderWrapper;->setSegmentIndex(I)V

    .line 101
    iput-object p3, p0, Lcom/transsion/camera/feature/mode/vlog/recorder/RecorderWrapper;->mCallbackListener:Lcom/transsion/camera/feature/mode/vlog/recorder/RecorderWrapper$ICallbackListener;

    return-void
.end method

.method public enter(Lcom/transsion/camera/feature/mode/vlog/recorder/RecorderWrapper$ICallbackListener;)V
    .registers 4

    .line 105
    sget-object v0, Lcom/transsion/camera/feature/mode/vlog/recorder/RecorderWrapper;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "free shot enter recorder"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 106
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/vlog/recorder/RecorderWrapper;->mCallbackListener:Lcom/transsion/camera/feature/mode/vlog/recorder/RecorderWrapper$ICallbackListener;

    return-void
.end method

.method public initHighLightIfNeed()V
    .registers 1

    .line 146
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/recorder/RecorderWrapper;->mFrameSelect:Lcom/transsion/camera/feature/mode/vlog/setting/FrameSelect;

    if-eqz p0, :cond_7

    .line 147
    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/vlog/setting/FrameSelect;->sendFrameInitMsg()V

    :cond_7
    return-void
.end method

.method public initWorkHandlerIfNeed()V
    .registers 1

    .line 152
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/recorder/RecorderWrapper;->mFrameSelect:Lcom/transsion/camera/feature/mode/vlog/setting/FrameSelect;

    if-eqz p0, :cond_7

    .line 153
    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/vlog/setting/FrameSelect;->initWorkHandlerIfNeed()V

    :cond_7
    return-void
.end method

.method public isHLInitialized()Z
    .registers 1

    .line 158
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/recorder/RecorderWrapper;->mFrameSelect:Lcom/transsion/camera/feature/mode/vlog/setting/FrameSelect;

    if-eqz p0, :cond_c

    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/vlog/setting/FrameSelect;->isHLInitialized()Z

    move-result p0

    if-eqz p0, :cond_c

    const/4 p0, 0x1

    return p0

    :cond_c
    const/4 p0, 0x0

    return p0
.end method

.method public leave(ZZ)Z
    .registers 5

    .line 130
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/recorder/RecorderWrapper;->mNeedRecognize:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 131
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/recorder/RecorderWrapper;->mRecorder:Lcom/transsion/camera/feature/mode/vlog/recorder/VlogRecorder;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/camera/feature/mode/vlog/recorder/VlogRecorder;->leave(ZZ)Z

    move-result p0

    return p0
.end method

.method public onCameraStateChanged(I)V
    .registers 3

    .line 135
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/recorder/RecorderWrapper;->mFrameSelect:Lcom/transsion/camera/feature/mode/vlog/setting/FrameSelect;

    if-nez v0, :cond_21

    const/4 v0, 0x3

    if-lt p1, v0, :cond_21

    .line 136
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/vlog/recorder/RecorderWrapper;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    invoke-interface {p1}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->getSettingProvide()Lcom/transsion/camera/app/common/setting/ISettingManager$SettingProvide;

    move-result-object p1

    const-string v0, "key_frame_select"

    invoke-interface {p1, v0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingProvide;->findISettingByKey(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/ISetting;

    move-result-object p1

    check-cast p1, Lcom/transsion/camera/feature/mode/vlog/setting/FrameSelect;

    iput-object p1, p0, Lcom/transsion/camera/feature/mode/vlog/recorder/RecorderWrapper;->mFrameSelect:Lcom/transsion/camera/feature/mode/vlog/setting/FrameSelect;

    .line 137
    iget p0, p0, Lcom/transsion/camera/feature/mode/vlog/recorder/RecorderWrapper;->mCurrentPage:I

    if-eqz p0, :cond_1d

    const/4 p0, 0x1

    goto :goto_1e

    :cond_1d
    const/4 p0, 0x0

    :goto_1e
    invoke-virtual {p1, p0}, Lcom/transsion/camera/feature/mode/vlog/setting/FrameSelect;->setFrameSelectAvailable(Z)V

    :cond_21
    return-void
.end method

.method public setOrientation(I)V
    .registers 2

    .line 142
    iput p1, p0, Lcom/transsion/camera/feature/mode/vlog/recorder/RecorderWrapper;->mOrientation:I

    return-void
.end method

.method public setSegmentIndex(I)V
    .registers 2

    .line 110
    iput p1, p0, Lcom/transsion/camera/feature/mode/vlog/recorder/RecorderWrapper;->mCurrentSegmentIndex:I

    return-void
.end method

.method public startStop()V
    .registers 3

    const-wide/16 v0, 0x0

    .line 122
    invoke-virtual {p0, v0, v1}, Lcom/transsion/camera/feature/mode/vlog/recorder/RecorderWrapper;->startStop(J)V

    return-void
.end method

.method public startStop(J)V
    .registers 3

    .line 126
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/recorder/RecorderWrapper;->mRecorder:Lcom/transsion/camera/feature/mode/vlog/recorder/VlogRecorder;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/camera/feature/mode/vlog/recorder/VlogRecorder;->startStop(J)V

    return-void
.end method

.method public updateCurrentPage(I)V
    .registers 4
    .param p1    # I
        .annotation build Lcom/transsion/camera/feature/mode/vlog/IVlog$Page;
        .end annotation
    .end param

    .line 114
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/recorder/RecorderWrapper;->mFrameSelect:Lcom/transsion/camera/feature/mode/vlog/setting/FrameSelect;

    if-eqz v0, :cond_c

    if-eqz p1, :cond_8

    const/4 v1, 0x1

    goto :goto_9

    :cond_8
    const/4 v1, 0x0

    .line 115
    :goto_9
    invoke-virtual {v0, v1}, Lcom/transsion/camera/feature/mode/vlog/setting/FrameSelect;->setFrameSelectAvailable(Z)V

    .line 118
    :cond_c
    iput p1, p0, Lcom/transsion/camera/feature/mode/vlog/recorder/RecorderWrapper;->mCurrentPage:I

    return-void
.end method
