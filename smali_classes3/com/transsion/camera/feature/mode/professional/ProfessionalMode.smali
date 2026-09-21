.class public Lcom/transsion/camera/feature/mode/professional/ProfessionalMode;
.super Lcom/transsion/camera/app/common/mode/CommonPhotoMode;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/app/common/mode/IModeNotifyCameraOperateActionCallback;
.implements Lcom/transsion/camera/feature/mode/professional/ui/CapturingProgressView$ProgressCallBack;
.implements Lcom/transsion/camera/app/common/IAppUIListener$IPreviewGestureListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/feature/mode/professional/ProfessionalMode$MyHandler;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/transsion/camera/app/common/mode/CommonPhotoMode;",
        "Lcom/transsion/camera/app/common/mode/IModeNotifyCameraOperateActionCallback;",
        "Lcom/transsion/camera/feature/mode/professional/ui/CapturingProgressView$ProgressCallBack;",
        "Lcom/transsion/camera/app/common/IAppUIListener$IPreviewGestureListener;"
    }
.end annotation


# static fields
.field private static final EXPOSURE_TIME_ONE_MILLI_SECOND:J = 0xf4240L

.field public static final GESTURE_PRIORITY:I = 0x9

.field private static final LIMIT_ISO:I = 0x190

.field private static final LIMIT_SHUTTER_TIME_MAX:I = 0x5f5e100

.field private static final LIMIT_SHUTTER_TIME_MIN:I = 0x1e84800

.field private static final MSG_PRO_PARA_POST_RESTRICTION:I = 0x3e8


# instance fields
.field private mCaptureProcessing:Z

.field private mCaptureStopListener:Landroid/view/View$OnClickListener;

.field private mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

.field private mExposureTimeValue:J

.field private final mFrameResultCallback:Lcom/transsion/camera/adapter/CameraProxy$FrameResultCallback;

.field private mHandler:Landroid/os/Handler;

.field private mISOLimit:Z

.field private mISOValue:I

.field private mInstantZoomRatios:[Ljava/lang/String;

.field private mIsCapturing:Z

.field private mIsPopSettingShow:Z

.field private mIsSupportSmileDetection:Z

.field private mIsZoomScaling:Z

.field private mModeUIManager:Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalUIManager;

.field private mNeedSmartDenoise:Z

.field private mPreviewRect:Landroid/graphics/Rect;

.field mPreviewRectListener:Lcom/transsion/camera/app/common/IAppUIListener$IPreviewRectListener;

.field private mProZoomTickRingMarginOffset:I

.field private mProZoomTickRingMarginOffset1_1:I

.field private mSettingProvider:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingProvide;

.field private mSettingUIProvider:Lcom/transsion/camera/app/common/provider/SettingUIProvider;

.field private mSupportFastLaunch:Z

.field private mUpdateTopbarAndPopSetting:Z


# direct methods
.method public static synthetic $r8$lambda$Hx16ePk4htTOetfy3DDMZmjHEVk(Lcom/transsion/camera/feature/mode/professional/ProfessionalMode;Landroid/hardware/camera2/CaptureResult;Landroid/util/Size;Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;)V
    .registers 4

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lcom/transsion/camera/feature/mode/professional/ProfessionalMode;->lambda$new$0(Landroid/hardware/camera2/CaptureResult;Landroid/util/Size;Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetmPreviewRect(Lcom/transsion/camera/feature/mode/professional/ProfessionalMode;)Landroid/graphics/Rect;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/professional/ProfessionalMode;->mPreviewRect:Landroid/graphics/Rect;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mcancelCapture(Lcom/transsion/camera/feature/mode/professional/ProfessionalMode;)Z
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/professional/ProfessionalMode;->cancelCapture()Z

    move-result p0

    return p0
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 4

    .line 131
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 79
    iput-boolean p1, p0, Lcom/transsion/camera/feature/mode/professional/ProfessionalMode;->mNeedSmartDenoise:Z

    .line 80
    iput-boolean p1, p0, Lcom/transsion/camera/feature/mode/professional/ProfessionalMode;->mIsCapturing:Z

    const-wide/16 v0, 0x0

    .line 85
    iput-wide v0, p0, Lcom/transsion/camera/feature/mode/professional/ProfessionalMode;->mExposureTimeValue:J

    .line 86
    iput p1, p0, Lcom/transsion/camera/feature/mode/professional/ProfessionalMode;->mISOValue:I

    .line 89
    iput-boolean p1, p0, Lcom/transsion/camera/feature/mode/professional/ProfessionalMode;->mCaptureProcessing:Z

    .line 90
    iput-boolean p1, p0, Lcom/transsion/camera/feature/mode/professional/ProfessionalMode;->mIsSupportSmileDetection:Z

    const/4 v0, 0x1

    .line 91
    iput-boolean v0, p0, Lcom/transsion/camera/feature/mode/professional/ProfessionalMode;->mISOLimit:Z

    .line 93
    iput-boolean p1, p0, Lcom/transsion/camera/feature/mode/professional/ProfessionalMode;->mUpdateTopbarAndPopSetting:Z

    .line 95
    iput-boolean p1, p0, Lcom/transsion/camera/feature/mode/professional/ProfessionalMode;->mSupportFastLaunch:Z

    .line 97
    iput-boolean p1, p0, Lcom/transsion/camera/feature/mode/professional/ProfessionalMode;->mIsZoomScaling:Z

    .line 99
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/transsion/camera/feature/mode/professional/ProfessionalMode;->mPreviewRect:Landroid/graphics/Rect;

    .line 180
    new-instance p1, Lcom/transsion/camera/feature/mode/professional/ProfessionalMode$1;

    invoke-direct {p1, p0}, Lcom/transsion/camera/feature/mode/professional/ProfessionalMode$1;-><init>(Lcom/transsion/camera/feature/mode/professional/ProfessionalMode;)V

    iput-object p1, p0, Lcom/transsion/camera/feature/mode/professional/ProfessionalMode;->mPreviewRectListener:Lcom/transsion/camera/app/common/IAppUIListener$IPreviewRectListener;

    .line 831
    new-instance p1, Lcom/transsion/camera/feature/mode/professional/ProfessionalMode$2;

    invoke-direct {p1, p0}, Lcom/transsion/camera/feature/mode/professional/ProfessionalMode$2;-><init>(Lcom/transsion/camera/feature/mode/professional/ProfessionalMode;)V

    iput-object p1, p0, Lcom/transsion/camera/feature/mode/professional/ProfessionalMode;->mCaptureStopListener:Landroid/view/View$OnClickListener;

    .line 840
    new-instance p1, Lcom/transsion/camera/feature/mode/professional/ProfessionalMode$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lcom/transsion/camera/feature/mode/professional/ProfessionalMode$$ExternalSyntheticLambda0;-><init>(Lcom/transsion/camera/feature/mode/professional/ProfessionalMode;)V

    iput-object p1, p0, Lcom/transsion/camera/feature/mode/professional/ProfessionalMode;->mFrameResultCallback:Lcom/transsion/camera/adapter/CameraProxy$FrameResultCallback;

    return-void
.end method

.method static synthetic access$000(Lcom/transsion/camera/feature/mode/professional/ProfessionalMode;)Lcom/transsion/camera/app/common/setting/StatusMonitor;
    .registers 1

    .line 70
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    return-object p0
.end method

.method static synthetic access$100(Lcom/transsion/camera/feature/mode/professional/ProfessionalMode;)Lcom/transsion/camera/utils/debug/Log$Tag;
    .registers 1

    .line 70
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-object p0
.end method

.method private cancelCapture()Z
    .registers 6

    .line 803
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cancelCapture mCaptureProcessing:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/transsion/camera/feature/mode/professional/ProfessionalMode;->mCaptureProcessing:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 804
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/professional/ProfessionalMode;->isNeedCancelCaptureFun()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_83

    iget-boolean v0, p0, Lcom/transsion/camera/feature/mode/professional/ProfessionalMode;->mCaptureProcessing:Z

    if-eqz v0, :cond_83

    .line 805
    iput-boolean v1, p0, Lcom/transsion/camera/feature/mode/professional/ProfessionalMode;->mCaptureProcessing:Z

    .line 806
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/professional/ProfessionalMode;->mModeUIManager:Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalUIManager;

    if-eqz v0, :cond_2c

    .line 807
    invoke-virtual {v0}, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalUIManager;->resetCapturingUI()V

    .line 809
    :cond_2c
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/transsion/camera/feature/mode/professional/R$bool;->pro_mode_cancel_capture_reconfigurestream:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_40

    .line 812
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mCameraDeviceControl:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->reConfigureSession()V

    goto :goto_4c

    .line 814
    :cond_40
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mCameraDeviceControl:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->cancelTakePicture()V

    .line 815
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    const/16 v2, 0xe

    invoke-interface {v0, v2}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    .line 817
    :goto_4c
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->resetCaptureData()V

    .line 818
    invoke-direct {p0, v1}, Lcom/transsion/camera/feature/mode/professional/ProfessionalMode;->refreshShutterUI(Z)V

    .line 819
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    const/16 v2, 0x5b

    invoke-interface {v0, v2}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    .line 820
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mStatusResponder:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;

    const-string v2, "capture_state"

    const-string v3, "capture_end"

    invoke-virtual {v0, v2, v3}, Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;->statusChanged(Ljava/lang/String;Ljava/lang/Object;)V

    .line 821
    invoke-static {}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->getInstance()Lcom/transsion/camera/utils/analytics/AnalyticsUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->resetShot2ShotCount()V

    .line 822
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mModeStatusListener:Lcom/transsion/camera/app/common/IApp$ModeAndSettingStatusListener;

    sget-object v2, Lcom/transsion/camera/app/common/IApp$State;->STATE_IDLE:Lcom/transsion/camera/app/common/IApp$State;

    invoke-interface {v0, v2}, Lcom/transsion/camera/app/common/IApp$ModeAndSettingStatusListener;->onStatusChanged(Lcom/transsion/camera/app/common/IApp$State;)V

    .line 823
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    const/16 v2, 0x21

    invoke-interface {v0, v2}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    .line 824
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    const/4 v2, -0x1

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v0, v4, v2, v3}, Lcom/transsion/camera/app/common/IAppUIControl$IUIStateControl;->updateUIState(IILjava/lang/String;)V

    .line 825
    invoke-direct {p0, v1, v4}, Lcom/transsion/camera/feature/mode/professional/ProfessionalMode;->notifyToProfessionUI(IZ)V

    return v4

    :cond_83
    return v1
.end method

.method private confirmCapture(II)Z
    .registers 7

    .line 784
    invoke-super {p0, p1, p2}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->onShutterClick(II)Z

    move-result p1

    .line 785
    iget-object p2, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "confirmCapture mCaptureProcessing:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/transsion/camera/feature/mode/professional/ProfessionalMode;->mCaptureProcessing:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    if-eqz p1, :cond_55

    .line 786
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/professional/ProfessionalMode;->isNeedCancelCaptureFun()Z

    move-result p2

    if-eqz p2, :cond_55

    iget-boolean p2, p0, Lcom/transsion/camera/feature/mode/professional/ProfessionalMode;->mCaptureProcessing:Z

    if-nez p2, :cond_55

    const/4 p2, 0x1

    .line 787
    iput-boolean p2, p0, Lcom/transsion/camera/feature/mode/professional/ProfessionalMode;->mCaptureProcessing:Z

    .line 788
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    const/16 v1, 0x5a

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    .line 789
    invoke-direct {p0, p2}, Lcom/transsion/camera/feature/mode/professional/ProfessionalMode;->refreshShutterUI(Z)V

    .line 790
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mModeStatusListener:Lcom/transsion/camera/app/common/IApp$ModeAndSettingStatusListener;

    sget-object v1, Lcom/transsion/camera/app/common/IApp$State;->STATE_RUNNING:Lcom/transsion/camera/app/common/IApp$State;

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/IApp$ModeAndSettingStatusListener;->onStatusChanged(Lcom/transsion/camera/app/common/IApp$State;)V

    const/4 v0, 0x0

    .line 791
    invoke-direct {p0, p2, v0}, Lcom/transsion/camera/feature/mode/professional/ProfessionalMode;->notifyToProfessionUI(IZ)V

    .line 792
    iget-object p2, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    const/4 v0, -0x1

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-interface {p2, v2, v0, v1}, Lcom/transsion/camera/app/common/IAppUIControl$IUIStateControl;->updateUIState(IILjava/lang/String;)V

    .line 794
    iget-wide v0, p0, Lcom/transsion/camera/feature/mode/professional/ProfessionalMode;->mExposureTimeValue:J

    const-wide/32 v2, 0xf4240

    div-long/2addr v0, v2

    .line 795
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/professional/ProfessionalMode;->mModeUIManager:Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalUIManager;

    if-eqz p0, :cond_55

    .line 796
    invoke-virtual {p0, v0, v1}, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalUIManager;->startCapturingBeginAnim(J)V

    :cond_55
    return p1
.end method

.method private getFlashKey()Ljava/lang/String;
    .registers 2

    .line 638
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    const-string v0, "key_flash_facade"

    invoke-interface {p0, v0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_f

    return-object v0

    .line 641
    :cond_f
    const-string p0, "key_flash"

    return-object p0
.end method

.method private getFlashRestrictionValue()Ljava/lang/String;
    .registers 9

    .line 645
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/professional/ProfessionalMode;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/professional/ProfessionalMode;->getFlashKey()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/transsion/camera/feature/mode/professional/ProfessionalMode;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    invoke-interface {v4}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->getCameraId()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/transsion/camera/adapter/CameraInfoUtil;->getFacing(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "PHOTO"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/transsion/camera/app/common/storage/DataStore;->getCameraScope(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "off"

    invoke-virtual {v0, v1, v3, v2}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 646
    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    const-string v2, "key_exposure_time"

    invoke-interface {v1, v2}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 647
    iget-object v2, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    const-string v4, "key_iso"

    invoke-interface {v2, v4}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 648
    iget-object v4, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    const-string v5, "Battery"

    invoke-interface {v4, v5}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->queryExtStatus(Ljava/lang/String;)I

    move-result v4

    const-wide/16 v5, -0x1

    .line 650
    invoke-static {v5, v6}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v7

    invoke-static {v1, v7}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_5e

    .line 651
    invoke-static {v5, v6}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5c

    goto :goto_5e

    :cond_5c
    const/4 v1, 0x0

    goto :goto_5f

    :cond_5e
    :goto_5e
    const/4 v1, 0x1

    .line 652
    :goto_5f
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const-string v5, "mutual_off"

    if-nez v2, :cond_71

    if-eqz v1, :cond_6b

    :goto_69
    move-object v3, v5

    goto :goto_74

    :cond_6b
    const/4 v1, 0x2

    if-ne v4, v1, :cond_6f

    goto :goto_74

    :cond_6f
    move-object v3, v0

    goto :goto_74

    :cond_71
    if-eqz v1, :cond_74

    goto :goto_69

    .line 668
    :cond_74
    :goto_74
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getFlashRestrictionValue, flashValue: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-object v3
.end method

.method private handleHideAction()V
    .registers 5

    const/4 v0, 0x0

    .line 757
    iput-boolean v0, p0, Lcom/transsion/camera/feature/mode/professional/ProfessionalMode;->mIsPopSettingShow:Z

    .line 758
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/professional/ProfessionalMode;->mModeUIManager:Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalUIManager;

    invoke-virtual {v1, v0}, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalUIManager;->setPopSettingShow(Z)V

    .line 759
    iget-boolean v1, p0, Lcom/transsion/camera/feature/mode/professional/ProfessionalMode;->mCaptureProcessing:Z

    const/4 v2, 0x1

    if-nez v1, :cond_1b

    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {v1}, Lcom/transsion/camera/app/common/IAppUIControl$IUIStateControl;->getCurrentUIState()I

    move-result v1

    const/4 v3, 0x2

    if-eq v1, v3, :cond_1b

    .line 760
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/professional/ProfessionalMode;->mModeUIManager:Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalUIManager;

    invoke-virtual {v1, v0, v2}, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalUIManager;->updateUIState(IZ)V

    .line 762
    :cond_1b
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/professional/ProfessionalMode;->mModeUIManager:Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalUIManager;

    invoke-virtual {p0, v2}, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalUIManager;->setGraduationViewEnable(Z)V

    return-void
.end method

.method private handleShowAction()V
    .registers 3

    const/4 v0, 0x1

    .line 766
    iput-boolean v0, p0, Lcom/transsion/camera/feature/mode/professional/ProfessionalMode;->mIsPopSettingShow:Z

    .line 767
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/professional/ProfessionalMode;->mModeUIManager:Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalUIManager;

    invoke-virtual {v1, v0}, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalUIManager;->setPopSettingShow(Z)V

    .line 768
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/professional/ProfessionalMode;->mModeUIManager:Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalUIManager;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalUIManager;->setSettingBarVisible(I)V

    .line 769
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/professional/ProfessionalMode;->mModeUIManager:Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalUIManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalUIManager;->hideSeekBarIfNeed(Z)V

    .line 770
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/professional/ProfessionalMode;->mModeUIManager:Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalUIManager;

    invoke-virtual {p0, v1}, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalUIManager;->hide(Z)V

    return-void
.end method

.method private hideSeekBar()V
    .registers 3

    .line 205
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/professional/ProfessionalMode;->mModeUIManager:Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalUIManager;

    if-eqz v0, :cond_d

    const/4 v1, 0x1

    .line 206
    invoke-virtual {v0, v1}, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalUIManager;->hideSeekBarIfNeed(Z)V

    .line 207
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/professional/ProfessionalMode;->mModeUIManager:Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalUIManager;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalUIManager;->dismissPopup()Z

    :cond_d
    return-void
.end method

.method private isNeedCancelCaptureFun()Z
    .registers 5

    .line 625
    iget-wide v0, p0, Lcom/transsion/camera/feature/mode/professional/ProfessionalMode;->mExposureTimeValue:J

    const-wide/32 v2, 0x3b9aca00

    cmp-long p0, v0, v2

    if-ltz p0, :cond_b

    const/4 p0, 0x1

    return p0

    :cond_b
    const/4 p0, 0x0

    return p0
.end method

.method private synthetic lambda$new$0(Landroid/hardware/camera2/CaptureResult;Landroid/util/Size;Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;)V
    .registers 8

    .line 842
    iget p2, p0, Lcom/transsion/camera/feature/mode/professional/ProfessionalMode;->mISOValue:I

    const/4 p3, -0x1

    if-ne p2, p3, :cond_11

    .line 843
    sget-object p2, Landroid/hardware/camera2/CaptureResult;->SENSOR_SENSITIVITY:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p1, p2}, Landroid/hardware/camera2/CaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    .line 849
    :cond_11
    iget-wide v0, p0, Lcom/transsion/camera/feature/mode/professional/ProfessionalMode;->mExposureTimeValue:J

    const-wide/16 v2, -0x1

    cmp-long p3, v0, v2

    if-nez p3, :cond_25

    .line 850
    sget-object p3, Landroid/hardware/camera2/CaptureResult;->SENSOR_EXPOSURE_TIME:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p1, p3}, Landroid/hardware/camera2/CaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 854
    :cond_25
    iget-boolean p1, p0, Lcom/transsion/camera/feature/mode/professional/ProfessionalMode;->mISOLimit:Z

    if-eqz p1, :cond_2d

    const/16 p1, 0x190

    if-lt p2, p1, :cond_36

    :cond_2d
    const-wide/32 p1, 0x5f5e100

    cmp-long p1, v0, p1

    if-gtz p1, :cond_36

    const/4 p1, 0x1

    goto :goto_37

    :cond_36
    const/4 p1, 0x0

    .line 855
    :goto_37
    iget-boolean p2, p0, Lcom/transsion/camera/feature/mode/professional/ProfessionalMode;->mNeedSmartDenoise:Z

    if-eq p1, p2, :cond_77

    .line 856
    iput-boolean p1, p0, Lcom/transsion/camera/feature/mode/professional/ProfessionalMode;->mNeedSmartDenoise:Z

    .line 857
    iget-boolean p2, p0, Lcom/transsion/camera/feature/mode/professional/ProfessionalMode;->mIsCapturing:Z

    xor-int/lit8 p3, p2, 0x1

    .line 858
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onFrameResult, SmartDenoise needSmartDenoise: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, ", needPostRestriction: "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    if-nez p2, :cond_77

    .line 861
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    iget-boolean p2, p0, Lcom/transsion/camera/feature/mode/professional/ProfessionalMode;->mNeedSmartDenoise:Z

    invoke-static {p2}, Lcom/transsion/camera/feature/mode/professional/ProfessionalRestriction;->getSwitchRelation(Z)Lcom/transsion/camera/app/common/relation/Relation;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->postRestriction(Lcom/transsion/camera/app/common/relation/Relation;)V

    .line 862
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mCameraDeviceControl:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    const-string p1, "key_setting_smart_denoise"

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->requestChangeSettingValueJustSelf([Ljava/lang/String;)V

    :cond_77
    return-void
.end method

.method private notifyToProfessionUI(IZ)V
    .registers 4

    .line 632
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/professional/ProfessionalMode;->mModeUIManager:Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalUIManager;

    if-eqz v0, :cond_b

    iget-boolean p0, p0, Lcom/transsion/camera/feature/mode/professional/ProfessionalMode;->mIsPopSettingShow:Z

    if-nez p0, :cond_b

    .line 633
    invoke-virtual {v0, p1, p2}, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalUIManager;->updateUIState(IZ)V

    :cond_b
    return-void
.end method

.method private declared-synchronized onCaptureDone()V
    .registers 4

    monitor-enter p0

    .line 873
    :try_start_1
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCaptureDone. mIsCapturing: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/transsion/camera/feature/mode/professional/ProfessionalMode;->mIsCapturing:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", mCaptureProcessing: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/transsion/camera/feature/mode/professional/ProfessionalMode;->mCaptureProcessing:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 874
    iget-boolean v0, p0, Lcom/transsion/camera/feature/mode/professional/ProfessionalMode;->mIsCapturing:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_55

    .line 875
    iput-boolean v1, p0, Lcom/transsion/camera/feature/mode/professional/ProfessionalMode;->mIsCapturing:Z

    .line 876
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/professional/ProfessionalMode;->mModeUIManager:Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalUIManager;

    invoke-virtual {v0, v1}, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalUIManager;->setCaptureState(Z)V

    .line 877
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    iget-boolean v2, p0, Lcom/transsion/camera/feature/mode/professional/ProfessionalMode;->mNeedSmartDenoise:Z

    invoke-static {v2}, Lcom/transsion/camera/feature/mode/professional/ProfessionalRestriction;->getSwitchRelation(Z)Lcom/transsion/camera/app/common/relation/Relation;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->postRestriction(Lcom/transsion/camera/app/common/relation/Relation;)V

    .line 878
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mCameraDeviceControl:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    if-eqz v0, :cond_4a

    .line 879
    const-string v2, "key_setting_smart_denoise"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->requestChangeSettingValueJustSelf([Ljava/lang/String;)V

    goto :goto_4a

    :catchall_48
    move-exception v0

    goto :goto_61

    .line 881
    :cond_4a
    :goto_4a
    iget-boolean v0, p0, Lcom/transsion/camera/feature/mode/professional/ProfessionalMode;->mCaptureProcessing:Z

    if-eqz v0, :cond_55

    .line 882
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mModeStatusListener:Lcom/transsion/camera/app/common/IApp$ModeAndSettingStatusListener;

    sget-object v2, Lcom/transsion/camera/app/common/IApp$State;->STATE_IDLE:Lcom/transsion/camera/app/common/IApp$State;

    invoke-interface {v0, v2}, Lcom/transsion/camera/app/common/IApp$ModeAndSettingStatusListener;->onStatusChanged(Lcom/transsion/camera/app/common/IApp$State;)V

    .line 885
    :cond_55
    invoke-direct {p0, v1}, Lcom/transsion/camera/feature/mode/professional/ProfessionalMode;->refreshShutterUI(Z)V

    .line 886
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/professional/ProfessionalMode;->mModeUIManager:Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalUIManager;

    if-eqz v0, :cond_5f

    .line 887
    invoke-virtual {v0}, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalUIManager;->resetCapturingUI()V
    :try_end_5f
    .catchall {:try_start_1 .. :try_end_5f} :catchall_48

    .line 889
    :cond_5f
    monitor-exit p0

    return-void

    :goto_61
    :try_start_61
    monitor-exit p0
    :try_end_62
    .catchall {:try_start_61 .. :try_end_62} :catchall_48

    throw v0
.end method

.method private declared-synchronized onCaptureStart()V
    .registers 3

    monitor-enter p0

    const/4 v0, 0x1

    .line 868
    :try_start_2
    iput-boolean v0, p0, Lcom/transsion/camera/feature/mode/professional/ProfessionalMode;->mIsCapturing:Z

    .line 869
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/professional/ProfessionalMode;->mModeUIManager:Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalUIManager;

    invoke-virtual {v1, v0}, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalUIManager;->setCaptureState(Z)V
    :try_end_9
    .catchall {:try_start_2 .. :try_end_9} :catchall_b

    .line 870
    monitor-exit p0

    return-void

    :catchall_b
    move-exception v0

    :try_start_c
    monitor-exit p0
    :try_end_d
    .catchall {:try_start_c .. :try_end_d} :catchall_b

    throw v0
.end method

.method private refreshShutterUI(Z)V
    .registers 6

    .line 610
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    const-string v1, "key_self_timer"

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 611
    const-string v1, "off"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    .line 613
    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/professional/ProfessionalMode;->getShutterTypeSelftimerOn()I

    move-result v1

    if-eqz p1, :cond_1e

    .line 615
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/professional/ProfessionalMode;->isNeedCancelCaptureFun()Z

    move-result v2

    if-eqz v2, :cond_1e

    const/16 v1, 0xd

    move v2, v1

    goto :goto_20

    :cond_1e
    const/16 v2, 0xc

    .line 619
    :goto_20
    iget-object v3, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {v3, v1}, Lcom/transsion/camera/app/common/IAppUIControl$IShutterControl;->setShutterTypeSelftimerOn(I)V

    .line 620
    iget-object v3, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {v3, v2}, Lcom/transsion/camera/app/common/IAppUIControl$IShutterControl;->setShutterTypeSelftimerOff(I)V

    .line 621
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    if-nez v0, :cond_2f

    goto :goto_30

    :cond_2f
    move v1, v2

    :goto_30
    xor-int/lit8 p1, p1, 0x1

    invoke-interface {p0, v1, p1}, Lcom/transsion/camera/app/common/IAppUIControl$IShutterControl;->updateShutterType(IZ)V

    return-void
.end method


# virtual methods
.method public buildCaptureInfo()Lcom/transsion/camera/app/common/mode/CaptureInfo;
    .registers 4

    .line 569
    new-instance v0, Lcom/transsion/camera/app/common/mode/CaptureInfo;

    iget v1, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mCaptureOrientation:I

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->needMirror()Z

    move-result v2

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->autoWatermark()Z

    move-result p0

    invoke-direct {v0, v1, v2, p0}, Lcom/transsion/camera/app/common/mode/CaptureInfo;-><init>(IZZ)V

    return-object v0
.end method

.method public bridge synthetic createImageProcessor()Lcom/transsion/camera/app/common/mode/IImageProcessor;
    .registers 1

    .line 70
    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/professional/ProfessionalMode;->createImageProcessor()Lcom/transsion/camera/app/common/mode/ProfessionImageProcessor;

    move-result-object p0

    return-object p0
.end method

.method public createImageProcessor()Lcom/transsion/camera/app/common/mode/ProfessionImageProcessor;
    .registers 2

    .line 574
    new-instance v0, Lcom/transsion/camera/app/common/mode/ProfessionImageProcessor;

    invoke-direct {v0, p0, p0}, Lcom/transsion/camera/app/common/mode/ProfessionImageProcessor;-><init>(Lcom/transsion/camera/app/common/ICameraControl$IPictureCallback;Lcom/transsion/camera/app/common/ICameraControl$IContinuousShotCallback;)V

    return-object v0
.end method

.method public doOnFileSaved(Landroid/net/Uri;ZZ)V
    .registers 4

    .line 596
    invoke-super {p0, p1, p2, p3}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->doOnFileSaved(Landroid/net/Uri;ZZ)V

    return-void
.end method

.method protected getBackMaxZoomRatio()I
    .registers 1

    .line 909
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object p0

    iget p0, p0, Lcom/transsion/camera/utils/CustomConfigUtil;->mProMaxZoomRatio:I

    if-eqz p0, :cond_f

    .line 910
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object p0

    iget p0, p0, Lcom/transsion/camera/utils/CustomConfigUtil;->mProMaxZoomRatio:I

    return p0

    .line 912
    :cond_f
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object p0

    iget p0, p0, Lcom/transsion/camera/utils/CustomConfigUtil;->mMaxZoomRatio:I

    return p0
.end method

.method protected getBackZoomConfig()Lcom/transsion/camera/app/common/ZoomConfig;
    .registers 8

    .line 893
    invoke-super {p0}, Lcom/transsion/camera/app/common/mode/CameraMode;->getBackZoomConfig()Lcom/transsion/camera/app/common/ZoomConfig;

    move-result-object v0

    .line 894
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/professional/ProfessionalMode;->mInstantZoomRatios:[Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/ZoomConfig;->setInstantZoomRatios([Ljava/lang/String;)Lcom/transsion/camera/app/common/ZoomConfig;

    move-result-object v1

    const/16 v2, 0x10

    const/16 v3, 0x80

    const/4 v4, 0x2

    const/4 v5, 0x4

    const/16 v6, 0x8

    filled-new-array {v4, v5, v6, v2, v3}, [I

    move-result-object v2

    .line 895
    invoke-virtual {v1, v2}, Lcom/transsion/camera/app/common/ZoomConfig;->setSupportedZoomTypes([I)Lcom/transsion/camera/app/common/ZoomConfig;

    .line 899
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CameraMode;->getModeSettingUISpec()Lcom/transsion/camera/app/common/ModeSettingUISpec;

    move-result-object v1

    invoke-virtual {v1}, Lcom/transsion/camera/app/common/ModeSettingUISpec;->getModeOffsetPadding()I

    move-result v1

    .line 898
    invoke-virtual {v0, v4, v1}, Lcom/transsion/camera/app/common/ZoomConfig;->setMarginOffset(II)Lcom/transsion/camera/app/common/ZoomConfig;

    .line 901
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/professional/ProfessionalMode;->mPreviewRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    iget-object v2, p0, Lcom/transsion/camera/feature/mode/professional/ProfessionalMode;->mPreviewRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    if-ne v1, v2, :cond_35

    .line 902
    iget p0, p0, Lcom/transsion/camera/feature/mode/professional/ProfessionalMode;->mProZoomTickRingMarginOffset1_1:I

    goto :goto_37

    :cond_35
    iget p0, p0, Lcom/transsion/camera/feature/mode/professional/ProfessionalMode;->mProZoomTickRingMarginOffset:I

    .line 900
    :goto_37
    invoke-virtual {v0, v5, p0}, Lcom/transsion/camera/app/common/ZoomConfig;->setMarginOffset(II)Lcom/transsion/camera/app/common/ZoomConfig;

    return-object v0
.end method

.method public getDataFlowType()I
    .registers 4

    .line 315
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/camera/utils/CustomConfigUtil;->isQcomCaptureFlow()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_11

    .line 316
    invoke-static {}, Lcom/transsion/camera/utils/FeatureSupport;->isForceCloseOfflineJNISupport()Z

    move-result v0

    if-eqz v0, :cond_13

    :cond_11
    move v0, v1

    goto :goto_15

    :cond_13
    const/16 v0, 0x8

    .line 324
    :goto_15
    invoke-static {}, Lcom/transsion/camera/app/common/algorithm/smiledetection/SmileAlgorithm;->getInstance()Lcom/transsion/camera/app/common/algorithm/smiledetection/SmileAlgorithm;

    move-result-object v2

    invoke-virtual {v2}, Lcom/transsion/camera/app/common/algorithm/smiledetection/SmileAlgorithm;->algorithmSupport()Z

    move-result v2

    if-eqz v2, :cond_23

    iget-boolean p0, p0, Lcom/transsion/camera/feature/mode/professional/ProfessionalMode;->mIsSupportSmileDetection:Z

    if-nez p0, :cond_37

    .line 325
    :cond_23
    invoke-static {}, Lcom/transsion/camera/app/common/algorithm/gesturedetection/GestureAlgorithm;->getInstance()Lcom/transsion/camera/app/common/algorithm/gesturedetection/GestureAlgorithm;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/algorithm/gesturedetection/GestureAlgorithm;->algorithmSupport()Z

    move-result p0

    if-nez p0, :cond_37

    .line 326
    invoke-static {}, Lcom/transsion/camera/app/common/algorithm/taintdetection/TaintAlgorithm;->getInstance()Lcom/transsion/camera/app/common/algorithm/taintdetection/TaintAlgorithm;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/algorithm/taintdetection/TaintAlgorithm;->algorithmSupport()Z

    move-result p0

    if-eqz p0, :cond_38

    :cond_37
    const/4 v1, 0x4

    .line 330
    :cond_38
    invoke-static {v0, v1}, Lcom/transsion/camera/adapter/DataFlowSpec;->makeDataFlowSpec(II)I

    move-result p0

    return p0
.end method

.method public getModeFeatures(Landroid/content/Context;)[Ljava/lang/String;
    .registers 3

    .line 532
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 533
    const-string v0, "key_mood_light"

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 534
    const-string v0, "key_professional"

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 535
    const-string v0, "key_shutter_sound_optional"

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 536
    const-string v0, "key_tran_plugin"

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 537
    const-string v0, "key_distortion_correction"

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 538
    const-string v0, "key_setting_smart_denoise"

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 539
    const-string v0, "key_edit_watermark"

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 540
    const-string v0, "key_gold_watermark"

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 541
    const-string v0, "key_pro_watermark"

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 542
    const-string v0, "key_lens_correction"

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 543
    const-string v0, "key_night_3dnr"

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 544
    const-string v0, "key_fingerprint_capture"

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 545
    const-string v0, "key_taint_detection"

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 546
    const-string v0, "key_secondary_screen"

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 547
    const-string v0, "key_voice_detection"

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 548
    iget-boolean p0, p0, Lcom/transsion/camera/feature/mode/professional/ProfessionalMode;->mIsSupportSmileDetection:Z

    if-eqz p0, :cond_59

    .line 549
    const-string p0, "key_smile_detection"

    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 551
    :cond_59
    const-string p0, "key_zoom_eis"

    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 553
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p0

    .line 554
    new-array p0, p0, [Ljava/lang/String;

    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    return-object p0
.end method

.method public getModeRelation()Lcom/transsion/camera/app/common/relation/Relation;
    .registers 5

    .line 512
    invoke-static {}, Lcom/transsion/camera/feature/mode/professional/ProfessionalRestriction;->getRestriction()Lcom/transsion/camera/app/common/relation/RelationGroup;

    move-result-object v0

    const-string v1, "on"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/transsion/camera/app/common/relation/RelationGroup;->getRelation(Ljava/lang/String;Z)Lcom/transsion/camera/app/common/relation/Relation;

    move-result-object v0

    .line 513
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/professional/ProfessionalMode;->getFlashRestrictionValue()Ljava/lang/String;

    move-result-object v1

    .line 514
    const-string v3, "mutual_off"

    invoke-static {v1, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_22

    .line 515
    invoke-static {}, Lcom/transsion/camera/feature/mode/professional/ProfessionalRestriction;->getProParameterRestriction()Lcom/transsion/camera/app/common/relation/RelationGroup;

    move-result-object v3

    .line 516
    invoke-virtual {v3, v1, v2}, Lcom/transsion/camera/app/common/relation/RelationGroup;->getRelation(Ljava/lang/String;Z)Lcom/transsion/camera/app/common/relation/Relation;

    move-result-object v1

    .line 515
    invoke-static {v0, v1}, Lcom/transsion/camera/app/common/mode/CameraMode;->mergeRelation(Lcom/transsion/camera/app/common/relation/Relation;Lcom/transsion/camera/app/common/relation/Relation;)V

    .line 518
    :cond_22
    iget-boolean p0, p0, Lcom/transsion/camera/feature/mode/professional/ProfessionalMode;->mSupportFastLaunch:Z

    if-eqz p0, :cond_2b

    .line 519
    const-string p0, "key_setting_quick_preview"

    invoke-virtual {v0, p0}, Lcom/transsion/camera/app/common/relation/Relation;->removeBody(Ljava/lang/String;)V

    .line 521
    :cond_2b
    invoke-static {}, Lcom/transsion/camera/feature/mode/professional/ProfessionalRestriction;->getCamModeRelation()Lcom/transsion/camera/app/common/relation/Relation;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/transsion/camera/app/common/mode/CameraMode;->mergeRelation(Lcom/transsion/camera/app/common/relation/Relation;Lcom/transsion/camera/app/common/relation/Relation;)V

    return-object v0
.end method

.method public getSettingGroup()J
    .registers 5

    .line 527
    invoke-super {p0}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->getSettingGroup()J

    move-result-wide v0

    const-wide/32 v2, 0x8000

    or-long/2addr v0, v2

    return-wide v0
.end method

.method protected getShutterTypeSelftimerOff()I
    .registers 1

    const/16 p0, 0xc

    return p0
.end method

.method protected getShutterTypeSelftimerOn()I
    .registers 1

    const/16 p0, 0x11

    return p0
.end method

.method public init(Landroid/content/Context;Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;Lcom/transsion/camera/app/common/IAppUI;Lcom/transsion/camera/app/common/mode/CameraDeviceControl;Ljava/lang/String;Lcom/transsion/camera/app/common/IApp$IIntentAction;I)V
    .registers 17

    .line 138
    invoke-super/range {p0 .. p7}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->init(Landroid/content/Context;Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;Lcom/transsion/camera/app/common/IAppUI;Lcom/transsion/camera/app/common/mode/CameraDeviceControl;Ljava/lang/String;Lcom/transsion/camera/app/common/IApp$IIntentAction;I)V

    .line 139
    instance-of p4, p2, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingProvide;

    if-eqz p4, :cond_c

    .line 140
    move-object p4, p2

    check-cast p4, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingProvide;

    iput-object p4, p0, Lcom/transsion/camera/feature/mode/professional/ProfessionalMode;->mSettingProvider:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingProvide;

    .line 143
    :cond_c
    new-instance p4, Lcom/transsion/camera/feature/mode/professional/ProfessionalMode$MyHandler;

    const/4 v0, 0x0

    invoke-direct {p4, p0, v0}, Lcom/transsion/camera/feature/mode/professional/ProfessionalMode$MyHandler;-><init>(Lcom/transsion/camera/feature/mode/professional/ProfessionalMode;Lcom/transsion/camera/feature/mode/professional/ProfessionalMode-IA;)V

    iput-object p4, p0, Lcom/transsion/camera/feature/mode/professional/ProfessionalMode;->mHandler:Landroid/os/Handler;

    .line 144
    invoke-interface {p2}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->getDataStore()Lcom/transsion/camera/app/common/storage/DataStore;

    move-result-object p4

    iput-object p4, p0, Lcom/transsion/camera/feature/mode/professional/ProfessionalMode;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    .line 145
    iget-object p4, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {p4}, Lcom/transsion/camera/app/common/IAppUI;->getModeInflateRoot()Landroid/view/ViewGroup;

    move-result-object v4

    .line 146
    iget-object p4, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {p4}, Lcom/transsion/camera/app/common/IAppUI;->getSettingUIProvider()Lcom/transsion/camera/app/common/provider/SettingUIProvider;

    move-result-object p4

    iput-object p4, p0, Lcom/transsion/camera/feature/mode/professional/ProfessionalMode;->mSettingUIProvider:Lcom/transsion/camera/app/common/provider/SettingUIProvider;

    .line 147
    invoke-interface {p3, p0}, Lcom/transsion/camera/app/common/IAppUI;->setModeNotifyCameraOperateActionCallBack(Lcom/transsion/camera/app/common/mode/IModeNotifyCameraOperateActionCallback;)V

    .line 148
    new-instance v0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalUIManager;

    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mContext:Landroid/content/Context;

    iget v2, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mScreenFormType:I

    .line 149
    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    iget-object p3, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {p3}, Lcom/transsion/camera/app/common/IAppUI;->getAboveMainCtrlInflateRoot()Landroid/view/ViewGroup;

    move-result-object v5

    iget-object v6, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    iget-object v8, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    move-object v7, v6

    invoke-direct/range {v0 .. v8}, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalUIManager;-><init>(Landroid/content/Context;ILandroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/view/ViewGroup;Lcom/transsion/camera/app/common/IAppUI;Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/professional/ProfessionalMode;->mModeUIManager:Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalUIManager;

    .line 150
    invoke-virtual {v0}, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalUIManager;->init()V

    .line 151
    iget-object p3, p0, Lcom/transsion/camera/feature/mode/professional/ProfessionalMode;->mModeUIManager:Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalUIManager;

    invoke-virtual {p3, p0}, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalUIManager;->setCapturingProgressCallBack(Lcom/transsion/camera/feature/mode/professional/ui/CapturingProgressView$ProgressCallBack;)V

    .line 152
    iget-object p3, p0, Lcom/transsion/camera/feature/mode/professional/ProfessionalMode;->mModeUIManager:Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalUIManager;

    iget-object p4, p0, Lcom/transsion/camera/feature/mode/professional/ProfessionalMode;->mCaptureStopListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p3, p4}, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalUIManager;->seCaptureStopListener(Landroid/view/View$OnClickListener;)V

    .line 153
    iget-object p3, p0, Lcom/transsion/camera/feature/mode/professional/ProfessionalMode;->mModeUIManager:Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalUIManager;

    iget-object p4, p0, Lcom/transsion/camera/feature/mode/professional/ProfessionalMode;->mSettingProvider:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingProvide;

    invoke-virtual {p3, p4}, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalUIManager;->setSettingProvider(Lcom/transsion/camera/app/common/setting/ISettingManager$SettingProvide;)V

    .line 154
    iget-object p3, p0, Lcom/transsion/camera/feature/mode/professional/ProfessionalMode;->mModeUIManager:Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalUIManager;

    invoke-interface {p2}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->getStatusMonitor()Lcom/transsion/camera/app/common/setting/StatusMonitor;

    move-result-object p4

    invoke-virtual {p3, p4}, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalUIManager;->setSettingMonitor(Lcom/transsion/camera/app/common/setting/StatusMonitor;)V

    .line 155
    const-string p3, "key_exposure_time"

    invoke-virtual {p0, p3}, Lcom/transsion/camera/app/common/mode/CameraMode;->registerKeyToMonitor(Ljava/lang/String;)V

    .line 156
    const-string p4, "key_iso"

    invoke-virtual {p0, p4}, Lcom/transsion/camera/app/common/mode/CameraMode;->registerKeyToMonitor(Ljava/lang/String;)V

    .line 157
    const-string v0, "key_picture_size"

    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/common/mode/CameraMode;->registerKeyToMonitor(Ljava/lang/String;)V

    .line 158
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/transsion/camera/feature/mode/professional/R$bool;->pro_mode_mfnr_iso_limit:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/camera/feature/mode/professional/ProfessionalMode;->mISOLimit:Z

    .line 159
    invoke-interface {p2, p3}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 160
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/transsion/camera/feature/mode/professional/R$bool;->pro_mode_support_smile_detection:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/camera/feature/mode/professional/ProfessionalMode;->mIsSupportSmileDetection:Z

    .line 161
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/transsion/camera/feature/mode/professional/R$bool;->pro_mode_support_fastlaunch:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/camera/feature/mode/professional/ProfessionalMode;->mSupportFastLaunch:Z

    if-eqz p3, :cond_a9

    .line 164
    invoke-static {p3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/transsion/camera/feature/mode/professional/ProfessionalMode;->mExposureTimeValue:J

    .line 166
    :cond_a9
    invoke-interface {p2, p4}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_b5

    .line 168
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    iput p2, p0, Lcom/transsion/camera/feature/mode/professional/ProfessionalMode;->mISOValue:I

    :cond_b5
    const/4 p2, 0x0

    .line 170
    invoke-direct {p0, p2}, Lcom/transsion/camera/feature/mode/professional/ProfessionalMode;->refreshShutterUI(Z)V

    .line 171
    iget-object p2, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    const/16 p3, 0x9

    invoke-interface {p2, p0, p3}, Lcom/transsion/camera/app/common/IAppUI;->registerPreviewGestureListener(Lcom/transsion/camera/app/common/IAppUIListener$IPreviewGestureListener;I)V

    .line 172
    iget-object p2, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    iget-object p3, p0, Lcom/transsion/camera/feature/mode/professional/ProfessionalMode;->mPreviewRectListener:Lcom/transsion/camera/app/common/IAppUIListener$IPreviewRectListener;

    invoke-interface {p2, p3}, Lcom/transsion/camera/app/common/IAppUI;->registerPreviewRectListener(Lcom/transsion/camera/app/common/IAppUIListener$IPreviewRectListener;)V

    .line 173
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget p3, Lcom/transsion/camera/feature/mode/professional/R$array;->pro_instant_zoom:I

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/transsion/camera/feature/mode/professional/ProfessionalMode;->mInstantZoomRatios:[Ljava/lang/String;

    .line 174
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget p3, Lcom/transsion/camera/feature/mode/professional/R$dimen;->professional_zoom_tick_ring_margin_offset:I

    .line 175
    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Lcom/transsion/camera/feature/mode/professional/ProfessionalMode;->mProZoomTickRingMarginOffset:I

    .line 176
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/transsion/camera/feature/mode/professional/R$dimen;->professional_zoom_tick_ring_margin_offset1_1:I

    .line 177
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/transsion/camera/feature/mode/professional/ProfessionalMode;->mProZoomTickRingMarginOffset1_1:I

    return-void
.end method

.method protected isExposureTimeAuto()Z
    .registers 5

    .line 606
    iget-wide v0, p0, Lcom/transsion/camera/feature/mode/professional/ProfessionalMode;->mExposureTimeValue:J

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-gtz p0, :cond_a

    const/4 p0, 0x1

    return p0

    :cond_a
    const/4 p0, 0x0

    return p0
.end method

.method protected isZoomFocalLengthSupported()Z
    .registers 1

    const/4 p0, 0x1

    return p0
.end method

.method public needRebuildMode()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public notifyCameraOperateAction(I)V
    .registers 6

    const/4 v0, 0x4

    if-eq p1, v0, :cond_b7

    const/16 v1, 0x11

    if-eq p1, v1, :cond_af

    const/16 v1, 0x20

    const/4 v2, 0x0

    if-eq p1, v1, :cond_a9

    const/16 v1, 0x4a

    if-eq p1, v1, :cond_a9

    const/16 v1, 0xb

    const/4 v3, 0x1

    if-eq p1, v1, :cond_a5

    const/16 v1, 0xc

    if-eq p1, v1, :cond_99

    const/16 v1, 0x58

    if-eq p1, v1, :cond_86

    const/16 v0, 0x59

    if-eq p1, v0, :cond_71

    const/16 v0, 0xcf

    if-eq p1, v0, :cond_6d

    const/16 v0, 0xd0

    if-eq p1, v0, :cond_69

    packed-switch p1, :pswitch_data_ce

    packed-switch p1, :pswitch_data_da

    goto/16 :goto_cc

    .line 742
    :pswitch_31
    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->isNewCamera4()Z

    move-result p1

    if-eqz p1, :cond_cc

    iget-boolean p1, p0, Lcom/transsion/camera/feature/mode/professional/ProfessionalMode;->mIsPopSettingShow:Z

    if-nez p1, :cond_cc

    .line 743
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/professional/ProfessionalMode;->handleHideAction()V

    return-void

    .line 734
    :pswitch_3f
    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->isNewCamera4()Z

    move-result p1

    if-eqz p1, :cond_cc

    .line 735
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/professional/ProfessionalMode;->handleShowAction()V

    return-void

    .line 676
    :pswitch_49
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/professional/ProfessionalMode;->mModeUIManager:Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalUIManager;

    if-eqz p1, :cond_cc

    .line 677
    iget-boolean p0, p0, Lcom/transsion/camera/feature/mode/professional/ProfessionalMode;->mIsPopSettingShow:Z

    invoke-virtual {p1, p0}, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalUIManager;->onScaleEnd(Z)V

    return-void

    .line 688
    :pswitch_53
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/professional/ProfessionalMode;->mModeUIManager:Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalUIManager;

    if-eqz p1, :cond_5c

    .line 689
    iget-boolean v0, p0, Lcom/transsion/camera/feature/mode/professional/ProfessionalMode;->mIsPopSettingShow:Z

    invoke-virtual {p1, v0}, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalUIManager;->onScaleEnd(Z)V

    .line 692
    :cond_5c
    :pswitch_5c
    iput-boolean v2, p0, Lcom/transsion/camera/feature/mode/professional/ProfessionalMode;->mIsZoomScaling:Z

    return-void

    .line 681
    :pswitch_5f
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/professional/ProfessionalMode;->mModeUIManager:Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalUIManager;

    if-eqz p1, :cond_66

    .line 682
    invoke-virtual {p1}, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalUIManager;->onScaleBegin()V

    .line 685
    :cond_66
    :pswitch_66
    iput-boolean v3, p0, Lcom/transsion/camera/feature/mode/professional/ProfessionalMode;->mIsZoomScaling:Z

    return-void

    .line 739
    :cond_69
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/professional/ProfessionalMode;->handleHideAction()V

    return-void

    .line 731
    :cond_6d
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/professional/ProfessionalMode;->handleShowAction()V

    return-void

    .line 713
    :cond_71
    iget-boolean p1, p0, Lcom/transsion/camera/feature/mode/professional/ProfessionalMode;->mIsPopSettingShow:Z

    if-nez p1, :cond_cc

    iget-object p1, p0, Lcom/transsion/camera/feature/mode/professional/ProfessionalMode;->mModeUIManager:Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalUIManager;

    if-eqz p1, :cond_80

    invoke-virtual {p1}, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalUIManager;->isSeekBarShowing()Z

    move-result p1

    if-eqz p1, :cond_80

    goto :goto_cc

    .line 716
    :cond_80
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {p0, v3, v3}, Lcom/transsion/camera/app/common/IAppUI;->showOrHideModePickerRootUI(ZZ)V

    return-void

    .line 705
    :cond_86
    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->isNewCamera4()Z

    move-result p1

    if-nez p1, :cond_cc

    iget p1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mScreenFormType:I

    if-eq p1, v0, :cond_cc

    const/4 v0, 0x5

    if-eq p1, v0, :cond_cc

    .line 708
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {p0, v2, v3}, Lcom/transsion/camera/app/common/IAppUI;->showOrHideModePickerRootUI(ZZ)V

    return-void

    .line 699
    :cond_99
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {p1, v3, v2}, Lcom/transsion/camera/app/common/IAppUI;->showOrHideModePickerRootUI(ZZ)V

    .line 700
    invoke-direct {p0, v2, v3}, Lcom/transsion/camera/feature/mode/professional/ProfessionalMode;->notifyToProfessionUI(IZ)V

    .line 701
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/professional/ProfessionalMode;->hideSeekBar()V

    return-void

    .line 695
    :cond_a5
    invoke-direct {p0, v3, v2}, Lcom/transsion/camera/feature/mode/professional/ProfessionalMode;->notifyToProfessionUI(IZ)V

    return-void

    .line 727
    :cond_a9
    iput-boolean v2, p0, Lcom/transsion/camera/feature/mode/professional/ProfessionalMode;->mIsZoomScaling:Z

    .line 728
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/professional/ProfessionalMode;->hideSeekBar()V

    return-void

    .line 720
    :cond_af
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/professional/ProfessionalMode;->mModeUIManager:Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalUIManager;

    if-eqz p0, :cond_cc

    .line 721
    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalUIManager;->dismissPopup()Z

    return-void

    .line 747
    :cond_b7
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/professional/ProfessionalMode;->mModeUIManager:Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalUIManager;

    if-eqz p1, :cond_cc

    .line 748
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    const-string v0, "key_picture_size"

    invoke-interface {p1, v0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 749
    invoke-static {p1}, Lcom/transsion/camera/utils/PictureSizeHelper;->getStandardAspectRatioOfString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 750
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/professional/ProfessionalMode;->mModeUIManager:Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalUIManager;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalUIManager;->notifyPictureChange(Ljava/lang/String;)V

    :cond_cc
    :goto_cc
    return-void

    nop

    :pswitch_data_ce
    .packed-switch 0x17
        :pswitch_5f
        :pswitch_53
        :pswitch_66
        :pswitch_5c
    .end packed-switch

    :pswitch_data_da
    .packed-switch 0x1c
        :pswitch_49
        :pswitch_3f
        :pswitch_31
    .end packed-switch
.end method

.method public notifyPictureTaken([BZIJ)I
    .registers 6

    .line 579
    invoke-super/range {p0 .. p5}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->notifyPictureTaken([BZIJ)I

    .line 581
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/professional/ProfessionalMode;->onCaptureDone()V

    const/4 p1, 0x0

    .line 583
    iput-boolean p1, p0, Lcom/transsion/camera/feature/mode/professional/ProfessionalMode;->mCaptureProcessing:Z

    .line 584
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/professional/ProfessionalMode;->isNeedCancelCaptureFun()Z

    move-result p2

    if-eqz p2, :cond_16

    .line 585
    iget-object p2, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    const/16 p3, 0x5b

    invoke-interface {p2, p3}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    .line 587
    :cond_16
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CameraMode;->isValid()Z

    move-result p2

    if-eqz p2, :cond_27

    .line 588
    iget-object p2, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    const/4 p3, -0x1

    const/4 p4, 0x0

    const/4 p5, 0x1

    invoke-interface {p2, p5, p3, p4}, Lcom/transsion/camera/app/common/IAppUIControl$IUIStateControl;->updateUIState(IILjava/lang/String;)V

    .line 589
    invoke-direct {p0, p1, p5}, Lcom/transsion/camera/feature/mode/professional/ProfessionalMode;->notifyToProfessionUI(IZ)V

    :cond_27
    return p1
.end method

.method public onBackPressed()Z
    .registers 3

    .line 471
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/professional/ProfessionalMode;->mModeUIManager:Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalUIManager;

    const/4 v1, 0x1

    if-eqz v0, :cond_c

    invoke-virtual {v0}, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalUIManager;->dismissPopup()Z

    move-result v0

    if-eqz v0, :cond_c

    return v1

    .line 475
    :cond_c
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/professional/ProfessionalMode;->mModeUIManager:Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalUIManager;

    if-eqz v0, :cond_1c

    invoke-virtual {v0}, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalUIManager;->isSeekBarShowing()Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 476
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/professional/ProfessionalMode;->mModeUIManager:Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalUIManager;

    invoke-virtual {p0, v1}, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalUIManager;->hideSeekBarIfNeed(Z)V

    return v1

    .line 480
    :cond_1c
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/professional/ProfessionalMode;->mModeUIManager:Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalUIManager;

    if-eqz v0, :cond_26

    invoke-virtual {v0}, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalUIManager;->isCaptureButtonEnable()Z

    move-result v0

    if-eqz v0, :cond_2c

    :cond_26
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/professional/ProfessionalMode;->cancelCapture()Z

    move-result p0

    if-eqz p0, :cond_2d

    :cond_2c
    return v1

    :cond_2d
    const/4 p0, 0x0

    return p0
.end method

.method public onBackPressedForUI()Z
    .registers 3

    .line 458
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/professional/ProfessionalMode;->mModeUIManager:Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalUIManager;

    const/4 v1, 0x1

    if-eqz v0, :cond_c

    invoke-virtual {v0}, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalUIManager;->dismissPopup()Z

    move-result v0

    if-eqz v0, :cond_c

    return v1

    .line 462
    :cond_c
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/professional/ProfessionalMode;->mModeUIManager:Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalUIManager;

    if-eqz v0, :cond_1c

    invoke-virtual {v0}, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalUIManager;->isSeekBarShowing()Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 463
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/professional/ProfessionalMode;->mModeUIManager:Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalUIManager;

    invoke-virtual {p0, v1}, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalUIManager;->hideSeekBarIfNeed(Z)V

    return v1

    :cond_1c
    const/4 p0, 0x0

    return p0
.end method

.method public onCameraStateChanged(I)V
    .registers 3

    .line 488
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->onCameraStateChanged(I)V

    const/4 v0, 0x5

    if-ne p1, v0, :cond_12

    .line 490
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/professional/ProfessionalMode;->mHandler:Landroid/os/Handler;

    const/16 v0, 0x3e8

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 491
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/professional/ProfessionalMode;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_12
    return-void
.end method

.method public onConfigurationChanged(Z)V
    .registers 5

    .line 425
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v0

    iget-boolean v0, v0, Lcom/transsion/camera/utils/CustomConfigUtil;->mSmartDenoiseDefaultOn:Z

    iput-boolean v0, p0, Lcom/transsion/camera/feature/mode/professional/ProfessionalMode;->mNeedSmartDenoise:Z

    .line 426
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onConfigurationChanged start, isQuitVIP:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, ", mNeedSmartDenoise:"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/transsion/camera/feature/mode/professional/ProfessionalMode;->mNeedSmartDenoise:Z

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic onDoubleTap(FF)Z
    .registers 3

    .line 0
    invoke-super {p0, p1, p2}, Lcom/transsion/camera/app/common/IAppUIListener$IPreviewGestureListener;->onDoubleTap(FF)Z

    move-result p0

    return p0
.end method

.method public bridge synthetic onDown(Landroid/view/MotionEvent;)Z
    .registers 2

    .line 0
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/IAppUIListener$IPreviewGestureListener;->onDown(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public bridge synthetic onDragMove(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .registers 5

    .line 0
    invoke-super {p0, p1, p2, p3, p4}, Lcom/transsion/camera/app/common/IAppUIListener$IPreviewGestureListener;->onDragMove(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    move-result p0

    return p0
.end method

.method public bridge synthetic onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .registers 5

    .line 0
    invoke-super {p0, p1, p2, p3, p4}, Lcom/transsion/camera/app/common/IAppUIListener$IPreviewGestureListener;->onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    move-result p0

    return p0
.end method

.method public bridge synthetic onGestureTouchEvent(Landroid/view/MotionEvent;)V
    .registers 2

    .line 0
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/IAppUIListener$IPreviewGestureListener;->onGestureTouchEvent(Landroid/view/MotionEvent;)V

    return-void
.end method

.method public bridge synthetic onLongPress(FF)Z
    .registers 3

    .line 0
    invoke-super {p0, p1, p2}, Lcom/transsion/camera/app/common/IAppUIListener$IPreviewGestureListener;->onLongPress(FF)Z

    move-result p0

    return p0
.end method

.method public onModeCaptureFailed(Z[J)V
    .registers 6

    .line 384
    invoke-super {p0, p1, p2}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->onModeCaptureFailed(Z[J)V

    .line 385
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/professional/ProfessionalMode;->onCaptureDone()V

    const/4 p1, 0x0

    .line 386
    iput-boolean p1, p0, Lcom/transsion/camera/feature/mode/professional/ProfessionalMode;->mCaptureProcessing:Z

    .line 387
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/professional/ProfessionalMode;->isNeedCancelCaptureFun()Z

    move-result p2

    if-eqz p2, :cond_16

    .line 388
    iget-object p2, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    const/16 v0, 0x5b

    invoke-interface {p2, v0}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    .line 390
    :cond_16
    iget-object p2, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    const/4 v0, -0x1

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-interface {p2, v2, v0, v1}, Lcom/transsion/camera/app/common/IAppUIControl$IUIStateControl;->updateUIState(IILjava/lang/String;)V

    .line 391
    invoke-direct {p0, p1, v2}, Lcom/transsion/camera/feature/mode/professional/ProfessionalMode;->notifyToProfessionUI(IZ)V

    return-void
.end method

.method public onOrientationChanged(I)V
    .registers 2

    .line 396
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/mode/CameraMode;->onOrientationChanged(I)V

    .line 397
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/professional/ProfessionalMode;->mModeUIManager:Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalUIManager;

    if-eqz p0, :cond_a

    .line 398
    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalUIManager;->onOrientationChanged(I)V

    :cond_a
    return-void
.end method

.method public onProgressEnd()V
    .registers 3

    .line 775
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "capturing animator end."

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 776
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/professional/ProfessionalMode;->mModeUIManager:Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalUIManager;

    if-eqz v0, :cond_19

    .line 777
    invoke-virtual {v0}, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalUIManager;->stopCapturingBeginAnim()V

    .line 778
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/professional/ProfessionalMode;->mModeUIManager:Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalUIManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalUIManager;->setCaptureButtonEnable(Z)V

    .line 779
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/professional/ProfessionalMode;->mModeUIManager:Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalUIManager;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalUIManager;->startCapturingEndAnim()V

    :cond_19
    return-void
.end method

.method public bridge synthetic onScale(Landroid/view/ScaleGestureDetector;)Z
    .registers 2

    .line 0
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/IAppUIListener$IPreviewGestureListener;->onScale(Landroid/view/ScaleGestureDetector;)Z

    move-result p0

    return p0
.end method

.method public bridge synthetic onScaleBegin(Landroid/view/ScaleGestureDetector;)Z
    .registers 2

    .line 0
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/IAppUIListener$IPreviewGestureListener;->onScaleBegin(Landroid/view/ScaleGestureDetector;)Z

    move-result p0

    return p0
.end method

.method public bridge synthetic onScaleEnd(Landroid/view/ScaleGestureDetector;)Z
    .registers 2

    .line 0
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/IAppUIListener$IPreviewGestureListener;->onScaleEnd(Landroid/view/ScaleGestureDetector;)Z

    move-result p0

    return p0
.end method

.method public onScreenFormChanged(IZ)V
    .registers 5

    .line 404
    invoke-super {p0, p1, p2}, Lcom/transsion/camera/app/common/mode/CameraMode;->onScreenFormChanged(IZ)V

    .line 405
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/professional/ProfessionalMode;->mModeUIManager:Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalUIManager;

    if-eqz v0, :cond_a

    .line 406
    invoke-virtual {v0, p1, p2}, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalUIManager;->onScreenFormChanged(IZ)V

    .line 409
    :cond_a
    iget p1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mScreenFormType:I

    const/4 p2, 0x4

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eq p1, p2, :cond_33

    const/4 p2, 0x5

    if-ne p1, p2, :cond_15

    goto :goto_33

    :cond_15
    const/4 p2, 0x2

    if-ne p1, p2, :cond_32

    .line 414
    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->isNewCamera4()Z

    move-result p1

    if-nez p1, :cond_2d

    .line 415
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/professional/ProfessionalMode;->mModeUIManager:Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalUIManager;

    if-eqz p1, :cond_28

    invoke-virtual {p1}, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalUIManager;->isSeekBarShowing()Z

    move-result p1

    if-nez p1, :cond_2c

    :cond_28
    iget-boolean p1, p0, Lcom/transsion/camera/feature/mode/professional/ProfessionalMode;->mIsPopSettingShow:Z

    if-eqz p1, :cond_2d

    :cond_2c
    move v0, v1

    .line 419
    :cond_2d
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {p0, v0, v1}, Lcom/transsion/camera/app/common/IAppUI;->showOrHideModePickerRootUI(ZZ)V

    :cond_32
    return-void

    .line 411
    :cond_33
    :goto_33
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    iget-boolean p0, p0, Lcom/transsion/camera/feature/mode/professional/ProfessionalMode;->mIsPopSettingShow:Z

    xor-int/2addr p0, v0

    invoke-interface {p1, p0, v1}, Lcom/transsion/camera/app/common/IAppUI;->showOrHideModePickerRootUI(ZZ)V

    return-void
.end method

.method public bridge synthetic onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .registers 5

    .line 0
    invoke-super {p0, p1, p2, p3, p4}, Lcom/transsion/camera/app/common/IAppUIListener$IPreviewGestureListener;->onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    move-result p0

    return p0
.end method

.method protected onSettingChanged(Ljava/lang/String;Ljava/lang/String;)V
    .registers 13

    .line 213
    invoke-super {p0, p1, p2}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->onSettingChanged(Ljava/lang/String;Ljava/lang/String;)V

    .line 214
    const-string v0, "key_focus_state"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, "key_picture_size"

    if-eqz v0, :cond_15

    const-string v0, "ACTIVE_SCAN"

    invoke-static {p2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1b

    .line 215
    :cond_15
    invoke-static {v1, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 216
    :cond_1b
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/professional/ProfessionalMode;->hideSeekBar()V

    .line 217
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/professional/ProfessionalMode;->mModeUIManager:Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalUIManager;

    if-eqz v0, :cond_2d

    invoke-static {v1, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 218
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/professional/ProfessionalMode;->mModeUIManager:Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalUIManager;

    invoke-virtual {v0, p2}, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalUIManager;->onPictureSizeChanged(Ljava/lang/String;)V

    .line 221
    :cond_2d
    const-string v0, "key_exposure_time"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, -0x1

    const-string v3, "key_iso"

    const/4 v4, 0x1

    const-wide/16 v5, -0x1

    const/4 v7, 0x0

    if-eqz v1, :cond_7e

    .line 222
    invoke-static {p2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    iput-wide v8, p0, Lcom/transsion/camera/feature/mode/professional/ProfessionalMode;->mExposureTimeValue:J

    .line 223
    invoke-direct {p0, v7}, Lcom/transsion/camera/feature/mode/professional/ProfessionalMode;->refreshShutterUI(Z)V

    .line 225
    invoke-static {v5, v6}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-static {p2, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_60

    .line 226
    iget-boolean v1, p0, Lcom/transsion/camera/feature/mode/professional/ProfessionalMode;->mUpdateTopbarAndPopSetting:Z

    if-nez v1, :cond_7e

    .line 227
    iput-boolean v4, p0, Lcom/transsion/camera/feature/mode/professional/ProfessionalMode;->mUpdateTopbarAndPopSetting:Z

    .line 228
    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {v1}, Lcom/transsion/camera/app/common/IAppUI;->updateTopBarUI()V

    .line 229
    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {v1}, Lcom/transsion/camera/app/common/IAppUI;->updatePopSettingUI()V

    goto :goto_7e

    .line 232
    :cond_60
    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    invoke-interface {v1, v3}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 233
    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v1, v8}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_7e

    .line 234
    iget-boolean v1, p0, Lcom/transsion/camera/feature/mode/professional/ProfessionalMode;->mUpdateTopbarAndPopSetting:Z

    if-eqz v1, :cond_7e

    .line 235
    iput-boolean v7, p0, Lcom/transsion/camera/feature/mode/professional/ProfessionalMode;->mUpdateTopbarAndPopSetting:Z

    .line 236
    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/professional/ProfessionalMode;->sendProParameterPostRestriction()V

    .line 237
    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {v1}, Lcom/transsion/camera/app/common/IAppUI;->updatePopSettingUI()V

    .line 243
    :cond_7e
    :goto_7e
    invoke-static {p1, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_c3

    .line 244
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/transsion/camera/feature/mode/professional/ProfessionalMode;->mISOValue:I

    .line 245
    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_a5

    .line 246
    iget-boolean p1, p0, Lcom/transsion/camera/feature/mode/professional/ProfessionalMode;->mUpdateTopbarAndPopSetting:Z

    if-nez p1, :cond_c3

    .line 247
    iput-boolean v4, p0, Lcom/transsion/camera/feature/mode/professional/ProfessionalMode;->mUpdateTopbarAndPopSetting:Z

    .line 248
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {p1}, Lcom/transsion/camera/app/common/IAppUI;->updateTopBarUI()V

    .line 249
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {p0}, Lcom/transsion/camera/app/common/IAppUI;->updatePopSettingUI()V

    return-void

    .line 252
    :cond_a5
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    invoke-interface {p1, v0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 253
    invoke-static {v5, v6}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_c3

    .line 254
    iget-boolean p1, p0, Lcom/transsion/camera/feature/mode/professional/ProfessionalMode;->mUpdateTopbarAndPopSetting:Z

    if-eqz p1, :cond_c3

    .line 255
    iput-boolean v7, p0, Lcom/transsion/camera/feature/mode/professional/ProfessionalMode;->mUpdateTopbarAndPopSetting:Z

    .line 256
    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/professional/ProfessionalMode;->sendProParameterPostRestriction()V

    .line 257
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {p0}, Lcom/transsion/camera/app/common/IAppUI;->updatePopSettingUI()V

    :cond_c3
    return-void
.end method

.method public onSettingReady()V
    .registers 5

    .line 431
    invoke-super {p0}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->onSettingReady()V

    const/4 v0, 0x0

    .line 432
    invoke-direct {p0, v0}, Lcom/transsion/camera/feature/mode/professional/ProfessionalMode;->refreshShutterUI(Z)V

    .line 434
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/professional/ProfessionalMode;->mSettingUIProvider:Lcom/transsion/camera/app/common/provider/SettingUIProvider;

    if-eqz v0, :cond_42

    .line 435
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/transsion/camera/feature/mode/professional/R$array;->pro_mode_custom_ui_entries:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 436
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 437
    iget-object v2, p0, Lcom/transsion/camera/feature/mode/professional/ProfessionalMode;->mSettingUIProvider:Lcom/transsion/camera/app/common/provider/SettingUIProvider;

    invoke-virtual {v2, v0}, Lcom/transsion/camera/app/common/provider/SettingUIProvider;->createSettingUISpecList([Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 438
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_26
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;

    .line 439
    new-instance v3, Lcom/transsion/camera/feature/mode/professional/ui/SettingItemUI;

    invoke-direct {v3, v2}, Lcom/transsion/camera/feature/mode/professional/ui/SettingItemUI;-><init>(Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;)V

    .line 440
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_26

    .line 442
    :cond_3b
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/professional/ProfessionalMode;->mModeUIManager:Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalUIManager;

    if-eqz v0, :cond_42

    .line 443
    invoke-virtual {v0, v1}, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalUIManager;->updateSettingItemList(Ljava/util/List;)V

    .line 447
    :cond_42
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/professional/ProfessionalMode;->mModeUIManager:Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalUIManager;

    if-eqz v0, :cond_4a

    const/4 v1, 0x1

    .line 448
    invoke-virtual {v0, v1}, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalUIManager;->setEnable(Z)V

    .line 451
    :cond_4a
    invoke-static {}, Lcom/transsion/camera/utils/FeatureSupport;->isSprdPlatform()Z

    move-result v0

    if-nez v0, :cond_59

    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mCameraDeviceControl:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    if-eqz v0, :cond_59

    .line 452
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/professional/ProfessionalMode;->mFrameResultCallback:Lcom/transsion/camera/adapter/CameraProxy$FrameResultCallback;

    invoke-virtual {v0, p0}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->registerFrameResultCallback(Lcom/transsion/camera/adapter/CameraProxy$FrameResultCallback;)V

    :cond_59
    return-void
.end method

.method public onShutterClick(II)Z
    .registers 3

    .line 286
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/feature/mode/professional/ProfessionalMode;->confirmCapture(II)Z

    move-result p0

    return p0
.end method

.method protected onShutterClickBefore(I)Z
    .registers 3

    .line 559
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->onShutterClickBefore(I)Z

    move-result p1

    if-eqz p1, :cond_f

    const/4 p1, 0x3

    const/4 v0, 0x1

    .line 560
    invoke-direct {p0, p1, v0}, Lcom/transsion/camera/feature/mode/professional/ProfessionalMode;->notifyToProfessionUI(IZ)V

    .line 561
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/professional/ProfessionalMode;->onCaptureStart()V

    return v0

    :cond_f
    const/4 p0, 0x0

    return p0
.end method

.method public bridge synthetic onSingleTapConfirmed(FF)Z
    .registers 3

    .line 0
    invoke-super {p0, p1, p2}, Lcom/transsion/camera/app/common/IAppUIListener$IPreviewGestureListener;->onSingleTapConfirmed(FF)Z

    move-result p0

    return p0
.end method

.method public onSingleTapUp(FF)Z
    .registers 3

    .line 200
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/professional/ProfessionalMode;->hideSeekBar()V

    const/4 p0, 0x0

    return p0
.end method

.method public bridge synthetic onUp(Landroid/view/MotionEvent;)Z
    .registers 2

    .line 0
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/IAppUIListener$IPreviewGestureListener;->onUp(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public pause()V
    .registers 7

    .line 348
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/professional/ProfessionalMode;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x3e8

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 349
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/professional/ProfessionalMode;->mModeUIManager:Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalUIManager;

    const/4 v1, 0x0

    if-eqz v0, :cond_12

    .line 350
    invoke-virtual {v0, v1}, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalUIManager;->setEnable(Z)V

    .line 351
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/professional/ProfessionalMode;->hideSeekBar()V

    .line 353
    :cond_12
    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->isNewCamera4()Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_23

    .line 354
    iget-boolean v0, p0, Lcom/transsion/camera/feature/mode/professional/ProfessionalMode;->mIsZoomScaling:Z

    if-nez v0, :cond_28

    .line 355
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {v0, v2, v1}, Lcom/transsion/camera/app/common/IAppUI;->showOrHideModePickerRootUI(ZZ)V

    goto :goto_28

    .line 358
    :cond_23
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {v0, v2, v1}, Lcom/transsion/camera/app/common/IAppUI;->showOrHideModePickerRootUI(ZZ)V

    .line 360
    :cond_28
    :goto_28
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    invoke-interface {v0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->getDataStore()Lcom/transsion/camera/app/common/storage/DataStore;

    move-result-object v0

    iget-object v3, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    .line 361
    invoke-interface {v3}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->getDataStore()Lcom/transsion/camera/app/common/storage/DataStore;

    move-result-object v3

    invoke-virtual {v3}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v3

    .line 360
    const-string v4, "key_exposure_private"

    const-string v5, "off"

    invoke-virtual {v0, v4, v5, v3, v2}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 362
    invoke-super {p0}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->pause()V

    .line 363
    invoke-static {}, Lcom/transsion/camera/utils/FeatureSupport;->isSprdPlatform()Z

    move-result v0

    if-nez v0, :cond_51

    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mCameraDeviceControl:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    if-eqz v0, :cond_51

    .line 364
    iget-object v3, p0, Lcom/transsion/camera/feature/mode/professional/ProfessionalMode;->mFrameResultCallback:Lcom/transsion/camera/adapter/CameraProxy$FrameResultCallback;

    invoke-virtual {v0, v3}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->unRegisterFrameResultCallback(Lcom/transsion/camera/adapter/CameraProxy$FrameResultCallback;)V

    .line 366
    :cond_51
    iput-boolean v1, p0, Lcom/transsion/camera/feature/mode/professional/ProfessionalMode;->mNeedSmartDenoise:Z

    .line 367
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/professional/ProfessionalMode;->onCaptureDone()V

    .line 368
    iput-boolean v1, p0, Lcom/transsion/camera/feature/mode/professional/ProfessionalMode;->mCaptureProcessing:Z

    .line 369
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/professional/ProfessionalMode;->isNeedCancelCaptureFun()Z

    move-result v0

    if-eqz v0, :cond_65

    .line 370
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    const/16 v3, 0x5b

    invoke-interface {v0, v3}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    .line 372
    :cond_65
    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->isNewCamera4()Z

    move-result v0

    const/4 v3, 0x0

    const/4 v4, -0x1

    if-eqz v0, :cond_77

    .line 373
    iget-boolean v0, p0, Lcom/transsion/camera/feature/mode/professional/ProfessionalMode;->mIsZoomScaling:Z

    if-nez v0, :cond_7c

    .line 374
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {v0, v2, v4, v3}, Lcom/transsion/camera/app/common/IAppUIControl$IUIStateControl;->updateUIState(IILjava/lang/String;)V

    goto :goto_7c

    .line 377
    :cond_77
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {v0, v2, v4, v3}, Lcom/transsion/camera/app/common/IAppUIControl$IUIStateControl;->updateUIState(IILjava/lang/String;)V

    .line 379
    :cond_7c
    :goto_7c
    invoke-direct {p0, v1, v2}, Lcom/transsion/camera/feature/mode/professional/ProfessionalMode;->notifyToProfessionUI(IZ)V

    return-void
.end method

.method public bridge synthetic queryState(Ljava/lang/String;)Lcom/transsion/camera/app/common/IAppUI$UIState;
    .registers 2

    .line 0
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/mode/ICameraMode;->queryState(Ljava/lang/String;)Lcom/transsion/camera/app/common/IAppUI$UIState;

    move-result-object p0

    return-object p0
.end method

.method public resume()V
    .registers 6

    .line 335
    invoke-super {p0}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->resume()V

    .line 336
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    invoke-interface {v0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->getDataStore()Lcom/transsion/camera/app/common/storage/DataStore;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    .line 337
    invoke-interface {v1}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->getDataStore()Lcom/transsion/camera/app/common/storage/DataStore;

    move-result-object v1

    invoke-virtual {v1}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    .line 336
    const-string v3, "key_exposure_private"

    const-string v4, "on"

    invoke-virtual {v0, v3, v4, v1, v2}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    const/4 v0, 0x0

    .line 338
    iput-boolean v0, p0, Lcom/transsion/camera/feature/mode/professional/ProfessionalMode;->mUpdateTopbarAndPopSetting:Z

    .line 339
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/professional/ProfessionalMode;->mModeUIManager:Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalUIManager;

    if-eqz v0, :cond_29

    .line 340
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CameraMode;->getOrientation()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalUIManager;->inflateViewIfNeed(I)V

    .line 342
    :cond_29
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v0

    iget-boolean v0, v0, Lcom/transsion/camera/utils/CustomConfigUtil;->mSmartDenoiseDefaultOn:Z

    iput-boolean v0, p0, Lcom/transsion/camera/feature/mode/professional/ProfessionalMode;->mNeedSmartDenoise:Z

    .line 343
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "resume mNeedSmartDenoise:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/transsion/camera/feature/mode/professional/ProfessionalMode;->mNeedSmartDenoise:Z

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method public sendProParameterPostRestriction()V
    .registers 4

    .line 496
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/professional/ProfessionalMode;->getFlashRestrictionValue()Ljava/lang/String;

    move-result-object v0

    .line 497
    const-string v1, "mutual_off"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_f

    .line 498
    iput-boolean v2, p0, Lcom/transsion/camera/feature/mode/professional/ProfessionalMode;->mUpdateTopbarAndPopSetting:Z

    .line 501
    :cond_f
    invoke-static {}, Lcom/transsion/camera/feature/mode/professional/ProfessionalRestriction;->getProParameterRestriction()Lcom/transsion/camera/app/common/relation/RelationGroup;

    move-result-object v1

    .line 502
    invoke-virtual {v1, v0, v2}, Lcom/transsion/camera/app/common/relation/RelationGroup;->getRelation(Ljava/lang/String;Z)Lcom/transsion/camera/app/common/relation/Relation;

    move-result-object v0

    if-eqz v0, :cond_1e

    .line 504
    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    invoke-interface {v1, v0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->postRestriction(Lcom/transsion/camera/app/common/relation/Relation;)V

    .line 506
    :cond_1e
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mCameraDeviceControl:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/professional/ProfessionalMode;->getFlashKey()Ljava/lang/String;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->requestChangeSettingValueJustSelf([Ljava/lang/String;)V

    .line 507
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {p0}, Lcom/transsion/camera/app/common/IAppUI;->updateTopBarUI()V

    return-void
.end method

.method public unInit()V
    .registers 4

    .line 271
    invoke-super {p0}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->unInit()V

    .line 272
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/professional/ProfessionalMode;->mModeUIManager:Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalUIManager;

    const/4 v1, 0x0

    if-eqz v0, :cond_d

    .line 273
    invoke-virtual {v0}, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalUIManager;->unInit()V

    .line 274
    iput-object v1, p0, Lcom/transsion/camera/feature/mode/professional/ProfessionalMode;->mModeUIManager:Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalUIManager;

    .line 276
    :cond_d
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {v0, p0}, Lcom/transsion/camera/app/common/IAppUI;->unregisterPreviewGestureListener(Lcom/transsion/camera/app/common/IAppUIListener$IPreviewGestureListener;)V

    .line 277
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    iget-object v2, p0, Lcom/transsion/camera/feature/mode/professional/ProfessionalMode;->mPreviewRectListener:Lcom/transsion/camera/app/common/IAppUIListener$IPreviewRectListener;

    invoke-interface {v0, v2}, Lcom/transsion/camera/app/common/IAppUI;->unregisterPreviewRectListener(Lcom/transsion/camera/app/common/IAppUIListener$IPreviewRectListener;)V

    .line 278
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/IAppUI;->setModeNotifyCameraOperateActionCallBack(Lcom/transsion/camera/app/common/mode/IModeNotifyCameraOperateActionCallback;)V

    .line 279
    const-string v0, "key_exposure_time"

    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/common/mode/CameraMode;->unRegisterKeyToMonitor(Ljava/lang/String;)V

    .line 280
    const-string v0, "key_iso"

    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/common/mode/CameraMode;->unRegisterKeyToMonitor(Ljava/lang/String;)V

    .line 281
    const-string v0, "key_picture_size"

    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/common/mode/CameraMode;->unRegisterKeyToMonitor(Ljava/lang/String;)V

    return-void
.end method

.method public updateThumbnailSurface(Landroid/util/Size;)Lcom/transsion/camera/app/common/mode/CaptureSurface;
    .registers 3

    if-nez p1, :cond_4

    const/4 p0, 0x0

    return-object p0

    :cond_4
    const/4 v0, 0x1

    .line 304
    iput-boolean v0, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mIsSupportPostView:Z

    .line 305
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mImageProcessor:Lcom/transsion/camera/app/common/mode/IImageProcessor;

    check-cast p0, Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/mode/ImageProcessor;->updateThumbnailSurface(Landroid/util/Size;)Lcom/transsion/camera/app/common/mode/CaptureSurface;

    move-result-object p0

    return-object p0
.end method
