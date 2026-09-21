.class public Lcom/transsion/camera/feature/setting/widecamera/WideCamera;
.super Lcom/transsion/camera/app/common/setting/SettingBase;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/app/common/setting/ICameraSetting$IParametersConfigure;


# static fields
.field protected static final DEFAULT_VALUE:Ljava/lang/String; = "off"

.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private mIsMacroSupportZoom:Z

.field private mIsWideCamSupportVideoPortrait:Z

.field private mIsWideCamSupportVideoPortraitSpot:Z

.field private mIsWideCamSupportVideoSpot:Z

.field private mIsWideCamUISupport:Z

.field private mIsWideCamera:Z

.field private mIsWideSupportZoom:Z

.field private mModeType:Lcom/transsion/camera/app/common/mode/ICameraMode$ModeType;

.field private mNeedSaveZoomValue:Z

.field private mNeedShow:Z

.field private mPreviewStateCallback:Lcom/transsion/camera/app/common/setting/ICameraSetting$PreviewStateCallback;

.field private mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

.field private mVideoEnhanceYUVSupportWideCamera:Z


# direct methods
.method static bridge synthetic -$$Nest$fgetmNeedShow(Lcom/transsion/camera/feature/setting/widecamera/WideCamera;)Z
    .registers 1

    .line 0
    iget-boolean p0, p0, Lcom/transsion/camera/feature/setting/widecamera/WideCamera;->mNeedShow:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fputmNeedSaveZoomValue(Lcom/transsion/camera/feature/setting/widecamera/WideCamera;Z)V
    .registers 2

    .line 0
    iput-boolean p1, p0, Lcom/transsion/camera/feature/setting/widecamera/WideCamera;->mNeedSaveZoomValue:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmNeedShow(Lcom/transsion/camera/feature/setting/widecamera/WideCamera;Z)V
    .registers 2

    .line 0
    iput-boolean p1, p0, Lcom/transsion/camera/feature/setting/widecamera/WideCamera;->mNeedShow:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;
    .registers 1

    .line 0
    sget-object v0, Lcom/transsion/camera/feature/setting/widecamera/WideCamera;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 47
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "WideCamera"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/feature/setting/widecamera/WideCamera;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 46
    invoke-direct {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;-><init>()V

    const/4 v0, 0x0

    .line 51
    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/widecamera/WideCamera;->mNeedShow:Z

    .line 52
    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/widecamera/WideCamera;->mIsWideCamera:Z

    .line 58
    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/widecamera/WideCamera;->mNeedSaveZoomValue:Z

    .line 62
    new-instance v0, Lcom/transsion/camera/feature/setting/widecamera/WideCamera$1;

    invoke-direct {v0, p0}, Lcom/transsion/camera/feature/setting/widecamera/WideCamera$1;-><init>(Lcom/transsion/camera/feature/setting/widecamera/WideCamera;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/setting/widecamera/WideCamera;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    .line 70
    new-instance v0, Lcom/transsion/camera/feature/setting/widecamera/WideCamera$2;

    invoke-direct {v0, p0}, Lcom/transsion/camera/feature/setting/widecamera/WideCamera$2;-><init>(Lcom/transsion/camera/feature/setting/widecamera/WideCamera;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/setting/widecamera/WideCamera;->mPreviewStateCallback:Lcom/transsion/camera/app/common/setting/ICameraSetting$PreviewStateCallback;

    return-void
.end method

.method private addZoomRangeRelation(Lcom/transsion/camera/app/common/relation/Relation;)V
    .registers 5

    if-eqz p1, :cond_1a

    .line 258
    iget-boolean v0, p0, Lcom/transsion/camera/feature/setting/widecamera/WideCamera;->mIsWideCamUISupport:Z

    const-string/jumbo v1, "value_zoom_support_wide_active"

    const-string v2, "key_camera_zoom"

    if-eqz v0, :cond_15

    .line 259
    iget-boolean p0, p0, Lcom/transsion/camera/feature/setting/widecamera/WideCamera;->mIsWideSupportZoom:Z

    if-nez p0, :cond_1a

    .line 260
    sget-object p0, Lcom/transsion/camera/utils/SettingInfo;->MACRO_ZOOM_SUPPORT_VALUE_RANGE_1:Ljava/lang/String;

    invoke-virtual {p1, v2, v1, p0}, Lcom/transsion/camera/app/common/relation/Relation;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 263
    :cond_15
    sget-object p0, Lcom/transsion/camera/utils/SettingInfo;->MACRO_ZOOM_SUPPORT_VALUE_RANGE_2:Ljava/lang/String;

    invoke-virtual {p1, v2, v1, p0}, Lcom/transsion/camera/app/common/relation/Relation;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1a
    return-void
.end method

.method private handleRestriction(Z)V
    .registers 10

    .line 227
    const-string v0, "on"

    if-eqz p1, :cond_27

    .line 228
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getValue()Ljava/lang/String;

    move-result-object v1

    iget-boolean v3, p0, Lcom/transsion/camera/feature/setting/widecamera/WideCamera;->mIsWideSupportZoom:Z

    iget-boolean v4, p0, Lcom/transsion/camera/feature/setting/widecamera/WideCamera;->mIsWideCamSupportVideoPortrait:Z

    iget-boolean v5, p0, Lcom/transsion/camera/feature/setting/widecamera/WideCamera;->mIsWideCamSupportVideoSpot:Z

    iget-boolean v6, p0, Lcom/transsion/camera/feature/setting/widecamera/WideCamera;->mIsWideCamSupportVideoPortraitSpot:Z

    const/4 v2, 0x0

    invoke-static/range {v1 .. v6}, Lcom/transsion/camera/feature/setting/widecamera/WideCameraRestriction;->getWideCameraRelation(Ljava/lang/String;ZZZZZ)Lcom/transsion/camera/app/common/relation/Relation;

    move-result-object p1

    .line 230
    iget-boolean v1, p0, Lcom/transsion/camera/feature/setting/widecamera/WideCamera;->mIsMacroSupportZoom:Z

    if-eqz v1, :cond_36

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_36

    .line 231
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/setting/widecamera/WideCamera;->addZoomRangeRelation(Lcom/transsion/camera/app/common/relation/Relation;)V

    goto :goto_36

    .line 234
    :cond_27
    iget-boolean v4, p0, Lcom/transsion/camera/feature/setting/widecamera/WideCamera;->mIsWideSupportZoom:Z

    iget-boolean v5, p0, Lcom/transsion/camera/feature/setting/widecamera/WideCamera;->mIsWideCamSupportVideoPortrait:Z

    iget-boolean v6, p0, Lcom/transsion/camera/feature/setting/widecamera/WideCamera;->mIsWideCamSupportVideoSpot:Z

    iget-boolean v7, p0, Lcom/transsion/camera/feature/setting/widecamera/WideCamera;->mIsWideCamSupportVideoPortraitSpot:Z

    const-string v2, "reset"

    const/4 v3, 0x0

    invoke-static/range {v2 .. v7}, Lcom/transsion/camera/feature/setting/widecamera/WideCameraRestriction;->getWideCameraRelation(Ljava/lang/String;ZZZZZ)Lcom/transsion/camera/app/common/relation/Relation;

    move-result-object p1

    :cond_36
    :goto_36
    if-nez p1, :cond_39

    return-void

    .line 238
    :cond_39
    iget-boolean v1, p0, Lcom/transsion/camera/feature/setting/widecamera/WideCamera;->mVideoEnhanceYUVSupportWideCamera:Z

    if-eqz v1, :cond_47

    .line 239
    const-string v1, "key_video_enhance_yuv"

    invoke-virtual {p1, v1}, Lcom/transsion/camera/app/common/relation/Relation;->removeBody(Ljava/lang/String;)V

    .line 240
    const-string v1, "key_video_super_night_yuv"

    invoke-virtual {p1, v1}, Lcom/transsion/camera/app/common/relation/Relation;->removeBody(Ljava/lang/String;)V

    .line 242
    :cond_47
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v1

    iget-boolean v1, v1, Lcom/transsion/camera/utils/CustomConfigUtil;->mDHdrAndRawSuperNightBothSupport:Z

    if-eqz v1, :cond_75

    .line 243
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, "key_dol_video_hdr"

    const-string v2, "key_360_video_hdr"

    const-string v3, "key_com_video_hdr"

    if-eqz v0, :cond_6b

    .line 244
    const-string v0, "off"

    invoke-virtual {p1, v3, v0, v0}, Lcom/transsion/camera/app/common/relation/Relation;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 245
    invoke-virtual {p1, v2, v0, v0}, Lcom/transsion/camera/app/common/relation/Relation;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 246
    invoke-virtual {p1, v1, v0, v0}, Lcom/transsion/camera/app/common/relation/Relation;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_75

    :cond_6b
    const/4 v0, 0x0

    .line 248
    invoke-virtual {p1, v3, v0, v0}, Lcom/transsion/camera/app/common/relation/Relation;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 249
    invoke-virtual {p1, v2, v0, v0}, Lcom/transsion/camera/app/common/relation/Relation;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 250
    invoke-virtual {p1, v1, v0, v0}, Lcom/transsion/camera/app/common/relation/Relation;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 253
    :cond_75
    :goto_75
    iget-object p0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    invoke-interface {p0, p1}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->postRestriction(Lcom/transsion/camera/app/common/relation/Relation;)V

    return-void
.end method


# virtual methods
.method public configCommand(Lcom/transsion/camera/adapter/CameraProxy;)V
    .registers 2

    return-void
.end method

.method public configParameters(Lcom/transsion/camera/adapter/CameraParameters;)I
    .registers 2

    const/4 p0, -0x1

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

.method public getCurrentModeType()Lcom/transsion/camera/app/common/mode/ICameraMode$ModeType;
    .registers 1

    .line 192
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/widecamera/WideCamera;->mModeType:Lcom/transsion/camera/app/common/mode/ICameraMode$ModeType;

    return-object p0
.end method

.method public getKey()Ljava/lang/String;
    .registers 1

    .line 173
    const-string/jumbo p0, "wide_camera"

    return-object p0
.end method

.method public getParametersConfigure()Lcom/transsion/camera/app/common/setting/ICameraSetting$IParametersConfigure;
    .registers 1

    return-object p0
.end method

.method public getPreviewStateCallback()Lcom/transsion/camera/app/common/setting/ICameraSetting$PreviewStateCallback;
    .registers 1

    .line 222
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/widecamera/WideCamera;->mPreviewStateCallback:Lcom/transsion/camera/app/common/setting/ICameraSetting$PreviewStateCallback;

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

    .line 168
    sget-object p0, Lcom/transsion/camera/app/common/setting/ICameraSetting$SettingType;->PHOTO_AND_VIDEO:Lcom/transsion/camera/app/common/setting/ICameraSetting$SettingType;

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

    .line 217
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getEntryValues()Ljava/util/List;

    move-result-object p0

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
    .registers 7

    .line 97
    invoke-super {p0, p1, p2, p3}, Lcom/transsion/camera/app/common/setting/SettingBase;->init(Landroid/content/Context;Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;Lcom/transsion/camera/app/common/storage/DataStore;)V

    .line 98
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object p1

    iget-boolean p1, p1, Lcom/transsion/camera/utils/CustomConfigUtil;->mIsMacroSupportZoom:Z

    iput-boolean p1, p0, Lcom/transsion/camera/feature/setting/widecamera/WideCamera;->mIsMacroSupportZoom:Z

    .line 99
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object p1

    iget p1, p1, Lcom/transsion/camera/utils/CustomConfigUtil;->mZoomStyleType:I

    const/4 p2, 0x2

    const/4 p3, 0x0

    if-ne p1, p2, :cond_17

    const/4 p1, 0x1

    goto :goto_18

    :cond_17
    move p1, p3

    :goto_18
    iput-boolean p1, p0, Lcom/transsion/camera/feature/setting/widecamera/WideCamera;->mIsWideSupportZoom:Z

    .line 100
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object p1

    iget-boolean p1, p1, Lcom/transsion/camera/utils/CustomConfigUtil;->mIsWideCamUISupport:Z

    iput-boolean p1, p0, Lcom/transsion/camera/feature/setting/widecamera/WideCamera;->mIsWideCamUISupport:Z

    .line 101
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object p1

    iget-boolean p1, p1, Lcom/transsion/camera/utils/CustomConfigUtil;->mIsWideCamSupportVideoPortrait:Z

    iput-boolean p1, p0, Lcom/transsion/camera/feature/setting/widecamera/WideCamera;->mIsWideCamSupportVideoPortrait:Z

    .line 102
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object p1

    iget-boolean p1, p1, Lcom/transsion/camera/utils/CustomConfigUtil;->mIsWideCamSupportVideoSpot:Z

    iput-boolean p1, p0, Lcom/transsion/camera/feature/setting/widecamera/WideCamera;->mIsWideCamSupportVideoSpot:Z

    .line 103
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object p1

    iget-boolean p1, p1, Lcom/transsion/camera/utils/CustomConfigUtil;->mIsWideCamSupportVideoPortraitSpot:Z

    iput-boolean p1, p0, Lcom/transsion/camera/feature/setting/widecamera/WideCamera;->mIsWideCamSupportVideoPortraitSpot:Z

    .line 104
    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->isVideoEnhanceYuvSupportWideCamera()Z

    move-result p1

    iput-boolean p1, p0, Lcom/transsion/camera/feature/setting/widecamera/WideCamera;->mVideoEnhanceYUVSupportWideCamera:Z

    .line 105
    iget-object p1, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    const-string p2, "need_memory_zoom_value"

    iget-object v0, p0, Lcom/transsion/camera/feature/setting/widecamera/WideCamera;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    invoke-virtual {p1, p2, v0}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->registerValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 106
    iget-object p1, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    const-string p2, "back_super_wide_camera"

    .line 107
    invoke-virtual {p1}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v0

    .line 106
    const-string v1, "off"

    invoke-virtual {p1, p2, v1, v0}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 107
    const-string p2, "on"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    .line 108
    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/widecamera/WideCamera;->getKey()Ljava/lang/String;

    move-result-object v2

    if-eqz p1, :cond_66

    move-object v1, p2

    :cond_66
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getGlobalScope()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, v2, v1, p0, p3}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method protected initValueAndSupport(Ljava/util/List;Ljava/lang/String;)V
    .registers 5
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

    .line 130
    invoke-static {}, Lcom/transsion/camera/adapter/CameraAgentFactory;->getCameraAgent()Lcom/transsion/camera/adapter/CameraAgent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/camera/adapter/CameraAgent;->getCameraDeviceInfo()Lcom/transsion/camera/adapter/ICameraDeviceInfo;

    move-result-object v0

    invoke-interface {v0}, Lcom/transsion/camera/adapter/ICameraDeviceInfo;->getWideCameraId()Ljava/lang/String;

    move-result-object v0

    .line 131
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getCurrentCameraId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/widecamera/WideCamera;->mIsWideCamera:Z

    .line 132
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getCurrentCameraId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/transsion/camera/adapter/CameraInfoUtil;->isCameraFacingFront(Ljava/lang/String;)Z

    move-result v0

    const-string v1, "off"

    if-eqz v0, :cond_26

    .line 133
    invoke-interface {p1}, Ljava/util/List;->clear()V

    move-object p2, v1

    .line 136
    :cond_26
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/setting/SettingBase;->setSupportedEntryValues(Ljava/util/List;)V

    .line 137
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/setting/SettingBase;->setEntryValues(Ljava/util/List;)V

    .line 138
    invoke-virtual {p0, p2}, Lcom/transsion/camera/app/common/setting/SettingBase;->setDefaultValue(Ljava/lang/String;)V

    .line 139
    iget-boolean p1, p0, Lcom/transsion/camera/feature/setting/widecamera/WideCamera;->mIsWideCamera:Z

    if-eqz p1, :cond_35

    const-string v1, "on"

    :cond_35
    invoke-virtual {p0, v1}, Lcom/transsion/camera/app/common/setting/SettingBase;->setValue(Ljava/lang/String;)V

    .line 140
    iget-object p1, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/widecamera/WideCamera;->getKey()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getGlobalScope()Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v0, p0, v1}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public onCameraClosedBefore()V
    .registers 5

    .line 158
    invoke-super {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->onCameraClosedBefore()V

    .line 159
    const-string v0, "off"

    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/common/setting/SettingBase;->setValue(Ljava/lang/String;)V

    .line 160
    iget-object v1, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/widecamera/WideCamera;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getGlobalScope()Ljava/lang/String;

    move-result-object p0

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v0, p0, v3}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public onModeClosed(Ljava/lang/String;)V
    .registers 5

    .line 151
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/setting/SettingBase;->onModeClosed(Ljava/lang/String;)V

    .line 152
    const-string p1, "off"

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/setting/SettingBase;->setValue(Ljava/lang/String;)V

    .line 153
    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/widecamera/WideCamera;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getGlobalScope()Ljava/lang/String;

    move-result-object p0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, p0, v2}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public onModeOpened(Ljava/lang/String;Lcom/transsion/camera/app/common/mode/ICameraMode$ModeType;[Ljava/lang/String;)V
    .registers 4

    .line 145
    invoke-super {p0, p1, p2, p3}, Lcom/transsion/camera/app/common/setting/SettingBase;->onModeOpened(Ljava/lang/String;Lcom/transsion/camera/app/common/mode/ICameraMode$ModeType;[Ljava/lang/String;)V

    .line 146
    iput-object p2, p0, Lcom/transsion/camera/feature/setting/widecamera/WideCamera;->mModeType:Lcom/transsion/camera/app/common/mode/ICameraMode$ModeType;

    return-void
.end method

.method public onValueChanged(Ljava/lang/String;)V
    .registers 9

    .line 197
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_48

    .line 198
    sget-object v0, Lcom/transsion/camera/feature/setting/widecamera/WideCamera;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[onWideCameraValueChanged] value = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 199
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/setting/SettingBase;->setValue(Ljava/lang/String;)V

    .line 200
    const-string v0, "on"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_31

    iget-boolean v0, p0, Lcom/transsion/camera/feature/setting/widecamera/WideCamera;->mIsWideCamera:Z

    if-nez v0, :cond_31

    const/4 v0, 0x1

    goto :goto_32

    :cond_31
    const/4 v0, 0x0

    :goto_32
    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/widecamera/WideCamera;->mNeedShow:Z

    .line 201
    iget-object v1, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getGlobalScope()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string/jumbo v2, "wide_camera"

    move-object v3, p1

    invoke-virtual/range {v1 .. v6}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 202
    iget-boolean p1, p0, Lcom/transsion/camera/feature/setting/widecamera/WideCamera;->mIsWideCamera:Z

    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/setting/widecamera/WideCamera;->handleRestriction(Z)V

    :cond_48
    return-void
.end method

.method public onValueChangedOnly(Ljava/lang/String;)V
    .registers 9

    .line 208
    sget-object v0, Lcom/transsion/camera/feature/setting/widecamera/WideCamera;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[onValueChangedOnly], value:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 209
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_33

    .line 210
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/setting/SettingBase;->setValueOnly(Ljava/lang/String;)V

    .line 211
    iget-object v1, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/widecamera/WideCamera;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getGlobalScope()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v3, p1

    invoke-virtual/range {v1 .. v6}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    :cond_33
    return-void
.end method

.method public bridge synthetic onZoomUIStateChanged(Z)V
    .registers 2

    .line 0
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/setting/ISetting;->onZoomUIStateChanged(Z)V

    return-void
.end method

.method public overrideValues(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 184
    sget-object v0, Lcom/transsion/camera/feature/setting/widecamera/WideCamera;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[overrideValues] headerKey = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " ,currentValue = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 186
    invoke-super {p0, p1, p2, p3}, Lcom/transsion/camera/app/common/setting/SettingBase;->overrideValues(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    .line 187
    const-string p1, "on"

    invoke-static {p2, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/transsion/camera/feature/setting/widecamera/WideCamera;->mNeedShow:Z

    .line 188
    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getGlobalScope()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    const-string/jumbo v1, "wide_camera"

    move-object v2, p2

    invoke-virtual/range {v0 .. v5}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    return-void
.end method

.method public pause()V
    .registers 6

    .line 119
    invoke-super {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->pause()V

    .line 120
    iget-boolean v0, p0, Lcom/transsion/camera/feature/setting/widecamera/WideCamera;->mNeedSaveZoomValue:Z

    const/4 v1, 0x0

    if-nez v0, :cond_1d

    .line 121
    const-string v0, "off"

    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/common/setting/SettingBase;->setValue(Ljava/lang/String;)V

    .line 122
    iget-object v2, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/widecamera/WideCamera;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getGlobalScope()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v0, v4, v1}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 123
    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/widecamera/WideCamera;->sendSettingChangeRequest()V

    .line 125
    :cond_1d
    iput-boolean v1, p0, Lcom/transsion/camera/feature/setting/widecamera/WideCamera;->mNeedSaveZoomValue:Z

    return-void
.end method

.method public postRestrictionAfterInitialized()V
    .registers 2

    .line 92
    iget-boolean v0, p0, Lcom/transsion/camera/feature/setting/widecamera/WideCamera;->mIsWideCamera:Z

    invoke-direct {p0, v0}, Lcom/transsion/camera/feature/setting/widecamera/WideCamera;->handleRestriction(Z)V

    return-void
.end method

.method public restoreToSupportedPlatformValue()V
    .registers 1

    .line 270
    invoke-super {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->restoreToSupportedPlatformValue()V

    return-void
.end method

.method public sendSettingChangeRequest()V
    .registers 1

    return-void
.end method

.method public setCameraCapabilities(Lcom/transsion/camera/adapter/ICameraCapabilities;)V
    .registers 3

    .line 280
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 281
    const-string v0, "on"

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 282
    const-string v0, "off"

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 283
    invoke-virtual {p0, p1, v0}, Lcom/transsion/camera/feature/setting/widecamera/WideCamera;->initValueAndSupport(Ljava/util/List;Ljava/lang/String;)V

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
    .registers 3

    .line 113
    invoke-super {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->unInit()V

    .line 114
    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    const-string v1, "need_memory_zoom_value"

    iget-object p0, p0, Lcom/transsion/camera/feature/setting/widecamera/WideCamera;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    invoke-virtual {v0, v1, p0}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->unregisterValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    return-void
.end method

.method public bridge synthetic updateEntryValueList(Z)V
    .registers 2

    .line 0
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/setting/ISetting;->updateEntryValueList(Z)V

    return-void
.end method
