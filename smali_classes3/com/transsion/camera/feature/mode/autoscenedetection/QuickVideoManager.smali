.class public Lcom/transsion/camera/feature/mode/autoscenedetection/QuickVideoManager;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/feature/mode/autoscenedetection/QuickVideoManager$MyRecorderCallback;,
        Lcom/transsion/camera/feature/mode/autoscenedetection/QuickVideoManager$MediaSaverListener;
    }
.end annotation


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private final mAppUI:Lcom/transsion/camera/app/common/IAppUI;

.field private final mCameraRecorder:Lcom/transsion/camera/app/common/recorder/baseimpl/CameraCodecRecorder;

.field private final mContext:Landroid/content/Context;

.field private mModeStatusListener:Lcom/transsion/camera/app/common/IApp$ModeAndSettingStatusListener;

.field private mOrientation:I

.field private final mPreviewOperator:Lcom/transsion/camera/app/common/preview/IPreviewOperator;

.field private mQuickVideoUI:Lcom/transsion/camera/feature/mode/autoscenedetection/QuickVideoUI;

.field private final mRecorderCallback:Lcom/transsion/camera/feature/mode/autoscenedetection/QuickVideoManager$MyRecorderCallback;

.field private mRecorderManager:Lcom/transsion/camera/app/common/recorder/RecorderManager;

.field private final mRecorderPolicy:Lcom/transsion/camera/app/common/recorder/baseimpl/RecorderPolicy;

.field private volatile mRecording:Z

.field private final mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

.field private mStorageOperator:Lcom/transsion/camera/app/common/storage/IStorage$IStorageOperator;

.field private final mTextureHolder:Lcom/transsion/camera/featurelibs/media/ITextureHolder;

.field private mTextureUpdater:Lcom/transsion/camera/featurelibs/media/ITextureHolder$ITextureUpdater;

.field private final mVideoHelper:Lcom/transsion/camera/app/common/mode/CommonVideoHelper;


# direct methods
.method public static synthetic $r8$lambda$vCxjQzoMcQ64JFXZd7Yl5c-3_hE(Lcom/transsion/camera/feature/mode/autoscenedetection/QuickVideoManager;)Lcom/transsion/camera/feature/mode/autoscenedetection/QuickVideoUI;
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/autoscenedetection/QuickVideoManager;->lambda$initQuickVideoUI$0()Lcom/transsion/camera/feature/mode/autoscenedetection/QuickVideoUI;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmAppUI(Lcom/transsion/camera/feature/mode/autoscenedetection/QuickVideoManager;)Lcom/transsion/camera/app/common/IAppUI;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/autoscenedetection/QuickVideoManager;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmModeStatusListener(Lcom/transsion/camera/feature/mode/autoscenedetection/QuickVideoManager;)Lcom/transsion/camera/app/common/IApp$ModeAndSettingStatusListener;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/autoscenedetection/QuickVideoManager;->mModeStatusListener:Lcom/transsion/camera/app/common/IApp$ModeAndSettingStatusListener;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmOrientation(Lcom/transsion/camera/feature/mode/autoscenedetection/QuickVideoManager;)I
    .registers 1

    .line 0
    iget p0, p0, Lcom/transsion/camera/feature/mode/autoscenedetection/QuickVideoManager;->mOrientation:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmQuickVideoUI(Lcom/transsion/camera/feature/mode/autoscenedetection/QuickVideoManager;)Lcom/transsion/camera/feature/mode/autoscenedetection/QuickVideoUI;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/autoscenedetection/QuickVideoManager;->mQuickVideoUI:Lcom/transsion/camera/feature/mode/autoscenedetection/QuickVideoUI;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmStorageOperator(Lcom/transsion/camera/feature/mode/autoscenedetection/QuickVideoManager;)Lcom/transsion/camera/app/common/storage/IStorage$IStorageOperator;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/autoscenedetection/QuickVideoManager;->mStorageOperator:Lcom/transsion/camera/app/common/storage/IStorage$IStorageOperator;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmTextureUpdater(Lcom/transsion/camera/feature/mode/autoscenedetection/QuickVideoManager;Lcom/transsion/camera/featurelibs/media/ITextureHolder$ITextureUpdater;)V
    .registers 2

    .line 0
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/autoscenedetection/QuickVideoManager;->mTextureUpdater:Lcom/transsion/camera/featurelibs/media/ITextureHolder$ITextureUpdater;

    return-void
.end method

.method static bridge synthetic -$$Nest$mnotifyRecorderStop(Lcom/transsion/camera/feature/mode/autoscenedetection/QuickVideoManager;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/autoscenedetection/QuickVideoManager;->notifyRecorderStop()V

    return-void
.end method

.method static bridge synthetic -$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;
    .registers 1

    .line 0
    sget-object v0, Lcom/transsion/camera/feature/mode/autoscenedetection/QuickVideoManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 52
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "QuickVideoManager"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/feature/mode/autoscenedetection/QuickVideoManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/transsion/camera/app/common/IAppUI;Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;Lcom/transsion/camera/app/common/mode/CameraDeviceControl;)V
    .registers 6

    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    new-instance v0, Lcom/transsion/camera/feature/mode/autoscenedetection/QuickVideoManager$1;

    invoke-direct {v0, p0}, Lcom/transsion/camera/feature/mode/autoscenedetection/QuickVideoManager$1;-><init>(Lcom/transsion/camera/feature/mode/autoscenedetection/QuickVideoManager;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/autoscenedetection/QuickVideoManager;->mTextureHolder:Lcom/transsion/camera/featurelibs/media/ITextureHolder;

    .line 95
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/autoscenedetection/QuickVideoManager;->mContext:Landroid/content/Context;

    .line 96
    iput-object p2, p0, Lcom/transsion/camera/feature/mode/autoscenedetection/QuickVideoManager;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    .line 97
    iput-object p3, p0, Lcom/transsion/camera/feature/mode/autoscenedetection/QuickVideoManager;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    .line 98
    new-instance p1, Lcom/transsion/camera/app/common/mode/CommonVideoHelper;

    invoke-direct {p1}, Lcom/transsion/camera/app/common/mode/CommonVideoHelper;-><init>()V

    iput-object p1, p0, Lcom/transsion/camera/feature/mode/autoscenedetection/QuickVideoManager;->mVideoHelper:Lcom/transsion/camera/app/common/mode/CommonVideoHelper;

    .line 99
    invoke-interface {p2}, Lcom/transsion/camera/app/common/IAppUI;->getPreviewOperator()Lcom/transsion/camera/app/common/preview/IPreviewOperator;

    move-result-object p2

    iput-object p2, p0, Lcom/transsion/camera/feature/mode/autoscenedetection/QuickVideoManager;->mPreviewOperator:Lcom/transsion/camera/app/common/preview/IPreviewOperator;

    .line 100
    new-instance p2, Lcom/transsion/camera/app/common/recorder/baseimpl/RecorderPolicy;

    invoke-direct {p2}, Lcom/transsion/camera/app/common/recorder/baseimpl/RecorderPolicy;-><init>()V

    iput-object p2, p0, Lcom/transsion/camera/feature/mode/autoscenedetection/QuickVideoManager;->mRecorderPolicy:Lcom/transsion/camera/app/common/recorder/baseimpl/RecorderPolicy;

    .line 101
    new-instance v0, Lcom/transsion/camera/app/common/recorder/baseimpl/CameraCodecRecorder;

    invoke-direct {v0, p4}, Lcom/transsion/camera/app/common/recorder/baseimpl/CameraCodecRecorder;-><init>(Lcom/transsion/camera/app/common/mode/CameraDeviceControl;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/autoscenedetection/QuickVideoManager;->mCameraRecorder:Lcom/transsion/camera/app/common/recorder/baseimpl/CameraCodecRecorder;

    .line 102
    new-instance p4, Lcom/transsion/camera/feature/mode/autoscenedetection/QuickVideoManager$MyRecorderCallback;

    invoke-direct {p4, p0, p1, p2, p3}, Lcom/transsion/camera/feature/mode/autoscenedetection/QuickVideoManager$MyRecorderCallback;-><init>(Lcom/transsion/camera/feature/mode/autoscenedetection/QuickVideoManager;Lcom/transsion/camera/app/common/mode/CommonVideoHelper;Lcom/transsion/camera/app/common/recorder/baseimpl/RecorderPolicy;Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;)V

    iput-object p4, p0, Lcom/transsion/camera/feature/mode/autoscenedetection/QuickVideoManager;->mRecorderCallback:Lcom/transsion/camera/feature/mode/autoscenedetection/QuickVideoManager$MyRecorderCallback;

    return-void
.end method

.method private initQuickVideoUI()V
    .registers 4

    .line 131
    sget-object v0, Lcom/transsion/camera/feature/mode/autoscenedetection/QuickVideoManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "initQuickVideoUI"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 132
    new-instance v0, Lcom/transsion/camera/app/ui/widget/adapter/UIAdapter$Builder;

    invoke-direct {v0}, Lcom/transsion/camera/app/ui/widget/adapter/UIAdapter$Builder;-><init>()V

    sget-object v1, Lcom/transsion/camera/app/ui/widget/adapter/UIAdapter$Version;->UI5:Lcom/transsion/camera/app/ui/widget/adapter/UIAdapter$Version;

    const-string v2, "com.transsion.camera.feature.mode.autoscenedetection.QuickVideoUI5"

    .line 133
    invoke-virtual {v0, v1, v2}, Lcom/transsion/camera/app/ui/widget/adapter/UIAdapter$Builder;->add(Lcom/transsion/camera/app/ui/widget/adapter/UIAdapter$Version;Ljava/lang/String;)Lcom/transsion/camera/app/ui/widget/adapter/UIAdapter$Builder;

    move-result-object v0

    new-instance v1, Lcom/transsion/camera/feature/mode/autoscenedetection/QuickVideoManager$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/transsion/camera/feature/mode/autoscenedetection/QuickVideoManager$$ExternalSyntheticLambda0;-><init>(Lcom/transsion/camera/feature/mode/autoscenedetection/QuickVideoManager;)V

    iget-object v2, p0, Lcom/transsion/camera/feature/mode/autoscenedetection/QuickVideoManager;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    .line 134
    invoke-virtual {v0, v1, v2}, Lcom/transsion/camera/app/ui/widget/adapter/UIAdapter$Builder;->build(Ljava/util/function/Supplier;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/camera/feature/mode/autoscenedetection/QuickVideoUI;

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/autoscenedetection/QuickVideoManager;->mQuickVideoUI:Lcom/transsion/camera/feature/mode/autoscenedetection/QuickVideoUI;

    .line 135
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/autoscenedetection/QuickVideoManager;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    const-string v1, "key_fold_switch_preview"

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 136
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/autoscenedetection/QuickVideoManager;->mQuickVideoUI:Lcom/transsion/camera/feature/mode/autoscenedetection/QuickVideoUI;

    invoke-virtual {p0, v0}, Lcom/transsion/camera/feature/mode/autoscenedetection/QuickVideoUI;->updateSwitchPreviewValue(Ljava/lang/String;)V

    return-void
.end method

.method private initRecorder()V
    .registers 3

    .line 140
    sget-object v0, Lcom/transsion/camera/feature/mode/autoscenedetection/QuickVideoManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "initRecorder"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 141
    new-instance v0, Lcom/transsion/camera/app/common/recorder/RecorderManager$Builder;

    invoke-direct {v0}, Lcom/transsion/camera/app/common/recorder/RecorderManager$Builder;-><init>()V

    iget-object v1, p0, Lcom/transsion/camera/feature/mode/autoscenedetection/QuickVideoManager;->mContext:Landroid/content/Context;

    .line 142
    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/recorder/RecorderManager$Builder;->setContext(Landroid/content/Context;)Lcom/transsion/camera/app/common/recorder/RecorderManager$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/camera/feature/mode/autoscenedetection/QuickVideoManager;->mVideoHelper:Lcom/transsion/camera/app/common/mode/CommonVideoHelper;

    .line 143
    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/recorder/RecorderManager$Builder;->setVideoHelper(Lcom/transsion/camera/app/common/mode/CommonVideoHelper;)Lcom/transsion/camera/app/common/recorder/RecorderManager$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/camera/feature/mode/autoscenedetection/QuickVideoManager;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    .line 144
    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/recorder/RecorderManager$Builder;->setSettingController(Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;)Lcom/transsion/camera/app/common/recorder/RecorderManager$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/camera/feature/mode/autoscenedetection/QuickVideoManager;->mRecorderPolicy:Lcom/transsion/camera/app/common/recorder/baseimpl/RecorderPolicy;

    .line 145
    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/recorder/RecorderManager$Builder;->setPolicy(Lcom/transsion/camera/app/common/recorder/IVideoContract$IMediaRecorderPolicy;)Lcom/transsion/camera/app/common/recorder/RecorderManager$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/camera/feature/mode/autoscenedetection/QuickVideoManager;->mRecorderCallback:Lcom/transsion/camera/feature/mode/autoscenedetection/QuickVideoManager$MyRecorderCallback;

    .line 146
    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/recorder/RecorderManager$Builder;->setCallback(Lcom/transsion/camera/app/common/recorder/IVideoContract$IMediaRecorderCallback;)Lcom/transsion/camera/app/common/recorder/RecorderManager$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/camera/feature/mode/autoscenedetection/QuickVideoManager;->mCameraRecorder:Lcom/transsion/camera/app/common/recorder/baseimpl/CameraCodecRecorder;

    .line 147
    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/recorder/RecorderManager$Builder;->setCameraRecorder(Lcom/transsion/camera/app/common/recorder/IVideoContract$ICameraRecorder;)Lcom/transsion/camera/app/common/recorder/RecorderManager$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/camera/feature/mode/autoscenedetection/QuickVideoManager;->mPreviewOperator:Lcom/transsion/camera/app/common/preview/IPreviewOperator;

    .line 148
    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/recorder/RecorderManager$Builder;->setPreviewOperator(Lcom/transsion/camera/app/common/preview/IPreviewOperator;)Lcom/transsion/camera/app/common/recorder/RecorderManager$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/camera/feature/mode/autoscenedetection/QuickVideoManager;->mTextureHolder:Lcom/transsion/camera/featurelibs/media/ITextureHolder;

    .line 149
    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/recorder/RecorderManager$Builder;->setTextureHolder(Lcom/transsion/camera/featurelibs/media/ITextureHolder;)Lcom/transsion/camera/app/common/recorder/RecorderManager$Builder;

    move-result-object v0

    .line 150
    invoke-virtual {v0}, Lcom/transsion/camera/app/common/recorder/RecorderManager$Builder;->build()Lcom/transsion/camera/app/common/recorder/RecorderManager;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/autoscenedetection/QuickVideoManager;->mRecorderManager:Lcom/transsion/camera/app/common/recorder/RecorderManager;

    .line 151
    invoke-virtual {v0}, Lcom/transsion/camera/app/common/recorder/RecorderManager;->init()V

    return-void
.end method

.method private synthetic lambda$initQuickVideoUI$0()Lcom/transsion/camera/feature/mode/autoscenedetection/QuickVideoUI;
    .registers 2

    .line 134
    new-instance v0, Lcom/transsion/camera/feature/mode/autoscenedetection/QuickVideoUI;

    iget-object p0, p0, Lcom/transsion/camera/feature/mode/autoscenedetection/QuickVideoManager;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-direct {v0, p0}, Lcom/transsion/camera/feature/mode/autoscenedetection/QuickVideoUI;-><init>(Lcom/transsion/camera/app/common/IAppUI;)V

    return-object v0
.end method

.method private notifyRecorderStart()V
    .registers 5

    const/4 v0, 0x1

    .line 178
    iput-boolean v0, p0, Lcom/transsion/camera/feature/mode/autoscenedetection/QuickVideoManager;->mRecording:Z

    .line 179
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/autoscenedetection/QuickVideoManager;->mQuickVideoUI:Lcom/transsion/camera/feature/mode/autoscenedetection/QuickVideoUI;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/mode/autoscenedetection/QuickVideoUI;->onShowRecordingUI()V

    .line 180
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/autoscenedetection/QuickVideoManager;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    const/16 v1, 0xe9

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    .line 181
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/autoscenedetection/QuickVideoManager;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    const/16 v1, 0x15

    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-interface {v0, v3, v1, v2}, Lcom/transsion/camera/app/common/IAppUIControl$IUIStateControl;->updateUIState(IILjava/lang/String;)V

    .line 182
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/autoscenedetection/QuickVideoManager;->mModeStatusListener:Lcom/transsion/camera/app/common/IApp$ModeAndSettingStatusListener;

    if-eqz p0, :cond_21

    .line 183
    sget-object v0, Lcom/transsion/camera/app/common/IApp$State;->STATE_RUNNING:Lcom/transsion/camera/app/common/IApp$State;

    invoke-interface {p0, v0}, Lcom/transsion/camera/app/common/IApp$ModeAndSettingStatusListener;->onStatusChanged(Lcom/transsion/camera/app/common/IApp$State;)V

    :cond_21
    return-void
.end method

.method private notifyRecorderStop()V
    .registers 3

    const/4 v0, 0x0

    .line 188
    iput-boolean v0, p0, Lcom/transsion/camera/feature/mode/autoscenedetection/QuickVideoManager;->mRecording:Z

    .line 189
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/autoscenedetection/QuickVideoManager;->mQuickVideoUI:Lcom/transsion/camera/feature/mode/autoscenedetection/QuickVideoUI;

    invoke-virtual {v1}, Lcom/transsion/camera/feature/mode/autoscenedetection/QuickVideoUI;->onHideRecordingUI()V

    .line 190
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/autoscenedetection/QuickVideoManager;->mCameraRecorder:Lcom/transsion/camera/app/common/recorder/baseimpl/CameraCodecRecorder;

    invoke-virtual {v1, v0}, Lcom/transsion/camera/app/common/recorder/baseimpl/CameraCodecRecorder;->stopRecording(Z)Z

    .line 191
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/autoscenedetection/QuickVideoManager;->mRecorderManager:Lcom/transsion/camera/app/common/recorder/RecorderManager;

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/recorder/RecorderManager;->operationPrepared()V

    return-void
.end method


# virtual methods
.method public config(Lcom/transsion/camera/app/common/mode/RecorderParam;)V
    .registers 5

    .line 163
    sget-object v0, Lcom/transsion/camera/feature/mode/autoscenedetection/QuickVideoManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "config param: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 164
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/autoscenedetection/QuickVideoManager;->mRecorderManager:Lcom/transsion/camera/app/common/recorder/RecorderManager;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/recorder/RecorderManager;->configRecorder(Lcom/transsion/camera/app/common/mode/RecorderParam;)V

    return-void
.end method

.method public hideRecordingUIImmediately()V
    .registers 1

    .line 215
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/autoscenedetection/QuickVideoManager;->mQuickVideoUI:Lcom/transsion/camera/feature/mode/autoscenedetection/QuickVideoUI;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/autoscenedetection/QuickVideoUI;->hideRecordingUIImmediately()V

    return-void
.end method

.method public init()V
    .registers 3

    .line 125
    sget-object v0, Lcom/transsion/camera/feature/mode/autoscenedetection/QuickVideoManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "init"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 126
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/autoscenedetection/QuickVideoManager;->initQuickVideoUI()V

    .line 127
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/autoscenedetection/QuickVideoManager;->initRecorder()V

    return-void
.end method

.method public leave(Z)V
    .registers 3

    .line 195
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/autoscenedetection/QuickVideoManager;->mRecorderManager:Lcom/transsion/camera/app/common/recorder/RecorderManager;

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0, p1}, Lcom/transsion/camera/app/common/recorder/RecorderManager;->leave(ZZZ)Z

    return-void
.end method

.method public onRecording(I[F)V
    .registers 4

    .line 203
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/autoscenedetection/QuickVideoManager;->mTextureUpdater:Lcom/transsion/camera/featurelibs/media/ITextureHolder$ITextureUpdater;

    if-eqz p0, :cond_8

    const/4 v0, 0x0

    .line 204
    invoke-interface {p0, p1, v0, p2}, Lcom/transsion/camera/featurelibs/media/ITextureHolder$ITextureUpdater;->updateTexture(II[F)V

    :cond_8
    return-void
.end method

.method public onScreenFormChanged(IZ)V
    .registers 3

    .line 219
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/autoscenedetection/QuickVideoManager;->mQuickVideoUI:Lcom/transsion/camera/feature/mode/autoscenedetection/QuickVideoUI;

    if-eqz p0, :cond_7

    .line 220
    invoke-virtual {p0, p1, p2}, Lcom/transsion/camera/feature/mode/autoscenedetection/QuickVideoUI;->onScreenFormChanged(IZ)V

    :cond_7
    return-void
.end method

.method public recording()Z
    .registers 1

    .line 121
    iget-boolean p0, p0, Lcom/transsion/camera/feature/mode/autoscenedetection/QuickVideoManager;->mRecording:Z

    return p0
.end method

.method public resume()V
    .registers 1

    .line 209
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/autoscenedetection/QuickVideoManager;->mQuickVideoUI:Lcom/transsion/camera/feature/mode/autoscenedetection/QuickVideoUI;

    if-eqz p0, :cond_7

    .line 210
    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/autoscenedetection/QuickVideoUI;->resumeQuickVideoUI()V

    :cond_7
    return-void
.end method

.method public setModeStatusListener(Lcom/transsion/camera/app/common/IApp$ModeAndSettingStatusListener;)V
    .registers 2

    .line 117
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/autoscenedetection/QuickVideoManager;->mModeStatusListener:Lcom/transsion/camera/app/common/IApp$ModeAndSettingStatusListener;

    return-void
.end method

.method public setOrientation(I)V
    .registers 2

    .line 112
    iput p1, p0, Lcom/transsion/camera/feature/mode/autoscenedetection/QuickVideoManager;->mOrientation:I

    .line 113
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/autoscenedetection/QuickVideoManager;->mRecorderPolicy:Lcom/transsion/camera/app/common/recorder/baseimpl/RecorderPolicy;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/recorder/baseimpl/RecorderPolicy;->updateOrientation(I)V

    return-void
.end method

.method public setRecordingOrientation(I)V
    .registers 2

    .line 231
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/autoscenedetection/QuickVideoManager;->mQuickVideoUI:Lcom/transsion/camera/feature/mode/autoscenedetection/QuickVideoUI;

    if-eqz p0, :cond_7

    .line 232
    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/mode/autoscenedetection/QuickVideoUI;->setRecordingOrientation(I)V

    :cond_7
    return-void
.end method

.method public setScreenFormType(II)V
    .registers 3

    .line 237
    iput p2, p0, Lcom/transsion/camera/feature/mode/autoscenedetection/QuickVideoManager;->mOrientation:I

    .line 238
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/autoscenedetection/QuickVideoManager;->mQuickVideoUI:Lcom/transsion/camera/feature/mode/autoscenedetection/QuickVideoUI;

    if-eqz p0, :cond_9

    .line 239
    invoke-virtual {p0, p1, p2}, Lcom/transsion/camera/feature/mode/autoscenedetection/QuickVideoUI;->setScreenFormType(II)V

    :cond_9
    return-void
.end method

.method public setStorageOperator(Lcom/transsion/camera/app/common/storage/IStorage$IStorageOperator;)V
    .registers 3

    .line 106
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/autoscenedetection/QuickVideoManager;->mStorageOperator:Lcom/transsion/camera/app/common/storage/IStorage$IStorageOperator;

    .line 107
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/autoscenedetection/QuickVideoManager;->mRecorderPolicy:Lcom/transsion/camera/app/common/recorder/baseimpl/RecorderPolicy;

    invoke-virtual {v0, p1}, Lcom/transsion/camera/app/common/recorder/baseimpl/RecorderPolicy;->setStorageOperator(Lcom/transsion/camera/app/common/storage/IStorage$IStorageOperator;)V

    .line 108
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/autoscenedetection/QuickVideoManager;->mRecorderCallback:Lcom/transsion/camera/feature/mode/autoscenedetection/QuickVideoManager$MyRecorderCallback;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/recorder/baseimpl/RecorderCallback;->setStorageOperator(Lcom/transsion/camera/app/common/storage/IStorage$IStorageOperator;)V

    return-void
.end method

.method public startOrStop(Ljava/lang/String;)V
    .registers 5

    .line 168
    sget-object v0, Lcom/transsion/camera/feature/mode/autoscenedetection/QuickVideoManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startOrStop value: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 169
    const-string v0, "key_quick_video_start"

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_27

    .line 170
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/autoscenedetection/QuickVideoManager;->notifyRecorderStart()V

    .line 171
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/autoscenedetection/QuickVideoManager;->mRecorderManager:Lcom/transsion/camera/app/common/recorder/RecorderManager;

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/recorder/RecorderManager;->startStop()V

    return-void

    .line 172
    :cond_27
    const-string v0, "key_quick_video_stop"

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_35

    .line 173
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/autoscenedetection/QuickVideoManager;->mRecorderManager:Lcom/transsion/camera/app/common/recorder/RecorderManager;

    const/4 p1, 0x0

    invoke-virtual {p0, p1, p1, p1}, Lcom/transsion/camera/app/common/recorder/RecorderManager;->leave(ZZZ)Z

    :cond_35
    return-void
.end method

.method public storageUnMount()V
    .registers 1

    .line 199
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/autoscenedetection/QuickVideoManager;->mRecorderManager:Lcom/transsion/camera/app/common/recorder/RecorderManager;

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/recorder/RecorderManager;->storageUnMount()V

    return-void
.end method

.method public unInit()V
    .registers 3

    .line 155
    sget-object v0, Lcom/transsion/camera/feature/mode/autoscenedetection/QuickVideoManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string/jumbo v1, "unInit"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 156
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/autoscenedetection/QuickVideoManager;->mRecorderManager:Lcom/transsion/camera/app/common/recorder/RecorderManager;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/recorder/RecorderManager;->unInit()V

    .line 157
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/autoscenedetection/QuickVideoManager;->mQuickVideoUI:Lcom/transsion/camera/feature/mode/autoscenedetection/QuickVideoUI;

    if-eqz p0, :cond_14

    .line 158
    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/autoscenedetection/QuickVideoUI;->unInitQuickVideoUI()V

    :cond_14
    return-void
.end method

.method public updateSwitchPreviewValue(Ljava/lang/String;)V
    .registers 2

    .line 225
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/autoscenedetection/QuickVideoManager;->mQuickVideoUI:Lcom/transsion/camera/feature/mode/autoscenedetection/QuickVideoUI;

    if-eqz p0, :cond_7

    .line 226
    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/mode/autoscenedetection/QuickVideoUI;->updateSwitchPreviewValue(Ljava/lang/String;)V

    :cond_7
    return-void
.end method
