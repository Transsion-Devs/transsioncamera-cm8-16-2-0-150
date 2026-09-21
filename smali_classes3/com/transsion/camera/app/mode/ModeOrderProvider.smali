.class public Lcom/transsion/camera/app/mode/ModeOrderProvider;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private mBackDefaultMode:Ljava/lang/String;

.field private mBackRestoreMode:Ljava/lang/String;

.field private mCameraId:Ljava/lang/String;

.field private final mConfig:Lcom/transsion/camera/app/mode/ModePickerConfig;

.field private final mContext:Landroid/content/Context;

.field private mCurrentModeName:Ljava/lang/String;

.field private final mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

.field private mFrontDefaultMode:Ljava/lang/String;

.field private mFrontRestoreMode:Ljava/lang/String;

.field private mModeOrderPolicy:Lcom/transsion/camera/app/mode/IModeOrderPolicy;

.field private mSecureCamera:Z


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 29
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "ModeOrderProvider"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/app/mode/ModeOrderProvider;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/transsion/camera/app/common/storage/DataStore;)V
    .registers 3

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput-object p1, p0, Lcom/transsion/camera/app/mode/ModeOrderProvider;->mContext:Landroid/content/Context;

    .line 53
    iput-object p2, p0, Lcom/transsion/camera/app/mode/ModeOrderProvider;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    .line 54
    new-instance p1, Lcom/transsion/camera/app/mode/ModePickerConfig;

    invoke-direct {p1}, Lcom/transsion/camera/app/mode/ModePickerConfig;-><init>()V

    iput-object p1, p0, Lcom/transsion/camera/app/mode/ModeOrderProvider;->mConfig:Lcom/transsion/camera/app/mode/ModePickerConfig;

    return-void
.end method


# virtual methods
.method public getCameraModeList()Ljava/util/List;
    .registers 2

    .line 105
    iget-object v0, p0, Lcom/transsion/camera/app/mode/ModeOrderProvider;->mModeOrderPolicy:Lcom/transsion/camera/app/mode/IModeOrderPolicy;

    iget-object p0, p0, Lcom/transsion/camera/app/mode/ModeOrderProvider;->mCameraId:Ljava/lang/String;

    invoke-interface {v0, p0}, Lcom/transsion/camera/app/mode/IModeOrderPolicy;->getCameraModes(Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getConfig()Lcom/transsion/camera/app/mode/ModePickerConfig;
    .registers 1

    .line 58
    iget-object p0, p0, Lcom/transsion/camera/app/mode/ModeOrderProvider;->mConfig:Lcom/transsion/camera/app/mode/ModePickerConfig;

    return-object p0
.end method

.method public getDefaultMode()Ljava/lang/String;
    .registers 2

    .line 109
    iget-object v0, p0, Lcom/transsion/camera/app/mode/ModeOrderProvider;->mCameraId:Ljava/lang/String;

    invoke-static {v0}, Lcom/transsion/camera/adapter/CameraInfoUtil;->isCameraFacingBack(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 110
    iget-object p0, p0, Lcom/transsion/camera/app/mode/ModeOrderProvider;->mBackDefaultMode:Ljava/lang/String;

    return-object p0

    .line 112
    :cond_b
    iget-object p0, p0, Lcom/transsion/camera/app/mode/ModeOrderProvider;->mFrontDefaultMode:Ljava/lang/String;

    return-object p0
.end method

.method public getPanelModeList()Ljava/util/List;
    .registers 2

    .line 101
    iget-object v0, p0, Lcom/transsion/camera/app/mode/ModeOrderProvider;->mModeOrderPolicy:Lcom/transsion/camera/app/mode/IModeOrderPolicy;

    iget-object p0, p0, Lcom/transsion/camera/app/mode/ModeOrderProvider;->mCameraId:Ljava/lang/String;

    invoke-interface {v0, p0}, Lcom/transsion/camera/app/mode/IModeOrderPolicy;->getPanelModes(Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getRestoreMode()Ljava/lang/String;
    .registers 2

    .line 117
    iget-object v0, p0, Lcom/transsion/camera/app/mode/ModeOrderProvider;->mCameraId:Ljava/lang/String;

    invoke-static {v0}, Lcom/transsion/camera/adapter/CameraInfoUtil;->isCameraFacingBack(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 118
    iget-object p0, p0, Lcom/transsion/camera/app/mode/ModeOrderProvider;->mBackRestoreMode:Ljava/lang/String;

    return-object p0

    .line 120
    :cond_b
    iget-object p0, p0, Lcom/transsion/camera/app/mode/ModeOrderProvider;->mFrontRestoreMode:Ljava/lang/String;

    return-object p0
.end method

.method public getTabModeList()Ljava/util/List;
    .registers 2

    .line 94
    iget-object v0, p0, Lcom/transsion/camera/app/mode/ModeOrderProvider;->mModeOrderPolicy:Lcom/transsion/camera/app/mode/IModeOrderPolicy;

    if-nez v0, :cond_a

    .line 95
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0

    .line 97
    :cond_a
    iget-object p0, p0, Lcom/transsion/camera/app/mode/ModeOrderProvider;->mCameraId:Ljava/lang/String;

    invoke-interface {v0, p0}, Lcom/transsion/camera/app/mode/IModeOrderPolicy;->getTabModes(Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public isSecureCamera()Z
    .registers 1

    .line 141
    iget-boolean p0, p0, Lcom/transsion/camera/app/mode/ModeOrderProvider;->mSecureCamera:Z

    return p0
.end method

.method public moreModeShow()Z
    .registers 2

    .line 137
    iget-object v0, p0, Lcom/transsion/camera/app/mode/ModeOrderProvider;->mModeOrderPolicy:Lcom/transsion/camera/app/mode/IModeOrderPolicy;

    if-eqz v0, :cond_e

    iget-object p0, p0, Lcom/transsion/camera/app/mode/ModeOrderProvider;->mCameraId:Ljava/lang/String;

    invoke-interface {v0, p0}, Lcom/transsion/camera/app/mode/IModeOrderPolicy;->moreModeShow(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_e

    const/4 p0, 0x1

    return p0

    :cond_e
    const/4 p0, 0x0

    return p0
.end method

.method public providerDVVideoModeFeatureResource()Lcom/transsion/camera/app/common/FeatureResource;
    .registers 2

    .line 86
    new-instance p0, Lcom/transsion/camera/app/common/FeatureResource;

    invoke-direct {p0}, Lcom/transsion/camera/app/common/FeatureResource;-><init>()V

    .line 87
    const-string v0, "com.transsion.camera.feature.mode.video.DVVideoModeEntry"

    iput-object v0, p0, Lcom/transsion/camera/app/common/FeatureResource;->mFeatureName:Ljava/lang/String;

    .line 88
    const-string v0, "DV"

    iput-object v0, p0, Lcom/transsion/camera/app/common/FeatureResource;->mFeatureTitle:Ljava/lang/String;

    .line 89
    sget v0, Lcom/transsion/camera/R$drawable;->ic_more:I

    iput v0, p0, Lcom/transsion/camera/app/common/FeatureResource;->mIconId:I

    return-object p0
.end method

.method public providerMoreFeatureResource()Lcom/transsion/camera/app/common/FeatureResource;
    .registers 3

    .line 78
    new-instance v0, Lcom/transsion/camera/app/common/FeatureResource;

    invoke-direct {v0}, Lcom/transsion/camera/app/common/FeatureResource;-><init>()V

    .line 79
    const-string v1, "com.transsion.camera.feature.mode.more.MoreModeEntry"

    iput-object v1, v0, Lcom/transsion/camera/app/common/FeatureResource;->mFeatureName:Ljava/lang/String;

    .line 80
    iget-object p0, p0, Lcom/transsion/camera/app/mode/ModeOrderProvider;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v1, Lcom/transsion/camera/R$string;->more_mode_title:I

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lcom/transsion/camera/app/common/FeatureResource;->mFeatureTitle:Ljava/lang/String;

    .line 81
    sget p0, Lcom/transsion/camera/R$drawable;->ic_more:I

    iput p0, v0, Lcom/transsion/camera/app/common/FeatureResource;->mIconId:I

    return-object v0
.end method

.method public setDefaultMode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .line 146
    iput-object p1, p0, Lcom/transsion/camera/app/mode/ModeOrderProvider;->mBackDefaultMode:Ljava/lang/String;

    .line 147
    iput-object p2, p0, Lcom/transsion/camera/app/mode/ModeOrderProvider;->mBackRestoreMode:Ljava/lang/String;

    .line 148
    iput-object p3, p0, Lcom/transsion/camera/app/mode/ModeOrderProvider;->mFrontDefaultMode:Ljava/lang/String;

    .line 149
    iput-object p4, p0, Lcom/transsion/camera/app/mode/ModeOrderProvider;->mFrontRestoreMode:Ljava/lang/String;

    return-void
.end method

.method public setModeList(Ljava/util/List;Lcom/transsion/camera/app/common/mode/IModeSwitchPolicy;Z)V
    .registers 7

    .line 63
    iput-boolean p3, p0, Lcom/transsion/camera/app/mode/ModeOrderProvider;->mSecureCamera:Z

    .line 64
    new-instance p3, Lcom/transsion/camera/app/mode/MoreEditOrderPolicy;

    iget-object v0, p0, Lcom/transsion/camera/app/mode/ModeOrderProvider;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/transsion/camera/app/mode/ModeOrderProvider;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    iget-boolean v2, p0, Lcom/transsion/camera/app/mode/ModeOrderProvider;->mSecureCamera:Z

    invoke-direct {p3, v0, v1, v2}, Lcom/transsion/camera/app/mode/MoreEditOrderPolicy;-><init>(Landroid/content/Context;Lcom/transsion/camera/app/common/storage/DataStore;Z)V

    iput-object p3, p0, Lcom/transsion/camera/app/mode/ModeOrderProvider;->mModeOrderPolicy:Lcom/transsion/camera/app/mode/IModeOrderPolicy;

    .line 66
    const-string p3, "0"

    invoke-interface {p2, p3}, Lcom/transsion/camera/app/common/mode/IModeSwitchPolicy;->getDefaultMode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/app/mode/ModeOrderProvider;->mBackDefaultMode:Ljava/lang/String;

    .line 67
    const-string v0, "1"

    invoke-interface {p2, v0}, Lcom/transsion/camera/app/common/mode/IModeSwitchPolicy;->getDefaultMode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/transsion/camera/app/mode/ModeOrderProvider;->mFrontDefaultMode:Ljava/lang/String;

    const/4 v1, 0x0

    .line 68
    invoke-interface {p2, v1}, Lcom/transsion/camera/app/common/mode/IModeSwitchPolicy;->getRestoreModeByFacing(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/transsion/camera/app/mode/ModeOrderProvider;->mBackRestoreMode:Ljava/lang/String;

    const/4 v1, 0x1

    .line 69
    invoke-interface {p2, v1}, Lcom/transsion/camera/app/common/mode/IModeSwitchPolicy;->getRestoreModeByFacing(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/transsion/camera/app/mode/ModeOrderProvider;->mFrontRestoreMode:Ljava/lang/String;

    .line 71
    invoke-interface {p2, p3}, Lcom/transsion/camera/app/common/mode/IModeSwitchPolicy;->getModeNames(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p3

    .line 72
    invoke-interface {p2, v0}, Lcom/transsion/camera/app/common/mode/IModeSwitchPolicy;->getModeNames(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p2

    .line 74
    iget-object p0, p0, Lcom/transsion/camera/app/mode/ModeOrderProvider;->mModeOrderPolicy:Lcom/transsion/camera/app/mode/IModeOrderPolicy;

    invoke-interface {p0, p1, p3, p2}, Lcom/transsion/camera/app/mode/IModeOrderPolicy;->setModeList(Ljava/util/List;[Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method

.method public updateCurrentCamera(Ljava/lang/String;)V
    .registers 2

    .line 125
    iput-object p1, p0, Lcom/transsion/camera/app/mode/ModeOrderProvider;->mCameraId:Ljava/lang/String;

    return-void
.end method

.method public updateCurrentMode(Ljava/lang/String;)V
    .registers 2

    .line 133
    iput-object p1, p0, Lcom/transsion/camera/app/mode/ModeOrderProvider;->mCurrentModeName:Ljava/lang/String;

    return-void
.end method

.method public updateCurrentModes(Ljava/util/List;Ljava/util/List;)V
    .registers 4

    .line 129
    iget-object v0, p0, Lcom/transsion/camera/app/mode/ModeOrderProvider;->mModeOrderPolicy:Lcom/transsion/camera/app/mode/IModeOrderPolicy;

    iget-object p0, p0, Lcom/transsion/camera/app/mode/ModeOrderProvider;->mCameraId:Ljava/lang/String;

    invoke-interface {v0, p0, p1, p2}, Lcom/transsion/camera/app/mode/IModeOrderPolicy;->updateCurrentModes(Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V

    return-void
.end method
