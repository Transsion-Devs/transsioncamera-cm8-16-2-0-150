.class public Lcom/transsion/camera/app/common/recorder/RecorderManager;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/app/common/recorder/RecorderManager$Builder;
    }
.end annotation


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private final mRecorder:Lcom/transsion/camera/app/common/recorder/AbstractAsyncStateRecorder;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 27
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "RecorderManager"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/app/common/recorder/RecorderManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method private constructor <init>(Lcom/transsion/camera/app/common/recorder/RecorderManager$Builder;)V
    .registers 12

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    invoke-static {p1}, Lcom/transsion/camera/app/common/recorder/RecorderManager$Builder;->-$$Nest$fgetmContext(Lcom/transsion/camera/app/common/recorder/RecorderManager$Builder;)Landroid/content/Context;

    move-result-object v1

    .line 33
    invoke-static {p1}, Lcom/transsion/camera/app/common/recorder/RecorderManager$Builder;->-$$Nest$fgetmCommonVideoHelper(Lcom/transsion/camera/app/common/recorder/RecorderManager$Builder;)Lcom/transsion/camera/app/common/mode/CommonVideoHelper;

    move-result-object v2

    .line 34
    invoke-static {p1}, Lcom/transsion/camera/app/common/recorder/RecorderManager$Builder;->-$$Nest$fgetmSettingController(Lcom/transsion/camera/app/common/recorder/RecorderManager$Builder;)Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    move-result-object v3

    .line 35
    invoke-static {p1}, Lcom/transsion/camera/app/common/recorder/RecorderManager$Builder;->-$$Nest$fgetmPolicy(Lcom/transsion/camera/app/common/recorder/RecorderManager$Builder;)Lcom/transsion/camera/app/common/recorder/IVideoContract$IMediaRecorderPolicy;

    move-result-object v4

    .line 36
    invoke-static {p1}, Lcom/transsion/camera/app/common/recorder/RecorderManager$Builder;->-$$Nest$fgetmCallback(Lcom/transsion/camera/app/common/recorder/RecorderManager$Builder;)Lcom/transsion/camera/app/common/recorder/IVideoContract$IMediaRecorderCallback;

    move-result-object v5

    .line 37
    invoke-static {p1}, Lcom/transsion/camera/app/common/recorder/RecorderManager$Builder;->-$$Nest$fgetmVideoStateCallback(Lcom/transsion/camera/app/common/recorder/RecorderManager$Builder;)Lcom/transsion/camera/app/common/recorder/IVideoContract$IVideoStateCallback;

    move-result-object v6

    .line 38
    invoke-static {p1}, Lcom/transsion/camera/app/common/recorder/RecorderManager$Builder;->-$$Nest$fgetmCameraRecorder(Lcom/transsion/camera/app/common/recorder/RecorderManager$Builder;)Lcom/transsion/camera/app/common/recorder/IVideoContract$ICameraRecorder;

    move-result-object v7

    .line 40
    invoke-static {p1}, Lcom/transsion/camera/app/common/recorder/RecorderManager$Builder;->-$$Nest$fgetmAppUI(Lcom/transsion/camera/app/common/recorder/RecorderManager$Builder;)Lcom/transsion/camera/app/common/IAppUI;

    move-result-object v8

    move-object v0, v8

    .line 41
    invoke-static {p1}, Lcom/transsion/camera/app/common/recorder/RecorderManager$Builder;->-$$Nest$fgetmPreviewOperator(Lcom/transsion/camera/app/common/recorder/RecorderManager$Builder;)Lcom/transsion/camera/app/common/preview/IPreviewOperator;

    move-result-object v8

    .line 42
    invoke-static {p1}, Lcom/transsion/camera/app/common/recorder/RecorderManager$Builder;->-$$Nest$fgetmTextureHolder(Lcom/transsion/camera/app/common/recorder/RecorderManager$Builder;)Lcom/transsion/camera/featurelibs/media/ITextureHolder;

    move-result-object v9

    .line 43
    invoke-static {p1}, Lcom/transsion/camera/app/common/recorder/RecorderManager$Builder;->-$$Nest$fgetmBufferHolder(Lcom/transsion/camera/app/common/recorder/RecorderManager$Builder;)Lcom/transsion/camera/featurelibs/media/IBufferHolder;

    if-eqz v9, :cond_39

    .line 46
    new-instance v0, Lcom/transsion/camera/app/common/recorder/AsyncCodecRecorder;

    invoke-direct/range {v0 .. v9}, Lcom/transsion/camera/app/common/recorder/AsyncCodecRecorder;-><init>(Landroid/content/Context;Lcom/transsion/camera/app/common/mode/CommonVideoHelper;Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;Lcom/transsion/camera/app/common/recorder/IVideoContract$IMediaRecorderPolicy;Lcom/transsion/camera/app/common/recorder/IVideoContract$IMediaRecorderCallback;Lcom/transsion/camera/app/common/recorder/IVideoContract$IVideoStateCallback;Lcom/transsion/camera/app/common/recorder/IVideoContract$ICameraRecorder;Lcom/transsion/camera/app/common/preview/IPreviewOperator;Lcom/transsion/camera/featurelibs/media/ITextureHolder;)V

    iput-object v0, p0, Lcom/transsion/camera/app/common/recorder/RecorderManager;->mRecorder:Lcom/transsion/camera/app/common/recorder/AbstractAsyncStateRecorder;

    return-void

    :cond_39
    move-object v8, v0

    .line 57
    new-instance v0, Lcom/transsion/camera/app/common/recorder/AsyncMediaRecorder;

    invoke-direct/range {v0 .. v8}, Lcom/transsion/camera/app/common/recorder/AsyncMediaRecorder;-><init>(Landroid/content/Context;Lcom/transsion/camera/app/common/mode/CommonVideoHelper;Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;Lcom/transsion/camera/app/common/recorder/IVideoContract$IMediaRecorderPolicy;Lcom/transsion/camera/app/common/recorder/IVideoContract$IMediaRecorderCallback;Lcom/transsion/camera/app/common/recorder/IVideoContract$IVideoStateCallback;Lcom/transsion/camera/app/common/recorder/IVideoContract$ICameraRecorder;Lcom/transsion/camera/app/common/IAppUI;)V

    iput-object v0, p0, Lcom/transsion/camera/app/common/recorder/RecorderManager;->mRecorder:Lcom/transsion/camera/app/common/recorder/AbstractAsyncStateRecorder;

    return-void
.end method

.method synthetic constructor <init>(Lcom/transsion/camera/app/common/recorder/RecorderManager$Builder;Lcom/transsion/camera/app/common/recorder/RecorderManager-IA;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/common/recorder/RecorderManager;-><init>(Lcom/transsion/camera/app/common/recorder/RecorderManager$Builder;)V

    return-void
.end method


# virtual methods
.method public configRecorder(Lcom/transsion/camera/app/common/mode/RecorderParam;)V
    .registers 4

    .line 72
    sget-object v0, Lcom/transsion/camera/app/common/recorder/RecorderManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "configRecorder"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 73
    iget-object p0, p0, Lcom/transsion/camera/app/common/recorder/RecorderManager;->mRecorder:Lcom/transsion/camera/app/common/recorder/AbstractAsyncStateRecorder;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/recorder/AbstractAsyncRecorder;->configRecorder(Lcom/transsion/camera/app/common/mode/RecorderParam;)V

    return-void
.end method

.method public init()V
    .registers 3

    .line 62
    sget-object v0, Lcom/transsion/camera/app/common/recorder/RecorderManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "init"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 63
    iget-object p0, p0, Lcom/transsion/camera/app/common/recorder/RecorderManager;->mRecorder:Lcom/transsion/camera/app/common/recorder/AbstractAsyncStateRecorder;

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/recorder/AbstractAsyncRecorder;->init()V

    return-void
.end method

.method public isStopping()Z
    .registers 1

    .line 124
    iget-object p0, p0, Lcom/transsion/camera/app/common/recorder/RecorderManager;->mRecorder:Lcom/transsion/camera/app/common/recorder/AbstractAsyncStateRecorder;

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/recorder/AbstractAsyncStateRecorder;->isStopping()Z

    move-result p0

    return p0
.end method

.method public leave(ZZZ)Z
    .registers 7

    .line 92
    sget-object v0, Lcom/transsion/camera/app/common/recorder/RecorderManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "leave needResult: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " needStartPreview: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " sync: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 94
    iget-object p0, p0, Lcom/transsion/camera/app/common/recorder/RecorderManager;->mRecorder:Lcom/transsion/camera/app/common/recorder/AbstractAsyncStateRecorder;

    invoke-virtual {p0, p1, p2, p3}, Lcom/transsion/camera/app/common/recorder/AbstractAsyncRecorder;->leave(ZZZ)Z

    move-result p0

    return p0
.end method

.method public markEndWaitVideoRecordEndAction()V
    .registers 1

    .line 116
    iget-object p0, p0, Lcom/transsion/camera/app/common/recorder/RecorderManager;->mRecorder:Lcom/transsion/camera/app/common/recorder/AbstractAsyncStateRecorder;

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/recorder/AbstractAsyncStateRecorder;->markEndWaitVideoRecordEndAction()V

    return-void
.end method

.method public operationPrepared()V
    .registers 3

    .line 77
    sget-object v0, Lcom/transsion/camera/app/common/recorder/RecorderManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "operationPrepared"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 78
    iget-object p0, p0, Lcom/transsion/camera/app/common/recorder/RecorderManager;->mRecorder:Lcom/transsion/camera/app/common/recorder/AbstractAsyncStateRecorder;

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/recorder/AbstractAsyncRecorder;->operationPrepared()V

    return-void
.end method

.method public pauseResume()V
    .registers 3

    .line 87
    sget-object v0, Lcom/transsion/camera/app/common/recorder/RecorderManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "pauseResume"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 88
    iget-object p0, p0, Lcom/transsion/camera/app/common/recorder/RecorderManager;->mRecorder:Lcom/transsion/camera/app/common/recorder/AbstractAsyncStateRecorder;

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/recorder/AbstractAsyncRecorder;->pauseResume()V

    return-void
.end method

.method public shouldWaitVideoRecordEndAction()Z
    .registers 1

    .line 120
    iget-object p0, p0, Lcom/transsion/camera/app/common/recorder/RecorderManager;->mRecorder:Lcom/transsion/camera/app/common/recorder/AbstractAsyncStateRecorder;

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/recorder/AbstractAsyncStateRecorder;->shouldWaitVideoRecordEndAction()Z

    move-result p0

    return p0
.end method

.method public startStop()V
    .registers 3

    .line 82
    sget-object v0, Lcom/transsion/camera/app/common/recorder/RecorderManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "startStop"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 83
    iget-object p0, p0, Lcom/transsion/camera/app/common/recorder/RecorderManager;->mRecorder:Lcom/transsion/camera/app/common/recorder/AbstractAsyncStateRecorder;

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/recorder/AbstractAsyncRecorder;->startStop()V

    return-void
.end method

.method public storageUnMount()V
    .registers 3

    .line 98
    sget-object v0, Lcom/transsion/camera/app/common/recorder/RecorderManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "storageUnMount"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 99
    iget-object p0, p0, Lcom/transsion/camera/app/common/recorder/RecorderManager;->mRecorder:Lcom/transsion/camera/app/common/recorder/AbstractAsyncStateRecorder;

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/recorder/AbstractAsyncRecorder;->storageUnMount()V

    return-void
.end method

.method public supportAudioZoom()Z
    .registers 1

    .line 108
    iget-object p0, p0, Lcom/transsion/camera/app/common/recorder/RecorderManager;->mRecorder:Lcom/transsion/camera/app/common/recorder/AbstractAsyncStateRecorder;

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/recorder/AbstractAsyncStateRecorder;->supportAudioZoom()Z

    move-result p0

    return p0
.end method

.method public unInit()V
    .registers 3

    .line 67
    sget-object v0, Lcom/transsion/camera/app/common/recorder/RecorderManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string/jumbo v1, "unInit"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 68
    iget-object p0, p0, Lcom/transsion/camera/app/common/recorder/RecorderManager;->mRecorder:Lcom/transsion/camera/app/common/recorder/AbstractAsyncStateRecorder;

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/recorder/AbstractAsyncRecorder;->unInit()V

    return-void
.end method

.method public updateAudioZoom(Ljava/lang/String;)V
    .registers 2

    .line 112
    iget-object p0, p0, Lcom/transsion/camera/app/common/recorder/RecorderManager;->mRecorder:Lcom/transsion/camera/app/common/recorder/AbstractAsyncStateRecorder;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/recorder/AbstractAsyncStateRecorder;->updateAudioZoom(Ljava/lang/String;)V

    return-void
.end method

.method public videoSnapShot(Lcom/transsion/camera/app/common/recorder/IVideoContract$ISnapShotCallback;)Z
    .registers 4

    .line 103
    sget-object v0, Lcom/transsion/camera/app/common/recorder/RecorderManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string/jumbo v1, "videoSnapShot"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 104
    iget-object p0, p0, Lcom/transsion/camera/app/common/recorder/RecorderManager;->mRecorder:Lcom/transsion/camera/app/common/recorder/AbstractAsyncStateRecorder;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/recorder/AbstractAsyncRecorder;->videoSnapShot(Lcom/transsion/camera/app/common/recorder/IVideoContract$ISnapShotCallback;)Z

    move-result p0

    return p0
.end method
