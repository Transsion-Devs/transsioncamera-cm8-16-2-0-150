.class public Lcom/transsion/camera/app/common/recorder/RecorderManager$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/app/common/recorder/RecorderManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private mAppUI:Lcom/transsion/camera/app/common/IAppUI;

.field private mCallback:Lcom/transsion/camera/app/common/recorder/IVideoContract$IMediaRecorderCallback;

.field private mCameraRecorder:Lcom/transsion/camera/app/common/recorder/IVideoContract$ICameraRecorder;

.field private mCommonVideoHelper:Lcom/transsion/camera/app/common/mode/CommonVideoHelper;

.field private mContext:Landroid/content/Context;

.field private mPolicy:Lcom/transsion/camera/app/common/recorder/IVideoContract$IMediaRecorderPolicy;

.field private mPreviewOperator:Lcom/transsion/camera/app/common/preview/IPreviewOperator;

.field private mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

.field private mTextureHolder:Lcom/transsion/camera/featurelibs/media/ITextureHolder;

.field private mVideoStateCallback:Lcom/transsion/camera/app/common/recorder/IVideoContract$IVideoStateCallback;


# direct methods
.method static bridge synthetic -$$Nest$fgetmAppUI(Lcom/transsion/camera/app/common/recorder/RecorderManager$Builder;)Lcom/transsion/camera/app/common/IAppUI;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/app/common/recorder/RecorderManager$Builder;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmBufferHolder(Lcom/transsion/camera/app/common/recorder/RecorderManager$Builder;)Lcom/transsion/camera/featurelibs/media/IBufferHolder;
    .registers 1

    .line 0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p0, 0x0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmCallback(Lcom/transsion/camera/app/common/recorder/RecorderManager$Builder;)Lcom/transsion/camera/app/common/recorder/IVideoContract$IMediaRecorderCallback;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/app/common/recorder/RecorderManager$Builder;->mCallback:Lcom/transsion/camera/app/common/recorder/IVideoContract$IMediaRecorderCallback;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmCameraRecorder(Lcom/transsion/camera/app/common/recorder/RecorderManager$Builder;)Lcom/transsion/camera/app/common/recorder/IVideoContract$ICameraRecorder;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/app/common/recorder/RecorderManager$Builder;->mCameraRecorder:Lcom/transsion/camera/app/common/recorder/IVideoContract$ICameraRecorder;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmCommonVideoHelper(Lcom/transsion/camera/app/common/recorder/RecorderManager$Builder;)Lcom/transsion/camera/app/common/mode/CommonVideoHelper;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/app/common/recorder/RecorderManager$Builder;->mCommonVideoHelper:Lcom/transsion/camera/app/common/mode/CommonVideoHelper;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmContext(Lcom/transsion/camera/app/common/recorder/RecorderManager$Builder;)Landroid/content/Context;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/app/common/recorder/RecorderManager$Builder;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmPolicy(Lcom/transsion/camera/app/common/recorder/RecorderManager$Builder;)Lcom/transsion/camera/app/common/recorder/IVideoContract$IMediaRecorderPolicy;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/app/common/recorder/RecorderManager$Builder;->mPolicy:Lcom/transsion/camera/app/common/recorder/IVideoContract$IMediaRecorderPolicy;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmPreviewOperator(Lcom/transsion/camera/app/common/recorder/RecorderManager$Builder;)Lcom/transsion/camera/app/common/preview/IPreviewOperator;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/app/common/recorder/RecorderManager$Builder;->mPreviewOperator:Lcom/transsion/camera/app/common/preview/IPreviewOperator;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmSettingController(Lcom/transsion/camera/app/common/recorder/RecorderManager$Builder;)Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/app/common/recorder/RecorderManager$Builder;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmTextureHolder(Lcom/transsion/camera/app/common/recorder/RecorderManager$Builder;)Lcom/transsion/camera/featurelibs/media/ITextureHolder;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/app/common/recorder/RecorderManager$Builder;->mTextureHolder:Lcom/transsion/camera/featurelibs/media/ITextureHolder;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmVideoStateCallback(Lcom/transsion/camera/app/common/recorder/RecorderManager$Builder;)Lcom/transsion/camera/app/common/recorder/IVideoContract$IVideoStateCallback;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/app/common/recorder/RecorderManager$Builder;->mVideoStateCallback:Lcom/transsion/camera/app/common/recorder/IVideoContract$IVideoStateCallback;

    return-object p0
.end method

.method public constructor <init>()V
    .registers 1

    .line 142
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public build()Lcom/transsion/camera/app/common/recorder/RecorderManager;
    .registers 3

    .line 202
    new-instance v0, Lcom/transsion/camera/app/common/recorder/RecorderManager;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/transsion/camera/app/common/recorder/RecorderManager;-><init>(Lcom/transsion/camera/app/common/recorder/RecorderManager$Builder;Lcom/transsion/camera/app/common/recorder/RecorderManager-IA;)V

    return-object v0
.end method

.method public setAppUI(Lcom/transsion/camera/app/common/IAppUI;)Lcom/transsion/camera/app/common/recorder/RecorderManager$Builder;
    .registers 2

    .line 182
    iput-object p1, p0, Lcom/transsion/camera/app/common/recorder/RecorderManager$Builder;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    return-object p0
.end method

.method public setCallback(Lcom/transsion/camera/app/common/recorder/IVideoContract$IMediaRecorderCallback;)Lcom/transsion/camera/app/common/recorder/RecorderManager$Builder;
    .registers 2

    .line 167
    iput-object p1, p0, Lcom/transsion/camera/app/common/recorder/RecorderManager$Builder;->mCallback:Lcom/transsion/camera/app/common/recorder/IVideoContract$IMediaRecorderCallback;

    return-object p0
.end method

.method public setCameraRecorder(Lcom/transsion/camera/app/common/recorder/IVideoContract$ICameraRecorder;)Lcom/transsion/camera/app/common/recorder/RecorderManager$Builder;
    .registers 2

    .line 177
    iput-object p1, p0, Lcom/transsion/camera/app/common/recorder/RecorderManager$Builder;->mCameraRecorder:Lcom/transsion/camera/app/common/recorder/IVideoContract$ICameraRecorder;

    return-object p0
.end method

.method public setContext(Landroid/content/Context;)Lcom/transsion/camera/app/common/recorder/RecorderManager$Builder;
    .registers 2

    .line 147
    iput-object p1, p0, Lcom/transsion/camera/app/common/recorder/RecorderManager$Builder;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public setPolicy(Lcom/transsion/camera/app/common/recorder/IVideoContract$IMediaRecorderPolicy;)Lcom/transsion/camera/app/common/recorder/RecorderManager$Builder;
    .registers 2

    .line 162
    iput-object p1, p0, Lcom/transsion/camera/app/common/recorder/RecorderManager$Builder;->mPolicy:Lcom/transsion/camera/app/common/recorder/IVideoContract$IMediaRecorderPolicy;

    return-object p0
.end method

.method public setPreviewOperator(Lcom/transsion/camera/app/common/preview/IPreviewOperator;)Lcom/transsion/camera/app/common/recorder/RecorderManager$Builder;
    .registers 2

    .line 187
    iput-object p1, p0, Lcom/transsion/camera/app/common/recorder/RecorderManager$Builder;->mPreviewOperator:Lcom/transsion/camera/app/common/preview/IPreviewOperator;

    return-object p0
.end method

.method public setSettingController(Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;)Lcom/transsion/camera/app/common/recorder/RecorderManager$Builder;
    .registers 2

    .line 157
    iput-object p1, p0, Lcom/transsion/camera/app/common/recorder/RecorderManager$Builder;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    return-object p0
.end method

.method public setTextureHolder(Lcom/transsion/camera/featurelibs/media/ITextureHolder;)Lcom/transsion/camera/app/common/recorder/RecorderManager$Builder;
    .registers 2

    .line 192
    iput-object p1, p0, Lcom/transsion/camera/app/common/recorder/RecorderManager$Builder;->mTextureHolder:Lcom/transsion/camera/featurelibs/media/ITextureHolder;

    return-object p0
.end method

.method public setVideoHelper(Lcom/transsion/camera/app/common/mode/CommonVideoHelper;)Lcom/transsion/camera/app/common/recorder/RecorderManager$Builder;
    .registers 2

    .line 152
    iput-object p1, p0, Lcom/transsion/camera/app/common/recorder/RecorderManager$Builder;->mCommonVideoHelper:Lcom/transsion/camera/app/common/mode/CommonVideoHelper;

    return-object p0
.end method

.method public setVideoStateCallback(Lcom/transsion/camera/app/common/recorder/IVideoContract$IVideoStateCallback;)Lcom/transsion/camera/app/common/recorder/RecorderManager$Builder;
    .registers 2

    .line 172
    iput-object p1, p0, Lcom/transsion/camera/app/common/recorder/RecorderManager$Builder;->mVideoStateCallback:Lcom/transsion/camera/app/common/recorder/IVideoContract$IVideoStateCallback;

    return-object p0
.end method
