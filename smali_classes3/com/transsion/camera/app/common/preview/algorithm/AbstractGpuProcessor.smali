.class public abstract Lcom/transsion/camera/app/common/preview/algorithm/AbstractGpuProcessor;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/app/common/preview/algorithm/IGpuProcessor;


# instance fields
.field protected final DEBUG:Z

.field protected mCameraId:Ljava/lang/String;

.field protected mConfigChanged:Z

.field protected mContext:Landroid/content/Context;

.field protected mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

.field protected mIGLThreadRunnable:Lcom/transsion/camera/app/common/preview/IGLThreadRunnable;

.field protected mImageProcessor:Lcom/transsion/camera/app/common/mode/IImageProcessor;

.field protected mIsOpenProcess:Z

.field private mIsPreProcessed:Z

.field protected mLensFacing:I

.field protected mModeResumed:Z

.field protected mOrientation:I

.field protected mParameter:Ljava/lang/String;

.field protected mProcessInited:Z

.field protected final mScreenManager:Lcom/transsion/camera/app/common/manager/IScreenManager;

.field protected mSensorOrientation:I

.field protected mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

.field private final mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

.field protected mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

.field protected mSurfaceHeight:I

.field protected mSurfaceWidth:I

.field protected final mTag:Lcom/transsion/camera/utils/debug/Log$Tag;


# direct methods
.method static bridge synthetic -$$Nest$monSettingChanged(Lcom/transsion/camera/app/common/preview/algorithm/AbstractGpuProcessor;Ljava/lang/String;Ljava/lang/Object;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/app/common/preview/algorithm/AbstractGpuProcessor;->onSettingChanged(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/transsion/camera/app/common/manager/IScreenManager;)V
    .registers 5

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/transsion/camera/app/common/preview/algorithm/AbstractGpuProcessor;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const/4 v0, 0x0

    .line 23
    iput-boolean v0, p0, Lcom/transsion/camera/app/common/preview/algorithm/AbstractGpuProcessor;->DEBUG:Z

    .line 24
    iput-boolean v0, p0, Lcom/transsion/camera/app/common/preview/algorithm/AbstractGpuProcessor;->mIsPreProcessed:Z

    const/4 v1, -0x1

    .line 61
    iput v1, p0, Lcom/transsion/camera/app/common/preview/algorithm/AbstractGpuProcessor;->mOrientation:I

    .line 254
    new-instance v1, Lcom/transsion/camera/app/common/preview/algorithm/AbstractGpuProcessor$1;

    invoke-direct {v1, p0}, Lcom/transsion/camera/app/common/preview/algorithm/AbstractGpuProcessor$1;-><init>(Lcom/transsion/camera/app/common/preview/algorithm/AbstractGpuProcessor;)V

    iput-object v1, p0, Lcom/transsion/camera/app/common/preview/algorithm/AbstractGpuProcessor;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    .line 44
    iput-object p1, p0, Lcom/transsion/camera/app/common/preview/algorithm/AbstractGpuProcessor;->mContext:Landroid/content/Context;

    .line 45
    iput v0, p0, Lcom/transsion/camera/app/common/preview/algorithm/AbstractGpuProcessor;->mSurfaceWidth:I

    .line 46
    iput v0, p0, Lcom/transsion/camera/app/common/preview/algorithm/AbstractGpuProcessor;->mSurfaceHeight:I

    .line 47
    iput-object p2, p0, Lcom/transsion/camera/app/common/preview/algorithm/AbstractGpuProcessor;->mScreenManager:Lcom/transsion/camera/app/common/manager/IScreenManager;

    return-void
.end method

.method private onSettingChanged(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 4

    .line 263
    instance-of v0, p2, Ljava/lang/String;

    if-eqz v0, :cond_a

    .line 264
    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/camera/app/common/preview/algorithm/AbstractGpuProcessor;->onSettingChanged(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 265
    :cond_a
    instance-of v0, p2, Ljava/lang/Boolean;

    if-eqz v0, :cond_13

    .line 266
    check-cast p2, Ljava/lang/Boolean;

    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/app/common/preview/algorithm/AbstractGpuProcessor;->onSettingChanged(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_13
    return-void
.end method

.method private unInitAlgo()V
    .registers 2

    const/4 v0, 0x0

    .line 200
    iput-boolean v0, p0, Lcom/transsion/camera/app/common/preview/algorithm/AbstractGpuProcessor;->mModeResumed:Z

    .line 201
    iget-boolean v0, p0, Lcom/transsion/camera/app/common/preview/algorithm/AbstractGpuProcessor;->mProcessInited:Z

    if-eqz v0, :cond_a

    .line 202
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/preview/algorithm/AbstractGpuProcessor;->unInit()V

    :cond_a
    return-void
.end method


# virtual methods
.method public abstract synthetic algoProcess(Lcom/transsion/camera/app/common/preview/algorithm/MyTexture;Lcom/transsion/camera/app/common/preview/algorithm/MyTexture;II[FJZI)Z
.end method

.method public getDefaultParameter()Ljava/lang/String;
    .registers 1

    const/4 p0, 0x0

    return-object p0
.end method

.method public abstract synthetic getKey()Ljava/lang/String;
.end method

.method public getPreProcessed()Z
    .registers 1

    .line 75
    iget-boolean p0, p0, Lcom/transsion/camera/app/common/preview/algorithm/AbstractGpuProcessor;->mIsPreProcessed:Z

    return p0
.end method

.method public init(II)Z
    .registers 5

    .line 53
    iget-object v0, p0, Lcom/transsion/camera/app/common/preview/algorithm/AbstractGpuProcessor;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "init"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 54
    iget v0, p0, Lcom/transsion/camera/app/common/preview/algorithm/AbstractGpuProcessor;->mSurfaceWidth:I

    if-ne v0, p1, :cond_f

    iget v0, p0, Lcom/transsion/camera/app/common/preview/algorithm/AbstractGpuProcessor;->mSurfaceHeight:I

    if-eq v0, p2, :cond_13

    .line 55
    :cond_f
    iput p1, p0, Lcom/transsion/camera/app/common/preview/algorithm/AbstractGpuProcessor;->mSurfaceWidth:I

    .line 56
    iput p2, p0, Lcom/transsion/camera/app/common/preview/algorithm/AbstractGpuProcessor;->mSurfaceHeight:I

    :cond_13
    const/4 p0, 0x1

    return p0
.end method

.method public needPreviewFrame()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public onCameraOperateAction(I)V
    .registers 2

    return-void
.end method

.method public onFirstSteadyFrame()V
    .registers 2

    .line 227
    iget-object p0, p0, Lcom/transsion/camera/app/common/preview/algorithm/AbstractGpuProcessor;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "onFirstSteadyFrame"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method public onModeInit(Lcom/transsion/camera/app/common/mode/IImageProcessor;Ljava/lang/String;Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;Lcom/transsion/camera/app/common/preview/IPreviewOperator;Ljava/lang/String;)V
    .registers 7

    .line 176
    iget-object p5, p0, Lcom/transsion/camera/app/common/preview/algorithm/AbstractGpuProcessor;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "onModeInit"

    invoke-static {p5, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 177
    iput-object p1, p0, Lcom/transsion/camera/app/common/preview/algorithm/AbstractGpuProcessor;->mImageProcessor:Lcom/transsion/camera/app/common/mode/IImageProcessor;

    .line 178
    iput-object p2, p0, Lcom/transsion/camera/app/common/preview/algorithm/AbstractGpuProcessor;->mCameraId:Ljava/lang/String;

    .line 179
    invoke-static {}, Lcom/transsion/camera/adapter/CameraAgentFactory;->getCameraAgent()Lcom/transsion/camera/adapter/CameraAgent;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/camera/adapter/CameraAgent;->getCameraDeviceInfo()Lcom/transsion/camera/adapter/ICameraDeviceInfo;

    move-result-object p1

    .line 180
    invoke-interface {p1, p2}, Lcom/transsion/camera/adapter/ICameraDeviceInfo;->getCameraInfo(Ljava/lang/String;)Lcom/transsion/camera/adapter/ICameraInfo;

    move-result-object p1

    if-eqz p1, :cond_25

    .line 182
    invoke-interface {p1}, Lcom/transsion/camera/adapter/ICameraInfo;->getFacing()I

    move-result p2

    iput p2, p0, Lcom/transsion/camera/app/common/preview/algorithm/AbstractGpuProcessor;->mLensFacing:I

    .line 183
    invoke-interface {p1}, Lcom/transsion/camera/adapter/ICameraInfo;->getSensorOrientation()I

    move-result p1

    iput p1, p0, Lcom/transsion/camera/app/common/preview/algorithm/AbstractGpuProcessor;->mSensorOrientation:I

    .line 185
    :cond_25
    iput-object p3, p0, Lcom/transsion/camera/app/common/preview/algorithm/AbstractGpuProcessor;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    .line 186
    invoke-interface {p3}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->getStatusMonitor()Lcom/transsion/camera/app/common/setting/StatusMonitor;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/app/common/preview/algorithm/AbstractGpuProcessor;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    .line 187
    invoke-interface {p3}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->getDataStore()Lcom/transsion/camera/app/common/storage/DataStore;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/app/common/preview/algorithm/AbstractGpuProcessor;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    .line 188
    iput-object p4, p0, Lcom/transsion/camera/app/common/preview/algorithm/AbstractGpuProcessor;->mIGLThreadRunnable:Lcom/transsion/camera/app/common/preview/IGLThreadRunnable;

    .line 189
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/preview/algorithm/AbstractGpuProcessor;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/preview/algorithm/AbstractGpuProcessor;->registerKeyToMonitor(Ljava/lang/String;)V

    return-void
.end method

.method public onModePaused()V
    .registers 4

    .line 208
    iget-object v0, p0, Lcom/transsion/camera/app/common/preview/algorithm/AbstractGpuProcessor;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onModePaused, mProcessInited: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/transsion/camera/app/common/preview/algorithm/AbstractGpuProcessor;->mProcessInited:Z

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method public onModeResumed()V
    .registers 4

    .line 213
    iget-object v0, p0, Lcom/transsion/camera/app/common/preview/algorithm/AbstractGpuProcessor;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onModeResumed, mProcessInited: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/transsion/camera/app/common/preview/algorithm/AbstractGpuProcessor;->mIsOpenProcess:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/transsion/camera/app/common/preview/algorithm/AbstractGpuProcessor;->mProcessInited:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 214
    iput-boolean v0, p0, Lcom/transsion/camera/app/common/preview/algorithm/AbstractGpuProcessor;->mModeResumed:Z

    .line 215
    iget-boolean v0, p0, Lcom/transsion/camera/app/common/preview/algorithm/AbstractGpuProcessor;->mIsOpenProcess:Z

    if-eqz v0, :cond_37

    iget-boolean v0, p0, Lcom/transsion/camera/app/common/preview/algorithm/AbstractGpuProcessor;->mProcessInited:Z

    if-nez v0, :cond_37

    .line 216
    iget v0, p0, Lcom/transsion/camera/app/common/preview/algorithm/AbstractGpuProcessor;->mSurfaceWidth:I

    iget v1, p0, Lcom/transsion/camera/app/common/preview/algorithm/AbstractGpuProcessor;->mSurfaceHeight:I

    invoke-virtual {p0, v0, v1}, Lcom/transsion/camera/app/common/preview/algorithm/AbstractGpuProcessor;->init(II)Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/camera/app/common/preview/algorithm/AbstractGpuProcessor;->mProcessInited:Z

    :cond_37
    return-void
.end method

.method public onModeUnInit()V
    .registers 3

    .line 194
    iget-object v0, p0, Lcom/transsion/camera/app/common/preview/algorithm/AbstractGpuProcessor;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "onModeUnInit"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 195
    invoke-direct {p0}, Lcom/transsion/camera/app/common/preview/algorithm/AbstractGpuProcessor;->unInitAlgo()V

    .line 196
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/preview/algorithm/AbstractGpuProcessor;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/common/preview/algorithm/AbstractGpuProcessor;->unRegisterKeyToMonitor(Ljava/lang/String;)V

    return-void
.end method

.method public onOrientationChanged(I)V
    .registers 2

    .line 65
    iput p1, p0, Lcom/transsion/camera/app/common/preview/algorithm/AbstractGpuProcessor;->mOrientation:I

    return-void
.end method

.method public onPreviewFrame([BIII)V
    .registers 5

    return-void
.end method

.method public onSettingChanged(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 0
    return-void
.end method

.method public onSettingChanged(Ljava/lang/String;Z)V
    .registers 3

    .line 0
    return-void
.end method

.method public onSettingReady()V
    .registers 2

    .line 222
    iget-object p0, p0, Lcom/transsion/camera/app/common/preview/algorithm/AbstractGpuProcessor;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "onSettingReady"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method public abstract synthetic onSurfaceCreated()V
.end method

.method public onSurfaceDestoryed()V
    .registers 1

    .line 155
    invoke-direct {p0}, Lcom/transsion/camera/app/common/preview/algorithm/AbstractGpuProcessor;->unInitAlgo()V

    return-void
.end method

.method public process(Lcom/transsion/camera/app/common/preview/algorithm/MyTexture;Lcom/transsion/camera/app/common/preview/algorithm/MyTexture;II[FJI)Z
    .registers 19

    .line 99
    iget-boolean v1, p0, Lcom/transsion/camera/app/common/preview/algorithm/AbstractGpuProcessor;->mIsOpenProcess:Z

    if-eqz v1, :cond_1b

    iget-boolean v1, p0, Lcom/transsion/camera/app/common/preview/algorithm/AbstractGpuProcessor;->mProcessInited:Z

    if-nez v1, :cond_1b

    iget-boolean v1, p0, Lcom/transsion/camera/app/common/preview/algorithm/AbstractGpuProcessor;->mModeResumed:Z

    if-eqz v1, :cond_1b

    .line 100
    invoke-virtual {p0, p3, p4}, Lcom/transsion/camera/app/common/preview/algorithm/AbstractGpuProcessor;->init(II)Z

    move-result v1

    iput-boolean v1, p0, Lcom/transsion/camera/app/common/preview/algorithm/AbstractGpuProcessor;->mProcessInited:Z

    if-eqz v1, :cond_1b

    .line 102
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/preview/algorithm/AbstractGpuProcessor;->getDefaultParameter()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/transsion/camera/app/common/preview/algorithm/AbstractGpuProcessor;->setParameter(Ljava/lang/String;)V

    .line 105
    :cond_1b
    iget-boolean v1, p0, Lcom/transsion/camera/app/common/preview/algorithm/AbstractGpuProcessor;->mIsOpenProcess:Z

    if-nez v1, :cond_26

    iget-boolean v1, p0, Lcom/transsion/camera/app/common/preview/algorithm/AbstractGpuProcessor;->mProcessInited:Z

    if-eqz v1, :cond_26

    .line 106
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/preview/algorithm/AbstractGpuProcessor;->unInit()V

    .line 108
    :cond_26
    iget-boolean v1, p0, Lcom/transsion/camera/app/common/preview/algorithm/AbstractGpuProcessor;->mProcessInited:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_60

    .line 109
    iget-boolean v1, p0, Lcom/transsion/camera/app/common/preview/algorithm/AbstractGpuProcessor;->mConfigChanged:Z

    if-eqz v1, :cond_36

    .line 110
    iget-object v1, p0, Lcom/transsion/camera/app/common/preview/algorithm/AbstractGpuProcessor;->mParameter:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/transsion/camera/app/common/preview/algorithm/AbstractGpuProcessor;->setParameter(Ljava/lang/String;)V

    .line 111
    iput-boolean v2, p0, Lcom/transsion/camera/app/common/preview/algorithm/AbstractGpuProcessor;->mConfigChanged:Z

    .line 113
    :cond_36
    invoke-static {}, Lcom/transsion/camera/adapter/CameraAgentFactory;->getCameraAgent()Lcom/transsion/camera/adapter/CameraAgent;

    move-result-object v1

    invoke-virtual {v1}, Lcom/transsion/camera/adapter/CameraAgent;->getCameraDeviceInfo()Lcom/transsion/camera/adapter/ICameraDeviceInfo;

    move-result-object v1

    iget-object v5, p0, Lcom/transsion/camera/app/common/preview/algorithm/AbstractGpuProcessor;->mCameraId:Ljava/lang/String;

    .line 114
    invoke-interface {v1, v5}, Lcom/transsion/camera/adapter/ICameraDeviceInfo;->getCameraInfo(Ljava/lang/String;)Lcom/transsion/camera/adapter/ICameraInfo;

    move-result-object v1

    invoke-interface {v1}, Lcom/transsion/camera/adapter/ICameraInfo;->getFacing()I

    move-result v1

    const/4 v5, 0x1

    if-ne v5, v1, :cond_4d

    move v8, v5

    goto :goto_4e

    :cond_4d
    move v8, v2

    .line 118
    :goto_4e
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    move-wide/from16 v6, p6

    move/from16 v9, p8

    .line 119
    invoke-virtual/range {v0 .. v9}, Lcom/transsion/camera/app/common/preview/algorithm/AbstractGpuProcessor;->algoProcess(Lcom/transsion/camera/app/common/preview/algorithm/MyTexture;Lcom/transsion/camera/app/common/preview/algorithm/MyTexture;II[FJZI)Z

    move-result v0

    return v0

    :cond_60
    return v2
.end method

.method protected registerKeyToMonitor(Ljava/lang/String;)V
    .registers 5

    .line 241
    iget-object v0, p0, Lcom/transsion/camera/app/common/preview/algorithm/AbstractGpuProcessor;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    if-eqz v0, :cond_21

    .line 242
    iget-object v0, p0, Lcom/transsion/camera/app/common/preview/algorithm/AbstractGpuProcessor;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "registerKeyToMonitor +: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 243
    iget-object v0, p0, Lcom/transsion/camera/app/common/preview/algorithm/AbstractGpuProcessor;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    iget-object p0, p0, Lcom/transsion/camera/app/common/preview/algorithm/AbstractGpuProcessor;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    invoke-virtual {v0, p1, p0}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->registerValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    :cond_21
    return-void
.end method

.method protected screenFlip()Z
    .registers 2

    .line 84
    iget-object p0, p0, Lcom/transsion/camera/app/common/preview/algorithm/AbstractGpuProcessor;->mScreenManager:Lcom/transsion/camera/app/common/manager/IScreenManager;

    if-eqz p0, :cond_d

    const/4 v0, 0x7

    .line 85
    invoke-interface {p0}, Lcom/transsion/camera/app/common/manager/IScreenManager;->getScreenFormType()I

    move-result p0

    if-ne v0, p0, :cond_d

    const/4 p0, 0x1

    return p0

    :cond_d
    const/4 p0, 0x0

    return p0
.end method

.method protected screenPocket()Z
    .registers 2

    .line 79
    iget-object p0, p0, Lcom/transsion/camera/app/common/preview/algorithm/AbstractGpuProcessor;->mScreenManager:Lcom/transsion/camera/app/common/manager/IScreenManager;

    if-eqz p0, :cond_d

    const/4 v0, 0x6

    .line 80
    invoke-interface {p0}, Lcom/transsion/camera/app/common/manager/IScreenManager;->getScreenFormType()I

    move-result p0

    if-ne v0, p0, :cond_d

    const/4 p0, 0x1

    return p0

    :cond_d
    const/4 p0, 0x0

    return p0
.end method

.method public setParameter(Ljava/lang/String;)V
    .registers 2

    return-void
.end method

.method public setPreProcessed(Z)V
    .registers 2

    .line 70
    iput-boolean p1, p0, Lcom/transsion/camera/app/common/preview/algorithm/AbstractGpuProcessor;->mIsPreProcessed:Z

    return-void
.end method

.method public setRecordCallback(Lcom/transsion/camera/app/common/mode/IRecordCallback;)V
    .registers 2

    return-void
.end method

.method public unInit()V
    .registers 3

    .line 131
    iget-object v0, p0, Lcom/transsion/camera/app/common/preview/algorithm/AbstractGpuProcessor;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string/jumbo v1, "unInit"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 132
    iput v0, p0, Lcom/transsion/camera/app/common/preview/algorithm/AbstractGpuProcessor;->mSurfaceWidth:I

    .line 133
    iput v0, p0, Lcom/transsion/camera/app/common/preview/algorithm/AbstractGpuProcessor;->mSurfaceHeight:I

    .line 134
    iput-boolean v0, p0, Lcom/transsion/camera/app/common/preview/algorithm/AbstractGpuProcessor;->mProcessInited:Z

    return-void
.end method

.method protected unRegisterKeyToMonitor(Ljava/lang/String;)V
    .registers 5

    .line 248
    iget-object v0, p0, Lcom/transsion/camera/app/common/preview/algorithm/AbstractGpuProcessor;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    if-eqz v0, :cond_22

    .line 249
    iget-object v0, p0, Lcom/transsion/camera/app/common/preview/algorithm/AbstractGpuProcessor;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "unRegisterKeyToMonitor -: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 250
    iget-object v0, p0, Lcom/transsion/camera/app/common/preview/algorithm/AbstractGpuProcessor;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    iget-object p0, p0, Lcom/transsion/camera/app/common/preview/algorithm/AbstractGpuProcessor;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    invoke-virtual {v0, p1, p0}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->unregisterValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    :cond_22
    return-void
.end method

.method public updatePreviewSize(Landroid/util/Size;Landroid/util/Size;)V
    .registers 3

    return-void
.end method
