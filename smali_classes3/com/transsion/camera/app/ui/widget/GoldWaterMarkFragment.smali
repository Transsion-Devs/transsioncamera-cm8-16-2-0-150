.class public Lcom/transsion/camera/app/ui/widget/GoldWaterMarkFragment;
.super Lcom/transsion/camera/app/ui/AbstractSettingFragment;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/app/ui/widget/GoldWaterMarkFragment$GoldWaterMarkHandler;,
        Lcom/transsion/camera/app/ui/widget/GoldWaterMarkFragment$GoldWaterMarkLocationHandler;
    }
.end annotation


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private final mCommonPreferenceList:Ljava/util/List;

.field private mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

.field private mHandler:Lcom/transsion/camera/app/ui/widget/GoldWaterMarkFragment$GoldWaterMarkHandler;

.field private mIAppUI:Lcom/transsion/camera/app/common/IAppUI;

.field mListView:Landroid/widget/ListView;

.field private mLocationButtonCheck:Z

.field private mLocationHandler:Lcom/transsion/camera/app/ui/widget/GoldWaterMarkFragment$GoldWaterMarkLocationHandler;

.field private mLocationInfo:Ljava/lang/String;

.field private mLocationManager:Lcom/transsion/camera/app/common/location/LocationManager;

.field private mLocationPermission:Lcom/transsion/camera/app/common/permission/PermissionManager;

.field private mLocationPreference:Landroid/preference/SwitchPreference;

.field private mLocationSupport:Z

.field private mNormalButtonCheck:Z

.field private mPermissionRequest:Z

.field private final mPhotoPreferenceList:Ljava/util/List;

.field private mPreference:Landroid/preference/SwitchPreference;

.field private mPreferenceList:Lcom/transsion/camera/app/ui/setting/AbstractPreferenceList;

.field private mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

.field private mSwitchPreferenceListener:Landroid/preference/Preference$OnPreferenceChangeListener;

.field private mTimeButtonCheck:Z

.field private mTimeInfo:Ljava/lang/String;

.field private mTimePreference:Landroid/preference/SwitchPreference;

.field private mToastInfo:Lcom/transsion/camera/app/common/ui/HintInfo;


# direct methods
.method public static synthetic $r8$lambda$R9D7fu88xSrrc0CmSWDh70k1EmI(Lcom/transsion/camera/app/ui/widget/GoldWaterMarkFragment;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/widget/GoldWaterMarkFragment;->lambda$initViews$0()V

    return-void
.end method

.method public static synthetic $r8$lambda$iJer5fC2r7sM4H-Q73Nob0ktuZo(Lcom/transsion/camera/app/ui/widget/GoldWaterMarkFragment;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/widget/GoldWaterMarkFragment;->lambda$updatePreviewUIState$1()V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetmDataStore(Lcom/transsion/camera/app/ui/widget/GoldWaterMarkFragment;)Lcom/transsion/camera/app/common/storage/DataStore;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/GoldWaterMarkFragment;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmHandler(Lcom/transsion/camera/app/ui/widget/GoldWaterMarkFragment;)Lcom/transsion/camera/app/ui/widget/GoldWaterMarkFragment$GoldWaterMarkHandler;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/GoldWaterMarkFragment;->mHandler:Lcom/transsion/camera/app/ui/widget/GoldWaterMarkFragment$GoldWaterMarkHandler;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmIAppUI(Lcom/transsion/camera/app/ui/widget/GoldWaterMarkFragment;)Lcom/transsion/camera/app/common/IAppUI;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/GoldWaterMarkFragment;->mIAppUI:Lcom/transsion/camera/app/common/IAppUI;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmLocationButtonCheck(Lcom/transsion/camera/app/ui/widget/GoldWaterMarkFragment;)Z
    .registers 1

    .line 0
    iget-boolean p0, p0, Lcom/transsion/camera/app/ui/widget/GoldWaterMarkFragment;->mLocationButtonCheck:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmLocationManager(Lcom/transsion/camera/app/ui/widget/GoldWaterMarkFragment;)Lcom/transsion/camera/app/common/location/LocationManager;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/GoldWaterMarkFragment;->mLocationManager:Lcom/transsion/camera/app/common/location/LocationManager;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmLocationPreference(Lcom/transsion/camera/app/ui/widget/GoldWaterMarkFragment;)Landroid/preference/SwitchPreference;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/GoldWaterMarkFragment;->mLocationPreference:Landroid/preference/SwitchPreference;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmStatusMonitor(Lcom/transsion/camera/app/ui/widget/GoldWaterMarkFragment;)Lcom/transsion/camera/app/common/setting/StatusMonitor;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/GoldWaterMarkFragment;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmToastInfo(Lcom/transsion/camera/app/ui/widget/GoldWaterMarkFragment;)Lcom/transsion/camera/app/common/ui/HintInfo;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/GoldWaterMarkFragment;->mToastInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmLocationButtonCheck(Lcom/transsion/camera/app/ui/widget/GoldWaterMarkFragment;Z)V
    .registers 2

    .line 0
    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/widget/GoldWaterMarkFragment;->mLocationButtonCheck:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$mclickLocationButton(Lcom/transsion/camera/app/ui/widget/GoldWaterMarkFragment;Z)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/widget/GoldWaterMarkFragment;->clickLocationButton(Z)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mclickNormalButton(Lcom/transsion/camera/app/ui/widget/GoldWaterMarkFragment;Z)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/widget/GoldWaterMarkFragment;->clickNormalButton(Z)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mclickTimeButton(Lcom/transsion/camera/app/ui/widget/GoldWaterMarkFragment;Z)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/widget/GoldWaterMarkFragment;->clickTimeButton(Z)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateLocationInfo(Lcom/transsion/camera/app/ui/widget/GoldWaterMarkFragment;I)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/widget/GoldWaterMarkFragment;->updateLocationInfo(I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateLocationPreviewText(Lcom/transsion/camera/app/ui/widget/GoldWaterMarkFragment;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/widget/GoldWaterMarkFragment;->updateLocationPreviewText()V

    return-void
.end method

.method static bridge synthetic -$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;
    .registers 1

    .line 0
    sget-object v0, Lcom/transsion/camera/app/ui/widget/GoldWaterMarkFragment;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 58
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "GoldWaterMarkFragment"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/app/ui/widget/GoldWaterMarkFragment;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .line 57
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/AbstractSettingFragment;-><init>()V

    .line 66
    new-instance v0, Lcom/transsion/camera/app/common/ui/HintInfo;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/transsion/camera/app/common/ui/HintInfo;-><init>(I)V

    iput-object v0, p0, Lcom/transsion/camera/app/ui/widget/GoldWaterMarkFragment;->mToastInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    .line 68
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/app/ui/widget/GoldWaterMarkFragment;->mPhotoPreferenceList:Ljava/util/List;

    .line 69
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/app/ui/widget/GoldWaterMarkFragment;->mCommonPreferenceList:Ljava/util/List;

    .line 76
    new-instance v0, Lcom/transsion/camera/app/ui/setting/PreferenceList;

    invoke-direct {v0}, Lcom/transsion/camera/app/ui/setting/PreferenceList;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/app/ui/widget/GoldWaterMarkFragment;->mPreferenceList:Lcom/transsion/camera/app/ui/setting/AbstractPreferenceList;

    .line 114
    new-instance v0, Lcom/transsion/camera/app/ui/widget/GoldWaterMarkFragment$1;

    invoke-direct {v0, p0}, Lcom/transsion/camera/app/ui/widget/GoldWaterMarkFragment$1;-><init>(Lcom/transsion/camera/app/ui/widget/GoldWaterMarkFragment;)V

    iput-object v0, p0, Lcom/transsion/camera/app/ui/widget/GoldWaterMarkFragment;->mSwitchPreferenceListener:Landroid/preference/Preference$OnPreferenceChangeListener;

    return-void
.end method

.method private addCommonPreference()V
    .registers 4

    .line 401
    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/transsion/camera/R$string;->gold_watermark_setting_normal:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 402
    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/transsion/camera/R$string;->gold_watermark_setting_normal_summary:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 400
    const-string v2, "key_gold_watermark_normal"

    invoke-direct {p0, v2, v0, v1}, Lcom/transsion/camera/app/ui/widget/GoldWaterMarkFragment;->createTogglePreference(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/preference/SwitchPreference;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/app/ui/widget/GoldWaterMarkFragment;->mPreference:Landroid/preference/SwitchPreference;

    .line 403
    sget-object v0, Lcom/transsion/camera/app/ui/widget/GoldWaterMarkFragment;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[addCommonPreference]: mNormalButtonCheck = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/transsion/camera/app/ui/widget/GoldWaterMarkFragment;->mNormalButtonCheck:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " mTimeButtonCheck = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/transsion/camera/app/ui/widget/GoldWaterMarkFragment;->mTimeButtonCheck:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 406
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/GoldWaterMarkFragment;->mPreference:Landroid/preference/SwitchPreference;

    check-cast v0, Lcom/transsion/camera/app/ui/widget/preference/PreferenceItemUiManager$StateSwitchPreferenceUi;

    iget-boolean v1, p0, Lcom/transsion/camera/app/ui/widget/GoldWaterMarkFragment;->mNormalButtonCheck:Z

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/ui/widget/preference/PreferenceItemUiManager$StateSwitchPreferenceUi;->setSwitchChecked(Z)V

    .line 407
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/GoldWaterMarkFragment;->mPreference:Landroid/preference/SwitchPreference;

    iget-object v1, p0, Lcom/transsion/camera/app/ui/widget/GoldWaterMarkFragment;->mSwitchPreferenceListener:Landroid/preference/Preference$OnPreferenceChangeListener;

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 408
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/GoldWaterMarkFragment;->mCommonPreferenceList:Ljava/util/List;

    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/GoldWaterMarkFragment;->mPreference:Landroid/preference/SwitchPreference;

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private addLocationPreference()V
    .registers 6

    .line 412
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/GoldWaterMarkFragment;->mIAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {v0}, Lcom/transsion/camera/app/common/IAppUI;->isSecureCamera()Z

    move-result v0

    .line 413
    iget-object v1, p0, Lcom/transsion/camera/app/ui/widget/GoldWaterMarkFragment;->mIAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {v1}, Lcom/transsion/camera/app/common/IAppUI;->isVoiceInteraction()Z

    move-result v1

    .line 414
    sget-object v2, Lcom/transsion/camera/app/ui/widget/GoldWaterMarkFragment;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[addLocationPreference], isSecureCamera: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", isVoiceInteraction: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 417
    iget-boolean v2, p0, Lcom/transsion/camera/app/ui/widget/GoldWaterMarkFragment;->mLocationSupport:Z

    if-eqz v2, :cond_66

    iget-boolean v2, p0, Lcom/transsion/camera/app/ui/widget/GoldWaterMarkFragment;->mNormalButtonCheck:Z

    if-nez v2, :cond_33

    goto :goto_66

    :cond_33
    if-nez v0, :cond_37

    if-eqz v1, :cond_40

    .line 421
    :cond_37
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/GoldWaterMarkFragment;->mLocationPermission:Lcom/transsion/camera/app/common/permission/PermissionManager;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/permission/PermissionManager;->checkCameraLocationPermissions()Z

    move-result v0

    if-nez v0, :cond_40

    goto :goto_66

    .line 426
    :cond_40
    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/transsion/camera/R$string;->gold_watermark_setting_location:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 425
    const-string v2, "key_gold_watermark_location"

    invoke-direct {p0, v2, v0, v1}, Lcom/transsion/camera/app/ui/widget/GoldWaterMarkFragment;->createTogglePreference(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/preference/SwitchPreference;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/app/ui/widget/GoldWaterMarkFragment;->mLocationPreference:Landroid/preference/SwitchPreference;

    .line 427
    iget-boolean v1, p0, Lcom/transsion/camera/app/ui/widget/GoldWaterMarkFragment;->mLocationButtonCheck:Z

    invoke-virtual {v0, v1}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 428
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/GoldWaterMarkFragment;->mLocationPreference:Landroid/preference/SwitchPreference;

    iget-object v1, p0, Lcom/transsion/camera/app/ui/widget/GoldWaterMarkFragment;->mSwitchPreferenceListener:Landroid/preference/Preference$OnPreferenceChangeListener;

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 429
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/GoldWaterMarkFragment;->mPhotoPreferenceList:Ljava/util/List;

    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/GoldWaterMarkFragment;->mLocationPreference:Landroid/preference/SwitchPreference;

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_66
    :goto_66
    return-void
.end method

.method private addTimePreference()V
    .registers 4

    .line 434
    sget-object v0, Lcom/transsion/camera/app/ui/widget/GoldWaterMarkFragment;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "[addTimePreference]: "

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 435
    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/transsion/camera/R$string;->gold_watermark_setting_time:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "key_gold_watermark_time"

    invoke-direct {p0, v2, v0, v1}, Lcom/transsion/camera/app/ui/widget/GoldWaterMarkFragment;->createTogglePreference(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/preference/SwitchPreference;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/app/ui/widget/GoldWaterMarkFragment;->mTimePreference:Landroid/preference/SwitchPreference;

    .line 436
    iget-object v1, p0, Lcom/transsion/camera/app/ui/widget/GoldWaterMarkFragment;->mSwitchPreferenceListener:Landroid/preference/Preference$OnPreferenceChangeListener;

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 437
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/GoldWaterMarkFragment;->mTimePreference:Landroid/preference/SwitchPreference;

    iget-boolean v1, p0, Lcom/transsion/camera/app/ui/widget/GoldWaterMarkFragment;->mTimeButtonCheck:Z

    invoke-virtual {v0, v1}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 438
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/GoldWaterMarkFragment;->mPhotoPreferenceList:Ljava/util/List;

    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/GoldWaterMarkFragment;->mTimePreference:Landroid/preference/SwitchPreference;

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private clickLocationButton(Z)V
    .registers 7

    .line 165
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/GoldWaterMarkFragment;->mHandler:Lcom/transsion/camera/app/ui/widget/GoldWaterMarkFragment$GoldWaterMarkHandler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    if-eqz p1, :cond_b

    .line 166
    const-string v0, "on"

    goto :goto_d

    :cond_b
    const-string v0, "off"

    .line 167
    :goto_d
    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/widget/GoldWaterMarkFragment;->mLocationButtonCheck:Z

    .line 168
    iget-object v1, p0, Lcom/transsion/camera/app/ui/widget/GoldWaterMarkFragment;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-virtual {v1}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const-string v4, "key_gold_watermark_location"

    invoke-virtual {v1, v4, v0, v2, v3}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 170
    sget-object v1, Lcom/transsion/camera/app/ui/widget/GoldWaterMarkFragment;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[clickLocationButton]: checked"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 171
    iget-object v2, p0, Lcom/transsion/camera/app/ui/widget/GoldWaterMarkFragment;->mLocationPermission:Lcom/transsion/camera/app/common/permission/PermissionManager;

    invoke-virtual {v2}, Lcom/transsion/camera/app/common/permission/PermissionManager;->checkCameraLocationPermissions()Z

    move-result v2

    if-nez v2, :cond_47

    .line 172
    const-string p1, "[clickLocationButton]: request location permission"

    invoke-static {v1, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 173
    iget-object p1, p0, Lcom/transsion/camera/app/ui/widget/GoldWaterMarkFragment;->mLocationPermission:Lcom/transsion/camera/app/common/permission/PermissionManager;

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/permission/PermissionManager;->requestCameraLocationPermissions()Z

    const/4 p1, 0x1

    .line 174
    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/widget/GoldWaterMarkFragment;->mPermissionRequest:Z

    return-void

    .line 178
    :cond_47
    iget-object v2, p0, Lcom/transsion/camera/app/ui/widget/GoldWaterMarkFragment;->mLocationHandler:Lcom/transsion/camera/app/ui/widget/GoldWaterMarkFragment$GoldWaterMarkLocationHandler;

    const/16 v3, 0x65

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 179
    iget-boolean v2, p0, Lcom/transsion/camera/app/ui/widget/GoldWaterMarkFragment;->mLocationButtonCheck:Z

    if-eqz v2, :cond_6c

    .line 180
    const-string v2, "[clickLocationButton]: request update location info"

    invoke-static {v1, v2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 181
    iget-object v1, p0, Lcom/transsion/camera/app/ui/widget/GoldWaterMarkFragment;->mLocationManager:Lcom/transsion/camera/app/common/location/LocationManager;

    invoke-virtual {v1, p1, v4}, Lcom/transsion/camera/app/common/location/LocationManager;->recordLocation(ZLjava/lang/String;)V

    .line 182
    new-instance p1, Landroid/os/Message;

    invoke-direct {p1}, Landroid/os/Message;-><init>()V

    .line 183
    iput v3, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x5

    .line 184
    iput v1, p1, Landroid/os/Message;->arg1:I

    .line 185
    iget-object v1, p0, Lcom/transsion/camera/app/ui/widget/GoldWaterMarkFragment;->mLocationHandler:Lcom/transsion/camera/app/ui/widget/GoldWaterMarkFragment$GoldWaterMarkLocationHandler;

    invoke-virtual {v1, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_6f

    .line 187
    :cond_6c
    invoke-direct {p0, v2}, Lcom/transsion/camera/app/ui/widget/GoldWaterMarkFragment;->showOrHideLocationPreviewText(Z)V

    .line 189
    :goto_6f
    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/GoldWaterMarkFragment;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    if-eqz p0, :cond_7a

    .line 190
    invoke-virtual {p0, v4}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->getStatusResponder(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;

    move-result-object p0

    invoke-virtual {p0, v4, v0}, Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;->statusChanged(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_7a
    return-void
.end method

.method private clickNormalButton(Z)V
    .registers 7

    if-eqz p1, :cond_5

    .line 135
    const-string v0, "on"

    goto :goto_7

    :cond_5
    const-string v0, "off"

    .line 136
    :goto_7
    iget-object v1, p0, Lcom/transsion/camera/app/ui/widget/GoldWaterMarkFragment;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-virtual {v1}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const-string v4, "key_gold_watermark_normal"

    invoke-virtual {v1, v4, v0, v2, v3}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 137
    iget-object v1, p0, Lcom/transsion/camera/app/ui/widget/GoldWaterMarkFragment;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    if-eqz v1, :cond_1e

    .line 138
    invoke-virtual {v1, v4}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->getStatusResponder(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;

    move-result-object v1

    invoke-virtual {v1, v4, v0}, Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;->statusChanged(Ljava/lang/String;Ljava/lang/Object;)V

    .line 140
    :cond_1e
    sget-object v0, Lcom/transsion/camera/app/ui/widget/GoldWaterMarkFragment;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[clickNormalButton]: checked: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    if-eqz p1, :cond_50

    .line 143
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/GoldWaterMarkFragment;->mPhotoPreferenceList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 144
    const-string v0, "pref_photo_category"

    invoke-virtual {p0, v0}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    .line 145
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/widget/GoldWaterMarkFragment;->addTimePreference()V

    .line 146
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/widget/GoldWaterMarkFragment;->addLocationPreference()V

    .line 147
    iget-object v1, p0, Lcom/transsion/camera/app/ui/widget/GoldWaterMarkFragment;->mPreferenceList:Lcom/transsion/camera/app/ui/setting/AbstractPreferenceList;

    iget-object v2, p0, Lcom/transsion/camera/app/ui/widget/GoldWaterMarkFragment;->mPhotoPreferenceList:Ljava/util/List;

    invoke-virtual {v1, v2, v0}, Lcom/transsion/camera/app/ui/setting/AbstractPreferenceList;->addPhotoPreferenceList(Ljava/util/List;Landroid/preference/PreferenceGroup;)V

    .line 150
    :cond_50
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/widget/GoldWaterMarkFragment;->showOrHideTimePreference(Z)V

    .line 151
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/widget/GoldWaterMarkFragment;->showOrHideLocationPreference(Z)V

    return-void
.end method

.method private clickTimeButton(Z)V
    .registers 7

    .line 155
    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/widget/GoldWaterMarkFragment;->mTimeButtonCheck:Z

    if-eqz p1, :cond_7

    .line 156
    const-string v0, "on"

    goto :goto_9

    :cond_7
    const-string v0, "off"

    .line 157
    :goto_9
    iget-object v1, p0, Lcom/transsion/camera/app/ui/widget/GoldWaterMarkFragment;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-virtual {v1}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const-string v4, "key_gold_watermark_time"

    invoke-virtual {v1, v4, v0, v2, v3}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 158
    iget-object v1, p0, Lcom/transsion/camera/app/ui/widget/GoldWaterMarkFragment;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    if-eqz v1, :cond_20

    .line 159
    invoke-virtual {v1, v4}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->getStatusResponder(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;

    move-result-object v1

    invoke-virtual {v1, v4, v0}, Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;->statusChanged(Ljava/lang/String;Ljava/lang/Object;)V

    .line 161
    :cond_20
    sget-object v0, Lcom/transsion/camera/app/ui/widget/GoldWaterMarkFragment;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[clickTimeButton]: checked"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 162
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/widget/GoldWaterMarkFragment;->showOrHideTimePreviewText(Z)V

    return-void
.end method

.method private createTogglePreference(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/preference/SwitchPreference;
    .registers 7

    .line 472
    invoke-virtual {p0}, Landroid/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    iget p0, p0, Lcom/transsion/camera/app/ui/AbstractSettingFragment;->mScreenFormType:I

    const/4 v2, 0x2

    invoke-static {v2, v0, v1, p0, v1}, Lcom/transsion/camera/app/ui/widget/preference/PreferenceItemUiManager;->create(ILandroid/content/Context;Lcom/transsion/camera/app/common/ui/setting/IPreferenceItemUI;ILcom/transsion/camera/app/common/ui/setting/SettingUISpec;)Landroid/preference/Preference;

    move-result-object p0

    check-cast p0, Lcom/transsion/camera/app/common/ui/preference/StateSwitchPreference;

    .line 473
    invoke-virtual {p0, p1}, Landroid/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 474
    invoke-virtual {p0, p2}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    const/4 p1, 0x0

    .line 475
    invoke-virtual {p0, p1}, Landroid/preference/Preference;->setPersistent(Z)V

    if-eqz p3, :cond_1d

    .line 477
    invoke-virtual {p0, p3}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_1d
    return-object p0
.end method

.method private synthetic lambda$initViews$0()V
    .registers 1

    .line 316
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/widget/GoldWaterMarkFragment;->updatePreviewUIState()V

    return-void
.end method

.method private synthetic lambda$updatePreviewUIState$1()V
    .registers 1

    .line 331
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/widget/GoldWaterMarkFragment;->updatePreviewUIState()V

    return-void
.end method

.method private setLocationInfo(Landroid/widget/RelativeLayout;)V
    .registers 3

    if-nez p1, :cond_a

    .line 223
    sget-object p0, Lcom/transsion/camera/app/ui/widget/GoldWaterMarkFragment;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "[setLocationInfo]: previewTexts is null"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    :cond_a
    const/4 v0, 0x2

    .line 227
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    const/4 v0, 0x1

    .line 228
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    if-nez p1, :cond_22

    .line 231
    sget-object p0, Lcom/transsion/camera/app/ui/widget/GoldWaterMarkFragment;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "[setLocationInfo]: location previewText is null"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 235
    :cond_22
    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/GoldWaterMarkFragment;->mLocationInfo:Ljava/lang/String;

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private setTimeInfo(Landroid/widget/RelativeLayout;)V
    .registers 3

    if-nez p1, :cond_a

    .line 337
    sget-object p0, Lcom/transsion/camera/app/ui/widget/GoldWaterMarkFragment;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "[setTimeInfo]: preTexts is null"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    :cond_a
    const/4 v0, 0x0

    .line 341
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    const/4 v0, 0x1

    .line 342
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    if-nez p1, :cond_22

    .line 345
    sget-object p0, Lcom/transsion/camera/app/ui/widget/GoldWaterMarkFragment;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "[setTimeInfo]: time preTexts is null"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 349
    :cond_22
    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/GoldWaterMarkFragment;->mTimeInfo:Ljava/lang/String;

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private setupPreferenceList()V
    .registers 5

    .line 390
    const-string v0, "pref_common_category"

    invoke-virtual {p0, v0}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    .line 391
    iget-object v1, p0, Lcom/transsion/camera/app/ui/widget/GoldWaterMarkFragment;->mPreferenceList:Lcom/transsion/camera/app/ui/setting/AbstractPreferenceList;

    iget-object v2, p0, Lcom/transsion/camera/app/ui/widget/GoldWaterMarkFragment;->mCommonPreferenceList:Ljava/util/List;

    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    invoke-virtual {v1, v2, v0, v3}, Lcom/transsion/camera/app/ui/setting/AbstractPreferenceList;->addGeneralPreferenceList(Ljava/util/List;Landroid/preference/PreferenceGroup;Landroid/preference/PreferenceScreen;)V

    .line 393
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/GoldWaterMarkFragment;->mPhotoPreferenceList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2a

    .line 394
    const-string v0, "pref_photo_category"

    invoke-virtual {p0, v0}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    .line 395
    iget-object v1, p0, Lcom/transsion/camera/app/ui/widget/GoldWaterMarkFragment;->mPreferenceList:Lcom/transsion/camera/app/ui/setting/AbstractPreferenceList;

    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/GoldWaterMarkFragment;->mPhotoPreferenceList:Ljava/util/List;

    invoke-virtual {v1, p0, v0}, Lcom/transsion/camera/app/ui/setting/AbstractPreferenceList;->addPhotoPreferenceList(Ljava/util/List;Landroid/preference/PreferenceGroup;)V

    :cond_2a
    return-void
.end method

.method private showOrHideLocationPreference(Z)V
    .registers 5

    .line 453
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/GoldWaterMarkFragment;->mListView:Landroid/widget/ListView;

    if-eqz v0, :cond_3a

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x6

    if-lt v0, v1, :cond_3a

    .line 454
    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/GoldWaterMarkFragment;->mListView:Landroid/widget/ListView;

    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p0

    if-eqz p0, :cond_3a

    .line 456
    sget-object v0, Lcom/transsion/camera/app/ui/widget/GoldWaterMarkFragment;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[showOrHideLocationPreference]: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_25

    const-string v2, "show"

    goto :goto_27

    :cond_25
    const-string v2, "hide"

    :goto_27
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    if-eqz p1, :cond_35

    const/4 p1, 0x0

    goto :goto_37

    :cond_35
    const/16 p1, 0x8

    .line 457
    :goto_37
    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    :cond_3a
    return-void
.end method

.method private showOrHideLocationPreviewText(Z)V
    .registers 8

    .line 206
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/GoldWaterMarkFragment;->mListView:Landroid/widget/ListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    const/4 v2, 0x1

    .line 207
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    const/16 v2, 0x8

    const/4 v3, 0x3

    const/4 v4, 0x2

    if-eqz p1, :cond_33

    .line 209
    iget-object p1, p0, Lcom/transsion/camera/app/ui/widget/GoldWaterMarkFragment;->mLocationInfo:Ljava/lang/String;

    if-eqz p1, :cond_33

    .line 210
    sget-object p1, Lcom/transsion/camera/app/ui/widget/GoldWaterMarkFragment;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v5, "[showOrHideLocationPreviewText]: hide, reason: location info is null "

    invoke-static {p1, v5}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 211
    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 212
    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 213
    invoke-direct {p0, v0}, Lcom/transsion/camera/app/ui/widget/GoldWaterMarkFragment;->setLocationInfo(Landroid/widget/RelativeLayout;)V

    return-void

    .line 215
    :cond_33
    sget-object p0, Lcom/transsion/camera/app/ui/widget/GoldWaterMarkFragment;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "[showOrHideLocationPreviewText]: show"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 216
    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 217
    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private showOrHideTimePreference(Z)V
    .registers 5

    .line 442
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/GoldWaterMarkFragment;->mListView:Landroid/widget/ListView;

    if-eqz v0, :cond_3a

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x5

    if-lt v0, v1, :cond_3a

    .line 443
    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/GoldWaterMarkFragment;->mListView:Landroid/widget/ListView;

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p0

    if-eqz p0, :cond_3a

    .line 445
    sget-object v0, Lcom/transsion/camera/app/ui/widget/GoldWaterMarkFragment;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[showOrHideTimePreference]: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_25

    const-string v2, "show"

    goto :goto_27

    :cond_25
    const-string v2, "hide"

    :goto_27
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    if-eqz p1, :cond_35

    const/4 p1, 0x0

    goto :goto_37

    :cond_35
    const/16 p1, 0x8

    .line 446
    :goto_37
    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    :cond_3a
    return-void
.end method

.method private showOrHideTimePreviewText(Z)V
    .registers 8

    .line 195
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/GoldWaterMarkFragment;->mListView:Landroid/widget/ListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    const/4 v2, 0x1

    .line 196
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    .line 197
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    const/16 v4, 0x8

    if-eqz p1, :cond_1a

    move v5, v1

    goto :goto_1b

    :cond_1a
    move v5, v4

    :goto_1b
    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    .line 198
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    if-nez p1, :cond_25

    goto :goto_26

    :cond_25
    move v1, v4

    :goto_26
    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 199
    sget-object v1, Lcom/transsion/camera/app/ui/widget/GoldWaterMarkFragment;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[showOrHideTimePreviewText]: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_3a

    const-string v3, "show"

    goto :goto_3c

    :cond_3a
    const-string v3, "hide"

    :goto_3c
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    if-eqz p1, :cond_4b

    .line 201
    invoke-direct {p0, v0}, Lcom/transsion/camera/app/ui/widget/GoldWaterMarkFragment;->setTimeInfo(Landroid/widget/RelativeLayout;)V

    :cond_4b
    return-void
.end method

.method private updateLocationInfo(I)V
    .registers 7

    .line 567
    sget-object v0, Lcom/transsion/camera/app/ui/widget/GoldWaterMarkFragment;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "[updateLocationInfo]"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 568
    iget-object v1, p0, Lcom/transsion/camera/app/ui/widget/GoldWaterMarkFragment;->mHandler:Lcom/transsion/camera/app/ui/widget/GoldWaterMarkFragment$GoldWaterMarkHandler;

    const-wide/16 v2, 0x7d0

    const/4 v4, 0x2

    invoke-virtual {v1, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 569
    iget-object v1, p0, Lcom/transsion/camera/app/ui/widget/GoldWaterMarkFragment;->mLocationManager:Lcom/transsion/camera/app/common/location/LocationManager;

    const-string v2, "key_gold_watermark_location"

    invoke-virtual {v1, v2}, Lcom/transsion/camera/app/common/location/LocationManager;->getCurrentLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v1

    if-eqz v1, :cond_1d

    .line 571
    invoke-direct {p0, v1}, Lcom/transsion/camera/app/ui/widget/GoldWaterMarkFragment;->updateLocationInfoMainThread(Landroid/location/Location;)V

    return-void

    .line 573
    :cond_1d
    iget-object v1, p0, Lcom/transsion/camera/app/ui/widget/GoldWaterMarkFragment;->mLocationManager:Lcom/transsion/camera/app/common/location/LocationManager;

    invoke-virtual {v1}, Lcom/transsion/camera/app/common/location/LocationManager;->getLastKnownLocation()Landroid/location/Location;

    move-result-object v1

    if-nez v1, :cond_61

    .line 575
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "currentLocation = null lastKnownLocation = null retry = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    if-lez p1, :cond_60

    .line 577
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/GoldWaterMarkFragment;->mHandler:Lcom/transsion/camera/app/ui/widget/GoldWaterMarkFragment$GoldWaterMarkHandler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 578
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lcom/transsion/camera/app/ui/widget/GoldWaterMarkFragment$2;

    invoke-direct {v1, p0}, Lcom/transsion/camera/app/ui/widget/GoldWaterMarkFragment$2;-><init>(Lcom/transsion/camera/app/ui/widget/GoldWaterMarkFragment;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 588
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    const/16 v1, 0x65

    .line 589
    iput v1, v0, Landroid/os/Message;->what:I

    add-int/lit8 p1, p1, -0x1

    .line 590
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 591
    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/GoldWaterMarkFragment;->mLocationHandler:Lcom/transsion/camera/app/ui/widget/GoldWaterMarkFragment$GoldWaterMarkLocationHandler;

    const-wide/16 v1, 0x3e8

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_60
    return-void

    .line 594
    :cond_61
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "currentLocation = null  lastKnownLocation = "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 595
    invoke-direct {p0, v1}, Lcom/transsion/camera/app/ui/widget/GoldWaterMarkFragment;->updateLocationInfoMainThread(Landroid/location/Location;)V

    return-void
.end method

.method private updateLocationInfoMainThread(Landroid/location/Location;)V
    .registers 4

    .line 558
    invoke-static {p1}, Lcom/transsion/camera/utils/LocationUtil;->getLocation(Landroid/location/Location;)Ljava/lang/String;

    move-result-object p1

    .line 559
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1a

    .line 560
    iput-object p1, p0, Lcom/transsion/camera/app/ui/widget/GoldWaterMarkFragment;->mLocationInfo:Ljava/lang/String;

    .line 561
    iget-object p1, p0, Lcom/transsion/camera/app/ui/widget/GoldWaterMarkFragment;->mHandler:Lcom/transsion/camera/app/ui/widget/GoldWaterMarkFragment$GoldWaterMarkHandler;

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 562
    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/GoldWaterMarkFragment;->mHandler:Lcom/transsion/camera/app/ui/widget/GoldWaterMarkFragment$GoldWaterMarkHandler;

    const/4 p1, 0x1

    const-wide/16 v0, 0x1f4

    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_1a
    return-void
.end method

.method private updateLocationPreviewText()V
    .registers 2

    .line 494
    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/widget/GoldWaterMarkFragment;->mLocationButtonCheck:Z

    invoke-direct {p0, v0}, Lcom/transsion/camera/app/ui/widget/GoldWaterMarkFragment;->showOrHideLocationPreviewText(Z)V

    return-void
.end method

.method private updatePreviewUIState()V
    .registers 5

    .line 320
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/GoldWaterMarkFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-lez v0, :cond_28

    .line 321
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/GoldWaterMarkFragment;->mListView:Landroid/widget/ListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    if-eqz v0, :cond_27

    const/4 v1, 0x1

    .line 323
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    if-nez v0, :cond_1d

    goto :goto_27

    .line 327
    :cond_1d
    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/widget/GoldWaterMarkFragment;->mTimeButtonCheck:Z

    invoke-direct {p0, v0}, Lcom/transsion/camera/app/ui/widget/GoldWaterMarkFragment;->showOrHideTimePreviewText(Z)V

    .line 328
    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/widget/GoldWaterMarkFragment;->mLocationButtonCheck:Z

    invoke-direct {p0, v0}, Lcom/transsion/camera/app/ui/widget/GoldWaterMarkFragment;->showOrHideLocationPreviewText(Z)V

    :cond_27
    :goto_27
    return-void

    .line 331
    :cond_28
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/GoldWaterMarkFragment;->mListView:Landroid/widget/ListView;

    new-instance v1, Lcom/transsion/camera/app/ui/widget/GoldWaterMarkFragment$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/transsion/camera/app/ui/widget/GoldWaterMarkFragment$$ExternalSyntheticLambda1;-><init>(Lcom/transsion/camera/app/ui/widget/GoldWaterMarkFragment;)V

    const-wide/16 v2, 0x32

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method


# virtual methods
.method protected addAllPreferences()V
    .registers 3

    .line 369
    sget-object v0, Lcom/transsion/camera/app/ui/widget/GoldWaterMarkFragment;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "[addAllPreferences]: "

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 370
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/widget/GoldWaterMarkFragment;->addCommonPreference()V

    .line 371
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/GoldWaterMarkFragment;->mPhotoPreferenceList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 372
    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/widget/GoldWaterMarkFragment;->mNormalButtonCheck:Z

    if-eqz v0, :cond_19

    .line 373
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/widget/GoldWaterMarkFragment;->addTimePreference()V

    .line 374
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/widget/GoldWaterMarkFragment;->addLocationPreference()V

    .line 376
    :cond_19
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/widget/GoldWaterMarkFragment;->setupPreferenceList()V

    return-void
.end method

.method protected getPreferenceResource()I
    .registers 1

    .line 354
    sget p0, Lcom/transsion/camera/R$xml;->gold_watermark_custom_preferences:I

    return p0
.end method

.method public getSystemTime()Ljava/lang/String;
    .registers 4

    .line 483
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 484
    new-instance p0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v2, "yyyy.MM.dd HH:mm"

    invoke-direct {p0, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 485
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2, v0, v1}, Ljava/util/Date;-><init>(J)V

    .line 486
    invoke-virtual {p0, v2}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected getToolbar(Landroid/view/View;)Landroid/widget/Toolbar;
    .registers 2

    .line 359
    sget p0, Lcom/transsion/camera/R$id;->setting_fragment_toolbar:I

    invoke-virtual {p1, p0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/Toolbar;

    if-eqz p0, :cond_12

    .line 361
    sget p1, Lcom/transsion/camera/R$string;->gold_watermark_setting_title:I

    invoke-virtual {p0, p1}, Landroid/widget/Toolbar;->setTitle(I)V

    .line 362
    invoke-virtual {p0}, Landroid/widget/Toolbar;->hideOverflowMenu()Z

    :cond_12
    return-object p0
.end method

.method protected initViews(Landroid/view/View;)V
    .registers 7

    .line 309
    invoke-super {p0, p1}, Lcom/transsion/camera/app/ui/AbstractSettingFragment;->initViews(Landroid/view/View;)V

    .line 310
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/GoldWaterMarkFragment;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v1

    const-string v2, "key_gold_watermark_normal"

    const-string v3, "off"

    invoke-virtual {v0, v2, v3, v1}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "on"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/widget/GoldWaterMarkFragment;->mNormalButtonCheck:Z

    .line 311
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/GoldWaterMarkFragment;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    const-string v2, "key_gold_watermark_time"

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v2, v3, v4}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/widget/GoldWaterMarkFragment;->mTimeButtonCheck:Z

    .line 312
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/GoldWaterMarkFragment;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    const-string v2, "key_gold_watermark_location"

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v2, v3, v4}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/widget/GoldWaterMarkFragment;->mLocationButtonCheck:Z

    const v0, 0x102000a

    .line 314
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ListView;

    iput-object p1, p0, Lcom/transsion/camera/app/ui/widget/GoldWaterMarkFragment;->mListView:Landroid/widget/ListView;

    .line 315
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/widget/GoldWaterMarkFragment;->getSystemTime()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/app/ui/widget/GoldWaterMarkFragment;->mTimeInfo:Ljava/lang/String;

    .line 316
    iget-object p1, p0, Lcom/transsion/camera/app/ui/widget/GoldWaterMarkFragment;->mListView:Landroid/widget/ListView;

    new-instance v0, Lcom/transsion/camera/app/ui/widget/GoldWaterMarkFragment$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/transsion/camera/app/ui/widget/GoldWaterMarkFragment$$ExternalSyntheticLambda0;-><init>(Lcom/transsion/camera/app/ui/widget/GoldWaterMarkFragment;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public linkAppUI(Lcom/transsion/camera/app/common/IAppUI;)V
    .registers 2

    .line 280
    iput-object p1, p0, Lcom/transsion/camera/app/ui/widget/GoldWaterMarkFragment;->mIAppUI:Lcom/transsion/camera/app/common/IAppUI;

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 7

    .line 102
    new-instance v0, Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-virtual {p0}, Landroid/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/transsion/camera/app/common/storage/DataStore;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/transsion/camera/app/ui/widget/GoldWaterMarkFragment;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    .line 103
    new-instance v0, Lcom/transsion/camera/app/common/permission/PermissionManager;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/transsion/camera/app/common/permission/PermissionManager;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/transsion/camera/app/ui/widget/GoldWaterMarkFragment;->mLocationPermission:Lcom/transsion/camera/app/common/permission/PermissionManager;

    .line 104
    sget-object v0, Lcom/transsion/camera/utils/SettingInfo;->AREA_GOLD_WATERMARK_SUPPORT:[Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 105
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v1

    iget-object v1, v1, Lcom/transsion/camera/utils/CustomConfigUtil;->mPersistOobeName:Ljava/lang/String;

    const-string v2, "NG"

    invoke-static {v1, v2}, Lcom/transsion/camera/utils/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/widget/GoldWaterMarkFragment;->mLocationSupport:Z

    .line 106
    new-instance v0, Lcom/transsion/camera/app/ui/widget/GoldWaterMarkFragment$GoldWaterMarkHandler;

    invoke-virtual {p0}, Landroid/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/transsion/camera/app/ui/widget/GoldWaterMarkFragment$GoldWaterMarkHandler;-><init>(Lcom/transsion/camera/app/ui/widget/GoldWaterMarkFragment;Landroid/os/Looper;Lcom/transsion/camera/app/ui/widget/GoldWaterMarkFragment-IA;)V

    iput-object v0, p0, Lcom/transsion/camera/app/ui/widget/GoldWaterMarkFragment;->mHandler:Lcom/transsion/camera/app/ui/widget/GoldWaterMarkFragment$GoldWaterMarkHandler;

    .line 107
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "gold_watermark_fragment_location_thread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 108
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 109
    new-instance v1, Lcom/transsion/camera/app/ui/widget/GoldWaterMarkFragment$GoldWaterMarkLocationHandler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v1, p0, v0, v2}, Lcom/transsion/camera/app/ui/widget/GoldWaterMarkFragment$GoldWaterMarkLocationHandler;-><init>(Lcom/transsion/camera/app/ui/widget/GoldWaterMarkFragment;Landroid/os/Looper;Lcom/transsion/camera/app/ui/widget/GoldWaterMarkFragment-IA;)V

    iput-object v1, p0, Lcom/transsion/camera/app/ui/widget/GoldWaterMarkFragment;->mLocationHandler:Lcom/transsion/camera/app/ui/widget/GoldWaterMarkFragment$GoldWaterMarkLocationHandler;

    .line 110
    sget-object v0, Lcom/transsion/camera/app/ui/widget/GoldWaterMarkFragment;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[onCreateView]: mLocationSupport: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/transsion/camera/app/ui/widget/GoldWaterMarkFragment;->mLocationSupport:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 111
    invoke-super {p0, p1, p2, p3}, Landroid/app/Fragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public onDestroy()V
    .registers 6

    .line 290
    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/widget/GoldWaterMarkFragment;->mLocationButtonCheck:Z

    if-eqz v0, :cond_45

    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/GoldWaterMarkFragment;->mLocationInfo:Ljava/lang/String;

    if-nez v0, :cond_45

    const/4 v0, 0x0

    .line 291
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/widget/GoldWaterMarkFragment;->mLocationButtonCheck:Z

    .line 292
    iget-object v1, p0, Lcom/transsion/camera/app/ui/widget/GoldWaterMarkFragment;->mLocationPreference:Landroid/preference/SwitchPreference;

    invoke-virtual {v1, v0}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 293
    iget-object v1, p0, Lcom/transsion/camera/app/ui/widget/GoldWaterMarkFragment;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-virtual {v1}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v2

    const-string v3, "key_gold_watermark_location"

    const-string v4, "off"

    invoke-virtual {v1, v3, v4, v2, v0}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 294
    iget-object v1, p0, Lcom/transsion/camera/app/ui/widget/GoldWaterMarkFragment;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    if-eqz v1, :cond_28

    .line 295
    invoke-virtual {v1, v3}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->getStatusResponder(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;

    move-result-object v1

    invoke-virtual {v1, v3, v4}, Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;->statusChanged(Ljava/lang/String;Ljava/lang/Object;)V

    .line 297
    :cond_28
    invoke-direct {p0, v0}, Lcom/transsion/camera/app/ui/widget/GoldWaterMarkFragment;->showOrHideLocationPreviewText(Z)V

    .line 298
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/GoldWaterMarkFragment;->mToastInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-virtual {p0}, Landroid/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/transsion/camera/R$string;->water_mark_gps_toast:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/ui/HintInfo;->setMessage(Ljava/lang/String;)V

    .line 299
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/GoldWaterMarkFragment;->mIAppUI:Lcom/transsion/camera/app/common/IAppUI;

    iget-object v1, p0, Lcom/transsion/camera/app/ui/widget/GoldWaterMarkFragment;->mToastInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/IAppUI;->showToast(Lcom/transsion/camera/app/common/ui/HintInfo;)V

    .line 301
    :cond_45
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/GoldWaterMarkFragment;->mHandler:Lcom/transsion/camera/app/ui/widget/GoldWaterMarkFragment$GoldWaterMarkHandler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 302
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/GoldWaterMarkFragment;->mLocationHandler:Lcom/transsion/camera/app/ui/widget/GoldWaterMarkFragment$GoldWaterMarkLocationHandler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 303
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/GoldWaterMarkFragment;->mLocationHandler:Lcom/transsion/camera/app/ui/widget/GoldWaterMarkFragment$GoldWaterMarkLocationHandler;

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quitSafely()V

    .line 304
    invoke-super {p0}, Lcom/transsion/camera/app/ui/AbstractSettingFragment;->onDestroy()V

    return-void
.end method

.method public onPause()V
    .registers 1

    .line 285
    invoke-super {p0}, Lcom/transsion/camera/app/ui/AbstractSettingFragment;->onPause()V

    return-void
.end method

.method public onResume()V
    .registers 6

    .line 241
    invoke-super {p0}, Lcom/transsion/camera/app/ui/AbstractSettingFragment;->onResume()V

    .line 247
    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/widget/GoldWaterMarkFragment;->mPermissionRequest:Z

    const/4 v1, 0x0

    const-string v2, "key_gold_watermark_location"

    if-eqz v0, :cond_3d

    .line 248
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/GoldWaterMarkFragment;->mLocationPermission:Lcom/transsion/camera/app/common/permission/PermissionManager;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/permission/PermissionManager;->checkCameraLocationPermissions()Z

    move-result v0

    if-nez v0, :cond_3b

    .line 249
    sget-object v0, Lcom/transsion/camera/app/ui/widget/GoldWaterMarkFragment;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v3, "[onResume]: not granted location permission, turn off location option"

    invoke-static {v0, v3}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 250
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/GoldWaterMarkFragment;->mLocationPreference:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, v1}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 251
    iput-boolean v1, p0, Lcom/transsion/camera/app/ui/widget/GoldWaterMarkFragment;->mLocationButtonCheck:Z

    .line 252
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/GoldWaterMarkFragment;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v3

    const-string v4, "off"

    invoke-virtual {v0, v2, v4, v3, v1}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 253
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/GoldWaterMarkFragment;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    if-eqz v0, :cond_36

    .line 254
    invoke-virtual {v0, v2}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->getStatusResponder(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;

    move-result-object v0

    invoke-virtual {v0, v2, v4}, Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;->statusChanged(Ljava/lang/String;Ljava/lang/Object;)V

    .line 256
    :cond_36
    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/widget/GoldWaterMarkFragment;->mLocationButtonCheck:Z

    invoke-direct {p0, v0}, Lcom/transsion/camera/app/ui/widget/GoldWaterMarkFragment;->showOrHideLocationPreviewText(Z)V

    .line 258
    :cond_3b
    iput-boolean v1, p0, Lcom/transsion/camera/app/ui/widget/GoldWaterMarkFragment;->mPermissionRequest:Z

    .line 262
    :cond_3d
    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/widget/GoldWaterMarkFragment;->mLocationButtonCheck:Z

    if-eqz v0, :cond_7e

    .line 263
    sget-object v0, Lcom/transsion/camera/app/ui/widget/GoldWaterMarkFragment;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v3, "[onResume]: update location info, the location option is continuously turned on"

    invoke-static {v0, v3}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 264
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/GoldWaterMarkFragment;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    const-string v3, "on"

    if-eqz v0, :cond_55

    .line 265
    invoke-virtual {v0, v2}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->getStatusResponder(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;->statusChanged(Ljava/lang/String;Ljava/lang/Object;)V

    .line 267
    :cond_55
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/GoldWaterMarkFragment;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v2, v3, v4, v1}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 268
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/GoldWaterMarkFragment;->mLocationManager:Lcom/transsion/camera/app/common/location/LocationManager;

    iget-boolean v1, p0, Lcom/transsion/camera/app/ui/widget/GoldWaterMarkFragment;->mLocationButtonCheck:Z

    invoke-virtual {v0, v1, v2}, Lcom/transsion/camera/app/common/location/LocationManager;->recordLocation(ZLjava/lang/String;)V

    .line 269
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/GoldWaterMarkFragment;->mLocationHandler:Lcom/transsion/camera/app/ui/widget/GoldWaterMarkFragment$GoldWaterMarkLocationHandler;

    const/16 v1, 0x65

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 270
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 271
    iput v1, v0, Landroid/os/Message;->what:I

    const/4 v1, 0x5

    .line 272
    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 273
    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/GoldWaterMarkFragment;->mLocationHandler:Lcom/transsion/camera/app/ui/widget/GoldWaterMarkFragment$GoldWaterMarkLocationHandler;

    const-wide/16 v1, 0x3e8

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void

    .line 275
    :cond_7e
    sget-object p0, Lcom/transsion/camera/app/ui/widget/GoldWaterMarkFragment;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "[onResume]: the location option is continuously turned off"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method protected removeAllPreferences()V
    .registers 1

    return-void
.end method

.method public setLocationmanager(Lcom/transsion/camera/app/common/location/LocationManager;)V
    .registers 2

    .line 490
    iput-object p1, p0, Lcom/transsion/camera/app/ui/widget/GoldWaterMarkFragment;->mLocationManager:Lcom/transsion/camera/app/common/location/LocationManager;

    return-void
.end method

.method public setOrientationAnimationListener(Lcom/transsion/camera/app/ui/AbstractSettingFragment$OrientationAnimationListener;)V
    .registers 2

    .line 92
    invoke-super {p0, p1}, Lcom/transsion/camera/app/ui/AbstractSettingFragment;->setOrientationAnimationListener(Lcom/transsion/camera/app/ui/AbstractSettingFragment$OrientationAnimationListener;)V

    return-void
.end method

.method public setSettingFragmentManager(Lcom/transsion/camera/app/ui/manager/SettingFragmentManager;)V
    .registers 2

    .line 97
    iput-object p1, p0, Lcom/transsion/camera/app/ui/AbstractSettingFragment;->mSettingFragmentManger:Lcom/transsion/camera/app/ui/manager/SettingFragmentManager;

    return-void
.end method

.method public setSettingMonitor(Lcom/transsion/camera/app/common/setting/StatusMonitor;)V
    .registers 2

    .line 463
    iput-object p1, p0, Lcom/transsion/camera/app/ui/widget/GoldWaterMarkFragment;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    return-void
.end method

.method public setStateListener(Lcom/transsion/camera/app/common/IAppUIListener$IFragmentStateListener;)V
    .registers 2

    .line 468
    invoke-super {p0, p1}, Lcom/transsion/camera/app/ui/AbstractSettingFragment;->setStateListener(Lcom/transsion/camera/app/common/IAppUIListener$IFragmentStateListener;)V

    return-void
.end method

.method public unInit()V
    .registers 2

    const/4 v0, 0x0

    .line 601
    iput-object v0, p0, Lcom/transsion/camera/app/ui/widget/GoldWaterMarkFragment;->mIAppUI:Lcom/transsion/camera/app/common/IAppUI;

    .line 602
    iput-object v0, p0, Lcom/transsion/camera/app/ui/widget/GoldWaterMarkFragment;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    return-void
.end method

.method protected unInitViews()V
    .registers 1

    return-void
.end method
