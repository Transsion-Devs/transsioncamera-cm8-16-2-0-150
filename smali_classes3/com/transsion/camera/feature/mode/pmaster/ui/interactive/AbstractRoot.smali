.class public abstract Lcom/transsion/camera/feature/mode/pmaster/ui/interactive/AbstractRoot;
.super Landroid/widget/RelativeLayout;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/feature/mode/pmaster/ui/interactive/IFeature;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/feature/mode/pmaster/ui/interactive/AbstractRoot$BlurStatusChangeListener;
    }
.end annotation


# instance fields
.field protected isPortraitBlurConflictWithMakeUp:Z

.field protected isSupportedPortraitFlare:Z

.field protected mAlgoSupportForBackCamera:Z

.field private mBlurOperator:Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot$BlurOperator;

.field protected mContext:Landroid/content/Context;

.field protected mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

.field protected mHideBottomPanelListener:Lcom/transsion/camera/feature/mode/pmaster/ui/interactive/IFeature$IBottomPanelHideListener;

.field protected mIsFaceBeautyConflictWithMakeUp:Z

.field protected mIsVipMode:Z

.field protected mLensFacing:Ljava/lang/String;

.field protected mOrientation:I

.field protected mParentLayout:Landroid/view/ViewGroup;

.field protected mScreenFormType:I

.field protected mScrollHelper:Lcom/transsion/camera/app/common/ui/helper/ScrollHelper;

.field protected mSetting:Lcom/transsion/camera/app/common/setting/ISetting;

.field protected mShouldHideBottomPanel:Z

.field private final mStatusChangeListener:Lcom/transsion/camera/feature/mode/pmaster/ui/interactive/AbstractRoot$BlurStatusChangeListener;

.field protected mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

.field protected final mTag:Lcom/transsion/camera/utils/debug/Log$Tag;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 7

    .line 52
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 31
    new-instance p2, Lcom/transsion/camera/feature/mode/pmaster/ui/interactive/AbstractRoot$BlurStatusChangeListener;

    const/4 v0, 0x0

    invoke-direct {p2, p0, v0}, Lcom/transsion/camera/feature/mode/pmaster/ui/interactive/AbstractRoot$BlurStatusChangeListener;-><init>(Lcom/transsion/camera/feature/mode/pmaster/ui/interactive/AbstractRoot;Lcom/transsion/camera/feature/mode/pmaster/ui/interactive/AbstractRoot-IA;)V

    iput-object p2, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/interactive/AbstractRoot;->mStatusChangeListener:Lcom/transsion/camera/feature/mode/pmaster/ui/interactive/AbstractRoot$BlurStatusChangeListener;

    const/4 p2, 0x0

    .line 42
    iput p2, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/interactive/AbstractRoot;->mScreenFormType:I

    .line 43
    iput p2, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/interactive/AbstractRoot;->mOrientation:I

    .line 53
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/interactive/AbstractRoot;->mContext:Landroid/content/Context;

    .line 54
    new-instance p1, Lcom/transsion/camera/utils/debug/Log$Tag;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/interactive/AbstractRoot;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    .line 55
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object p1

    iget-boolean p1, p1, Lcom/transsion/camera/utils/CustomConfigUtil;->mIsPortraitBlurConflictWithMakeUp:Z

    iput-boolean p1, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/interactive/AbstractRoot;->isPortraitBlurConflictWithMakeUp:Z

    .line 56
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/camera/utils/CustomConfigUtil;->getPortraitFlareSupport()Z

    move-result p1

    iput-boolean p1, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/interactive/AbstractRoot;->isSupportedPortraitFlare:Z

    .line 57
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object p1

    iget-boolean p1, p1, Lcom/transsion/camera/utils/CustomConfigUtil;->mAlgoSupportForBackCamera:Z

    iput-boolean p1, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/interactive/AbstractRoot;->mAlgoSupportForBackCamera:Z

    .line 58
    invoke-static {}, Lcom/transsion/camera/utils/MemoryUtils;->getTotalMemory()J

    move-result-wide v0

    const-wide/16 v2, 0xfa0

    cmp-long p1, v0, v2

    if-gez p1, :cond_46

    const/4 p2, 0x1

    :cond_46
    iput-boolean p2, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/interactive/AbstractRoot;->mIsFaceBeautyConflictWithMakeUp:Z

    return-void
.end method


# virtual methods
.method protected closeBlurByConflict(Ljava/lang/String;)V
    .registers 3

    .line 70
    iget-boolean v0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/interactive/AbstractRoot;->isPortraitBlurConflictWithMakeUp:Z

    if-eqz v0, :cond_9

    .line 71
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/interactive/AbstractRoot;->mBlurOperator:Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot$BlurOperator;

    invoke-interface {p0, p1}, Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot$BlurOperator;->closeBlur(Ljava/lang/String;)V

    :cond_9
    return-void
.end method

.method protected getBlurValue()Ljava/lang/String;
    .registers 4

    .line 77
    iget-boolean v0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/interactive/AbstractRoot;->mAlgoSupportForBackCamera:Z

    const-string v1, "key_mu_monomer"

    const-string v2, "f0.0"

    if-eqz v0, :cond_15

    .line 78
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/interactive/AbstractRoot;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    iget-object p0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/interactive/AbstractRoot;->mLensFacing:Ljava/lang/String;

    invoke-virtual {v0, p0}, Lcom/transsion/camera/app/common/storage/DataStore;->getCameraScope(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, v1, v2, p0}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 80
    :cond_15
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/interactive/AbstractRoot;->mLensFacing:Ljava/lang/String;

    invoke-static {v0}, Lcom/transsion/camera/adapter/CameraInfoUtil;->isCameraFacingBack(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 81
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/interactive/AbstractRoot;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    const-string v0, "key_mu_stereo"

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v2, v1}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 83
    :cond_2a
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/interactive/AbstractRoot;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v1, v2, v0}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected getRememberedValue(Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    .line 212
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/interactive/AbstractRoot;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    iget-object v1, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/interactive/AbstractRoot;->mLensFacing:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/storage/DataStore;->getCameraFacingScope(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2, v1}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 213
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/interactive/AbstractRoot;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getRememberedValue: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/interactive/AbstractRoot;->mLensFacing:Ljava/lang/String;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ","

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-object v0
.end method

.method protected isMainThread()Z
    .registers 2

    .line 231
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object p0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    if-ne p0, v0, :cond_c

    const/4 p0, 0x1

    return p0

    :cond_c
    const/4 p0, 0x0

    return p0
.end method

.method protected isVipMode()Z
    .registers 1

    .line 90
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/interactive/AbstractRoot;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/transsion/camera/utils/CameraUtil;->isVIPSelfieMode(Landroid/content/Context;)Z

    move-result p0

    return p0
.end method

.method protected abstract onConflictSettingChanged(Ljava/lang/String;Z)V
.end method

.method public registerSettingDevice(Lcom/transsion/camera/app/common/setting/ISetting;)V
    .registers 3

    .line 94
    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/pmaster/ui/interactive/AbstractRoot;->isVipMode()Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/interactive/AbstractRoot;->mIsVipMode:Z

    .line 95
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/interactive/AbstractRoot;->mSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    .line 96
    invoke-interface {p1}, Lcom/transsion/camera/app/common/setting/ISetting;->getDataStore()Lcom/transsion/camera/app/common/storage/DataStore;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/interactive/AbstractRoot;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    .line 97
    invoke-interface {p1}, Lcom/transsion/camera/app/common/setting/ISetting;->getCurrentCameraId()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/transsion/camera/adapter/CameraInfoUtil;->getFacing(Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/interactive/AbstractRoot;->mLensFacing:Ljava/lang/String;

    const/4 p1, 0x0

    .line 98
    iput-boolean p1, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/interactive/AbstractRoot;->mShouldHideBottomPanel:Z

    return-void
.end method

.method protected rememberValue(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    .line 205
    iget-boolean v0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/interactive/AbstractRoot;->isPortraitBlurConflictWithMakeUp:Z

    if-eqz v0, :cond_36

    .line 206
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/interactive/AbstractRoot;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    iget-object v1, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/interactive/AbstractRoot;->mLensFacing:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/storage/DataStore;->getCameraFacingScope(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, p1, p2, v1, v2}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 207
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/interactive/AbstractRoot;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "rememberValue: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/interactive/AbstractRoot;->mLensFacing:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ","

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    :cond_36
    return-void
.end method

.method public setBlurOperator(Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot$BlurOperator;)V
    .registers 2

    .line 66
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/interactive/AbstractRoot;->mBlurOperator:Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot$BlurOperator;

    return-void
.end method

.method public setHideBottomListener(Lcom/transsion/camera/feature/mode/pmaster/ui/interactive/IFeature$IBottomPanelHideListener;)V
    .registers 2

    .line 134
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/interactive/AbstractRoot;->mHideBottomPanelListener:Lcom/transsion/camera/feature/mode/pmaster/ui/interactive/IFeature$IBottomPanelHideListener;

    return-void
.end method

.method public setParentView(Landroid/view/ViewGroup;)V
    .registers 2

    .line 62
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/interactive/AbstractRoot;->mParentLayout:Landroid/view/ViewGroup;

    return-void
.end method

.method public setScreenFormType(II)V
    .registers 3

    .line 223
    iput p1, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/interactive/AbstractRoot;->mScreenFormType:I

    .line 224
    iput p2, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/interactive/AbstractRoot;->mOrientation:I

    return-void
.end method

.method public setSettingMonitor(Lcom/transsion/camera/app/common/setting/StatusMonitor;)V
    .registers 4

    .line 113
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/interactive/AbstractRoot;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    if-eqz p1, :cond_2c

    .line 114
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/interactive/AbstractRoot;->mStatusChangeListener:Lcom/transsion/camera/feature/mode/pmaster/ui/interactive/AbstractRoot$BlurStatusChangeListener;

    if-eqz v0, :cond_2c

    .line 115
    const-string v1, "key_restore_settings_notify_ui"

    invoke-virtual {p1, v1, v0}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->registerValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 116
    iget-boolean p1, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/interactive/AbstractRoot;->isPortraitBlurConflictWithMakeUp:Z

    if-eqz p1, :cond_2c

    .line 117
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/interactive/AbstractRoot;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    const-string v0, "key_portrait_flare"

    iget-object v1, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/interactive/AbstractRoot;->mStatusChangeListener:Lcom/transsion/camera/feature/mode/pmaster/ui/interactive/AbstractRoot$BlurStatusChangeListener;

    invoke-virtual {p1, v0, v1}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->registerValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 118
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/interactive/AbstractRoot;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    const-string v0, "key_mu_stereo"

    iget-object v1, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/interactive/AbstractRoot;->mStatusChangeListener:Lcom/transsion/camera/feature/mode/pmaster/ui/interactive/AbstractRoot$BlurStatusChangeListener;

    invoke-virtual {p1, v0, v1}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->registerValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 119
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/interactive/AbstractRoot;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    const-string v0, "key_mu_monomer"

    iget-object p0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/interactive/AbstractRoot;->mStatusChangeListener:Lcom/transsion/camera/feature/mode/pmaster/ui/interactive/AbstractRoot$BlurStatusChangeListener;

    invoke-virtual {p1, v0, p0}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->registerValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    :cond_2c
    return-void
.end method

.method public unregisterSettingDevice(Lcom/transsion/camera/app/common/setting/ISetting;)V
    .registers 2

    const/4 p1, 0x0

    .line 108
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/interactive/AbstractRoot;->mSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    const/4 p1, 0x0

    .line 109
    iput-boolean p1, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/interactive/AbstractRoot;->mShouldHideBottomPanel:Z

    return-void
.end method

.method public unregisterSettingListener()V
    .registers 4

    .line 125
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/interactive/AbstractRoot;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    if-eqz v0, :cond_26

    .line 126
    const-string v1, "key_mu_stereo"

    iget-object v2, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/interactive/AbstractRoot;->mStatusChangeListener:Lcom/transsion/camera/feature/mode/pmaster/ui/interactive/AbstractRoot$BlurStatusChangeListener;

    invoke-virtual {v0, v1, v2}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->unregisterValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 127
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/interactive/AbstractRoot;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    const-string v1, "key_mu_monomer"

    iget-object v2, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/interactive/AbstractRoot;->mStatusChangeListener:Lcom/transsion/camera/feature/mode/pmaster/ui/interactive/AbstractRoot$BlurStatusChangeListener;

    invoke-virtual {v0, v1, v2}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->unregisterValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 128
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/interactive/AbstractRoot;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    const-string v1, "key_portrait_flare"

    iget-object v2, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/interactive/AbstractRoot;->mStatusChangeListener:Lcom/transsion/camera/feature/mode/pmaster/ui/interactive/AbstractRoot$BlurStatusChangeListener;

    invoke-virtual {v0, v1, v2}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->unregisterValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 129
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/interactive/AbstractRoot;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    const-string v1, "key_restore_settings_notify_ui"

    iget-object p0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/interactive/AbstractRoot;->mStatusChangeListener:Lcom/transsion/camera/feature/mode/pmaster/ui/interactive/AbstractRoot$BlurStatusChangeListener;

    invoke-virtual {v0, v1, p0}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->unregisterValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    :cond_26
    return-void
.end method

.method protected updateFacingValue(Ljava/lang/String;)V
    .registers 3

    .line 102
    iget-boolean v0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/interactive/AbstractRoot;->isPortraitBlurConflictWithMakeUp:Z

    if-eqz v0, :cond_6

    .line 103
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/interactive/AbstractRoot;->mLensFacing:Ljava/lang/String;

    :cond_6
    return-void
.end method

.method protected abstract updateSwitchBar(Ljava/lang/String;)V
.end method

.method protected abstract updateUI(Ljava/lang/String;)V
.end method

.method public updateUIWhenSettingChange(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    .line 218
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/interactive/AbstractRoot;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateUIWhenSettingChange: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ","

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 219
    invoke-virtual {p0, p2}, Lcom/transsion/camera/feature/mode/pmaster/ui/interactive/AbstractRoot;->updateSwitchBar(Ljava/lang/String;)V

    return-void
.end method
