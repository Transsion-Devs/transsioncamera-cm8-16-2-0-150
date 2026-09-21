.class public abstract Lcom/transsion/camera/app/common/mode/CameraMode;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/app/common/mode/ICameraMode;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/app/common/mode/CameraMode$MySettingChangeListener;
    }
.end annotation


# static fields
.field public static final ASPECT_TOLERANCE:D = 0.01

.field public static final ASPECT_TOLERANCE_2:D = 0.02

.field private static final TEMP_RECORD_FILE:Ljava/lang/String; = ".temp_record"


# instance fields
.field protected mAppUI:Lcom/transsion/camera/app/common/IAppUI;

.field protected mBatteryStatus:I

.field protected mCameraDeviceControl:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

.field protected mContext:Landroid/content/Context;

.field protected mCurShutterPriority:I

.field protected mCurrentCameraId:Ljava/lang/String;

.field private mFeatureConfig:Lcom/transsion/camera/app/common/IModeFeatureConfig;

.field protected mFirstSteadyFrameCome:Z

.field protected mGotoActivityListener:Lcom/transsion/camera/app/common/IAppUIListener$IGotoActivityListener;

.field protected mGpuAlgorithmManager:Lcom/transsion/camera/app/common/preview/algorithm/GpuAlgorithmManager;

.field protected mImageProcessor:Lcom/transsion/camera/app/common/mode/IImageProcessor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/transsion/camera/app/common/mode/IImageProcessor;"
        }
    .end annotation
.end field

.field protected mIntentAction:Lcom/transsion/camera/app/common/IApp$IIntentAction;

.field protected volatile mInternalStorageOperator:Lcom/transsion/camera/app/common/storage/IStorage$IStorageOperator;

.field protected mIsCurModeSupportQC:Z

.field protected mIsMainZoom3XSupported:Z

.field private mIsRepairMode:Z

.field private mIsValid:Z

.field protected mLockState:Lcom/transsion/camera/app/common/mode/IAeAfLock$State;

.field protected mMemSize:I

.field private mModeSettingUISpec:Lcom/transsion/camera/app/common/ModeSettingUISpec;

.field protected mModeStatusListener:Lcom/transsion/camera/app/common/IApp$ModeAndSettingStatusListener;

.field protected mModeSwitch:Z

.field private final mName:Ljava/lang/String;

.field protected mNeedCloseQuickPreview:Z

.field private mOrientation:I

.field protected mPhotosSupportProcessingApi:Z

.field protected mPreviewSize:Landroid/util/Size;

.field private mProjectAuxSupported:Z

.field private mProjectSlaveSupported:Z

.field protected mQuickCaptureManager:Lcom/transsion/camera/app/common/provider/QuickCaptureManager;

.field protected mScreenFormType:I

.field protected mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

.field private mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

.field protected volatile mStorageOperator:Lcom/transsion/camera/app/common/storage/IStorage$IStorageOperator;

.field protected final mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

.field protected mTemperatureStatus:I

.field protected mUseGooglePhotosDefault:Z

.field protected mWideSupportSuperdefinition:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 6

    .line 120
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 85
    iput v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mOrientation:I

    const/4 v1, 0x0

    .line 86
    iput v1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mScreenFormType:I

    .line 88
    new-instance v2, Lcom/transsion/camera/app/common/mode/CameraMode$MySettingChangeListener;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/transsion/camera/app/common/mode/CameraMode$MySettingChangeListener;-><init>(Lcom/transsion/camera/app/common/mode/CameraMode;Lcom/transsion/camera/app/common/mode/CameraMode-IA;)V

    iput-object v2, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    .line 89
    const-string v2, "0"

    iput-object v2, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mCurrentCameraId:Ljava/lang/String;

    .line 90
    iput-object v3, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mCameraDeviceControl:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    .line 98
    iput-boolean v1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mProjectAuxSupported:Z

    .line 99
    iput-boolean v1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mProjectSlaveSupported:Z

    .line 100
    iput-boolean v1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mNeedCloseQuickPreview:Z

    .line 101
    iput-boolean v1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mWideSupportSuperdefinition:Z

    .line 103
    iput-boolean v1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mModeSwitch:Z

    .line 105
    iput-boolean v1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mIsCurModeSupportQC:Z

    .line 108
    iput v1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mBatteryStatus:I

    .line 109
    iput v1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTemperatureStatus:I

    .line 112
    iput v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mCurShutterPriority:I

    const/4 v0, 0x1

    .line 113
    iput-boolean v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mUseGooglePhotosDefault:Z

    .line 114
    iput-boolean v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mPhotosSupportProcessingApi:Z

    .line 115
    iput-boolean v1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mFirstSteadyFrameCome:Z

    .line 116
    iput-boolean v1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mIsRepairMode:Z

    .line 117
    iput-boolean v1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mIsMainZoom3XSupported:Z

    .line 1170
    new-instance v0, Lcom/transsion/camera/app/common/mode/CameraMode$1;

    invoke-direct {v0, p0}, Lcom/transsion/camera/app/common/mode/CameraMode$1;-><init>(Lcom/transsion/camera/app/common/mode/CameraMode;)V

    iput-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mFeatureConfig:Lcom/transsion/camera/app/common/IModeFeatureConfig;

    .line 121
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    .line 122
    iput-object p1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mName:Ljava/lang/String;

    .line 123
    invoke-interface {p0}, Lcom/transsion/camera/app/common/mode/ICameraMode;->createImageProcessor()Lcom/transsion/camera/app/common/mode/IImageProcessor;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mImageProcessor:Lcom/transsion/camera/app/common/mode/IImageProcessor;

    return-void
.end method

.method protected static mergeRelation(Lcom/transsion/camera/app/common/relation/Relation;Lcom/transsion/camera/app/common/relation/Relation;)V
    .registers 6

    if-nez p1, :cond_3

    goto :goto_23

    .line 873
    :cond_3
    invoke-virtual {p1}, Lcom/transsion/camera/app/common/relation/Relation;->getBodyKeys()Ljava/util/List;

    move-result-object v0

    .line 874
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_23

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 875
    invoke-virtual {p1, v1}, Lcom/transsion/camera/app/common/relation/Relation;->getBodyValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1}, Lcom/transsion/camera/app/common/relation/Relation;->getBodyEntryValues(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v1, v2, v3}, Lcom/transsion/camera/app/common/relation/Relation;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_b

    :cond_23
    :goto_23
    return-void
.end method

.method private needReopenFromSat(Ljava/lang/String;ZLcom/transsion/camera/app/common/setting/ISettingManager$SettingController;)Z
    .registers 7

    .line 1096
    invoke-interface {p3}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->getCameraId()Ljava/lang/String;

    move-result-object p3

    .line 1097
    invoke-static {}, Lcom/transsion/camera/app/common/CameraRepository;->getInstance()Lcom/transsion/camera/app/common/CameraRepository;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/transsion/camera/app/common/CameraRepository;->isBackSATCamera(Ljava/lang/String;)Z

    move-result p1

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_1c

    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    invoke-virtual {p0, p1, p2, v2}, Lcom/transsion/camera/app/common/mode/CameraMode;->isSupportSAT(Landroid/content/Context;ZLcom/transsion/camera/app/common/setting/ISettingManager$SettingController;)Z

    move-result p0

    if-nez p0, :cond_1c

    move p0, v1

    goto :goto_1d

    :cond_1c
    move p0, v0

    .line 1098
    :goto_1d
    invoke-static {}, Lcom/transsion/camera/app/common/CameraRepository;->getInstance()Lcom/transsion/camera/app/common/CameraRepository;

    move-result-object p1

    invoke-virtual {p1, p3}, Lcom/transsion/camera/app/common/CameraRepository;->isBackSATCamera(Ljava/lang/String;)Z

    move-result p1

    if-eqz p0, :cond_2a

    if-eqz p1, :cond_2a

    return v1

    :cond_2a
    return v0
.end method

.method private needReopenFromWide(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;)Z
    .registers 7

    if-eqz p2, :cond_7

    .line 1079
    invoke-interface {p2}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->getCameraId()Ljava/lang/String;

    move-result-object v0

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    .line 1080
    :goto_8
    invoke-static {}, Lcom/transsion/camera/app/common/CameraRepository;->getInstance()Lcom/transsion/camera/app/common/CameraRepository;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/transsion/camera/app/common/CameraRepository;->isBackWideCamera(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_14

    return v1

    .line 1084
    :cond_14
    const-string/jumbo v0, "wide_camera"

    invoke-interface {p2, v0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "off"

    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v3, 0x1

    if-eqz v0, :cond_32

    const-string v0, "key_macro"

    .line 1086
    invoke-interface {p2, v0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 1085
    invoke-static {p2, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_32

    move p2, v3

    goto :goto_33

    :cond_32
    move p2, v1

    .line 1087
    :goto_33
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CameraMode;->isSupportWideCamera()Z

    move-result p0

    if-eqz p0, :cond_3b

    if-eqz p2, :cond_42

    .line 1088
    :cond_3b
    invoke-static {p1}, Lcom/transsion/camera/adapter/CameraInfoUtil;->isCameraFacingBack(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_42

    return v3

    :cond_42
    return v1
.end method


# virtual methods
.method protected final aeLockSupport()Z
    .registers 2

    .line 910
    invoke-static {}, Lcom/transsion/camera/app/common/CameraRepository;->getInstance()Lcom/transsion/camera/app/common/CameraRepository;

    move-result-object v0

    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mCurrentCameraId:Ljava/lang/String;

    .line 911
    invoke-virtual {v0, p0}, Lcom/transsion/camera/app/common/CameraRepository;->aeLockSupported(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method protected final afLockSupport()Z
    .registers 7

    .line 915
    invoke-static {}, Lcom/transsion/camera/app/common/CameraRepository;->getInstance()Lcom/transsion/camera/app/common/CameraRepository;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/CameraRepository;->getBackSATCamera()Ljava/lang/String;

    move-result-object v0

    .line 916
    invoke-static {}, Lcom/transsion/camera/app/common/CameraRepository;->getInstance()Lcom/transsion/camera/app/common/CameraRepository;

    move-result-object v1

    invoke-virtual {v1}, Lcom/transsion/camera/app/common/CameraRepository;->getBackWideCamera()Ljava/lang/String;

    move-result-object v1

    .line 917
    iget-object v2, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    const-string v3, "key_camera_zoom"

    invoke-interface {v2, v3}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 918
    iget-object v3, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[afLockSupport], mCurrentCameraId:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mCurrentCameraId:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " , backSATCamera:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " , currentSatStreamId:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 919
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CameraMode;->getCurrentSatStreamId()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " , backWideCamera:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " , currentZoomValue:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 918
    invoke-static {v3, v4}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 921
    iget-object v3, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mCurrentCameraId:Ljava/lang/String;

    invoke-static {v3, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v0, :cond_8a

    .line 922
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CameraMode;->getCurrentSatStreamId()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_78

    .line 923
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    sget-object v2, Lcom/transsion/camera/utils/SettingInfo;->ZOOM_INIT_VALUE:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    if-ge v0, v2, :cond_8a

    .line 924
    :cond_78
    invoke-static {}, Lcom/transsion/camera/app/common/CameraRepository;->getInstance()Lcom/transsion/camera/app/common/CameraRepository;

    move-result-object v0

    sget-object v2, Lcom/transsion/camera/app/common/mode/ICameraMode$ModeType;->PHOTO:Lcom/transsion/camera/app/common/mode/ICameraMode$ModeType;

    invoke-interface {p0}, Lcom/transsion/camera/app/common/mode/ICameraMode;->getModeType()Lcom/transsion/camera/app/common/mode/ICameraMode$ModeType;

    move-result-object p0

    if-ne v2, p0, :cond_85

    move v3, v4

    :cond_85
    invoke-virtual {v0, v1, v3}, Lcom/transsion/camera/app/common/CameraRepository;->continuousFocusSupport(Ljava/lang/String;Z)Z

    move-result p0

    return p0

    .line 927
    :cond_8a
    invoke-static {}, Lcom/transsion/camera/app/common/CameraRepository;->getInstance()Lcom/transsion/camera/app/common/CameraRepository;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mCurrentCameraId:Ljava/lang/String;

    sget-object v2, Lcom/transsion/camera/app/common/mode/ICameraMode$ModeType;->PHOTO:Lcom/transsion/camera/app/common/mode/ICameraMode$ModeType;

    invoke-interface {p0}, Lcom/transsion/camera/app/common/mode/ICameraMode;->getModeType()Lcom/transsion/camera/app/common/mode/ICameraMode$ModeType;

    move-result-object p0

    if-ne v2, p0, :cond_99

    move v3, v4

    :cond_99
    invoke-virtual {v0, v1, v3}, Lcom/transsion/camera/app/common/CameraRepository;->continuousFocusSupport(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public checkNotifyBgOfflineErr()V
    .registers 1

    return-void
.end method

.method public checkSingleCapture()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public configStream(Landroid/view/Surface;II)Landroid/view/Surface;
    .registers 4

    const/4 p0, 0x0

    return-object p0
.end method

.method protected createTempRecordFile()Ljava/io/File;
    .registers 3

    .line 1028
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object p0

    .line 1029
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_f

    .line 1030
    invoke-virtual {p0}, Ljava/io/File;->mkdirs()Z

    .line 1032
    :cond_f
    new-instance v0, Ljava/io/File;

    const-string v1, ".temp_record"

    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public currentLockState()Lcom/transsion/camera/app/common/mode/IAeAfLock$State;
    .registers 1

    .line 1038
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mLockState:Lcom/transsion/camera/app/common/mode/IAeAfLock$State;

    return-object p0
.end method

.method public destroyTask()V
    .registers 1

    .line 302
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mCameraDeviceControl:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->destroyTask()V

    return-void
.end method

.method public doOnFileSaved(Landroid/net/Uri;ZZ)V
    .registers 4

    return-void
.end method

.method protected final flipScreen()Z
    .registers 2

    const/4 v0, 0x7

    .line 160
    iget p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mScreenFormType:I

    if-ne v0, p0, :cond_7

    const/4 p0, 0x1

    return p0

    :cond_7
    const/4 p0, 0x0

    return p0
.end method

.method protected getBackMainCameraId()Ljava/lang/String;
    .registers 1

    .line 1268
    invoke-static {}, Lcom/transsion/camera/app/common/CameraRepository;->getInstance()Lcom/transsion/camera/app/common/CameraRepository;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/CameraRepository;->getMainBackCamera()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected getBackMaxZoomRatio()I
    .registers 2

    .line 1277
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CameraMode;->getBackTeleCameraId()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_9

    .line 1278
    sget p0, Lcom/transsion/camera/utils/SettingInfo;->ZOOM_10X:I

    return p0

    .line 1281
    :cond_9
    invoke-static {}, Lcom/transsion/camera/app/common/CameraRepository;->getInstance()Lcom/transsion/camera/app/common/CameraRepository;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/CameraRepository;->getBackMainCameraMaxZoom()I

    move-result p0

    .line 1282
    sget v0, Lcom/transsion/camera/utils/SettingInfo;->ZOOM_4X:I

    if-eq p0, v0, :cond_1c

    sget v0, Lcom/transsion/camera/utils/SettingInfo;->ZOOM_8X:I

    if-ne p0, v0, :cond_1a

    goto :goto_1c

    .line 1287
    :cond_1a
    sget p0, Lcom/transsion/camera/utils/SettingInfo;->ZOOM_10X:I

    :cond_1c
    :goto_1c
    return p0
.end method

.method protected getBackTeleCameraId()Ljava/lang/String;
    .registers 1

    .line 1272
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CameraMode;->getModeSettingUISpec()Lcom/transsion/camera/app/common/ModeSettingUISpec;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/ModeSettingUISpec;->isSupportTeleCamera()Z

    move-result p0

    if-eqz p0, :cond_13

    .line 1273
    invoke-static {}, Lcom/transsion/camera/app/common/CameraRepository;->getInstance()Lcom/transsion/camera/app/common/CameraRepository;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/CameraRepository;->getBackLongFocusCamera()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_13
    const/4 p0, 0x0

    return-object p0
.end method

.method protected getBackWideCameraId()Ljava/lang/String;
    .registers 1

    .line 1263
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CameraMode;->getModeSettingUISpec()Lcom/transsion/camera/app/common/ModeSettingUISpec;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/ModeSettingUISpec;->isSupportWideCamera()Z

    move-result p0

    if-eqz p0, :cond_13

    .line 1264
    invoke-static {}, Lcom/transsion/camera/app/common/CameraRepository;->getInstance()Lcom/transsion/camera/app/common/CameraRepository;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/CameraRepository;->getBackWideCamera()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_13
    const/4 p0, 0x0

    return-object p0
.end method

.method protected getBackZoomConfig()Lcom/transsion/camera/app/common/ZoomConfig;
    .registers 16

    .line 1184
    invoke-static {}, Lcom/transsion/camera/app/common/CameraRepository;->getInstance()Lcom/transsion/camera/app/common/CameraRepository;

    move-result-object v0

    .line 1185
    new-instance v1, Lcom/transsion/camera/app/common/ZoomConfig;

    invoke-direct {v1}, Lcom/transsion/camera/app/common/ZoomConfig;-><init>()V

    .line 1187
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CameraMode;->getBackWideCameraId()Ljava/lang/String;

    move-result-object v2

    .line 1188
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CameraMode;->getBackMainCameraId()Ljava/lang/String;

    move-result-object v3

    .line 1189
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CameraMode;->getBackTeleCameraId()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    if-nez v2, :cond_1a

    move v6, v5

    goto :goto_23

    .line 1192
    :cond_1a
    sget v6, Lcom/transsion/camera/utils/SettingInfo;->ZOOM_RATIO_UNIT:I

    int-to-float v6, v6

    invoke-virtual {v0, v2}, Lcom/transsion/camera/app/common/CameraRepository;->getDeviceZoomRatio(Ljava/lang/String;)F

    move-result v7

    mul-float/2addr v6, v7

    float-to-int v6, v6

    .line 1193
    :goto_23
    sget v7, Lcom/transsion/camera/utils/SettingInfo;->ZOOM_1X:I

    if-nez v4, :cond_29

    move v8, v5

    goto :goto_32

    .line 1195
    :cond_29
    sget v8, Lcom/transsion/camera/utils/SettingInfo;->ZOOM_RATIO_UNIT:I

    int-to-float v8, v8

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/CameraRepository;->getBackLongFocusRatio()F

    move-result v9

    mul-float/2addr v8, v9

    float-to-int v8, v8

    :goto_32
    if-nez v2, :cond_36

    move v9, v7

    goto :goto_37

    :cond_36
    move v9, v6

    .line 1197
    :goto_37
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CameraMode;->getBackMaxZoomRatio()I

    move-result v10

    const/4 v11, 0x1

    if-eqz v2, :cond_63

    .line 1200
    new-instance v12, Lcom/transsion/camera/app/common/ZoomConfig$LensInfo;

    invoke-direct {v12}, Lcom/transsion/camera/app/common/ZoomConfig$LensInfo;-><init>()V

    .line 1201
    invoke-virtual {v12, v6}, Lcom/transsion/camera/app/common/ZoomConfig$LensInfo;->setBaseRatio(I)Lcom/transsion/camera/app/common/ZoomConfig$LensInfo;

    move-result-object v12

    invoke-virtual {v12, v6, v7}, Lcom/transsion/camera/app/common/ZoomConfig$LensInfo;->setRatioRange(II)Lcom/transsion/camera/app/common/ZoomConfig$LensInfo;

    move-result-object v6

    .line 1202
    invoke-virtual {v6, v11}, Lcom/transsion/camera/app/common/ZoomConfig$LensInfo;->setLensType(I)Lcom/transsion/camera/app/common/ZoomConfig$LensInfo;

    move-result-object v6

    invoke-virtual {v6, v2}, Lcom/transsion/camera/app/common/ZoomConfig$LensInfo;->setCameraId(Ljava/lang/String;)Lcom/transsion/camera/app/common/ZoomConfig$LensInfo;

    move-result-object v2

    .line 1203
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CameraMode;->isZoomFocalLengthSupported()Z

    move-result v6

    if-eqz v6, :cond_60

    .line 1204
    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->getWideFocalLength()[Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Lcom/transsion/camera/app/common/ZoomConfig$LensInfo;->setFocalLength([Ljava/lang/String;)Lcom/transsion/camera/app/common/ZoomConfig$LensInfo;

    .line 1206
    :cond_60
    invoke-virtual {v1, v2}, Lcom/transsion/camera/app/common/ZoomConfig;->addLensInfo(Lcom/transsion/camera/app/common/ZoomConfig$LensInfo;)Lcom/transsion/camera/app/common/ZoomConfig;

    .line 1209
    :cond_63
    new-instance v2, Lcom/transsion/camera/app/common/ZoomConfig$LensInfo;

    invoke-direct {v2}, Lcom/transsion/camera/app/common/ZoomConfig$LensInfo;-><init>()V

    .line 1210
    invoke-virtual {v2, v7}, Lcom/transsion/camera/app/common/ZoomConfig$LensInfo;->setBaseRatio(I)Lcom/transsion/camera/app/common/ZoomConfig$LensInfo;

    move-result-object v2

    sget v6, Lcom/transsion/camera/utils/SettingInfo;->ZOOM_2X:I

    invoke-virtual {v2, v7, v6}, Lcom/transsion/camera/app/common/ZoomConfig$LensInfo;->setRatioRange(II)Lcom/transsion/camera/app/common/ZoomConfig$LensInfo;

    move-result-object v2

    const/4 v12, 0x2

    .line 1211
    invoke-virtual {v2, v12}, Lcom/transsion/camera/app/common/ZoomConfig$LensInfo;->setLensType(I)Lcom/transsion/camera/app/common/ZoomConfig$LensInfo;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/transsion/camera/app/common/ZoomConfig$LensInfo;->setCameraId(Ljava/lang/String;)Lcom/transsion/camera/app/common/ZoomConfig$LensInfo;

    move-result-object v2

    .line 1212
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CameraMode;->isZoomFocalLengthSupported()Z

    move-result v13

    if-eqz v13, :cond_88

    .line 1213
    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->getMainFocalLength()[Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v2, v13}, Lcom/transsion/camera/app/common/ZoomConfig$LensInfo;->setFocalLength([Ljava/lang/String;)Lcom/transsion/camera/app/common/ZoomConfig$LensInfo;

    .line 1215
    :cond_88
    invoke-virtual {v1, v2}, Lcom/transsion/camera/app/common/ZoomConfig;->addLensInfo(Lcom/transsion/camera/app/common/ZoomConfig$LensInfo;)Lcom/transsion/camera/app/common/ZoomConfig;

    .line 1217
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CameraMode;->isMainZoom2XSupported()Z

    move-result v2

    if-eqz v2, :cond_c0

    .line 1218
    new-instance v2, Lcom/transsion/camera/app/common/ZoomConfig$LensInfo;

    invoke-direct {v2}, Lcom/transsion/camera/app/common/ZoomConfig$LensInfo;-><init>()V

    .line 1219
    invoke-virtual {v2, v7}, Lcom/transsion/camera/app/common/ZoomConfig$LensInfo;->setBaseRatio(I)Lcom/transsion/camera/app/common/ZoomConfig$LensInfo;

    move-result-object v2

    if-lez v8, :cond_9e

    move v13, v8

    goto :goto_9f

    :cond_9e
    move v13, v10

    :goto_9f
    if-nez v8, :cond_a3

    move v14, v11

    goto :goto_a4

    :cond_a3
    move v14, v5

    .line 1220
    :goto_a4
    invoke-virtual {v2, v6, v13, v14}, Lcom/transsion/camera/app/common/ZoomConfig$LensInfo;->setRatioRange(IIZ)Lcom/transsion/camera/app/common/ZoomConfig$LensInfo;

    move-result-object v2

    .line 1222
    invoke-virtual {v2, v12}, Lcom/transsion/camera/app/common/ZoomConfig$LensInfo;->setLensType(I)Lcom/transsion/camera/app/common/ZoomConfig$LensInfo;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/transsion/camera/app/common/ZoomConfig$LensInfo;->setCameraId(Ljava/lang/String;)Lcom/transsion/camera/app/common/ZoomConfig$LensInfo;

    move-result-object v2

    .line 1223
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CameraMode;->isZoomFocalLengthSupported()Z

    move-result v6

    if-eqz v6, :cond_bd

    .line 1224
    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->getMainCropFocalLength()[Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Lcom/transsion/camera/app/common/ZoomConfig$LensInfo;->setFocalLength([Ljava/lang/String;)Lcom/transsion/camera/app/common/ZoomConfig$LensInfo;

    .line 1226
    :cond_bd
    invoke-virtual {v1, v2}, Lcom/transsion/camera/app/common/ZoomConfig;->addLensInfo(Lcom/transsion/camera/app/common/ZoomConfig$LensInfo;)Lcom/transsion/camera/app/common/ZoomConfig;

    .line 1229
    :cond_c0
    iget-boolean v2, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mIsMainZoom3XSupported:Z

    if-eqz v2, :cond_f3

    .line 1230
    new-instance v2, Lcom/transsion/camera/app/common/ZoomConfig$LensInfo;

    invoke-direct {v2}, Lcom/transsion/camera/app/common/ZoomConfig$LensInfo;-><init>()V

    .line 1231
    invoke-virtual {v2, v7}, Lcom/transsion/camera/app/common/ZoomConfig$LensInfo;->setBaseRatio(I)Lcom/transsion/camera/app/common/ZoomConfig$LensInfo;

    move-result-object v2

    sget v6, Lcom/transsion/camera/utils/SettingInfo;->ZOOM_3X:I

    if-lez v8, :cond_d3

    move v7, v8

    goto :goto_d4

    :cond_d3
    move v7, v10

    :goto_d4
    if-nez v8, :cond_d7

    move v5, v11

    .line 1232
    :cond_d7
    invoke-virtual {v2, v6, v7, v5}, Lcom/transsion/camera/app/common/ZoomConfig$LensInfo;->setRatioRange(IIZ)Lcom/transsion/camera/app/common/ZoomConfig$LensInfo;

    move-result-object v2

    .line 1234
    invoke-virtual {v2, v12}, Lcom/transsion/camera/app/common/ZoomConfig$LensInfo;->setLensType(I)Lcom/transsion/camera/app/common/ZoomConfig$LensInfo;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/transsion/camera/app/common/ZoomConfig$LensInfo;->setCameraId(Ljava/lang/String;)Lcom/transsion/camera/app/common/ZoomConfig$LensInfo;

    move-result-object v2

    .line 1235
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CameraMode;->isZoomFocalLengthSupported()Z

    move-result v3

    if-eqz v3, :cond_f0

    .line 1236
    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->getMainCropFocalLength()[Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/transsion/camera/app/common/ZoomConfig$LensInfo;->setFocalLength([Ljava/lang/String;)Lcom/transsion/camera/app/common/ZoomConfig$LensInfo;

    .line 1238
    :cond_f0
    invoke-virtual {v1, v2}, Lcom/transsion/camera/app/common/ZoomConfig;->addLensInfo(Lcom/transsion/camera/app/common/ZoomConfig$LensInfo;)Lcom/transsion/camera/app/common/ZoomConfig;

    :cond_f3
    if-eqz v4, :cond_135

    .line 1242
    new-instance v2, Lcom/transsion/camera/app/common/ZoomConfig$LensInfo;

    invoke-direct {v2}, Lcom/transsion/camera/app/common/ZoomConfig$LensInfo;-><init>()V

    .line 1243
    invoke-virtual {v2, v8}, Lcom/transsion/camera/app/common/ZoomConfig$LensInfo;->setBaseRatio(I)Lcom/transsion/camera/app/common/ZoomConfig$LensInfo;

    move-result-object v2

    .line 1244
    invoke-virtual {v2, v8, v10, v11}, Lcom/transsion/camera/app/common/ZoomConfig$LensInfo;->setRatioRange(IIZ)Lcom/transsion/camera/app/common/ZoomConfig$LensInfo;

    move-result-object v2

    const/4 v3, 0x3

    .line 1245
    invoke-virtual {v2, v3}, Lcom/transsion/camera/app/common/ZoomConfig$LensInfo;->setLensType(I)Lcom/transsion/camera/app/common/ZoomConfig$LensInfo;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/transsion/camera/app/common/ZoomConfig$LensInfo;->setCameraId(Ljava/lang/String;)Lcom/transsion/camera/app/common/ZoomConfig$LensInfo;

    move-result-object v2

    const v3, 0x402ccccd    # 2.7f

    .line 1246
    invoke-virtual {v0}, Lcom/transsion/camera/app/common/CameraRepository;->getBackLongFocusRatio()F

    move-result v4

    cmpg-float v3, v3, v4

    if-gtz v3, :cond_125

    .line 1247
    invoke-virtual {v0}, Lcom/transsion/camera/app/common/CameraRepository;->getBackLongFocusRatio()F

    move-result v3

    const/high16 v4, 0x40400000    # 3.0f

    cmpg-float v3, v3, v4

    if-gez v3, :cond_125

    .line 1248
    sget v3, Lcom/transsion/camera/utils/SettingInfo;->ZOOM_3X:I

    invoke-virtual {v2, v3}, Lcom/transsion/camera/app/common/ZoomConfig$LensInfo;->setCurrentRatio(I)Lcom/transsion/camera/app/common/ZoomConfig$LensInfo;

    .line 1250
    :cond_125
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CameraMode;->isZoomFocalLengthSupported()Z

    move-result v3

    if-eqz v3, :cond_132

    .line 1251
    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->getTeleFocalLength()[Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/transsion/camera/app/common/ZoomConfig$LensInfo;->setFocalLength([Ljava/lang/String;)Lcom/transsion/camera/app/common/ZoomConfig$LensInfo;

    .line 1253
    :cond_132
    invoke-virtual {v1, v2}, Lcom/transsion/camera/app/common/ZoomConfig;->addLensInfo(Lcom/transsion/camera/app/common/ZoomConfig$LensInfo;)Lcom/transsion/camera/app/common/ZoomConfig;

    .line 1256
    :cond_135
    invoke-virtual {v1, v9, v10}, Lcom/transsion/camera/app/common/ZoomConfig;->setZoomRange(II)Lcom/transsion/camera/app/common/ZoomConfig;

    move-result-object v2

    iget-object v3, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mCurrentCameraId:Ljava/lang/String;

    .line 1257
    invoke-virtual {v0, v3}, Lcom/transsion/camera/app/common/CameraRepository;->isBackSATCamera(Ljava/lang/String;)Z

    move-result v0

    invoke-virtual {v2, v0}, Lcom/transsion/camera/app/common/ZoomConfig;->setSATSupported(Z)Lcom/transsion/camera/app/common/ZoomConfig;

    move-result-object v0

    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mCurrentCameraId:Ljava/lang/String;

    .line 1258
    invoke-virtual {v0, p0}, Lcom/transsion/camera/app/common/ZoomConfig;->setCurrentLensTypeByCameraId(Ljava/lang/String;)Lcom/transsion/camera/app/common/ZoomConfig;

    return-object v1
.end method

.method protected getBackgroundServiceType()Lcom/transsion/camera/app/common/storage/IBackgroundStorageManager$BackgroundServiceType;
    .registers 4

    .line 1300
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CameraMode;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0}, Lcom/transsion/camera/app/common/mode/ICameraMode;->getModeRelation()Lcom/transsion/camera/app/common/relation/Relation;

    move-result-object v1

    const-string v2, "key_cam_mode"

    invoke-virtual {v1, v2}, Lcom/transsion/camera/app/common/relation/Relation;->getBodyEntryValues(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1299
    invoke-static {v0, v1}, Lcom/transsion/camera/utils/TranssionCameraModeUtil;->getTranssionCameraMode(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 1301
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getBackgroundServiceType: transsionCameraMode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1302
    invoke-static {}, Lcom/transsion/camera/app/common/storage/BackgroundStorageManagerProxy;->getInstance()Lcom/transsion/camera/app/common/storage/BackgroundStorageManagerProxy;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/common/storage/BackgroundStorageManagerProxy;->getBackgroundServiceType(I)Lcom/transsion/camera/app/common/storage/IBackgroundStorageManager$BackgroundServiceType;

    move-result-object p0

    return-object p0
.end method

.method public getCameraIdForOpen(Ljava/lang/String;Landroid/content/Context;ZLcom/transsion/camera/app/common/setting/ISettingManager$SettingController;Ljava/lang/String;ZIZ)Ljava/lang/String;
    .registers 9

    .line 696
    iput-boolean p6, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mModeSwitch:Z

    move p6, p7

    move p7, p8

    .line 697
    invoke-virtual/range {p0 .. p7}, Lcom/transsion/camera/app/common/mode/CameraMode;->getOpenCamerId(Ljava/lang/String;Landroid/content/Context;ZLcom/transsion/camera/app/common/setting/ISettingManager$SettingController;Ljava/lang/String;IZ)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getCurShutterPriority()I
    .registers 1

    const/4 p0, -0x1

    return p0
.end method

.method protected getCurrentSatStreamId()I
    .registers 1

    const/4 p0, -0x1

    return p0
.end method

.method public getDataFlowType()I
    .registers 1

    const/4 p0, 0x1

    return p0
.end method

.method public getFpsRange()Landroid/util/Range;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/Range<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    const/4 p0, 0x0

    return-object p0
.end method

.method protected getFrontZoomConfig()Lcom/transsion/camera/app/common/ZoomConfig;
    .registers 3

    .line 1180
    new-instance p0, Lcom/transsion/camera/app/common/ZoomConfig;

    invoke-direct {p0}, Lcom/transsion/camera/app/common/ZoomConfig;-><init>()V

    sget v0, Lcom/transsion/camera/utils/SettingInfo;->ZOOM_1X:I

    sget v1, Lcom/transsion/camera/utils/SettingInfo;->ZOOM_2X:I

    invoke-virtual {p0, v0, v1}, Lcom/transsion/camera/app/common/ZoomConfig;->setZoomRange(II)Lcom/transsion/camera/app/common/ZoomConfig;

    move-result-object p0

    return-object p0
.end method

.method public getModeFeatureConfig()Lcom/transsion/camera/app/common/IModeFeatureConfig;
    .registers 1

    .line 1167
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mFeatureConfig:Lcom/transsion/camera/app/common/IModeFeatureConfig;

    return-object p0
.end method

.method public getModeFeatures(Landroid/content/Context;)[Ljava/lang/String;
    .registers 2

    const/4 p0, 0x0

    .line 549
    new-array p0, p0, [Ljava/lang/String;

    return-object p0
.end method

.method public getModeSettingUISpec()Lcom/transsion/camera/app/common/ModeSettingUISpec;
    .registers 1

    .line 152
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mModeSettingUISpec:Lcom/transsion/camera/app/common/ModeSettingUISpec;

    return-object p0
.end method

.method public getName()Ljava/lang/String;
    .registers 1

    .line 143
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mName:Ljava/lang/String;

    return-object p0
.end method

.method protected abstract getOpenCamerId(Ljava/lang/String;Landroid/content/Context;ZLcom/transsion/camera/app/common/setting/ISettingManager$SettingController;Ljava/lang/String;IZ)Ljava/lang/String;
.end method

.method public getOrientation()I
    .registers 1

    .line 337
    iget p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mOrientation:I

    return p0
.end method

.method public getPictureCount()I
    .registers 1

    .line 1162
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mImageProcessor:Lcom/transsion/camera/app/common/mode/IImageProcessor;

    invoke-interface {p0}, Lcom/transsion/camera/app/common/mode/IImageProcessor;->getPictureCount()I

    move-result p0

    return p0
.end method

.method public getPostAlgoFormat()I
    .registers 1

    const/16 p0, 0x20

    return p0
.end method

.method public getPostViewSize(Ljava/util/List;)Landroid/util/Size;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/util/Size;",
            ">;)",
            "Landroid/util/Size;"
        }
    .end annotation

    const/4 p0, 0x0

    return-object p0
.end method

.method protected getPreviewSize()Landroid/util/Size;
    .registers 1

    .line 710
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mPreviewSize:Landroid/util/Size;

    return-object p0
.end method

.method public getPreviewViewType()Lcom/transsion/camera/utils/SettingInfo$PreviewViewType;
    .registers 1

    .line 1145
    sget-object p0, Lcom/transsion/camera/utils/SettingInfo$PreviewViewType;->GL_SURFACE_VIEW:Lcom/transsion/camera/utils/SettingInfo$PreviewViewType;

    return-object p0
.end method

.method public getQuickCapturingCount()I
    .registers 2

    .line 819
    iget-boolean v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mIsCurModeSupportQC:Z

    if-eqz v0, :cond_d

    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mQuickCaptureManager:Lcom/transsion/camera/app/common/provider/QuickCaptureManager;

    if-eqz p0, :cond_d

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/provider/QuickCaptureManager;->getPictureProcessingNumber()I

    move-result p0

    return p0

    :cond_d
    const/4 p0, 0x0

    return p0
.end method

.method protected getScreenSize()Landroid/util/Size;
    .registers 6

    .line 391
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CameraMode;->pocketScreen()Z

    move-result v0

    const-string v1, "string"

    if-eqz v0, :cond_1f

    .line 392
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget-object v3, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mContext:Landroid/content/Context;

    .line 393
    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 392
    const-string v4, "aod_override_mode_screen_size"

    invoke-virtual {v2, v4, v1, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_35

    .line 395
    :cond_1f
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget-object v3, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mContext:Landroid/content/Context;

    .line 396
    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 395
    const-string v4, "override_mode_screen_size"

    invoke-virtual {v2, v4, v1, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 398
    :goto_35
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_56

    .line 399
    invoke-static {v0}, Landroid/util/Size;->parseSize(Ljava/lang/String;)Landroid/util/Size;

    move-result-object v0

    .line 400
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "override mode screen size "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-object v0

    .line 403
    :cond_56
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/transsion/camera/utils/ScreenUtils;->getRealScreenSize(Landroid/content/Context;)Landroid/util/Size;

    move-result-object p0

    return-object p0
.end method

.method public getSettingGroup()J
    .registers 3

    const-wide/16 v0, 0x1

    return-wide v0
.end method

.method public getThumbnailSource()I
    .registers 3

    .line 614
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CameraMode;->getBackgroundServiceType()Lcom/transsion/camera/app/common/storage/IBackgroundStorageManager$BackgroundServiceType;

    move-result-object v0

    .line 615
    sget-object v1, Lcom/transsion/camera/app/common/storage/IBackgroundStorageManager$BackgroundServiceType;->TZ_SERVICE:Lcom/transsion/camera/app/common/storage/IBackgroundStorageManager$BackgroundServiceType;

    if-eq v0, v1, :cond_11

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CameraMode;->supportPostAlgo()Z

    move-result p0

    if-eqz p0, :cond_f

    goto :goto_11

    :cond_f
    const/4 p0, 0x2

    return p0

    :cond_11
    :goto_11
    const/4 p0, 0x1

    return p0
.end method

.method public getVideoRecodingOrientation()I
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public init(Landroid/content/Context;Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;Lcom/transsion/camera/app/common/IAppUI;Lcom/transsion/camera/app/common/mode/CameraDeviceControl;Ljava/lang/String;Lcom/transsion/camera/app/common/IApp$IIntentAction;I)V
    .registers 16

    .line 177
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mode init cameraId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 178
    iput-boolean v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mIsValid:Z

    .line 179
    iput-object p1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mContext:Landroid/content/Context;

    .line 180
    iput-object p3, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    if-eqz p3, :cond_2c

    .line 181
    invoke-interface {p3}, Lcom/transsion/camera/app/common/IAppUI;->getScreenFormType()I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_2c

    .line 182
    invoke-interface {p3}, Lcom/transsion/camera/app/common/IAppUI;->getScreenFormType()I

    move-result v1

    iput v1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mScreenFormType:I

    .line 184
    :cond_2c
    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/transsion/camera/utils/FeatureSupport;->isSupportPortraitArchitecture(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_3b

    .line 185
    invoke-static {}, Lcom/transsion/camera/app/proxy/ProxyManager;->getPortrait()Lcom/transsion/camera/app/proxy/portrait/IPortraitProxy;

    move-result-object v1

    invoke-interface {v1}, Lcom/transsion/camera/app/proxy/portrait/IPortraitProxy;->update()V

    .line 187
    :cond_3b
    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {v1}, Lcom/transsion/camera/app/common/IAppUI;->getGpuAlgorithmManager()Lcom/transsion/camera/app/common/preview/algorithm/GpuAlgorithmManager;

    move-result-object v1

    iput-object v1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mGpuAlgorithmManager:Lcom/transsion/camera/app/common/preview/algorithm/GpuAlgorithmManager;

    .line 188
    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {v1, p0}, Lcom/transsion/camera/app/common/IAppUI;->registerScreenFormListener(Lcom/transsion/camera/app/common/IScreenFormControl;)V

    .line 189
    iput-object p2, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    .line 190
    iput-object p4, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mCameraDeviceControl:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    .line 191
    iput-object p5, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mCurrentCameraId:Ljava/lang/String;

    .line 192
    iput-object p6, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mIntentAction:Lcom/transsion/camera/app/common/IApp$IIntentAction;

    .line 193
    iput p7, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mOrientation:I

    .line 194
    iget-object p4, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    const p6, 0x7fffffff

    invoke-interface {p4, p0, p6}, Lcom/transsion/camera/app/common/IAppUIControl$IShutterControl;->registerShutterListener(Lcom/transsion/camera/app/common/IAppUIListener$IShutterResponseListener;I)V

    .line 195
    iget-object p4, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mImageProcessor:Lcom/transsion/camera/app/common/mode/IImageProcessor;

    invoke-interface {p2}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->getLocationManager()Lcom/transsion/camera/app/common/location/LocationManager;

    move-result-object p2

    new-instance p6, Lcom/transsion/camera/app/common/algorithm/size/SizeConvert;

    invoke-direct {p6, p1}, Lcom/transsion/camera/app/common/algorithm/size/SizeConvert;-><init>(Landroid/content/Context;)V

    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mContext:Landroid/content/Context;

    invoke-interface {p4, p2, p6, p1}, Lcom/transsion/camera/app/common/mode/IImageProcessor;->init(Lcom/transsion/camera/app/common/location/LocationManager;Lcom/transsion/camera/app/common/algorithm/size/SizeConvert;Landroid/content/Context;)V

    .line 196
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mImageProcessor:Lcom/transsion/camera/app/common/mode/IImageProcessor;

    iget-object p2, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    invoke-interface {p2}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->getStatusMonitor()Lcom/transsion/camera/app/common/setting/StatusMonitor;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/transsion/camera/app/common/mode/IImageProcessor;->setStatusMonitor(Lcom/transsion/camera/app/common/setting/StatusMonitor;)V

    .line 197
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mImageProcessor:Lcom/transsion/camera/app/common/mode/IImageProcessor;

    invoke-interface {p1, p5}, Lcom/transsion/camera/app/common/mode/IImageProcessor;->updateCameraId(Ljava/lang/String;)V

    .line 199
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CameraMode;->flipScreen()Z

    move-result p1

    if-eqz p1, :cond_8a

    .line 200
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CameraMode;->getModeSettingUISpec()Lcom/transsion/camera/app/common/ModeSettingUISpec;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/ModeSettingUISpec;->getFlipModeSupportAlgos()[I

    move-result-object p1

    :goto_88
    move-object v2, p1

    goto :goto_93

    .line 202
    :cond_8a
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CameraMode;->getModeSettingUISpec()Lcom/transsion/camera/app/common/ModeSettingUISpec;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/ModeSettingUISpec;->getModeSupportAlgos()[I

    move-result-object p1

    goto :goto_88

    .line 204
    :goto_93
    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mGpuAlgorithmManager:Lcom/transsion/camera/app/common/preview/algorithm/GpuAlgorithmManager;

    iget-object v3, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mImageProcessor:Lcom/transsion/camera/app/common/mode/IImageProcessor;

    .line 205
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CameraMode;->getName()Ljava/lang/String;

    move-result-object v4

    iget-object v6, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {p1}, Lcom/transsion/camera/app/common/IAppUI;->getPreviewOperator()Lcom/transsion/camera/app/common/preview/IPreviewOperator;

    move-result-object v7

    move-object v5, p5

    .line 204
    invoke-virtual/range {v1 .. v7}, Lcom/transsion/camera/app/common/preview/algorithm/GpuAlgorithmManager;->onModeInit([ILcom/transsion/camera/app/common/mode/IImageProcessor;Ljava/lang/String;Ljava/lang/String;Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;Lcom/transsion/camera/app/common/preview/IPreviewOperator;)V

    .line 206
    invoke-static {p3}, Lcom/transsion/camera/app/common/mode/AppUICache;->cache(Lcom/transsion/camera/app/common/IAppUI;)V

    .line 207
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object p1

    iget-boolean p1, p1, Lcom/transsion/camera/utils/CustomConfigUtil;->mProjectAuxSupported:Z

    iput-boolean p1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mProjectAuxSupported:Z

    .line 208
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object p1

    iget-boolean p1, p1, Lcom/transsion/camera/utils/CustomConfigUtil;->mProjectSlaveSupported:Z

    iput-boolean p1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mProjectSlaveSupported:Z

    .line 210
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object p1

    iget-boolean p1, p1, Lcom/transsion/camera/utils/CustomConfigUtil;->mNeedCloseQuickPreview:Z

    iput-boolean p1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mNeedCloseQuickPreview:Z

    .line 211
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object p1

    iget-boolean p1, p1, Lcom/transsion/camera/utils/CustomConfigUtil;->mWideSupportSuperdefinition:Z

    iput-boolean p1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mWideSupportSuperdefinition:Z

    .line 212
    invoke-static {}, Lcom/transsion/camera/utils/MemoryUtils;->getTotalMemory()J

    move-result-wide p1

    long-to-int p1, p1

    iput p1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mMemSize:I

    .line 213
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/transsion/camera/utils/CameraUtil;->isRepairMode(Landroid/content/Context;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mIsRepairMode:Z

    const/4 p2, 0x0

    if-eqz p1, :cond_df

    .line 215
    iput-boolean p2, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mUseGooglePhotosDefault:Z

    goto :goto_e7

    .line 217
    :cond_df
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object p1

    iget-boolean p1, p1, Lcom/transsion/camera/utils/CustomConfigUtil;->mUseGooglePhotosDefault:Z

    iput-boolean p1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mUseGooglePhotosDefault:Z

    .line 219
    :goto_e7
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object p1

    iget-boolean p1, p1, Lcom/transsion/camera/utils/CustomConfigUtil;->mPhotosSupportProcessingApi:Z

    if-eqz p1, :cond_f6

    invoke-static {}, Lcom/transsion/camera/utils/MonkeyUtils;->isUserAMonkey()Z

    move-result p1

    if-nez p1, :cond_f6

    goto :goto_f7

    :cond_f6
    move v0, p2

    :goto_f7
    iput-boolean v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mPhotosSupportProcessingApi:Z

    .line 220
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "mode init mMemSize: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p3, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mMemSize:I

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, "MB"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 222
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object p1

    iget-boolean p1, p1, Lcom/transsion/camera/utils/CustomConfigUtil;->mIsMainZoom3XSupported:Z

    iput-boolean p1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mIsMainZoom3XSupported:Z

    return-void
.end method

.method public initContext(Landroid/content/Context;)V
    .registers 2

    .line 170
    iput-object p1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mContext:Landroid/content/Context;

    return-void
.end method

.method public initSettingController(Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;)V
    .registers 2

    .line 165
    iput-object p1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    return-void
.end method

.method public isBgCapturing()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public isBgOfflineCapturing()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method protected final isCameraFacingBack()Z
    .registers 2

    .line 893
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CameraMode;->pocketScreen()Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 p0, 0x0

    return p0

    .line 896
    :cond_8
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mCurrentCameraId:Ljava/lang/String;

    invoke-static {p0}, Lcom/transsion/camera/adapter/CameraInfoUtil;->isCameraFacingBack(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public isFirstSteadyFrameCome()Z
    .registers 1

    .line 486
    iget-boolean p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mFirstSteadyFrameCome:Z

    return p0
.end method

.method public isForceRecreateSession()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public isInsensorZoomStatus(Landroid/content/Context;Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;)Z
    .registers 3

    const/4 p0, 0x0

    return p0
.end method

.method public isLivePhotoMediaRecorderPrepared()Z
    .registers 1

    const/4 p0, 0x1

    return p0
.end method

.method protected isMainZoom2XSupported()Z
    .registers 1

    .line 1295
    iget-boolean p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mIsMainZoom3XSupported:Z

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public isModeNeedNotifyNewMedia()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public isNeedDeviceCaptureSound()Z
    .registers 1

    const/4 p0, 0x1

    return p0
.end method

.method public isNotSupportWaitPageMode()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public isSupportAuxPreview()Z
    .registers 2

    .line 849
    iget-boolean v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mProjectAuxSupported:Z

    if-eqz v0, :cond_10

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CameraMode;->getModeSettingUISpec()Lcom/transsion/camera/app/common/ModeSettingUISpec;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/ModeSettingUISpec;->isSupportAuxPreview()Z

    move-result p0

    if-eqz p0, :cond_10

    const/4 p0, 0x1

    return p0

    :cond_10
    const/4 p0, 0x0

    return p0
.end method

.method public isSupportBWCamera(Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;)Z
    .registers 2

    const/4 p0, 0x0

    return p0
.end method

.method public isSupportBackFakeDualLens()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public isSupportBackgroundPreview()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public isSupportDualCamBW(Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;)Z
    .registers 2

    const/4 p0, 0x0

    return p0
.end method

.method public isSupportDualVideo()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public isSupportFrontFakeDualLens()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public isSupportFrontWideCamera()Z
    .registers 1

    .line 584
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CameraMode;->getModeSettingUISpec()Lcom/transsion/camera/app/common/ModeSettingUISpec;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/ModeSettingUISpec;->isSupportFrontWideCamera()Z

    move-result p0

    return p0
.end method

.method public isSupportHighDefinition()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public isSupportLogicalCamera(Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;)Z
    .registers 2

    const/4 p0, 0x0

    return p0
.end method

.method public isSupportMacroCamera()Z
    .registers 1

    .line 574
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CameraMode;->getModeSettingUISpec()Lcom/transsion/camera/app/common/ModeSettingUISpec;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/ModeSettingUISpec;->isSupportMacroCamera()Z

    move-result p0

    return p0
.end method

.method public isSupportPeriscopeCamera()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public isSupportPowerSavingMode()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public isSupportSAT(Landroid/content/Context;ZLcom/transsion/camera/app/common/setting/ISettingManager$SettingController;)Z
    .registers 4

    const/4 p0, 0x0

    return p0
.end method

.method public isSupportSecondLogicalCamera(Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;)Z
    .registers 2

    const/4 p0, 0x0

    return p0
.end method

.method public isSupportShutterSound()Z
    .registers 1

    const/4 p0, 0x1

    return p0
.end method

.method public isSupportSlavePreview()Z
    .registers 2

    .line 863
    iget-boolean v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mProjectSlaveSupported:Z

    if-eqz v0, :cond_10

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CameraMode;->getModeSettingUISpec()Lcom/transsion/camera/app/common/ModeSettingUISpec;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/ModeSettingUISpec;->isSupportSlavePreview()Z

    move-result p0

    if-eqz p0, :cond_10

    const/4 p0, 0x1

    return p0

    :cond_10
    const/4 p0, 0x0

    return p0
.end method

.method public isSupportVideoCamera()Z
    .registers 1

    .line 579
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CameraMode;->getModeSettingUISpec()Lcom/transsion/camera/app/common/ModeSettingUISpec;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/ModeSettingUISpec;->isSupportVideoCamera()Z

    move-result p0

    return p0
.end method

.method public isSupportWideCamera()Z
    .registers 1

    .line 569
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CameraMode;->getModeSettingUISpec()Lcom/transsion/camera/app/common/ModeSettingUISpec;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/ModeSettingUISpec;->isSupportWideCamera()Z

    move-result p0

    return p0
.end method

.method public isValid()Z
    .registers 1

    .line 264
    iget-boolean p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mIsValid:Z

    return p0
.end method

.method protected isZoomFocalLengthSupported()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method protected final lock3A(Z)V
    .registers 5

    .line 1017
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "lock3A lock: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    if-eqz p1, :cond_1b

    .line 1018
    sget-object v0, Lcom/transsion/camera/app/common/mode/IAeAfLock$State;->AE_AF_AWB_LOCK:Lcom/transsion/camera/app/common/mode/IAeAfLock$State;

    goto :goto_1d

    :cond_1b
    sget-object v0, Lcom/transsion/camera/app/common/mode/IAeAfLock$State;->UNLOCK:Lcom/transsion/camera/app/common/mode/IAeAfLock$State;

    :goto_1d
    iput-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mLockState:Lcom/transsion/camera/app/common/mode/IAeAfLock$State;

    .line 1019
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    .line 1020
    invoke-static {}, Lcom/transsion/camera/app/common/mode/Restriction3A;->get3aRestriction()Lcom/transsion/camera/app/common/relation/RelationGroup;

    move-result-object v1

    if-eqz p1, :cond_2a

    .line 1021
    const-string p1, "on"

    goto :goto_2c

    :cond_2a
    const-string p1, "off"

    :goto_2c
    const/4 v2, 0x1

    .line 1020
    invoke-virtual {v1, p1, v2}, Lcom/transsion/camera/app/common/relation/RelationGroup;->getRelation(Ljava/lang/String;Z)Lcom/transsion/camera/app/common/relation/Relation;

    move-result-object p1

    .line 1019
    invoke-interface {v0, p1}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->postRestriction(Lcom/transsion/camera/app/common/relation/Relation;)V

    .line 1022
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mCameraDeviceControl:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    if-eqz p0, :cond_3d

    .line 1023
    const-string p1, "key_white_balance"

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->requestChangeSettingValue(Ljava/lang/String;)V

    :cond_3d
    return-void
.end method

.method protected final lockAe(Z)V
    .registers 5

    .line 984
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "lockAe lock: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    if-eqz p1, :cond_1b

    .line 985
    sget-object v0, Lcom/transsion/camera/app/common/mode/IAeAfLock$State;->AE_LOCK:Lcom/transsion/camera/app/common/mode/IAeAfLock$State;

    goto :goto_1d

    :cond_1b
    sget-object v0, Lcom/transsion/camera/app/common/mode/IAeAfLock$State;->UNLOCK:Lcom/transsion/camera/app/common/mode/IAeAfLock$State;

    :goto_1d
    iput-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mLockState:Lcom/transsion/camera/app/common/mode/IAeAfLock$State;

    .line 986
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    .line 987
    invoke-static {}, Lcom/transsion/camera/app/common/mode/Restriction3A;->getAeRestriction()Lcom/transsion/camera/app/common/relation/RelationGroup;

    move-result-object v1

    if-eqz p1, :cond_2a

    .line 988
    const-string p1, "on"

    goto :goto_2c

    :cond_2a
    const-string p1, "off"

    :goto_2c
    const/4 v2, 0x1

    .line 987
    invoke-virtual {v1, p1, v2}, Lcom/transsion/camera/app/common/relation/RelationGroup;->getRelation(Ljava/lang/String;Z)Lcom/transsion/camera/app/common/relation/Relation;

    move-result-object p1

    .line 986
    invoke-interface {v0, p1}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->postRestriction(Lcom/transsion/camera/app/common/relation/Relation;)V

    .line 989
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mCameraDeviceControl:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    if-eqz p0, :cond_3d

    .line 990
    const-string p1, "key_exposure"

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->requestChangeSettingValue(Ljava/lang/String;)V

    :cond_3d
    return-void
.end method

.method protected final lockAeAf(Z)V
    .registers 5

    .line 1006
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "lockAeAf lock: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    if-eqz p1, :cond_1b

    .line 1007
    sget-object v0, Lcom/transsion/camera/app/common/mode/IAeAfLock$State;->AE_AF_LOCK:Lcom/transsion/camera/app/common/mode/IAeAfLock$State;

    goto :goto_1d

    :cond_1b
    sget-object v0, Lcom/transsion/camera/app/common/mode/IAeAfLock$State;->UNLOCK:Lcom/transsion/camera/app/common/mode/IAeAfLock$State;

    :goto_1d
    iput-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mLockState:Lcom/transsion/camera/app/common/mode/IAeAfLock$State;

    .line 1008
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    .line 1009
    invoke-static {}, Lcom/transsion/camera/app/common/mode/Restriction3A;->getAeAfRestriction()Lcom/transsion/camera/app/common/relation/RelationGroup;

    move-result-object v1

    if-eqz p1, :cond_2a

    .line 1010
    const-string p1, "on"

    goto :goto_2c

    :cond_2a
    const-string p1, "off"

    :goto_2c
    const/4 v2, 0x1

    .line 1009
    invoke-virtual {v1, p1, v2}, Lcom/transsion/camera/app/common/relation/RelationGroup;->getRelation(Ljava/lang/String;Z)Lcom/transsion/camera/app/common/relation/Relation;

    move-result-object p1

    .line 1008
    invoke-interface {v0, p1}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->postRestriction(Lcom/transsion/camera/app/common/relation/Relation;)V

    .line 1011
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mCameraDeviceControl:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    if-eqz p0, :cond_3d

    .line 1012
    const-string p1, "key_focus"

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->requestChangeSettingValue(Ljava/lang/String;)V

    :cond_3d
    return-void
.end method

.method protected final lockAf(Z)V
    .registers 5

    .line 995
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "lockAf lock: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    if-eqz p1, :cond_1b

    .line 996
    sget-object v0, Lcom/transsion/camera/app/common/mode/IAeAfLock$State;->AF_LOCK:Lcom/transsion/camera/app/common/mode/IAeAfLock$State;

    goto :goto_1d

    :cond_1b
    sget-object v0, Lcom/transsion/camera/app/common/mode/IAeAfLock$State;->UNLOCK:Lcom/transsion/camera/app/common/mode/IAeAfLock$State;

    :goto_1d
    iput-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mLockState:Lcom/transsion/camera/app/common/mode/IAeAfLock$State;

    .line 997
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    .line 998
    invoke-static {}, Lcom/transsion/camera/app/common/mode/Restriction3A;->getAfRestriction()Lcom/transsion/camera/app/common/relation/RelationGroup;

    move-result-object v1

    if-eqz p1, :cond_2a

    .line 999
    const-string p1, "on"

    goto :goto_2c

    :cond_2a
    const-string p1, "off"

    :goto_2c
    const/4 v2, 0x1

    .line 998
    invoke-virtual {v1, p1, v2}, Lcom/transsion/camera/app/common/relation/RelationGroup;->getRelation(Ljava/lang/String;Z)Lcom/transsion/camera/app/common/relation/Relation;

    move-result-object p1

    .line 997
    invoke-interface {v0, p1}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->postRestriction(Lcom/transsion/camera/app/common/relation/Relation;)V

    .line 1000
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mCameraDeviceControl:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    if-eqz p0, :cond_3d

    .line 1001
    const-string p1, "key_focus"

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->requestChangeSettingValue(Ljava/lang/String;)V

    :cond_3d
    return-void
.end method

.method public needOpenPortraitCamera(Landroid/content/Context;)Z
    .registers 2

    const/4 p0, 0x0

    return p0
.end method

.method public needQCSaveJpegToFile([BZJ)I
    .registers 5

    const/4 p0, 0x0

    return p0
.end method

.method public needQCUpdateThumbnailView(ILandroid/graphics/Bitmap;Lcom/transsion/camera/app/common/mode/TimestampInfo;)I
    .registers 4

    const/4 p0, 0x0

    return p0
.end method

.method public needRebuildMode()Z
    .registers 1

    const/4 p0, 0x1

    return p0
.end method

.method public needReopenForMacroCamera(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;)Z
    .registers 5

    .line 1060
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CameraMode;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.transsion.camera.feature.mode.macro.MacroModeEntry"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    .line 1061
    const-string v1, "key_macro"

    invoke-interface {p2, v1}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string v1, "on"

    invoke-static {p2, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p2

    .line 1062
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CameraMode;->isSupportMacroCamera()Z

    move-result p0

    if-eqz v0, :cond_21

    .line 1064
    invoke-static {p1}, Lcom/transsion/camera/adapter/CameraInfoUtil;->isCameraFacingBack(Ljava/lang/String;)Z

    move-result p0

    return p0

    :cond_21
    if-eqz p2, :cond_2d

    .line 1066
    invoke-static {p1}, Lcom/transsion/camera/adapter/CameraInfoUtil;->isCameraFacingBack(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2d

    if-eqz p0, :cond_2d

    const/4 p0, 0x1

    return p0

    :cond_2d
    const/4 p0, 0x0

    return p0
.end method

.method public needReopenForWide(Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;Ljava/lang/String;)Z
    .registers 4

    .line 1049
    const-string/jumbo v0, "wide_camera"

    invoke-interface {p1, v0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "on"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    .line 1050
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CameraMode;->isSupportWideCamera()Z

    move-result p0

    if-eqz p1, :cond_1d

    .line 1051
    invoke-static {p2}, Lcom/transsion/camera/adapter/CameraInfoUtil;->isCameraFacingBack(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1d

    if-eqz p0, :cond_1d

    const/4 p0, 0x1

    return p0

    :cond_1d
    const/4 p0, 0x0

    return p0
.end method

.method public needUnintModeWhenPause()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public notifyModeforSwitchDevice()V
    .registers 1

    return-void
.end method

.method public notifyPictureDataFail()V
    .registers 1

    return-void
.end method

.method public notifyPictureTaken([BZIJ)I
    .registers 6

    const/4 p0, 0x0

    return p0
.end method

.method public notifySwitchByUser(Z)V
    .registers 2

    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)Z
    .registers 4

    const/4 p0, 0x0

    return p0
.end method

.method public onBackPressed()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public onBackPressedForUI()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public onBatteryStatusChanged(ZII)V
    .registers 4

    .line 643
    iput p2, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mBatteryStatus:I

    .line 644
    iput p3, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTemperatureStatus:I

    return-void
.end method

.method public onCameraStateChanged(I)V
    .registers 2

    return-void
.end method

.method public onConfigAfterStopPreview()V
    .registers 1

    return-void
.end method

.method public onConfigBeforeStartPreview()V
    .registers 1

    return-void
.end method

.method public onConfigurationChanged(Z)V
    .registers 2

    return-void
.end method

.method public onContinueShutterStart()V
    .registers 1

    return-void
.end method

.method public onContinuousShotFailed()V
    .registers 1

    return-void
.end method

.method public onContinuousShotProgress([B)V
    .registers 2

    return-void
.end method

.method protected onCreatePhotoHelper()Lcom/transsion/camera/app/common/mode/CommonPhotoHelper;
    .registers 1

    .line 226
    new-instance p0, Lcom/transsion/camera/app/common/mode/CommonPhotoHelper;

    invoke-direct {p0}, Lcom/transsion/camera/app/common/mode/CommonPhotoHelper;-><init>()V

    return-object p0
.end method

.method public onFirstSteadyFrame()V
    .registers 3

    .line 477
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "onFirstSteadyFrame"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 478
    iput-boolean v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mFirstSteadyFrameCome:Z

    .line 479
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mGpuAlgorithmManager:Lcom/transsion/camera/app/common/preview/algorithm/GpuAlgorithmManager;

    if-eqz p0, :cond_11

    .line 480
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/preview/algorithm/GpuAlgorithmManager;->onFirstSteadyFrame()V

    :cond_11
    return-void
.end method

.method public onLongPress()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public onModeCaptureCompleted(Lcom/transsion/camera/adapter/CameraResults;Landroid/hardware/camera2/CaptureResult;Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;)V
    .registers 4

    return-void
.end method

.method public onModeCaptureFailed(Z[J)V
    .registers 3

    return-void
.end method

.method public onModeCaptureStarted(JLcom/transsion/camera/adapter/CameraProxy$ICameraCaptureState;)V
    .registers 4

    return-void
.end method

.method public onModeChanged(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    return-void
.end method

.method public onOrientationChanged(I)V
    .registers 5

    .line 240
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onOrientationChanged orientation="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 241
    iput p1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mOrientation:I

    return-void
.end method

.method public onPostViewData([BIIIIJ)V
    .registers 8

    .line 0
    return-void
.end method

.method public onPostViewData([BJ)V
    .registers 4

    .line 0
    return-void
.end method

.method public onPreviewTypeChanged(Lcom/transsion/camera/utils/SettingInfo$PreviewViewType;)V
    .registers 2

    .line 1155
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mGpuAlgorithmManager:Lcom/transsion/camera/app/common/preview/algorithm/GpuAlgorithmManager;

    if-eqz p0, :cond_7

    .line 1156
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/preview/algorithm/GpuAlgorithmManager;->previewViewTypeChanged()V

    :cond_7
    return-void
.end method

.method public onScreenFormChanged(IZ)V
    .registers 3

    .line 247
    iput p1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mScreenFormType:I

    return-void
.end method

.method public onSettingChangeDone(Ljava/lang/String;)V
    .registers 2

    return-void
.end method

.method public onSettingChangeStart(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    return-void
.end method

.method protected onSettingChanged(Ljava/lang/String;Ljava/lang/Boolean;)V
    .registers 3

    .line 0
    return-void
.end method

.method protected onSettingChanged(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .line 439
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[onSettingChanged] key = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ",value = "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method protected onSettingChanged(Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 3

    .line 0
    return-void
.end method

.method public onSettingReady()V
    .registers 1

    .line 452
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mGpuAlgorithmManager:Lcom/transsion/camera/app/common/preview/algorithm/GpuAlgorithmManager;

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/preview/algorithm/GpuAlgorithmManager;->onSettingReady()V

    return-void
.end method

.method public onShutterCancel()V
    .registers 1

    return-void
.end method

.method public onShutterClick(II)Z
    .registers 3

    const/4 p0, 0x1

    return p0
.end method

.method public onShutterDown()V
    .registers 1

    return-void
.end method

.method public onShutterStart(ZJJ)V
    .registers 6

    return-void
.end method

.method public onSingleTapUp()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public onSurfaceDrawn()V
    .registers 1

    return-void
.end method

.method public onThumbNailTypeConfirmed(I[IJ)V
    .registers 6

    .line 511
    iget-boolean p3, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mPhotosSupportProcessingApi:Z

    if-eqz p3, :cond_34

    .line 512
    iget-object p3, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "[onThumbNailTypeConfirmed] type: "

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ",parameter: "

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p3, p2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 513
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mImageProcessor:Lcom/transsion/camera/app/common/mode/IImageProcessor;

    new-instance p2, Lcom/transsion/camera/app/common/mode/CaptureThumbInfo;

    invoke-interface {p0}, Lcom/transsion/camera/app/common/mode/IImageProcessor;->getPictureSurfaceId()I

    move-result p3

    invoke-direct {p2, p1, p3}, Lcom/transsion/camera/app/common/mode/CaptureThumbInfo;-><init>(II)V

    invoke-interface {p0, p2}, Lcom/transsion/camera/app/common/mode/IImageProcessor;->addCaptureThumbInfo(Lcom/transsion/camera/app/common/mode/CaptureThumbInfo;)V

    :cond_34
    return-void
.end method

.method public pause()V
    .registers 3

    .line 282
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "mode pause"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 283
    iput-boolean v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mFirstSteadyFrameCome:Z

    .line 284
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mImageProcessor:Lcom/transsion/camera/app/common/mode/IImageProcessor;

    invoke-interface {v0}, Lcom/transsion/camera/app/common/mode/IImageProcessor;->pause()V

    .line 285
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mGpuAlgorithmManager:Lcom/transsion/camera/app/common/preview/algorithm/GpuAlgorithmManager;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/preview/algorithm/GpuAlgorithmManager;->onModePaused()V

    .line 286
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CameraMode;->unlockAeAfIfNeeded()V

    .line 288
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {v0}, Lcom/transsion/camera/app/common/IAppUI;->onModePaused()V

    .line 289
    invoke-static {}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->getInstance()Lcom/transsion/camera/utils/analytics/AnalyticsUtils;

    move-result-object v0

    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mName:Ljava/lang/String;

    invoke-virtual {v0, p0}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->setModePauseTime(Ljava/lang/String;)V

    return-void
.end method

.method public performAeAfLock(Lcom/transsion/camera/app/common/mode/IAeAfLock$State;Z)V
    .registers 4

    .line 965
    sget-object v0, Lcom/transsion/camera/app/common/mode/CameraMode$2;->$SwitchMap$com$transsion$camera$app$common$mode$IAeAfLock$State:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_21

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1d

    const/4 v0, 0x3

    if-eq p1, v0, :cond_19

    const/4 v0, 0x4

    if-eq p1, v0, :cond_15

    return-void

    .line 976
    :cond_15
    invoke-virtual {p0, p2}, Lcom/transsion/camera/app/common/mode/CameraMode;->lock3A(Z)V

    return-void

    .line 973
    :cond_19
    invoke-virtual {p0, p2}, Lcom/transsion/camera/app/common/mode/CameraMode;->lockAeAf(Z)V

    return-void

    .line 970
    :cond_1d
    invoke-virtual {p0, p2}, Lcom/transsion/camera/app/common/mode/CameraMode;->lockAf(Z)V

    return-void

    .line 967
    :cond_21
    invoke-virtual {p0, p2}, Lcom/transsion/camera/app/common/mode/CameraMode;->lockAe(Z)V

    return-void
.end method

.method protected final pocketScreen()Z
    .registers 2

    const/4 v0, 0x6

    .line 156
    iget p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mScreenFormType:I

    if-ne v0, p0, :cond_7

    const/4 p0, 0x1

    return p0

    :cond_7
    const/4 p0, 0x0

    return p0
.end method

.method public recentAppsStart()V
    .registers 1

    return-void
.end method

.method protected registerKeyToMonitor(Ljava/lang/String;)V
    .registers 3

    .line 418
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    invoke-interface {v0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->getStatusMonitor()Lcom/transsion/camera/app/common/setting/StatusMonitor;

    move-result-object v0

    .line 419
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    invoke-virtual {v0, p1, p0}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->registerValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    return-void
.end method

.method public removeCaptureInfo(Z)V
    .registers 2

    return-void
.end method

.method public reopenForNormalOrFromSat(Ljava/lang/String;ZLcom/transsion/camera/app/common/setting/ISettingManager$SettingController;)Z
    .registers 5

    .line 1072
    invoke-direct {p0, p1, p3}, Lcom/transsion/camera/app/common/mode/CameraMode;->needReopenFromWide(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;)Z

    move-result v0

    .line 1073
    invoke-direct {p0, p1, p2, p3}, Lcom/transsion/camera/app/common/mode/CameraMode;->needReopenFromSat(Ljava/lang/String;ZLcom/transsion/camera/app/common/setting/ISettingManager$SettingController;)Z

    move-result p0

    if-nez v0, :cond_f

    if-eqz p0, :cond_d

    goto :goto_f

    :cond_d
    const/4 p0, 0x0

    return p0

    :cond_f
    :goto_f
    const/4 p0, 0x1

    return p0
.end method

.method public resetBgEnable()V
    .registers 1

    .line 1104
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mImageProcessor:Lcom/transsion/camera/app/common/mode/IImageProcessor;

    if-eqz p0, :cond_7

    .line 1105
    invoke-interface {p0}, Lcom/transsion/camera/app/common/mode/IImageProcessor;->resetBgEnable()V

    :cond_7
    return-void
.end method

.method public resume()V
    .registers 3

    .line 269
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "mode resume"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 270
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/transsion/camera/utils/FeatureSupport;->isSupportPortraitArchitecture(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 271
    invoke-static {}, Lcom/transsion/camera/app/proxy/ProxyManager;->getPortrait()Lcom/transsion/camera/app/proxy/portrait/IPortraitProxy;

    move-result-object v0

    invoke-interface {v0}, Lcom/transsion/camera/app/proxy/portrait/IPortraitProxy;->update()V

    .line 273
    :cond_16
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mImageProcessor:Lcom/transsion/camera/app/common/mode/IImageProcessor;

    invoke-interface {v0}, Lcom/transsion/camera/app/common/mode/IImageProcessor;->resume()V

    .line 274
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mGpuAlgorithmManager:Lcom/transsion/camera/app/common/preview/algorithm/GpuAlgorithmManager;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/preview/algorithm/GpuAlgorithmManager;->onModeResumed()V

    .line 275
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CameraMode;->unlockAeAfIfNeeded()V

    .line 276
    invoke-static {}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->getInstance()Lcom/transsion/camera/utils/analytics/AnalyticsUtils;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->resetFocus()V

    .line 277
    invoke-static {}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->getInstance()Lcom/transsion/camera/utils/analytics/AnalyticsUtils;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->setModeResumeTime()V

    return-void
.end method

.method public setCallingPackage(Ljava/lang/String;)V
    .registers 2

    return-void
.end method

.method public setGotoActivityListener(Lcom/transsion/camera/app/common/IAppUIListener$IGotoActivityListener;)V
    .registers 2

    .line 409
    iput-object p1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mGotoActivityListener:Lcom/transsion/camera/app/common/IAppUIListener$IGotoActivityListener;

    return-void
.end method

.method public setInternalStorageOperator(Lcom/transsion/camera/app/common/storage/IStorage$IStorageOperator;)V
    .registers 2

    .line 638
    iput-object p1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mInternalStorageOperator:Lcom/transsion/camera/app/common/storage/IStorage$IStorageOperator;

    return-void
.end method

.method public setModeBgCaptureListener(Lcom/transsion/camera/app/common/IApp$ModeBgCaptureListener;)V
    .registers 2

    return-void
.end method

.method public setModeChangeFlag(Z)V
    .registers 2

    return-void
.end method

.method public setModeSettingUISpec(Lcom/transsion/camera/app/common/ModeSettingUISpec;)V
    .registers 2

    .line 147
    iput-object p1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mModeSettingUISpec:Lcom/transsion/camera/app/common/ModeSettingUISpec;

    return-void
.end method

.method public setModeStatusListener(Lcom/transsion/camera/app/common/IApp$ModeAndSettingStatusListener;)V
    .registers 2

    .line 386
    iput-object p1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mModeStatusListener:Lcom/transsion/camera/app/common/IApp$ModeAndSettingStatusListener;

    return-void
.end method

.method public setQuickCaptureManager(Lcom/transsion/camera/app/common/provider/QuickCaptureManager;)V
    .registers 2

    .line 1115
    iput-object p1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mQuickCaptureManager:Lcom/transsion/camera/app/common/provider/QuickCaptureManager;

    return-void
.end method

.method public setSupportQuickCapture(Z)V
    .registers 2

    .line 1140
    iput-boolean p1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mIsCurModeSupportQC:Z

    return-void
.end method

.method public setSurfaceStatusListener(Lcom/transsion/camera/app/common/IAppUIListener$ISurfaceStatusListener;)V
    .registers 2

    return-void
.end method

.method public setThumbnailTransitionManager(Lcom/transsion/camera/app/common/thumbnailtransition/IThumbnailTransition;)V
    .registers 2

    return-void
.end method

.method public stop()V
    .registers 1

    return-void
.end method

.method protected stopFaceDetectionIfNeeded()V
    .registers 3

    .line 954
    invoke-static {}, Lcom/transsion/camera/utils/FeatureSupport;->isLowPlatform()Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 955
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "stopFaceDetectionIfNeeded"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 956
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mCameraDeviceControl:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    if-eqz v0, :cond_1b

    .line 957
    invoke-virtual {v0}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->stopFaceDetection()V

    .line 958
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mCameraDeviceControl:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    const-string v0, "key_face_detection"

    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->requestChangeSettingValue(Ljava/lang/String;)V

    :cond_1b
    return-void
.end method

.method public supportPostAlgo()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public supportPostAlgoDeferRequest()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public supportedLockState()Lcom/transsion/camera/app/common/mode/IAeAfLock$State;
    .registers 2

    .line 881
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mModeSettingUISpec:Lcom/transsion/camera/app/common/ModeSettingUISpec;

    if-eqz v0, :cond_d

    .line 882
    invoke-virtual {v0}, Lcom/transsion/camera/app/common/ModeSettingUISpec;->aeAfLockSupport()Z

    move-result v0

    if-nez v0, :cond_d

    .line 883
    sget-object p0, Lcom/transsion/camera/app/common/mode/IAeAfLock$State;->UNLOCK:Lcom/transsion/camera/app/common/mode/IAeAfLock$State;

    return-object p0

    .line 885
    :cond_d
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CameraMode;->isCameraFacingBack()Z

    move-result v0

    if-eqz v0, :cond_18

    .line 886
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CameraMode;->supportedLockStateBackCamera()Lcom/transsion/camera/app/common/mode/IAeAfLock$State;

    move-result-object p0

    return-object p0

    .line 888
    :cond_18
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CameraMode;->supportedLockStateFrontCamera()Lcom/transsion/camera/app/common/mode/IAeAfLock$State;

    move-result-object p0

    return-object p0
.end method

.method protected supportedLockStateBackCamera()Lcom/transsion/camera/app/common/mode/IAeAfLock$State;
    .registers 2

    .line 900
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CameraMode;->aeLockSupport()Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CameraMode;->afLockSupport()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 901
    sget-object p0, Lcom/transsion/camera/app/common/mode/IAeAfLock$State;->AE_AF_LOCK:Lcom/transsion/camera/app/common/mode/IAeAfLock$State;

    return-object p0

    .line 903
    :cond_f
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CameraMode;->aeLockSupport()Z

    move-result v0

    if-eqz v0, :cond_1e

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CameraMode;->afLockSupport()Z

    move-result p0

    if-nez p0, :cond_1e

    .line 904
    sget-object p0, Lcom/transsion/camera/app/common/mode/IAeAfLock$State;->AE_LOCK:Lcom/transsion/camera/app/common/mode/IAeAfLock$State;

    return-object p0

    .line 906
    :cond_1e
    sget-object p0, Lcom/transsion/camera/app/common/mode/IAeAfLock$State;->UNLOCK:Lcom/transsion/camera/app/common/mode/IAeAfLock$State;

    return-object p0
.end method

.method protected supportedLockStateFrontCamera()Lcom/transsion/camera/app/common/mode/IAeAfLock$State;
    .registers 2

    .line 931
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CameraMode;->aeLockSupport()Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CameraMode;->afLockSupport()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 932
    sget-object p0, Lcom/transsion/camera/app/common/mode/IAeAfLock$State;->AE_AF_LOCK:Lcom/transsion/camera/app/common/mode/IAeAfLock$State;

    return-object p0

    .line 934
    :cond_f
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CameraMode;->aeLockSupport()Z

    move-result v0

    if-eqz v0, :cond_1e

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CameraMode;->afLockSupport()Z

    move-result p0

    if-nez p0, :cond_1e

    .line 935
    sget-object p0, Lcom/transsion/camera/app/common/mode/IAeAfLock$State;->AE_LOCK:Lcom/transsion/camera/app/common/mode/IAeAfLock$State;

    return-object p0

    .line 937
    :cond_1e
    sget-object p0, Lcom/transsion/camera/app/common/mode/IAeAfLock$State;->UNLOCK:Lcom/transsion/camera/app/common/mode/IAeAfLock$State;

    return-object p0
.end method

.method public unInit()V
    .registers 3

    .line 252
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "mode unInit"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 253
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {v0}, Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;->hideAllHints()V

    .line 254
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {v0, p0}, Lcom/transsion/camera/app/common/IAppUIControl$IShutterControl;->unRegisterShutterListener(Lcom/transsion/camera/app/common/IAppUIListener$IShutterResponseListener;)V

    .line 255
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {v0, p0}, Lcom/transsion/camera/app/common/IAppUI;->unregisterScreenFormListener(Lcom/transsion/camera/app/common/IScreenFormControl;)V

    .line 256
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mGpuAlgorithmManager:Lcom/transsion/camera/app/common/preview/algorithm/GpuAlgorithmManager;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/preview/algorithm/GpuAlgorithmManager;->onModeUnInit()V

    const/4 v0, 0x0

    .line 257
    iput-boolean v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mIsValid:Z

    .line 258
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mImageProcessor:Lcom/transsion/camera/app/common/mode/IImageProcessor;

    invoke-interface {p0}, Lcom/transsion/camera/app/common/mode/IImageProcessor;->unInit()V

    .line 259
    invoke-static {}, Lcom/transsion/camera/app/common/mode/AppUICache;->clearCache()V

    return-void
.end method

.method protected unRegisterKeyToMonitor(Ljava/lang/String;)V
    .registers 3

    .line 423
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    invoke-interface {v0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->getStatusMonitor()Lcom/transsion/camera/app/common/setting/StatusMonitor;

    move-result-object v0

    .line 424
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    invoke-virtual {v0, p1, p0}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->unregisterValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    return-void
.end method

.method protected unlockAeAfIfNeeded()V
    .registers 4

    .line 941
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mLockState:Lcom/transsion/camera/app/common/mode/IAeAfLock$State;

    if-eqz v0, :cond_43

    sget-object v1, Lcom/transsion/camera/app/common/mode/IAeAfLock$State;->UNLOCK:Lcom/transsion/camera/app/common/mode/IAeAfLock$State;

    if-eq v0, v1, :cond_43

    const/4 v1, 0x0

    .line 942
    invoke-virtual {p0, v0, v1}, Lcom/transsion/camera/app/common/mode/CameraMode;->performAeAfLock(Lcom/transsion/camera/app/common/mode/IAeAfLock$State;Z)V

    .line 943
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    const/16 v1, 0x6f

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    .line 944
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    invoke-interface {v0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->getStatusMonitor()Lcom/transsion/camera/app/common/setting/StatusMonitor;

    move-result-object v0

    const-string v1, "key_ae_af_lock_state"

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->getStatusResponder(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;

    move-result-object v0

    const-string v2, "off"

    .line 945
    invoke-virtual {v0, v1, v2}, Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;->statusChanged(Ljava/lang/String;Ljava/lang/Object;)V

    .line 946
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    invoke-interface {v0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->getStatusMonitor()Lcom/transsion/camera/app/common/setting/StatusMonitor;

    move-result-object v0

    const-string v1, "exposure_hide"

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->getStatusResponder(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;

    move-result-object v0

    .line 947
    invoke-virtual {v0, v1, v1}, Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;->statusChanged(Ljava/lang/String;Ljava/lang/Object;)V

    .line 948
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    invoke-interface {p0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->getStatusMonitor()Lcom/transsion/camera/app/common/setting/StatusMonitor;

    move-result-object p0

    const-string v0, "key_reset_exposure"

    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->getStatusResponder(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;

    move-result-object p0

    const/4 v1, 0x0

    .line 949
    invoke-virtual {p0, v0, v1}, Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;->statusChanged(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_43
    return-void
.end method

.method public updateCapturedNumber(I)V
    .registers 2

    return-void
.end method

.method public updateCurrentCameraId(Ljava/lang/String;)V
    .registers 5

    .line 625
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mode updateCurrentCameraId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 626
    iput-object p1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mCurrentCameraId:Ljava/lang/String;

    .line 627
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mImageProcessor:Lcom/transsion/camera/app/common/mode/IImageProcessor;

    invoke-interface {p0, p1}, Lcom/transsion/camera/app/common/mode/IImageProcessor;->updateCameraId(Ljava/lang/String;)V

    return-void
.end method

.method public updateFastThumbSurface(Landroid/util/Size;)Lcom/transsion/camera/app/common/mode/CaptureSurface;
    .registers 2

    const/4 p0, 0x0

    return-object p0
.end method

.method public updatePicSurface()Lcom/transsion/camera/app/common/mode/CaptureSurface;
    .registers 1

    const/4 p0, 0x0

    return-object p0
.end method

.method public updatePostAlgoPicSurface()Lcom/transsion/camera/app/common/mode/CaptureSurface;
    .registers 1

    const/4 p0, 0x0

    return-object p0
.end method

.method public updatePreviewSize(Landroid/util/Size;)V
    .registers 2

    .line 706
    iput-object p1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mPreviewSize:Landroid/util/Size;

    return-void
.end method

.method public updatePreviewSize(Landroid/util/Size;Landroid/util/Size;)V
    .registers 3

    .line 720
    invoke-virtual {p0, p2}, Lcom/transsion/camera/app/common/mode/CameraMode;->updatePreviewSize(Landroid/util/Size;)V

    .line 721
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mGpuAlgorithmManager:Lcom/transsion/camera/app/common/preview/algorithm/GpuAlgorithmManager;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/camera/app/common/preview/algorithm/GpuAlgorithmManager;->updatePreviewSize(Landroid/util/Size;Landroid/util/Size;)V

    return-void
.end method

.method public updatePreviewViewType(Lcom/transsion/camera/utils/SettingInfo$PreviewViewType;)V
    .registers 2

    return-void
.end method

.method public updateQcomJpegPicSurface()Lcom/transsion/camera/app/common/mode/CaptureSurface;
    .registers 1

    const/4 p0, 0x0

    return-object p0
.end method

.method public updateQcomPicSurface()Lcom/transsion/camera/app/common/mode/CaptureSurface;
    .registers 1

    const/4 p0, 0x0

    return-object p0
.end method

.method public updateQcomRawSurface(I)[Lcom/transsion/camera/app/common/mode/CaptureSurface;
    .registers 2

    const/4 p0, 0x0

    return-object p0
.end method

.method public updateStorageOperator(Lcom/transsion/camera/app/common/storage/IStorage$IStorageOperator;I)V
    .registers 4

    .line 632
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mImageProcessor:Lcom/transsion/camera/app/common/mode/IImageProcessor;

    invoke-interface {v0, p1, p2}, Lcom/transsion/camera/app/common/mode/IImageProcessor;->updateStorageOperator(Lcom/transsion/camera/app/common/storage/IStorage$IStorageOperator;I)V

    .line 633
    iput-object p1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mStorageOperator:Lcom/transsion/camera/app/common/storage/IStorage$IStorageOperator;

    return-void
.end method

.method public updateThumbnailSurface(Landroid/util/Size;)Lcom/transsion/camera/app/common/mode/CaptureSurface;
    .registers 2

    const/4 p0, 0x0

    return-object p0
.end method

.method public updateYuvPicSurface()Lcom/transsion/camera/app/common/mode/CaptureSurface;
    .registers 1

    const/4 p0, 0x0

    return-object p0
.end method
