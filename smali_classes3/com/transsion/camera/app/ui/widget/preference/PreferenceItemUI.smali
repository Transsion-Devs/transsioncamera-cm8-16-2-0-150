.class public Lcom/transsion/camera/app/ui/widget/preference/PreferenceItemUI;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/app/common/ui/setting/IPreferenceItemUI;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/app/ui/widget/preference/PreferenceItemUI$MySettingChangeListener;,
        Lcom/transsion/camera/app/ui/widget/preference/PreferenceItemUI$UIHandler;
    }
.end annotation


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private final WIDTH_ICON_FIT:I

.field private mClickedDialogEntryIndex:I

.field private mCommonRes:Landroid/graphics/drawable/Drawable;

.field private mContext:Landroid/content/Context;

.field private mCurrentEntryValue:Ljava/lang/String;

.field private mCustomListPreferenceListener:Landroid/preference/Preference$OnPreferenceChangeListener;

.field protected mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

.field private mDialogPreferenceListener:Lcom/transsion/camera/app/ui/widget/preference/MyDialogPreference$DialogListener;

.field private final mHandler:Lcom/transsion/camera/app/ui/widget/preference/PreferenceItemUI$UIHandler;

.field private mIsSellingPoint:Z

.field private mListPreferenceListener:Landroid/preference/Preference$OnPreferenceChangeListener;

.field private mOrientation:I

.field private mPreference:Landroid/preference/Preference;

.field private mRotateDialog:Lcom/transsion/camera/app/ui/widget/dialog/RotateDialog;

.field private mScreenFormType:I

.field private mSellingPointData:Lcom/tencent/mmkv/MMKV;

.field private mSettingChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

.field private mSettingFragmentControl:Lcom/transsion/camera/app/common/IAppUIControl$ISettingFragmentControl;

.field private mSettingUISpec:Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;

.field private mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

.field private mSwitchPreferenceListener:Landroid/preference/Preference$OnPreferenceChangeListener;


# direct methods
.method public static synthetic $r8$lambda$3b9nBBSGdZ8tqZP393FUBZc4weU(Lcom/transsion/camera/app/ui/widget/preference/PreferenceItemUI;Landroid/preference/Preference;)Z
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/widget/preference/PreferenceItemUI;->lambda$doCreatePreference$2(Landroid/preference/Preference;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$9k3wCL0Lh6306ieLg0NyDo5IHuE(Lcom/transsion/camera/app/ui/widget/preference/PreferenceItemUI;Lcom/transsion/camera/app/ui/widget/preference/CustomOSListPreference;Landroid/content/DialogInterface;IZ)V
    .registers 5

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/transsion/camera/app/ui/widget/preference/PreferenceItemUI;->lambda$onPrepareDialogBuilder$3(Lcom/transsion/camera/app/ui/widget/preference/CustomOSListPreference;Landroid/content/DialogInterface;IZ)V

    return-void
.end method

.method public static synthetic $r8$lambda$j3-ebOMNzFdhbCQ-KGDWOp2tDTc(Lcom/transsion/camera/app/ui/widget/preference/PreferenceItemUI;Landroid/preference/Preference;)Z
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/widget/preference/PreferenceItemUI;->lambda$doCreatePreference$0(Landroid/preference/Preference;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$qNdU-PDB8qy-nwruRBwjkt7dTGo(Lcom/transsion/camera/app/ui/widget/preference/PreferenceItemUI;Z)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/widget/preference/PreferenceItemUI;->lambda$doCreatePreference$1(Z)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetmCurrentEntryValue(Lcom/transsion/camera/app/ui/widget/preference/PreferenceItemUI;)Ljava/lang/String;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/preference/PreferenceItemUI;->mCurrentEntryValue:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmHandler(Lcom/transsion/camera/app/ui/widget/preference/PreferenceItemUI;)Lcom/transsion/camera/app/ui/widget/preference/PreferenceItemUI$UIHandler;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/preference/PreferenceItemUI;->mHandler:Lcom/transsion/camera/app/ui/widget/preference/PreferenceItemUI$UIHandler;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmPreference(Lcom/transsion/camera/app/ui/widget/preference/PreferenceItemUI;)Landroid/preference/Preference;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/preference/PreferenceItemUI;->mPreference:Landroid/preference/Preference;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmRotateDialog(Lcom/transsion/camera/app/ui/widget/preference/PreferenceItemUI;)Lcom/transsion/camera/app/ui/widget/dialog/RotateDialog;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/preference/PreferenceItemUI;->mRotateDialog:Lcom/transsion/camera/app/ui/widget/dialog/RotateDialog;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmClickedDialogEntryIndex(Lcom/transsion/camera/app/ui/widget/preference/PreferenceItemUI;I)V
    .registers 2

    .line 0
    iput p1, p0, Lcom/transsion/camera/app/ui/widget/preference/PreferenceItemUI;->mClickedDialogEntryIndex:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmCurrentEntryValue(Lcom/transsion/camera/app/ui/widget/preference/PreferenceItemUI;Ljava/lang/String;)V
    .registers 2

    .line 0
    iput-object p1, p0, Lcom/transsion/camera/app/ui/widget/preference/PreferenceItemUI;->mCurrentEntryValue:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic -$$Nest$mdoValueChange(Lcom/transsion/camera/app/ui/widget/preference/PreferenceItemUI;Ljava/lang/String;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/widget/preference/PreferenceItemUI;->doValueChange(Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mexitSettingFragment(Lcom/transsion/camera/app/ui/widget/preference/PreferenceItemUI;Ljava/lang/String;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/widget/preference/PreferenceItemUI;->exitSettingFragment(Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdatePreferenceUI(Lcom/transsion/camera/app/ui/widget/preference/PreferenceItemUI;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/widget/preference/PreferenceItemUI;->updatePreferenceUI()V

    return-void
.end method

.method static bridge synthetic -$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;
    .registers 1

    .line 0
    sget-object v0, Lcom/transsion/camera/app/ui/widget/preference/PreferenceItemUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 59
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "PreferenceItemUI"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/app/ui/widget/preference/PreferenceItemUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;)V
    .registers 4

    .line 112
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x4

    .line 66
    iput v0, p0, Lcom/transsion/camera/app/ui/widget/preference/PreferenceItemUI;->WIDTH_ICON_FIT:I

    .line 83
    new-instance v0, Lcom/transsion/camera/app/ui/widget/preference/PreferenceItemUI$MySettingChangeListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/transsion/camera/app/ui/widget/preference/PreferenceItemUI$MySettingChangeListener;-><init>(Lcom/transsion/camera/app/ui/widget/preference/PreferenceItemUI;Lcom/transsion/camera/app/ui/widget/preference/PreferenceItemUI-IA;)V

    iput-object v0, p0, Lcom/transsion/camera/app/ui/widget/preference/PreferenceItemUI;->mSettingChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    const/4 v0, 0x0

    .line 87
    iput v0, p0, Lcom/transsion/camera/app/ui/widget/preference/PreferenceItemUI;->mScreenFormType:I

    .line 594
    new-instance v0, Lcom/transsion/camera/app/ui/widget/preference/PreferenceItemUI$1;

    invoke-direct {v0, p0}, Lcom/transsion/camera/app/ui/widget/preference/PreferenceItemUI$1;-><init>(Lcom/transsion/camera/app/ui/widget/preference/PreferenceItemUI;)V

    iput-object v0, p0, Lcom/transsion/camera/app/ui/widget/preference/PreferenceItemUI;->mSwitchPreferenceListener:Landroid/preference/Preference$OnPreferenceChangeListener;

    .line 608
    new-instance v0, Lcom/transsion/camera/app/ui/widget/preference/PreferenceItemUI$2;

    invoke-direct {v0, p0}, Lcom/transsion/camera/app/ui/widget/preference/PreferenceItemUI$2;-><init>(Lcom/transsion/camera/app/ui/widget/preference/PreferenceItemUI;)V

    iput-object v0, p0, Lcom/transsion/camera/app/ui/widget/preference/PreferenceItemUI;->mListPreferenceListener:Landroid/preference/Preference$OnPreferenceChangeListener;

    .line 621
    new-instance v0, Lcom/transsion/camera/app/ui/widget/preference/PreferenceItemUI$3;

    invoke-direct {v0, p0}, Lcom/transsion/camera/app/ui/widget/preference/PreferenceItemUI$3;-><init>(Lcom/transsion/camera/app/ui/widget/preference/PreferenceItemUI;)V

    iput-object v0, p0, Lcom/transsion/camera/app/ui/widget/preference/PreferenceItemUI;->mCustomListPreferenceListener:Landroid/preference/Preference$OnPreferenceChangeListener;

    .line 639
    new-instance v0, Lcom/transsion/camera/app/ui/widget/preference/PreferenceItemUI$4;

    invoke-direct {v0, p0}, Lcom/transsion/camera/app/ui/widget/preference/PreferenceItemUI$4;-><init>(Lcom/transsion/camera/app/ui/widget/preference/PreferenceItemUI;)V

    iput-object v0, p0, Lcom/transsion/camera/app/ui/widget/preference/PreferenceItemUI;->mDialogPreferenceListener:Lcom/transsion/camera/app/ui/widget/preference/MyDialogPreference$DialogListener;

    .line 113
    iput-object p1, p0, Lcom/transsion/camera/app/ui/widget/preference/PreferenceItemUI;->mSettingUISpec:Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;

    .line 114
    new-instance p1, Lcom/transsion/camera/app/ui/widget/preference/PreferenceItemUI$UIHandler;

    invoke-direct {p1, p0, v1}, Lcom/transsion/camera/app/ui/widget/preference/PreferenceItemUI$UIHandler;-><init>(Lcom/transsion/camera/app/ui/widget/preference/PreferenceItemUI;Lcom/transsion/camera/app/ui/widget/preference/PreferenceItemUI-IA;)V

    iput-object p1, p0, Lcom/transsion/camera/app/ui/widget/preference/PreferenceItemUI;->mHandler:Lcom/transsion/camera/app/ui/widget/preference/PreferenceItemUI$UIHandler;

    return-void
.end method

.method private createIconWithPoint(Landroid/graphics/drawable/Drawable;Landroid/content/Context;)Landroid/graphics/drawable/LayerDrawable;
    .registers 4

    .line 901
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v0, Lcom/transsion/camera/featurelibs/commonwidget/R$drawable;->ic_setting_selling_point:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    .line 902
    new-instance v0, Landroid/graphics/drawable/LayerDrawable;

    filled-new-array {p0, p1}, [Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-direct {v0, p0}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    .line 903
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const/4 p1, 0x4

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/UIUtils;->dp2Px(Landroid/content/res/Resources;I)I

    move-result p0

    const/4 p1, 0x1

    invoke-virtual {v0, p1, p0}, Landroid/graphics/drawable/LayerDrawable;->setLayerInsetRight(II)V

    return-object v0
.end method

.method private createSupportEntries()Z
    .registers 6

    .line 478
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/preference/PreferenceItemUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    .line 482
    :cond_6
    invoke-interface {v0}, Lcom/transsion/camera/app/common/setting/ISetting;->getSupport()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_14

    .line 484
    sget-object p0, Lcom/transsion/camera/app/ui/widget/preference/PreferenceItemUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "mDeviceSetting\'s support is null!"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return v1

    .line 488
    :cond_14
    iget-object v2, p0, Lcom/transsion/camera/app/ui/widget/preference/PreferenceItemUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    invoke-interface {v2}, Lcom/transsion/camera/app/common/setting/ISetting;->getCurrentCameraId()Ljava/lang/String;

    move-result-object v2

    .line 489
    iget-object v3, p0, Lcom/transsion/camera/app/ui/widget/preference/PreferenceItemUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    invoke-interface {v3}, Lcom/transsion/camera/app/common/setting/ISetting;->getCurrentStreamIds()[I

    move-result-object v3

    .line 491
    iget-object v4, p0, Lcom/transsion/camera/app/ui/widget/preference/PreferenceItemUI;->mSettingUISpec:Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;

    invoke-virtual {v4, v2, v3, v0}, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->createSupportedEntries(Ljava/lang/String;[ILjava/util/List;)V

    .line 492
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/preference/PreferenceItemUI;->mSettingUISpec:Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->getSupportedEntryValues()[Ljava/lang/String;

    move-result-object v0

    .line 494
    array-length v0, v0

    if-nez v0, :cond_49

    .line 495
    sget-object v0, Lcom/transsion/camera/app/ui/widget/preference/PreferenceItemUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "support value is null! "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/widget/preference/PreferenceItemUI;->getKey()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return v1

    :cond_49
    const/4 p0, 0x1

    return p0
.end method

.method private doCreatePreference(Landroid/content/Context;I)Landroid/preference/Preference;
    .registers 10

    .line 188
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/preference/PreferenceItemUI;->mSettingUISpec:Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->getType()I

    move-result v0

    .line 189
    const-string v1, "SellingPoint"

    invoke-static {v1}, Lcom/tencent/mmkv/MMKV;->mmkvWithID(Ljava/lang/String;)Lcom/tencent/mmkv/MMKV;

    move-result-object v1

    iput-object v1, p0, Lcom/transsion/camera/app/ui/widget/preference/PreferenceItemUI;->mSellingPointData:Lcom/tencent/mmkv/MMKV;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    packed-switch v0, :pswitch_data_34e

    .line 379
    new-instance p0, Landroid/preference/Preference;

    invoke-direct {p0, p1}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    return-object p0

    .line 216
    :pswitch_1a
    iget-object v4, p0, Lcom/transsion/camera/app/ui/widget/preference/PreferenceItemUI;->mSettingUISpec:Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;

    invoke-virtual {v4}, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->getSupportedEntries()[Ljava/lang/String;

    move-result-object v4

    .line 217
    iget-object v5, p0, Lcom/transsion/camera/app/ui/widget/preference/PreferenceItemUI;->mSettingUISpec:Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;

    invoke-virtual {v5}, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->getSupportedEntryValues()[Ljava/lang/String;

    move-result-object v5

    .line 219
    array-length v4, v4

    if-le v4, v3, :cond_bc

    array-length v4, v5

    if-gt v4, v3, :cond_2e

    goto/16 :goto_bc

    .line 223
    :cond_2e
    iget-object v2, p0, Lcom/transsion/camera/app/ui/widget/preference/PreferenceItemUI;->mSettingUISpec:Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;

    invoke-static {v0, p1, p0, p2, v2}, Lcom/transsion/camera/app/ui/widget/preference/PreferenceItemUiManager;->create(ILandroid/content/Context;Lcom/transsion/camera/app/common/ui/setting/IPreferenceItemUI;ILcom/transsion/camera/app/common/ui/setting/SettingUISpec;)Landroid/preference/Preference;

    move-result-object p2

    check-cast p2, Lcom/transsion/camera/app/common/ui/preference/UpdateSwitchPerference;

    .line 224
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/preference/PreferenceItemUI;->mSettingUISpec:Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 225
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/preference/PreferenceItemUI;->mSettingUISpec:Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 226
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/preference/PreferenceItemUI;->mSettingUISpec:Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/transsion/camera/app/common/ui/preference/UpdateSwitchPerference;->setNormalDialogMessage(Ljava/lang/CharSequence;)V

    .line 227
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/preference/PreferenceItemUI;->mSettingUISpec:Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->getUpdateMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/transsion/camera/app/common/ui/preference/UpdateSwitchPerference;->setUpdateDialogMessage(Ljava/lang/CharSequence;)V

    .line 228
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/preference/PreferenceItemUI;->mSettingUISpec:Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->getPositiveText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/transsion/camera/app/common/ui/preference/UpdateSwitchPerference;->setPositiveButtonText(Ljava/lang/CharSequence;)V

    .line 229
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/preference/PreferenceItemUI;->mSettingUISpec:Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->getNegativeText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/transsion/camera/app/common/ui/preference/UpdateSwitchPerference;->setNegativeText(Ljava/lang/CharSequence;)V

    .line 230
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/preference/PreferenceItemUI;->mSettingUISpec:Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->getDialogButtonText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/transsion/camera/app/common/ui/preference/UpdateSwitchPerference;->setDialogButtonText(Ljava/lang/CharSequence;)V

    .line 231
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/preference/PreferenceItemUI;->mSettingUISpec:Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->isShowUpdateIcon()Z

    move-result v0

    invoke-virtual {p2, v0}, Lcom/transsion/camera/app/common/ui/preference/UpdateSwitchPerference;->setShowUpdateIcon(Z)V

    .line 232
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/preference/PreferenceItemUI;->mSettingUISpec:Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->getSupportedEntrySummaries()[Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/transsion/camera/app/common/ui/preference/UpdateSwitchPerference;->setSummarys([Ljava/lang/String;)V

    .line 234
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/preference/PreferenceItemUI;->mSettingUISpec:Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->getDialogClickCallback()Landroid/view/View$OnClickListener;

    move-result-object v0

    if-eqz v0, :cond_98

    .line 235
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/preference/PreferenceItemUI;->mSettingUISpec:Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->getDialogClickCallback()Landroid/view/View$OnClickListener;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/transsion/camera/app/common/ui/preference/UpdateSwitchPerference;->setDialogListener(Landroid/view/View$OnClickListener;)V

    .line 237
    :cond_98
    invoke-virtual {p2, v1}, Landroid/preference/Preference;->setPersistent(Z)V

    .line 239
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/preference/PreferenceItemUI;->mSettingUISpec:Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/app/ui/widget/preference/PreferenceItemUI;->mCommonRes:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_bb

    .line 241
    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/widget/preference/PreferenceItemUI;->mIsSellingPoint:Z

    iget-object v1, p0, Lcom/transsion/camera/app/ui/widget/preference/PreferenceItemUI;->mSellingPointData:Lcom/tencent/mmkv/MMKV;

    invoke-direct {p0, v0, v1}, Lcom/transsion/camera/app/ui/widget/preference/PreferenceItemUI;->isShowPoint(ZLcom/tencent/mmkv/MMKV;)Z

    move-result v0

    if-eqz v0, :cond_b6

    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/preference/PreferenceItemUI;->mCommonRes:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, v0, p1}, Lcom/transsion/camera/app/ui/widget/preference/PreferenceItemUI;->createIconWithPoint(Landroid/graphics/drawable/Drawable;Landroid/content/Context;)Landroid/graphics/drawable/LayerDrawable;

    move-result-object p0

    goto :goto_b8

    :cond_b6
    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/preference/PreferenceItemUI;->mCommonRes:Landroid/graphics/drawable/Drawable;

    :goto_b8
    invoke-virtual {p2, p0}, Landroid/preference/Preference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    :cond_bb
    return-object p2

    :cond_bc
    :goto_bc
    return-object v2

    .line 348
    :pswitch_bd
    iget-object v1, p0, Lcom/transsion/camera/app/ui/widget/preference/PreferenceItemUI;->mSettingUISpec:Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;

    .line 349
    invoke-static {v0, p1, p0, p2, v1}, Lcom/transsion/camera/app/ui/widget/preference/PreferenceItemUiManager;->create(ILandroid/content/Context;Lcom/transsion/camera/app/common/ui/setting/IPreferenceItemUI;ILcom/transsion/camera/app/common/ui/setting/SettingUISpec;)Landroid/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/transsion/camera/app/ui/widget/preference/PreferenceItemUiManager$CustomFragmentPreferenceUi;

    .line 350
    iget-object p2, p0, Lcom/transsion/camera/app/ui/widget/preference/PreferenceItemUI;->mSettingUISpec:Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;

    invoke-virtual {p2}, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->getSupportedEntries()[Ljava/lang/String;

    move-result-object p2

    .line 351
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/preference/PreferenceItemUI;->mSettingUISpec:Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->getSupportedEntryValues()[Ljava/lang/String;

    move-result-object v0

    .line 352
    array-length p2, p2

    if-le p2, v3, :cond_131

    array-length p2, v0

    if-gt p2, v3, :cond_d8

    goto :goto_131

    .line 355
    :cond_d8
    iget-object p2, p0, Lcom/transsion/camera/app/ui/widget/preference/PreferenceItemUI;->mSettingUISpec:Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;

    invoke-virtual {p2}, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->getKey()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 356
    iget-object p2, p0, Lcom/transsion/camera/app/ui/widget/preference/PreferenceItemUI;->mSettingUISpec:Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;

    invoke-virtual {p2}, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->getTitle()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 357
    iget-object p2, p0, Lcom/transsion/camera/app/ui/widget/preference/PreferenceItemUI;->mSettingUISpec:Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;

    invoke-virtual {p2}, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object p2

    iput-object p2, p0, Lcom/transsion/camera/app/ui/widget/preference/PreferenceItemUI;->mCommonRes:Landroid/graphics/drawable/Drawable;

    if-eqz p2, :cond_fd

    .line 359
    iget-object p2, p0, Lcom/transsion/camera/app/ui/widget/preference/PreferenceItemUI;->mSettingUISpec:Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;

    invoke-virtual {p2}, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/preference/Preference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 361
    :cond_fd
    new-instance p2, Lcom/transsion/camera/app/ui/widget/preference/PreferenceItemUI$$ExternalSyntheticLambda1;

    invoke-direct {p2, p0}, Lcom/transsion/camera/app/ui/widget/preference/PreferenceItemUI$$ExternalSyntheticLambda1;-><init>(Lcom/transsion/camera/app/ui/widget/preference/PreferenceItemUI;)V

    invoke-virtual {p1, p2}, Lcom/transsion/camera/app/ui/widget/preference/PreferenceItemUiManager$CustomFragmentPreferenceUi;->setSwitchCallback(Lcom/transsion/camera/app/ui/widget/preference/PreferenceItemUiManager$CustomFragmentPreferenceUi$OnSwitchStateListener;)V

    .line 366
    sget-object p2, Lcom/transsion/camera/app/ui/widget/preference/PreferenceItemUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TYPE_CUSTOM_FRAGMENT mCurrentEntryValue = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/transsion/camera/app/ui/widget/preference/PreferenceItemUI;->mCurrentEntryValue:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 367
    const-string p2, "on"

    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/preference/PreferenceItemUI;->mCurrentEntryValue:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    invoke-virtual {p1, p2}, Lcom/transsion/camera/app/ui/widget/preference/PreferenceItemUiManager$CustomFragmentPreferenceUi;->setSwitchChecked(Z)V

    .line 368
    new-instance p2, Lcom/transsion/camera/app/ui/widget/preference/PreferenceItemUI$$ExternalSyntheticLambda2;

    invoke-direct {p2, p0}, Lcom/transsion/camera/app/ui/widget/preference/PreferenceItemUI$$ExternalSyntheticLambda2;-><init>(Lcom/transsion/camera/app/ui/widget/preference/PreferenceItemUI;)V

    invoke-virtual {p1, p2}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    return-object p1

    :cond_131
    :goto_131
    return-object v2

    .line 303
    :pswitch_132
    iget-object v1, p0, Lcom/transsion/camera/app/ui/widget/preference/PreferenceItemUI;->mSettingUISpec:Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;

    invoke-virtual {v1}, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->getSupportedEntries()[Ljava/lang/String;

    move-result-object v1

    .line 304
    iget-object v4, p0, Lcom/transsion/camera/app/ui/widget/preference/PreferenceItemUI;->mSettingUISpec:Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;

    invoke-virtual {v4}, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->getSupportedEntryValues()[Ljava/lang/String;

    move-result-object v4

    .line 306
    array-length v1, v1

    if-le v1, v3, :cond_189

    array-length v1, v4

    if-gt v1, v3, :cond_145

    goto :goto_189

    .line 310
    :cond_145
    iget-object v1, p0, Lcom/transsion/camera/app/ui/widget/preference/PreferenceItemUI;->mSettingUISpec:Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;

    invoke-static {v0, p1, p0, p2, v1}, Lcom/transsion/camera/app/ui/widget/preference/PreferenceItemUiManager;->create(ILandroid/content/Context;Lcom/transsion/camera/app/common/ui/setting/IPreferenceItemUI;ILcom/transsion/camera/app/common/ui/setting/SettingUISpec;)Landroid/preference/Preference;

    move-result-object p2

    check-cast p2, Lcom/transsion/camera/app/common/ui/preference/FragmentPreference;

    .line 311
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/preference/PreferenceItemUI;->mSettingUISpec:Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 312
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/preference/PreferenceItemUI;->mSettingUISpec:Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 313
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/preference/PreferenceItemUI;->mSettingUISpec:Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->getCustomFragment()Landroid/app/Fragment;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/transsion/camera/app/common/ui/preference/FragmentPreference;->seCustomFragment(Landroid/app/Fragment;)V

    .line 314
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/preference/PreferenceItemUI;->mSettingUISpec:Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/app/ui/widget/preference/PreferenceItemUI;->mCommonRes:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_188

    .line 316
    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/widget/preference/PreferenceItemUI;->mIsSellingPoint:Z

    iget-object v1, p0, Lcom/transsion/camera/app/ui/widget/preference/PreferenceItemUI;->mSellingPointData:Lcom/tencent/mmkv/MMKV;

    invoke-direct {p0, v0, v1}, Lcom/transsion/camera/app/ui/widget/preference/PreferenceItemUI;->isShowPoint(ZLcom/tencent/mmkv/MMKV;)Z

    move-result v0

    if-eqz v0, :cond_183

    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/preference/PreferenceItemUI;->mCommonRes:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, v0, p1}, Lcom/transsion/camera/app/ui/widget/preference/PreferenceItemUI;->createIconWithPoint(Landroid/graphics/drawable/Drawable;Landroid/content/Context;)Landroid/graphics/drawable/LayerDrawable;

    move-result-object p0

    goto :goto_185

    :cond_183
    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/preference/PreferenceItemUI;->mCommonRes:Landroid/graphics/drawable/Drawable;

    :goto_185
    invoke-virtual {p2, p0}, Landroid/preference/Preference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    :cond_188
    return-object p2

    :cond_189
    :goto_189
    return-object v2

    .line 246
    :pswitch_18a
    iget-object v4, p0, Lcom/transsion/camera/app/ui/widget/preference/PreferenceItemUI;->mSettingUISpec:Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;

    invoke-virtual {v4}, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->getSupportedEntries()[Ljava/lang/String;

    move-result-object v4

    .line 247
    iget-object v5, p0, Lcom/transsion/camera/app/ui/widget/preference/PreferenceItemUI;->mSettingUISpec:Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;

    invoke-virtual {v5}, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->getSupportedEntryValues()[Ljava/lang/String;

    move-result-object v5

    .line 249
    array-length v6, v4

    if-le v6, v3, :cond_21c

    array-length v6, v5

    if-gt v6, v3, :cond_19e

    goto/16 :goto_21c

    .line 253
    :cond_19e
    iget-object v3, p0, Lcom/transsion/camera/app/ui/widget/preference/PreferenceItemUI;->mSettingUISpec:Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;

    invoke-static {v0, p1, p0, p2, v3}, Lcom/transsion/camera/app/ui/widget/preference/PreferenceItemUiManager;->create(ILandroid/content/Context;Lcom/transsion/camera/app/common/ui/setting/IPreferenceItemUI;ILcom/transsion/camera/app/common/ui/setting/SettingUISpec;)Landroid/preference/Preference;

    move-result-object p2

    check-cast p2, Lcom/transsion/camera/app/ui/widget/preference/CustomOSListPreference;

    .line 254
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/preference/PreferenceItemUI;->mSettingUISpec:Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 255
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/preference/PreferenceItemUI;->mSettingUISpec:Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 256
    invoke-virtual {p2, v1}, Landroid/preference/Preference;->setPersistent(Z)V

    .line 258
    invoke-virtual {p2, v4}, Lcom/transsion/widgetslib/preference/OSListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 259
    invoke-virtual {p2, v5}, Lcom/transsion/widgetslib/preference/OSListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 261
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/preference/PreferenceItemUI;->mSettingUISpec:Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/transsion/widgetslib/preference/OSDialogPreference;->setDialogTitle(Ljava/lang/CharSequence;)V

    .line 262
    sget v0, Lcom/transsion/camera/app/common/R$string;->btn_negative:I

    invoke-virtual {p2, v0}, Lcom/transsion/widgetslib/preference/OSDialogPreference;->setNegativeButtonText(I)V

    .line 263
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/preference/PreferenceItemUI;->mSettingUISpec:Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->getSecondTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/transsion/camera/app/ui/widget/preference/CustomOSListPreference;->setSecondTitle(Ljava/lang/String;)V

    .line 264
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/preference/PreferenceItemUI;->mSettingUISpec:Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->getSecondSummary()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/transsion/camera/app/ui/widget/preference/CustomOSListPreference;->setSecondSummary(Ljava/lang/String;)V

    .line 265
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/preference/PreferenceItemUI;->mSettingUISpec:Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->isSupport()Z

    move-result v0

    if-nez v0, :cond_1ea

    return-object v2

    .line 269
    :cond_1ea
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/preference/PreferenceItemUI;->mSettingUISpec:Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->getDialogLayoutResId()I

    move-result v0

    if-eqz v0, :cond_1fb

    .line 270
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/preference/PreferenceItemUI;->mSettingUISpec:Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->getDialogLayoutResId()I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/transsion/camera/app/ui/widget/preference/CustomOSListPreference;->setDialogLayoutResource(I)V

    .line 273
    :cond_1fb
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/preference/PreferenceItemUI;->mSettingUISpec:Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/app/ui/widget/preference/PreferenceItemUI;->mCommonRes:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_21b

    .line 275
    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/widget/preference/PreferenceItemUI;->mIsSellingPoint:Z

    iget-object v1, p0, Lcom/transsion/camera/app/ui/widget/preference/PreferenceItemUI;->mSellingPointData:Lcom/tencent/mmkv/MMKV;

    invoke-direct {p0, v0, v1}, Lcom/transsion/camera/app/ui/widget/preference/PreferenceItemUI;->isShowPoint(ZLcom/tencent/mmkv/MMKV;)Z

    move-result v0

    if-eqz v0, :cond_216

    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/preference/PreferenceItemUI;->mCommonRes:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, v0, p1}, Lcom/transsion/camera/app/ui/widget/preference/PreferenceItemUI;->createIconWithPoint(Landroid/graphics/drawable/Drawable;Landroid/content/Context;)Landroid/graphics/drawable/LayerDrawable;

    move-result-object p0

    goto :goto_218

    :cond_216
    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/preference/PreferenceItemUI;->mCommonRes:Landroid/graphics/drawable/Drawable;

    :goto_218
    invoke-virtual {p2, p0}, Landroid/preference/Preference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    :cond_21b
    return-object p2

    :cond_21c
    :goto_21c
    return-object v2

    .line 194
    :pswitch_21d
    iget-object v4, p0, Lcom/transsion/camera/app/ui/widget/preference/PreferenceItemUI;->mSettingUISpec:Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;

    invoke-virtual {v4}, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->getSupportedEntries()[Ljava/lang/String;

    move-result-object v4

    .line 195
    iget-object v5, p0, Lcom/transsion/camera/app/ui/widget/preference/PreferenceItemUI;->mSettingUISpec:Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;

    invoke-virtual {v5}, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->getSupportedEntryValues()[Ljava/lang/String;

    move-result-object v5

    .line 197
    array-length v4, v4

    if-le v4, v3, :cond_279

    array-length v4, v5

    if-gt v4, v3, :cond_230

    goto :goto_279

    .line 200
    :cond_230
    iget-object v2, p0, Lcom/transsion/camera/app/ui/widget/preference/PreferenceItemUI;->mSettingUISpec:Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;

    invoke-static {v0, p1, p0, p2, v2}, Lcom/transsion/camera/app/ui/widget/preference/PreferenceItemUiManager;->create(ILandroid/content/Context;Lcom/transsion/camera/app/common/ui/setting/IPreferenceItemUI;ILcom/transsion/camera/app/common/ui/setting/SettingUISpec;)Landroid/preference/Preference;

    move-result-object p2

    check-cast p2, Lcom/transsion/camera/app/common/ui/preference/StateSwitchPreference;

    .line 201
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/preference/PreferenceItemUI;->mSettingUISpec:Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 202
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/preference/PreferenceItemUI;->mSettingUISpec:Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 203
    invoke-virtual {p2, v1}, Landroid/preference/Preference;->setPersistent(Z)V

    .line 205
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/preference/PreferenceItemUI;->mSettingUISpec:Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/app/ui/widget/preference/PreferenceItemUI;->mCommonRes:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_26d

    .line 207
    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/widget/preference/PreferenceItemUI;->mIsSellingPoint:Z

    iget-object v1, p0, Lcom/transsion/camera/app/ui/widget/preference/PreferenceItemUI;->mSellingPointData:Lcom/tencent/mmkv/MMKV;

    invoke-direct {p0, v0, v1}, Lcom/transsion/camera/app/ui/widget/preference/PreferenceItemUI;->isShowPoint(ZLcom/tencent/mmkv/MMKV;)Z

    move-result v0

    if-eqz v0, :cond_268

    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/preference/PreferenceItemUI;->mCommonRes:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, v0, p1}, Lcom/transsion/camera/app/ui/widget/preference/PreferenceItemUI;->createIconWithPoint(Landroid/graphics/drawable/Drawable;Landroid/content/Context;)Landroid/graphics/drawable/LayerDrawable;

    move-result-object p1

    goto :goto_26a

    :cond_268
    iget-object p1, p0, Lcom/transsion/camera/app/ui/widget/preference/PreferenceItemUI;->mCommonRes:Landroid/graphics/drawable/Drawable;

    :goto_26a
    invoke-virtual {p2, p1}, Landroid/preference/Preference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 210
    :cond_26d
    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/preference/PreferenceItemUI;->mSettingUISpec:Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->getSupportedEntryDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object p0

    if-eqz p0, :cond_278

    .line 212
    invoke-virtual {p2, p0}, Lcom/transsion/camera/app/common/ui/preference/StateSwitchPreference;->setEntryDrawables([Landroid/graphics/drawable/Drawable;)V

    :cond_278
    return-object p2

    :cond_279
    :goto_279
    return-object v2

    .line 280
    :pswitch_27a
    iget-object v1, p0, Lcom/transsion/camera/app/ui/widget/preference/PreferenceItemUI;->mSettingUISpec:Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;

    invoke-static {v0, p1, p0, p2, v1}, Lcom/transsion/camera/app/ui/widget/preference/PreferenceItemUiManager;->create(ILandroid/content/Context;Lcom/transsion/camera/app/common/ui/setting/IPreferenceItemUI;ILcom/transsion/camera/app/common/ui/setting/SettingUISpec;)Landroid/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/transsion/camera/app/ui/widget/preference/MyDialogPreference;

    .line 281
    iget-object p2, p0, Lcom/transsion/camera/app/ui/widget/preference/PreferenceItemUI;->mSettingUISpec:Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;

    invoke-virtual {p2}, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->getKey()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/transsion/camera/app/ui/widget/preference/MyDialogPreference;->setKey(Ljava/lang/String;)V

    .line 282
    iget-object p2, p0, Lcom/transsion/camera/app/ui/widget/preference/PreferenceItemUI;->mSettingUISpec:Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;

    invoke-virtual {p2}, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->getTitle()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 283
    iget-object p2, p0, Lcom/transsion/camera/app/ui/widget/preference/PreferenceItemUI;->mSettingUISpec:Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;

    invoke-virtual {p2}, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object p2

    if-eqz p2, :cond_2a5

    .line 285
    iget-object p2, p0, Lcom/transsion/camera/app/ui/widget/preference/PreferenceItemUI;->mSettingUISpec:Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;

    invoke-virtual {p2}, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/preference/Preference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 287
    :cond_2a5
    iget-object p2, p0, Lcom/transsion/camera/app/ui/widget/preference/PreferenceItemUI;->mSettingUISpec:Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;

    invoke-virtual {p2}, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->getPositiveText()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_2bb

    .line 288
    iget-object p2, p0, Lcom/transsion/camera/app/ui/widget/preference/PreferenceItemUI;->mSettingUISpec:Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;

    invoke-virtual {p2}, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->getPositiveText()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/preference/DialogPreference;->setPositiveButtonText(Ljava/lang/CharSequence;)V

    goto :goto_2d0

    .line 290
    :cond_2bb
    invoke-virtual {p1}, Landroid/preference/DialogPreference;->getPositiveButtonText()Ljava/lang/CharSequence;

    move-result-object p2

    .line 291
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/widget/preference/PreferenceItemUI;->getLanguage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "pt"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2cd

    .line 292
    const-string p2, "OK"

    .line 294
    :cond_2cd
    invoke-virtual {p1, p2}, Landroid/preference/DialogPreference;->setPositiveButtonText(Ljava/lang/CharSequence;)V

    .line 296
    :goto_2d0
    iget-object p2, p0, Lcom/transsion/camera/app/ui/widget/preference/PreferenceItemUI;->mSettingUISpec:Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;

    invoke-virtual {p2}, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->getNegativeText()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_2e5

    .line 297
    iget-object p2, p0, Lcom/transsion/camera/app/ui/widget/preference/PreferenceItemUI;->mSettingUISpec:Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;

    invoke-virtual {p2}, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->getNegativeText()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/preference/DialogPreference;->setNegativeButtonText(Ljava/lang/CharSequence;)V

    .line 299
    :cond_2e5
    iget-object p2, p0, Lcom/transsion/camera/app/ui/widget/preference/PreferenceItemUI;->mSettingUISpec:Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;

    invoke-virtual {p2}, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->getDialogTitle()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/preference/DialogPreference;->setDialogTitle(Ljava/lang/CharSequence;)V

    .line 300
    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/preference/PreferenceItemUI;->mSettingUISpec:Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/preference/DialogPreference;->setDialogMessage(Ljava/lang/CharSequence;)V

    return-object p1

    .line 320
    :pswitch_2f8
    iget-object v1, p0, Lcom/transsion/camera/app/ui/widget/preference/PreferenceItemUI;->mSettingUISpec:Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;

    invoke-static {v0, p1, p0, p2, v1}, Lcom/transsion/camera/app/ui/widget/preference/PreferenceItemUiManager;->create(ILandroid/content/Context;Lcom/transsion/camera/app/common/ui/setting/IPreferenceItemUI;ILcom/transsion/camera/app/common/ui/setting/SettingUISpec;)Landroid/preference/Preference;

    move-result-object p2

    .line 321
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/preference/PreferenceItemUI;->mSettingUISpec:Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->getSupportedEntries()[Ljava/lang/String;

    move-result-object v0

    .line 322
    iget-object v1, p0, Lcom/transsion/camera/app/ui/widget/preference/PreferenceItemUI;->mSettingUISpec:Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;

    invoke-virtual {v1}, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->getSupportedEntryValues()[Ljava/lang/String;

    move-result-object v1

    .line 323
    array-length v0, v0

    if-le v0, v3, :cond_34c

    array-length v0, v1

    if-gt v0, v3, :cond_311

    goto :goto_34c

    .line 326
    :cond_311
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/preference/PreferenceItemUI;->mSettingUISpec:Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 327
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/preference/PreferenceItemUI;->mSettingUISpec:Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 328
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/preference/PreferenceItemUI;->mSettingUISpec:Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/app/ui/widget/preference/PreferenceItemUI;->mCommonRes:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_343

    .line 331
    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/widget/preference/PreferenceItemUI;->mIsSellingPoint:Z

    iget-object v1, p0, Lcom/transsion/camera/app/ui/widget/preference/PreferenceItemUI;->mSellingPointData:Lcom/tencent/mmkv/MMKV;

    invoke-direct {p0, v0, v1}, Lcom/transsion/camera/app/ui/widget/preference/PreferenceItemUI;->isShowPoint(ZLcom/tencent/mmkv/MMKV;)Z

    move-result v0

    if-eqz v0, :cond_33e

    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/preference/PreferenceItemUI;->mCommonRes:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, v0, p1}, Lcom/transsion/camera/app/ui/widget/preference/PreferenceItemUI;->createIconWithPoint(Landroid/graphics/drawable/Drawable;Landroid/content/Context;)Landroid/graphics/drawable/LayerDrawable;

    move-result-object p1

    goto :goto_340

    :cond_33e
    iget-object p1, p0, Lcom/transsion/camera/app/ui/widget/preference/PreferenceItemUI;->mCommonRes:Landroid/graphics/drawable/Drawable;

    .line 330
    :goto_340
    invoke-virtual {p2, p1}, Landroid/preference/Preference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 333
    :cond_343
    new-instance p1, Lcom/transsion/camera/app/ui/widget/preference/PreferenceItemUI$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lcom/transsion/camera/app/ui/widget/preference/PreferenceItemUI$$ExternalSyntheticLambda0;-><init>(Lcom/transsion/camera/app/ui/widget/preference/PreferenceItemUI;)V

    invoke-virtual {p2, p1}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    return-object p2

    :cond_34c
    :goto_34c
    return-object v2

    nop

    :pswitch_data_34e
    .packed-switch 0x0
        :pswitch_2f8
        :pswitch_27a
        :pswitch_21d
        :pswitch_18a
        :pswitch_18a
        :pswitch_132
        :pswitch_bd
        :pswitch_1a
    .end packed-switch
.end method

.method private doValueChange(Ljava/lang/String;)V
    .registers 8

    .line 802
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/preference/PreferenceItemUI;->mPreference:Landroid/preference/Preference;

    if-eqz v0, :cond_19

    instance-of v1, v0, Landroid/preference/DialogPreference;

    if-eqz v1, :cond_19

    .line 803
    check-cast v0, Landroid/preference/DialogPreference;

    invoke-virtual {v0}, Landroid/preference/DialogPreference;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_19

    .line 804
    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_19

    .line 805
    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 809
    :cond_19
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/preference/PreferenceItemUI;->mSettingUISpec:Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->getSupportedEntryValues()[Ljava/lang/String;

    move-result-object v0

    .line 810
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/widget/preference/PreferenceItemUI;->createSupportEntries()Z

    .line 811
    iget-object v1, p0, Lcom/transsion/camera/app/ui/widget/preference/PreferenceItemUI;->mSettingUISpec:Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;

    invoke-virtual {v1}, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->getSupportedEntryValues()[Ljava/lang/String;

    move-result-object v1

    .line 813
    invoke-static {v0, v1}, Lcom/transsion/camera/utils/ArrayUtils;->equals([Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v0, :cond_37

    if-eqz v1, :cond_37

    .line 816
    array-length v0, v0

    array-length v5, v1

    if-eq v0, v5, :cond_37

    move v4, v3

    .line 818
    :cond_37
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/preference/PreferenceItemUI;->mCurrentEntryValue:Ljava/lang/String;

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_41

    if-nez v2, :cond_49

    .line 819
    :cond_41
    iput-object p1, p0, Lcom/transsion/camera/app/ui/widget/preference/PreferenceItemUI;->mCurrentEntryValue:Ljava/lang/String;

    .line 820
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/widget/preference/PreferenceItemUI;->updatePreferenceEntry()V

    .line 821
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/widget/preference/PreferenceItemUI;->updatePreferenceUI()V

    :cond_49
    if-eqz v1, :cond_55

    .line 824
    array-length p1, v1

    if-gt p1, v3, :cond_4f

    goto :goto_55

    :cond_4f
    if-eqz v4, :cond_58

    .line 827
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/widget/preference/PreferenceItemUI;->showPreference()V

    goto :goto_58

    .line 825
    :cond_55
    :goto_55
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/widget/preference/PreferenceItemUI;->hidePreference()V

    .line 830
    :cond_58
    :goto_58
    iget-object p1, p0, Lcom/transsion/camera/app/ui/widget/preference/PreferenceItemUI;->mPreference:Landroid/preference/Preference;

    if-nez p1, :cond_5d

    return-void

    .line 834
    :cond_5d
    instance-of v0, p1, Landroid/preference/DialogPreference;

    if-eqz v0, :cond_72

    .line 835
    check-cast p1, Landroid/preference/DialogPreference;

    invoke-virtual {p1}, Landroid/preference/DialogPreference;->getDialog()Landroid/app/Dialog;

    move-result-object p1

    if-eqz p1, :cond_72

    .line 836
    invoke-virtual {p1}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_72

    .line 837
    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    .line 841
    :cond_72
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/widget/preference/PreferenceItemUI;->hideSellingPoint()V

    return-void
.end method

.method private exitSettingFragment(Ljava/lang/String;)V
    .registers 2

    .line 866
    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/preference/PreferenceItemUI;->mSettingFragmentControl:Lcom/transsion/camera/app/common/IAppUIControl$ISettingFragmentControl;

    if-eqz p0, :cond_7

    .line 867
    invoke-interface {p0, p1}, Lcom/transsion/camera/app/common/IAppUIControl$ISettingFragmentControl;->exitSettingFragment(Ljava/lang/String;)V

    :cond_7
    return-void
.end method

.method private getLanguage()Ljava/lang/String;
    .registers 1

    .line 912
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p0

    .line 913
    invoke-virtual {p0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private getValueIndex()I
    .registers 2

    .line 796
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/preference/PreferenceItemUI;->mPreference:Landroid/preference/Preference;

    check-cast v0, Lcom/transsion/widgetslib/preference/OSListPreference;

    invoke-virtual {v0}, Lcom/transsion/widgetslib/preference/OSListPreference;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/ui/widget/preference/PreferenceItemUI;->findIndexOfValue(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method private hidePreference()V
    .registers 2

    .line 854
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/preference/PreferenceItemUI;->mPreference:Landroid/preference/Preference;

    if-nez v0, :cond_5

    return-void

    .line 857
    :cond_5
    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/preference/PreferenceItemUI;->mSettingFragmentControl:Lcom/transsion/camera/app/common/IAppUIControl$ISettingFragmentControl;

    invoke-interface {p0, v0}, Lcom/transsion/camera/app/common/IAppUIControl$ISettingFragmentControl;->hidePreference(Landroid/preference/Preference;)V

    return-void
.end method

.method private hideSellingPoint()V
    .registers 5

    .line 845
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/preference/PreferenceItemUI;->mSellingPointData:Lcom/tencent/mmkv/MMKV;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SettingItemSellingPoint"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/widget/preference/PreferenceItemUI;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v3}, Lcom/tencent/mmkv/MMKV;->decodeBool(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_40

    .line 846
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/preference/PreferenceItemUI;->mSellingPointData:Lcom/tencent/mmkv/MMKV;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/widget/preference/PreferenceItemUI;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/tencent/mmkv/MMKV;->encode(Ljava/lang/String;Z)Z

    .line 847
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/preference/PreferenceItemUI;->mPreference:Landroid/preference/Preference;

    if-eqz v0, :cond_40

    .line 848
    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/preference/PreferenceItemUI;->mCommonRes:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p0}, Landroid/preference/Preference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    :cond_40
    return-void
.end method

.method private isShowPoint(ZLcom/tencent/mmkv/MMKV;)Z
    .registers 4

    if-eqz p1, :cond_21

    if-eqz p2, :cond_21

    .line 908
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "SettingItemSellingPoint"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/widget/preference/PreferenceItemUI;->getKey()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x1

    invoke-virtual {p2, p0, p1}, Lcom/tencent/mmkv/MMKV;->decodeBool(Ljava/lang/String;Z)Z

    move-result p0

    if-eqz p0, :cond_21

    return p1

    :cond_21
    const/4 p0, 0x0

    return p0
.end method

.method private synthetic lambda$doCreatePreference$0(Landroid/preference/Preference;)Z
    .registers 3

    .line 340
    const-string p1, "key_shutter_sound_optional"

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/widget/preference/PreferenceItemUI;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_f

    .line 341
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/widget/preference/PreferenceItemUI;->hideSellingPoint()V

    .line 343
    :cond_f
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/widget/preference/PreferenceItemUI;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/widget/preference/PreferenceItemUI;->exitSettingFragment(Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method

.method private synthetic lambda$doCreatePreference$1(Z)V
    .registers 4

    .line 362
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/preference/PreferenceItemUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    if-eqz v0, :cond_1a

    .line 363
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/widget/preference/PreferenceItemUI;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->getStatusResponder(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/widget/preference/PreferenceItemUI;->getKey()Ljava/lang/String;

    move-result-object p0

    if-eqz p1, :cond_15

    const-string p1, "on"

    goto :goto_17

    :cond_15
    const-string p1, "off"

    :goto_17
    invoke-virtual {v0, p0, p1}, Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;->statusChanged(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_1a
    return-void
.end method

.method private synthetic lambda$doCreatePreference$2(Landroid/preference/Preference;)Z
    .registers 2

    .line 372
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/widget/preference/PreferenceItemUI;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/widget/preference/PreferenceItemUI;->exitSettingFragment(Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method

.method private synthetic lambda$onPrepareDialogBuilder$3(Lcom/transsion/camera/app/ui/widget/preference/CustomOSListPreference;Landroid/content/DialogInterface;IZ)V
    .registers 5

    if-eqz p1, :cond_b

    .line 766
    invoke-virtual {p1}, Lcom/transsion/camera/app/ui/widget/preference/CustomOSListPreference;->getCustomLayoutClickListener()Landroid/content/DialogInterface$OnMultiChoiceClickListener;

    move-result-object p1

    if-eqz p1, :cond_b

    .line 768
    invoke-interface {p1, p2, p3, p4}, Landroid/content/DialogInterface$OnMultiChoiceClickListener;->onClick(Landroid/content/DialogInterface;IZ)V

    .line 771
    :cond_b
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/widget/preference/PreferenceItemUI;->updatePreferenceUI()V

    .line 772
    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/preference/PreferenceItemUI;->mRotateDialog:Lcom/transsion/camera/app/ui/widget/dialog/RotateDialog;

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialog;->hide()V

    return-void
.end method

.method private registerKeyToMonitor(Ljava/lang/String;)V
    .registers 3

    .line 587
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/preference/PreferenceItemUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/preference/PreferenceItemUI;->mSettingChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    invoke-virtual {v0, p1, p0}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->registerValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    return-void
.end method

.method private setupPreference()V
    .registers 3

    .line 502
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/widget/preference/PreferenceItemUI;->updatePreferenceEntry()V

    .line 503
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/widget/preference/PreferenceItemUI;->updatePreferenceUI()V

    .line 504
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/preference/PreferenceItemUI;->mPreference:Landroid/preference/Preference;

    instance-of v1, v0, Landroid/preference/SwitchPreference;

    if-eqz v1, :cond_12

    .line 505
    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/preference/PreferenceItemUI;->mSwitchPreferenceListener:Landroid/preference/Preference$OnPreferenceChangeListener;

    invoke-virtual {v0, p0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    return-void

    .line 506
    :cond_12
    instance-of v1, v0, Lcom/transsion/widgetslib/preference/OSListPreference;

    if-eqz v1, :cond_29

    .line 507
    iget-object v1, p0, Lcom/transsion/camera/app/ui/widget/preference/PreferenceItemUI;->mListPreferenceListener:Landroid/preference/Preference$OnPreferenceChangeListener;

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 508
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/preference/PreferenceItemUI;->mPreference:Landroid/preference/Preference;

    instance-of v1, v0, Lcom/transsion/camera/app/ui/widget/preference/CustomOSListPreference;

    if-eqz v1, :cond_34

    .line 509
    check-cast v0, Lcom/transsion/camera/app/ui/widget/preference/CustomOSListPreference;

    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/preference/PreferenceItemUI;->mCustomListPreferenceListener:Landroid/preference/Preference$OnPreferenceChangeListener;

    invoke-virtual {v0, p0}, Lcom/transsion/camera/app/ui/widget/preference/CustomOSListPreference;->setOnExtraPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    return-void

    .line 511
    :cond_29
    instance-of v1, v0, Lcom/transsion/camera/app/ui/widget/preference/MyDialogPreference;

    if-eqz v1, :cond_34

    .line 512
    check-cast v0, Lcom/transsion/camera/app/ui/widget/preference/MyDialogPreference;

    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/preference/PreferenceItemUI;->mDialogPreferenceListener:Lcom/transsion/camera/app/ui/widget/preference/MyDialogPreference$DialogListener;

    invoke-virtual {v0, p0}, Lcom/transsion/camera/app/ui/widget/preference/MyDialogPreference;->setDialogListener(Lcom/transsion/camera/app/ui/widget/preference/MyDialogPreference$DialogListener;)V

    :cond_34
    return-void
.end method

.method private showPreference()V
    .registers 2

    .line 861
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/preference/PreferenceItemUI;->mSettingFragmentControl:Lcom/transsion/camera/app/common/IAppUIControl$ISettingFragmentControl;

    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/preference/PreferenceItemUI;->mPreference:Landroid/preference/Preference;

    invoke-interface {v0, p0}, Lcom/transsion/camera/app/common/IAppUIControl$ISettingFragmentControl;->showPreference(Landroid/preference/Preference;)V

    return-void
.end method

.method private unRegisterKeyToMonitor(Ljava/lang/String;)V
    .registers 3

    .line 591
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/preference/PreferenceItemUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/preference/PreferenceItemUI;->mSettingChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    invoke-virtual {v0, p1, p0}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->unregisterValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    return-void
.end method

.method private updatePreferenceEntry()V
    .registers 7

    .line 517
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/preference/PreferenceItemUI;->mPreference:Landroid/preference/Preference;

    instance-of v1, v0, Landroid/preference/SwitchPreference;

    const-string v2, "on"

    if-eqz v1, :cond_16

    .line 518
    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/preference/PreferenceItemUI;->mCurrentEntryValue:Ljava/lang/String;

    if-eqz p0, :cond_8f

    .line 519
    check-cast v0, Landroid/preference/SwitchPreference;

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    invoke-virtual {v0, p0}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    return-void

    .line 521
    :cond_16
    instance-of v0, v0, Lcom/transsion/widgetslib/preference/OSListPreference;

    if-eqz v0, :cond_8f

    .line 522
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/preference/PreferenceItemUI;->mCurrentEntryValue:Ljava/lang/String;

    if-eqz v0, :cond_6e

    .line 523
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/preference/PreferenceItemUI;->mSettingUISpec:Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->getSupportedEntries()[Ljava/lang/String;

    move-result-object v0

    .line 524
    iget-object v1, p0, Lcom/transsion/camera/app/ui/widget/preference/PreferenceItemUI;->mSettingUISpec:Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;

    invoke-virtual {v1}, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->getSupportedEntryValues()[Ljava/lang/String;

    move-result-object v1

    .line 525
    sget-object v3, Lcom/transsion/camera/app/ui/widget/preference/PreferenceItemUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[updatePreferenceEntry] supportedEntries="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " , supportedEntryValues="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 526
    iget-object v3, p0, Lcom/transsion/camera/app/ui/widget/preference/PreferenceItemUI;->mPreference:Landroid/preference/Preference;

    check-cast v3, Lcom/transsion/widgetslib/preference/OSListPreference;

    invoke-virtual {v3, v0}, Lcom/transsion/widgetslib/preference/OSListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 527
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/preference/PreferenceItemUI;->mPreference:Landroid/preference/Preference;

    check-cast v0, Lcom/transsion/widgetslib/preference/OSListPreference;

    invoke-virtual {v0, v1}, Lcom/transsion/widgetslib/preference/OSListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 528
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/preference/PreferenceItemUI;->mCurrentEntryValue:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/transsion/camera/utils/ArrayUtils;->indexOf([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_6e

    .line 530
    iget-object v1, p0, Lcom/transsion/camera/app/ui/widget/preference/PreferenceItemUI;->mPreference:Landroid/preference/Preference;

    check-cast v1, Lcom/transsion/widgetslib/preference/OSListPreference;

    invoke-virtual {v1, v0}, Lcom/transsion/widgetslib/preference/OSListPreference;->setValueIndex(I)V

    .line 533
    :cond_6e
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/preference/PreferenceItemUI;->mPreference:Landroid/preference/Preference;

    instance-of v0, v0, Lcom/transsion/camera/app/ui/widget/preference/CustomOSListPreference;

    if-eqz v0, :cond_8f

    .line 534
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/preference/PreferenceItemUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    if-eqz v0, :cond_8f

    invoke-interface {v0}, Lcom/transsion/camera/app/common/setting/ISetting;->getSecondSettingValue()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_8f

    .line 535
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/preference/PreferenceItemUI;->mPreference:Landroid/preference/Preference;

    check-cast v0, Lcom/transsion/camera/app/ui/widget/preference/CustomOSListPreference;

    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/preference/PreferenceItemUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    invoke-interface {p0}, Lcom/transsion/camera/app/common/setting/ISetting;->getSecondSettingValue()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    invoke-virtual {v0, p0}, Lcom/transsion/camera/app/ui/widget/preference/CustomOSListPreference;->setSwitchChecked(Z)V

    :cond_8f
    return-void
.end method

.method private updatePreferenceUI()V
    .registers 6

    .line 542
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/preference/PreferenceItemUI;->mPreference:Landroid/preference/Preference;

    instance-of v1, v0, Lcom/transsion/camera/app/common/ui/preference/UpdateSwitchPerference;

    const/4 v2, 0x0

    if-eqz v1, :cond_2a

    .line 543
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/preference/PreferenceItemUI;->mCurrentEntryValue:Ljava/lang/String;

    if-eqz v0, :cond_e1

    .line 545
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/preference/PreferenceItemUI;->mSettingUISpec:Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->getSupportedEntrySummaries()[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_e1

    .line 546
    array-length v1, v0

    const/4 v3, 0x1

    if-le v1, v3, :cond_e1

    .line 547
    iget-object v1, p0, Lcom/transsion/camera/app/ui/widget/preference/PreferenceItemUI;->mPreference:Landroid/preference/Preference;

    check-cast v1, Landroid/preference/SwitchPreference;

    aget-object v2, v0, v2

    invoke-virtual {v1, v2}, Landroid/preference/TwoStatePreference;->setSummaryOn(Ljava/lang/CharSequence;)V

    .line 548
    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/preference/PreferenceItemUI;->mPreference:Landroid/preference/Preference;

    check-cast p0, Landroid/preference/SwitchPreference;

    aget-object v0, v0, v3

    invoke-virtual {p0, v0}, Landroid/preference/TwoStatePreference;->setSummaryOff(Ljava/lang/CharSequence;)V

    return-void

    .line 551
    :cond_2a
    instance-of v1, v0, Landroid/preference/SwitchPreference;

    if-eqz v1, :cond_45

    .line 552
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/preference/PreferenceItemUI;->mCurrentEntryValue:Ljava/lang/String;

    if-eqz v0, :cond_e1

    .line 554
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/preference/PreferenceItemUI;->mSettingUISpec:Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->getSupportedEntrySummaries()[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_e1

    .line 555
    array-length v1, v0

    if-lez v1, :cond_e1

    .line 556
    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/preference/PreferenceItemUI;->mPreference:Landroid/preference/Preference;

    aget-object v0, v0, v2

    invoke-virtual {p0, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    return-void

    .line 559
    :cond_45
    instance-of v1, v0, Lcom/transsion/widgetslib/preference/OSListPreference;

    if-eqz v1, :cond_cd

    .line 560
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/preference/PreferenceItemUI;->mCurrentEntryValue:Ljava/lang/String;

    if-eqz v0, :cond_9e

    .line 561
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/preference/PreferenceItemUI;->mSettingUISpec:Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->getSupportedEntries()[Ljava/lang/String;

    move-result-object v0

    .line 562
    iget-object v1, p0, Lcom/transsion/camera/app/ui/widget/preference/PreferenceItemUI;->mSettingUISpec:Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;

    invoke-virtual {v1}, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->getSupportedEntryValues()[Ljava/lang/String;

    move-result-object v1

    .line 563
    sget-object v2, Lcom/transsion/camera/app/ui/widget/preference/PreferenceItemUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[updatePreferenceUI] supportedEntries="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " , supportedEntryValues="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 564
    iget-object v2, p0, Lcom/transsion/camera/app/ui/widget/preference/PreferenceItemUI;->mCurrentEntryValue:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/transsion/camera/utils/ArrayUtils;->indexOf([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_8f

    .line 566
    iget-object v2, p0, Lcom/transsion/camera/app/ui/widget/preference/PreferenceItemUI;->mPreference:Landroid/preference/Preference;

    aget-object v3, v0, v1

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 568
    :cond_8f
    iget-object v2, p0, Lcom/transsion/camera/app/ui/widget/preference/PreferenceItemUI;->mSettingUISpec:Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;

    invoke-virtual {v2}, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->getDescription()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_9e

    .line 569
    iget-object v2, p0, Lcom/transsion/camera/app/ui/widget/preference/PreferenceItemUI;->mPreference:Landroid/preference/Preference;

    aget-object v0, v0, v1

    invoke-virtual {v2, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 572
    :cond_9e
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/preference/PreferenceItemUI;->mPreference:Landroid/preference/Preference;

    instance-of v0, v0, Lcom/transsion/camera/app/ui/widget/preference/CustomOSListPreference;

    if-eqz v0, :cond_e1

    .line 573
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/preference/PreferenceItemUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    invoke-interface {v0}, Lcom/transsion/camera/app/common/setting/ISetting;->getSecondSettingValue()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_e1

    .line 574
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/preference/PreferenceItemUI;->mPreference:Landroid/preference/Preference;

    check-cast v0, Lcom/transsion/camera/app/ui/widget/preference/CustomOSListPreference;

    iget-object v1, p0, Lcom/transsion/camera/app/ui/widget/preference/PreferenceItemUI;->mSettingUISpec:Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;

    invoke-virtual {v1}, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->isCustomLayoutSupport()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/ui/widget/preference/CustomOSListPreference;->setCustomLayoutSupport(Z)V

    .line 575
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/preference/PreferenceItemUI;->mPreference:Landroid/preference/Preference;

    check-cast v0, Lcom/transsion/camera/app/ui/widget/preference/CustomOSListPreference;

    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/preference/PreferenceItemUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    invoke-interface {p0}, Lcom/transsion/camera/app/common/setting/ISetting;->getSecondSettingValue()Ljava/lang/String;

    move-result-object p0

    const-string v1, "on"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    invoke-virtual {v0, p0}, Lcom/transsion/camera/app/ui/widget/preference/CustomOSListPreference;->setSwitchChecked(Z)V

    return-void

    :cond_cd
    if-eqz v0, :cond_e1

    .line 579
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/preference/PreferenceItemUI;->mSettingUISpec:Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->getSupportedEntrySummaries()[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_e1

    .line 580
    array-length v1, v0

    if-lez v1, :cond_e1

    .line 581
    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/preference/PreferenceItemUI;->mPreference:Landroid/preference/Preference;

    aget-object v0, v0, v2

    invoke-virtual {p0, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_e1
    return-void
.end method


# virtual methods
.method public createPreference(Landroid/content/Context;I)Landroid/preference/Preference;
    .registers 3

    .line 163
    iput-object p1, p0, Lcom/transsion/camera/app/ui/widget/preference/PreferenceItemUI;->mContext:Landroid/content/Context;

    .line 164
    iput p2, p0, Lcom/transsion/camera/app/ui/widget/preference/PreferenceItemUI;->mScreenFormType:I

    .line 165
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/app/ui/widget/preference/PreferenceItemUI;->doCreatePreference(Landroid/content/Context;I)Landroid/preference/Preference;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/app/ui/widget/preference/PreferenceItemUI;->mPreference:Landroid/preference/Preference;

    if-eqz p1, :cond_f

    .line 167
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/widget/preference/PreferenceItemUI;->setupPreference()V

    .line 169
    :cond_f
    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/preference/PreferenceItemUI;->mPreference:Landroid/preference/Preference;

    return-object p0
.end method

.method public findIndexOfValue(Ljava/lang/String;)I
    .registers 4

    .line 783
    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/preference/PreferenceItemUI;->mPreference:Landroid/preference/Preference;

    check-cast p0, Lcom/transsion/widgetslib/preference/OSListPreference;

    invoke-virtual {p0}, Lcom/transsion/widgetslib/preference/OSListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object p0

    if-eqz p1, :cond_1d

    if-eqz p0, :cond_1d

    .line 785
    array-length v0, p0

    add-int/lit8 v0, v0, -0x1

    :goto_f
    if-ltz v0, :cond_1d

    .line 786
    aget-object v1, p0, v0

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1a

    return v0

    :cond_1a
    add-int/lit8 v0, v0, -0x1

    goto :goto_f

    :cond_1d
    const/4 p0, -0x1

    return p0
.end method

.method public getKey()Ljava/lang/String;
    .registers 1

    .line 119
    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/preference/PreferenceItemUI;->mSettingUISpec:Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->getKey()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getPreference()Landroid/preference/Preference;
    .registers 1

    .line 94
    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/preference/PreferenceItemUI;->mPreference:Landroid/preference/Preference;

    return-object p0
.end method

.method public init()V
    .registers 3

    .line 129
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/preference/PreferenceItemUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    if-eqz v0, :cond_e

    .line 130
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/preference/PreferenceItemUI;->mSettingUISpec:Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 131
    invoke-direct {p0, v0}, Lcom/transsion/camera/app/ui/widget/preference/PreferenceItemUI;->registerKeyToMonitor(Ljava/lang/String;)V

    goto :goto_15

    .line 133
    :cond_e
    sget-object v0, Lcom/transsion/camera/app/ui/widget/preference/PreferenceItemUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "mStatusMonitor is null! maybe flow is wrong!"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 136
    :goto_15
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/preference/PreferenceItemUI;->mPreference:Landroid/preference/Preference;

    if-eqz v0, :cond_25

    invoke-virtual {v0}, Landroid/preference/Preference;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_25

    .line 137
    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/preference/PreferenceItemUI;->mPreference:Landroid/preference/Preference;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/preference/Preference;->setEnabled(Z)V

    :cond_25
    return-void
.end method

.method public notifyCameraOperateAction(I)V
    .registers 2

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 3

    .line 456
    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/preference/PreferenceItemUI;->mPreference:Landroid/preference/Preference;

    if-eqz p0, :cond_17

    .line 457
    instance-of v0, p0, Lcom/transsion/camera/app/ui/widget/preference/MyDialogPreference;

    if-eqz v0, :cond_e

    .line 458
    check-cast p0, Lcom/transsion/camera/app/ui/widget/preference/MyDialogPreference;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/widget/preference/MyDialogPreference;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void

    .line 459
    :cond_e
    instance-of v0, p0, Lcom/transsion/widgetslib/preference/OSListPreference;

    if-eqz v0, :cond_17

    .line 460
    check-cast p0, Lcom/transsion/widgetslib/preference/OSListPreference;

    invoke-virtual {p0, p1}, Lcom/transsion/widgetslib/preference/OSDialogPreference;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    :cond_17
    return-void
.end method

.method public onItemClick()V
    .registers 7

    .line 667
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/preference/PreferenceItemUI;->mSettingUISpec:Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->getType()I

    move-result v0

    .line 668
    iget-object v1, p0, Lcom/transsion/camera/app/ui/widget/preference/PreferenceItemUI;->mSettingUISpec:Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;

    invoke-virtual {v1}, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->getPositiveText()Ljava/lang/String;

    move-result-object v1

    .line 669
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1a

    .line 670
    iget-object v1, p0, Lcom/transsion/camera/app/ui/widget/preference/PreferenceItemUI;->mContext:Landroid/content/Context;

    sget v2, Lcom/transsion/widgetslib/R$string;->os_preference_dialog_positive_string:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    .line 672
    :cond_1a
    iget-object v2, p0, Lcom/transsion/camera/app/ui/widget/preference/PreferenceItemUI;->mSettingUISpec:Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;

    invoke-virtual {v2}, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->getNegativeText()Ljava/lang/String;

    move-result-object v2

    .line 673
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2e

    .line 674
    iget-object v2, p0, Lcom/transsion/camera/app/ui/widget/preference/PreferenceItemUI;->mContext:Landroid/content/Context;

    sget v3, Lcom/transsion/camera/app/common/R$string;->btn_negative:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    :cond_2e
    const/4 v3, 0x0

    .line 676
    iput-object v3, p0, Lcom/transsion/camera/app/ui/widget/preference/PreferenceItemUI;->mRotateDialog:Lcom/transsion/camera/app/ui/widget/dialog/RotateDialog;

    .line 677
    iget v3, p0, Lcom/transsion/camera/app/ui/widget/preference/PreferenceItemUI;->mScreenFormType:I

    const/4 v4, 0x3

    if-eqz v3, :cond_38

    if-ne v3, v4, :cond_3b

    :cond_38
    const/4 v5, 0x0

    .line 679
    iput v5, p0, Lcom/transsion/camera/app/ui/widget/preference/PreferenceItemUI;->mOrientation:I

    :cond_3b
    const/4 v5, 0x1

    if-eq v0, v5, :cond_6e

    if-eq v0, v4, :cond_44

    const/4 v1, 0x4

    if-eq v0, v1, :cond_44

    goto :goto_ab

    .line 684
    :cond_44
    new-instance v0, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialog$Builder;

    iget-object v1, p0, Lcom/transsion/camera/app/ui/widget/preference/PreferenceItemUI;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, v3}, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialog$Builder;-><init>(Landroid/content/Context;I)V

    iget-object v1, p0, Lcom/transsion/camera/app/ui/widget/preference/PreferenceItemUI;->mPreference:Landroid/preference/Preference;

    .line 685
    invoke-virtual {v1}, Landroid/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lcom/transsion/camera/app/ui/widget/dialog/RotateDialog$Builder;

    move-result-object v0

    iget v1, p0, Lcom/transsion/camera/app/ui/widget/preference/PreferenceItemUI;->mOrientation:I

    .line 686
    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialog$Builder;->setOrientation(I)Lcom/transsion/camera/app/ui/widget/dialog/RotateDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/transsion/camera/app/ui/widget/preference/PreferenceItemUI$5;

    invoke-direct {v1, p0}, Lcom/transsion/camera/app/ui/widget/preference/PreferenceItemUI$5;-><init>(Lcom/transsion/camera/app/ui/widget/preference/PreferenceItemUI;)V

    .line 687
    invoke-virtual {v0, v2, v1}, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/transsion/camera/app/ui/widget/dialog/RotateDialog$Builder;

    move-result-object v0

    .line 693
    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/ui/widget/preference/PreferenceItemUI;->onPrepareDialogBuilder(Lcom/transsion/camera/app/ui/widget/dialog/RotateDialog$Builder;)V

    .line 694
    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialog$Builder;->create()Lcom/transsion/camera/app/ui/widget/dialog/RotateDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/app/ui/widget/preference/PreferenceItemUI;->mRotateDialog:Lcom/transsion/camera/app/ui/widget/dialog/RotateDialog;

    goto :goto_ab

    .line 698
    :cond_6e
    new-instance v0, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialog$Builder;

    iget-object v4, p0, Lcom/transsion/camera/app/ui/widget/preference/PreferenceItemUI;->mContext:Landroid/content/Context;

    invoke-direct {v0, v4, v3}, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialog$Builder;-><init>(Landroid/content/Context;I)V

    iget-object v3, p0, Lcom/transsion/camera/app/ui/widget/preference/PreferenceItemUI;->mPreference:Landroid/preference/Preference;

    check-cast v3, Landroid/preference/DialogPreference;

    .line 699
    invoke-virtual {v3}, Landroid/preference/DialogPreference;->getDialogTitle()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lcom/transsion/camera/app/ui/widget/dialog/RotateDialog$Builder;

    move-result-object v0

    iget-object v3, p0, Lcom/transsion/camera/app/ui/widget/preference/PreferenceItemUI;->mPreference:Landroid/preference/Preference;

    check-cast v3, Landroid/preference/DialogPreference;

    .line 700
    invoke-virtual {v3}, Landroid/preference/DialogPreference;->getDialogMessage()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lcom/transsion/camera/app/ui/widget/dialog/RotateDialog$Builder;

    move-result-object v0

    iget v3, p0, Lcom/transsion/camera/app/ui/widget/preference/PreferenceItemUI;->mOrientation:I

    .line 701
    invoke-virtual {v0, v3}, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialog$Builder;->setOrientation(I)Lcom/transsion/camera/app/ui/widget/dialog/RotateDialog$Builder;

    move-result-object v0

    new-instance v3, Lcom/transsion/camera/app/ui/widget/preference/PreferenceItemUI$7;

    invoke-direct {v3, p0}, Lcom/transsion/camera/app/ui/widget/preference/PreferenceItemUI$7;-><init>(Lcom/transsion/camera/app/ui/widget/preference/PreferenceItemUI;)V

    .line 702
    invoke-virtual {v0, v1, v3}, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/transsion/camera/app/ui/widget/dialog/RotateDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/transsion/camera/app/ui/widget/preference/PreferenceItemUI$6;

    invoke-direct {v1, p0}, Lcom/transsion/camera/app/ui/widget/preference/PreferenceItemUI$6;-><init>(Lcom/transsion/camera/app/ui/widget/preference/PreferenceItemUI;)V

    .line 711
    invoke-virtual {v0, v2, v1}, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/transsion/camera/app/ui/widget/dialog/RotateDialog$Builder;

    move-result-object v0

    .line 720
    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialog$Builder;->create()Lcom/transsion/camera/app/ui/widget/dialog/RotateDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/app/ui/widget/preference/PreferenceItemUI;->mRotateDialog:Lcom/transsion/camera/app/ui/widget/dialog/RotateDialog;

    .line 723
    :goto_ab
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/preference/PreferenceItemUI;->mRotateDialog:Lcom/transsion/camera/app/ui/widget/dialog/RotateDialog;

    if-eqz v0, :cond_be

    .line 724
    iget-object v1, p0, Lcom/transsion/camera/app/ui/widget/preference/PreferenceItemUI;->mContext:Landroid/content/Context;

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/widget/preference/PreferenceItemUI;->getKey()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialog;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    :cond_be
    return-void
.end method

.method public onOrientationChanged(I)V
    .registers 4

    .line 467
    iput p1, p0, Lcom/transsion/camera/app/ui/widget/preference/PreferenceItemUI;->mOrientation:I

    .line 468
    iget v0, p0, Lcom/transsion/camera/app/ui/widget/preference/PreferenceItemUI;->mScreenFormType:I

    if-eqz v0, :cond_9

    const/4 v1, 0x3

    if-ne v0, v1, :cond_c

    :cond_9
    const/4 v0, 0x0

    .line 470
    iput v0, p0, Lcom/transsion/camera/app/ui/widget/preference/PreferenceItemUI;->mOrientation:I

    .line 472
    :cond_c
    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/preference/PreferenceItemUI;->mRotateDialog:Lcom/transsion/camera/app/ui/widget/dialog/RotateDialog;

    if-eqz p0, :cond_13

    .line 473
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialog;->setOrientation(I)V

    :cond_13
    return-void
.end method

.method protected onPrepareDialogBuilder(Lcom/transsion/camera/app/ui/widget/dialog/RotateDialog$Builder;)V
    .registers 5

    .line 739
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/preference/PreferenceItemUI;->mPreference:Landroid/preference/Preference;

    check-cast v0, Lcom/transsion/widgetslib/preference/OSListPreference;

    invoke-virtual {v0}, Lcom/transsion/widgetslib/preference/OSListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v0

    .line 740
    iget-object v1, p0, Lcom/transsion/camera/app/ui/widget/preference/PreferenceItemUI;->mPreference:Landroid/preference/Preference;

    check-cast v1, Lcom/transsion/widgetslib/preference/OSListPreference;

    invoke-virtual {v1}, Lcom/transsion/widgetslib/preference/OSListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v1

    if-eqz v0, :cond_62

    if-eqz v1, :cond_62

    .line 742
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/widget/preference/PreferenceItemUI;->getValueIndex()I

    move-result v1

    iput v1, p0, Lcom/transsion/camera/app/ui/widget/preference/PreferenceItemUI;->mClickedDialogEntryIndex:I

    .line 743
    new-instance v2, Lcom/transsion/camera/app/ui/widget/preference/PreferenceItemUI$8;

    invoke-direct {v2, p0}, Lcom/transsion/camera/app/ui/widget/preference/PreferenceItemUI$8;-><init>(Lcom/transsion/camera/app/ui/widget/preference/PreferenceItemUI;)V

    invoke-virtual {p1, v0, v1, v2}, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Lcom/transsion/camera/app/ui/widget/dialog/RotateDialog$Builder;

    const/4 v0, 0x0

    .line 755
    invoke-virtual {p1, v0, v0}, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/transsion/camera/app/ui/widget/dialog/RotateDialog$Builder;

    .line 757
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/preference/PreferenceItemUI;->mPreference:Landroid/preference/Preference;

    instance-of v1, v0, Lcom/transsion/camera/app/ui/widget/preference/CustomOSListPreference;

    if-eqz v1, :cond_61

    .line 758
    check-cast v0, Lcom/transsion/camera/app/ui/widget/preference/CustomOSListPreference;

    .line 759
    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/widget/preference/CustomOSListPreference;->getCustomLayoutSupport()Z

    move-result v1

    if-eqz v1, :cond_61

    const/4 v1, 0x1

    .line 760
    invoke-virtual {p1, v1}, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialog$Builder;->hasSecondLayout(Z)Lcom/transsion/camera/app/ui/widget/dialog/RotateDialog$Builder;

    move-result-object p1

    .line 761
    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/widget/preference/CustomOSListPreference;->getSecondTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialog$Builder;->setSecondTitile(Ljava/lang/String;)Lcom/transsion/camera/app/ui/widget/dialog/RotateDialog$Builder;

    move-result-object p1

    .line 762
    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/widget/preference/CustomOSListPreference;->getSecondSummary()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialog$Builder;->setSecondSummary(Ljava/lang/String;)Lcom/transsion/camera/app/ui/widget/dialog/RotateDialog$Builder;

    move-result-object p1

    .line 763
    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/widget/preference/CustomOSListPreference;->getSwitchCkecked()Z

    move-result v1

    invoke-virtual {p1, v1}, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialog$Builder;->setSecondSwitchState(Z)Lcom/transsion/camera/app/ui/widget/dialog/RotateDialog$Builder;

    move-result-object p1

    new-instance v1, Lcom/transsion/camera/app/ui/widget/preference/PreferenceItemUI$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0, v0}, Lcom/transsion/camera/app/ui/widget/preference/PreferenceItemUI$$ExternalSyntheticLambda3;-><init>(Lcom/transsion/camera/app/ui/widget/preference/PreferenceItemUI;Lcom/transsion/camera/app/ui/widget/preference/CustomOSListPreference;)V

    .line 764
    invoke-virtual {p1, v1}, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialog$Builder;->setCustomClickListener(Landroid/content/DialogInterface$OnMultiChoiceClickListener;)Lcom/transsion/camera/app/ui/widget/dialog/RotateDialog$Builder;

    move-result-object p0

    .line 774
    invoke-virtual {v0}, Lcom/transsion/widgetslib/preference/OSDialogPreference;->getDialogLayoutResource()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialog$Builder;->setView(I)Lcom/transsion/camera/app/ui/widget/dialog/RotateDialog$Builder;

    :cond_61
    return-void

    .line 778
    :cond_62
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "ListPreference requires an entries array and an entryValues array."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setDeviceSetting(Lcom/transsion/camera/app/common/setting/ISetting;)V
    .registers 3

    .line 384
    iput-object p1, p0, Lcom/transsion/camera/app/ui/widget/preference/PreferenceItemUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    if-nez p1, :cond_c

    .line 386
    sget-object p0, Lcom/transsion/camera/app/ui/widget/preference/PreferenceItemUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "mDeviceSetting is null!"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 390
    :cond_c
    invoke-interface {p1}, Lcom/transsion/camera/app/common/setting/ISetting;->getSettingValue()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/app/ui/widget/preference/PreferenceItemUI;->mCurrentEntryValue:Ljava/lang/String;

    .line 391
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/widget/preference/PreferenceItemUI;->createSupportEntries()Z

    move-result p1

    if-nez p1, :cond_19

    return-void

    .line 396
    :cond_19
    iget-object p1, p0, Lcom/transsion/camera/app/ui/widget/preference/PreferenceItemUI;->mSettingUISpec:Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;

    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/preference/PreferenceItemUI;->mCurrentEntryValue:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->getIndex(Ljava/lang/String;)I

    move-result p1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_36

    .line 398
    iget-object p1, p0, Lcom/transsion/camera/app/ui/widget/preference/PreferenceItemUI;->mSettingUISpec:Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->getSupportedEntryValues()[Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    .line 399
    aget-object p1, p1, v0

    iput-object p1, p0, Lcom/transsion/camera/app/ui/widget/preference/PreferenceItemUI;->mCurrentEntryValue:Ljava/lang/String;

    .line 400
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/preference/PreferenceItemUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    if-eqz v0, :cond_36

    .line 401
    invoke-interface {v0, p1}, Lcom/transsion/camera/app/common/setting/ISetting;->onValueChanged(Ljava/lang/String;)V

    .line 405
    :cond_36
    iget-object p1, p0, Lcom/transsion/camera/app/ui/widget/preference/PreferenceItemUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    if-eqz p1, :cond_44

    .line 406
    iget-object p1, p0, Lcom/transsion/camera/app/ui/widget/preference/PreferenceItemUI;->mSettingUISpec:Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->getKey()Ljava/lang/String;

    move-result-object p1

    .line 407
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/widget/preference/PreferenceItemUI;->registerKeyToMonitor(Ljava/lang/String;)V

    return-void

    .line 409
    :cond_44
    sget-object p0, Lcom/transsion/camera/app/ui/widget/preference/PreferenceItemUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "mStatusMonitor is null! maybe flow is wrong!"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method public setIsSellingPoint(Z)V
    .registers 2

    .line 447
    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/widget/preference/PreferenceItemUI;->mIsSellingPoint:Z

    return-void
.end method

.method public setSettingFragmentControl(Lcom/transsion/camera/app/common/IAppUIControl$ISettingFragmentControl;)V
    .registers 2

    .line 174
    iput-object p1, p0, Lcom/transsion/camera/app/ui/widget/preference/PreferenceItemUI;->mSettingFragmentControl:Lcom/transsion/camera/app/common/IAppUIControl$ISettingFragmentControl;

    return-void
.end method

.method public setSettingMonitor(Lcom/transsion/camera/app/common/setting/StatusMonitor;)V
    .registers 2

    .line 415
    iput-object p1, p0, Lcom/transsion/camera/app/ui/widget/preference/PreferenceItemUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    return-void
.end method

.method public unInit()V
    .registers 3

    .line 143
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/preference/PreferenceItemUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    if-eqz v0, :cond_d

    .line 144
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/preference/PreferenceItemUI;->mSettingUISpec:Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 145
    invoke-direct {p0, v0}, Lcom/transsion/camera/app/ui/widget/preference/PreferenceItemUI;->unRegisterKeyToMonitor(Ljava/lang/String;)V

    .line 147
    :cond_d
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/preference/PreferenceItemUI;->mHandler:Lcom/transsion/camera/app/ui/widget/preference/PreferenceItemUI$UIHandler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 149
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/preference/PreferenceItemUI;->mPreference:Landroid/preference/Preference;

    if-eqz v0, :cond_3a

    const/4 v1, 0x0

    .line 150
    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 151
    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/preference/PreferenceItemUI;->mPreference:Landroid/preference/Preference;

    instance-of v0, p0, Lcom/transsion/camera/app/ui/widget/preference/MyDialogPreference;

    if-eqz v0, :cond_27

    .line 152
    check-cast p0, Lcom/transsion/camera/app/ui/widget/preference/MyDialogPreference;

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/widget/preference/MyDialogPreference;->hideDialog()V

    return-void

    .line 153
    :cond_27
    instance-of v0, p0, Lcom/transsion/camera/app/common/ui/preference/UpdateSwitchPerference;

    if-eqz v0, :cond_31

    .line 154
    check-cast p0, Lcom/transsion/camera/app/common/ui/preference/UpdateSwitchPerference;

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/ui/preference/UpdateSwitchPerference;->hideDialog()V

    return-void

    .line 155
    :cond_31
    instance-of v0, p0, Lcom/transsion/camera/app/ui/widget/preference/CustomOSListPreference;

    if-eqz v0, :cond_3a

    .line 156
    check-cast p0, Lcom/transsion/camera/app/ui/widget/preference/CustomOSListPreference;

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/widget/preference/CustomOSListPreference;->hideDialog()V

    :cond_3a
    return-void
.end method

.method public updateScreenFormType(I)V
    .registers 3

    .line 730
    iget v0, p0, Lcom/transsion/camera/app/ui/widget/preference/PreferenceItemUI;->mScreenFormType:I

    if-eq v0, p1, :cond_d

    .line 731
    iput p1, p0, Lcom/transsion/camera/app/ui/widget/preference/PreferenceItemUI;->mScreenFormType:I

    .line 732
    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/preference/PreferenceItemUI;->mRotateDialog:Lcom/transsion/camera/app/ui/widget/dialog/RotateDialog;

    if-eqz p0, :cond_d

    .line 733
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialog;->updateScreenFormType(I)V

    :cond_d
    return-void
.end method
