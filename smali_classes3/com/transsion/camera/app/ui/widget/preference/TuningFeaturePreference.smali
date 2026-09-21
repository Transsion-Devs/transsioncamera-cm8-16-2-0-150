.class public final Lcom/transsion/camera/app/ui/widget/preference/TuningFeaturePreference;
.super Lcom/transsion/camera/app/ui/widget/preference/PreferenceItemUiManager$OSDialogPreferenceUi;
.source "SourceFile"


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private final mController:Lcom/transsion/camera/app/common/IAppUIControl$ISettingFragmentControl;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 19
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "TuningFeaturePreference"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/app/ui/widget/preference/TuningFeaturePreference;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/transsion/camera/app/common/IAppUIControl$ISettingFragmentControl;)V
    .registers 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 33
    invoke-direct {p0, p1, v0, v1}, Lcom/transsion/camera/app/ui/widget/preference/PreferenceItemUiManager$OSDialogPreferenceUi;-><init>(Landroid/content/Context;ILcom/transsion/camera/app/common/ui/setting/IPreferenceItemUI;)V

    .line 34
    iput-object p2, p0, Lcom/transsion/camera/app/ui/widget/preference/TuningFeaturePreference;->mController:Lcom/transsion/camera/app/common/IAppUIControl$ISettingFragmentControl;

    .line 35
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/widget/preference/TuningFeaturePreference;->initInfo()V

    return-void
.end method

.method private initInfo()V
    .registers 2

    const v0, 0x108002d

    .line 39
    invoke-super {p0, v0}, Landroid/preference/Preference;->setIcon(I)V

    .line 40
    const-string v0, "Tuning Feature Setting"

    invoke-super {p0, v0}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 41
    invoke-static {}, Lcom/transsion/camera/utils/FeatureSupport;->isLaunchWithDeveloperMode()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 42
    const-string v0, "Effective now / \u5df2\u751f\u6548"

    invoke-super {p0, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_1c

    .line 44
    :cond_17
    const-string v0, "Effective after restart / \u91cd\u542f\u751f\u6548"

    invoke-super {p0, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 46
    :goto_1c
    const-string v0, "Restart Camera App"

    invoke-super {p0, v0}, Lcom/transsion/widgetslib/preference/OSDialogPreference;->setDialogTitle(Ljava/lang/CharSequence;)V

    .line 47
    const-string v0, "Do you want to restart to enable Tuning Feature?\n\u8c03\u6d4b\u529f\u80fd\u9700\u8981\u91cd\u542f\u624d\u80fd\u751f\u6548\uff0c\u662f\u5426\u91cd\u542f\uff1f"

    invoke-super {p0, v0}, Lcom/transsion/widgetslib/preference/OSDialogPreference;->setDialogMessage(Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method protected onClick()V
    .registers 2

    .line 52
    invoke-static {}, Lcom/transsion/camera/utils/FeatureSupport;->isLaunchWithDeveloperMode()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 53
    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/preference/TuningFeaturePreference;->mController:Lcom/transsion/camera/app/common/IAppUIControl$ISettingFragmentControl;

    const-string v0, "key_tuning_feature_entrance"

    invoke-interface {p0, v0}, Lcom/transsion/camera/app/common/IAppUIControl$ISettingFragmentControl;->exitSettingFragment(Ljava/lang/String;)V

    return-void

    .line 55
    :cond_e
    invoke-super {p0}, Lcom/transsion/widgetslib/preference/OSDialogPreference;->onClick()V

    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 3

    .line 61
    invoke-super {p0, p1, p2}, Lcom/transsion/widgetslib/preference/OSDialogPreference;->onClick(Landroid/content/DialogInterface;I)V

    const/4 p1, -0x1

    if-ne p2, p1, :cond_32

    .line 63
    invoke-virtual {p0}, Landroid/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object p0

    .line 64
    instance-of p1, p0, Landroid/app/Activity;

    if-eqz p1, :cond_24

    .line 65
    move-object p1, p0

    check-cast p1, Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    .line 66
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    .line 67
    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void

    .line 69
    :cond_24
    sget-object p0, Lcom/transsion/camera/app/ui/widget/preference/TuningFeaturePreference;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "restartActivity: cannot found activity, kill current camera application"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 70
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result p0

    invoke-static {p0}, Landroid/os/Process;->killProcess(I)V

    :cond_32
    return-void
.end method
