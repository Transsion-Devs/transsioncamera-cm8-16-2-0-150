.class public Lcom/transsion/camera/app/ui/manager/ShutterSoundOptionalManager;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/app/common/IAppUIControl$IShutterSoundOptionalFragmentControl;
.implements Lcom/transsion/camera/app/common/IScreenFormControl;
.implements Lcom/transsion/camera/app/ui/AbstractSettingFragment$OrientationAnimationListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/app/ui/manager/ShutterSoundOptionalManager$ShutterSoundOptionalFragmentStateListenerImpl;
    }
.end annotation


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private mAppUI:Lcom/transsion/camera/app/common/IAppUI;

.field private mContext:Landroid/content/Context;

.field private mFragmentManager:Landroid/app/FragmentManager;

.field private mRootLayoutId:I

.field private mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

.field mShutterSoundOptionalFragment:Lcom/transsion/camera/app/ui/ShutterSoundOptionalFragment;


# direct methods
.method static bridge synthetic -$$Nest$fgetmAppUI(Lcom/transsion/camera/app/ui/manager/ShutterSoundOptionalManager;)Lcom/transsion/camera/app/common/IAppUI;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/ShutterSoundOptionalManager;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    return-object p0
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 23
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "ShutterSoundOptionalManager"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/app/ui/manager/ShutterSoundOptionalManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Lcom/transsion/camera/app/common/IAppUI;Landroid/app/FragmentManager;ILandroid/content/Context;Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;)V
    .registers 6

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Lcom/transsion/camera/app/ui/manager/ShutterSoundOptionalManager;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    .line 38
    iput-object p2, p0, Lcom/transsion/camera/app/ui/manager/ShutterSoundOptionalManager;->mFragmentManager:Landroid/app/FragmentManager;

    .line 39
    iput p3, p0, Lcom/transsion/camera/app/ui/manager/ShutterSoundOptionalManager;->mRootLayoutId:I

    .line 40
    iput-object p4, p0, Lcom/transsion/camera/app/ui/manager/ShutterSoundOptionalManager;->mContext:Landroid/content/Context;

    .line 41
    iput-object p5, p0, Lcom/transsion/camera/app/ui/manager/ShutterSoundOptionalManager;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    return-void
.end method


# virtual methods
.method public enterShutterSoundOptionalFragment(Landroid/app/Fragment;Landroid/content/Context;)V
    .registers 7

    .line 46
    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/ShutterSoundOptionalManager;->mShutterSoundOptionalFragment:Lcom/transsion/camera/app/ui/ShutterSoundOptionalFragment;

    if-nez p1, :cond_36

    .line 47
    new-instance p1, Lcom/transsion/camera/app/ui/ShutterSoundOptionalFragment;

    iget-object p2, p0, Lcom/transsion/camera/app/ui/manager/ShutterSoundOptionalManager;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/ShutterSoundOptionalManager;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-direct {p1, p2, v0}, Lcom/transsion/camera/app/ui/ShutterSoundOptionalFragment;-><init>(Landroid/content/Context;Lcom/transsion/camera/app/common/IAppUI;)V

    iput-object p1, p0, Lcom/transsion/camera/app/ui/manager/ShutterSoundOptionalManager;->mShutterSoundOptionalFragment:Lcom/transsion/camera/app/ui/ShutterSoundOptionalFragment;

    .line 48
    new-instance p1, Lcom/transsion/camera/app/ui/manager/ShutterSoundOptionalManager$ShutterSoundOptionalFragmentStateListenerImpl;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Lcom/transsion/camera/app/ui/manager/ShutterSoundOptionalManager$ShutterSoundOptionalFragmentStateListenerImpl;-><init>(Lcom/transsion/camera/app/ui/manager/ShutterSoundOptionalManager;Lcom/transsion/camera/app/ui/manager/ShutterSoundOptionalManager-IA;)V

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/manager/ShutterSoundOptionalManager;->setStateListener(Lcom/transsion/camera/app/common/IAppUIListener$IFragmentStateListener;)V

    .line 49
    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/ShutterSoundOptionalManager;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    invoke-interface {p1}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->getStatusMonitor()Lcom/transsion/camera/app/common/setting/StatusMonitor;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/manager/ShutterSoundOptionalManager;->setSettingMonitor(Lcom/transsion/camera/app/common/setting/StatusMonitor;)V

    .line 50
    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/ShutterSoundOptionalManager;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    if-eqz p1, :cond_36

    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/ShutterSoundOptionalManager;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/transsion/camera/utils/FeatureSupport;->isSupportFoldUI(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_36

    .line 51
    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/ShutterSoundOptionalManager;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {p1}, Lcom/transsion/camera/app/common/IAppUI;->getOrientation()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/manager/ShutterSoundOptionalManager;->onOrientationChanged(I)V

    .line 54
    :cond_36
    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/ShutterSoundOptionalManager;->mFragmentManager:Landroid/app/FragmentManager;

    invoke-virtual {p1}, Landroid/app/FragmentManager;->getFragments()Ljava/util/List;

    move-result-object p1

    iget-object p2, p0, Lcom/transsion/camera/app/ui/manager/ShutterSoundOptionalManager;->mShutterSoundOptionalFragment:Lcom/transsion/camera/app/ui/ShutterSoundOptionalFragment;

    invoke-interface {p1, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    const-string p2, "shutter_sound_optional_fragment"

    if-eqz p1, :cond_54

    .line 55
    sget-object p1, Lcom/transsion/camera/app/ui/manager/ShutterSoundOptionalManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "[enterShutterSoundOptionalFragment] return."

    invoke-static {p1, v0}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 56
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/ShutterSoundOptionalManager;->mFragmentManager:Landroid/app/FragmentManager;

    const/4 p1, 0x1

    invoke-virtual {p0, p2, p1}, Landroid/app/FragmentManager;->popBackStackImmediate(Ljava/lang/String;I)Z

    return-void

    .line 61
    :cond_54
    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/ShutterSoundOptionalManager;->mFragmentManager:Landroid/app/FragmentManager;

    invoke-virtual {p1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object p1

    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/ShutterSoundOptionalManager;->mShutterSoundOptionalFragment:Lcom/transsion/camera/app/ui/ShutterSoundOptionalFragment;

    .line 62
    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/AbstractSettingFragment;->getChildInAnim()I

    move-result v0

    iget-object v1, p0, Lcom/transsion/camera/app/ui/manager/ShutterSoundOptionalManager;->mShutterSoundOptionalFragment:Lcom/transsion/camera/app/ui/ShutterSoundOptionalFragment;

    .line 63
    invoke-virtual {v1}, Lcom/transsion/camera/app/ui/AbstractSettingFragment;->getParentOutAnim()I

    move-result v1

    iget-object v2, p0, Lcom/transsion/camera/app/ui/manager/ShutterSoundOptionalManager;->mShutterSoundOptionalFragment:Lcom/transsion/camera/app/ui/ShutterSoundOptionalFragment;

    .line 64
    invoke-virtual {v2}, Lcom/transsion/camera/app/ui/AbstractSettingFragment;->getParentInAnim()I

    move-result v2

    iget-object v3, p0, Lcom/transsion/camera/app/ui/manager/ShutterSoundOptionalManager;->mShutterSoundOptionalFragment:Lcom/transsion/camera/app/ui/ShutterSoundOptionalFragment;

    .line 65
    invoke-virtual {v3}, Lcom/transsion/camera/app/ui/AbstractSettingFragment;->getChildOutAnim()I

    move-result v3

    .line 62
    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/app/FragmentTransaction;->setCustomAnimations(IIII)Landroid/app/FragmentTransaction;

    move-result-object p1

    iget v0, p0, Lcom/transsion/camera/app/ui/manager/ShutterSoundOptionalManager;->mRootLayoutId:I

    iget-object v1, p0, Lcom/transsion/camera/app/ui/manager/ShutterSoundOptionalManager;->mShutterSoundOptionalFragment:Lcom/transsion/camera/app/ui/ShutterSoundOptionalFragment;

    const-string v2, "shutter_sound_optional"

    .line 66
    invoke-virtual {p1, v0, v1, v2}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object p1

    .line 67
    invoke-virtual {p1, p2}, Landroid/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object p1

    .line 68
    invoke-virtual {p1}, Landroid/app/FragmentTransaction;->commit()I

    .line 69
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/ShutterSoundOptionalManager;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {p0}, Lcom/transsion/camera/app/common/IAppUI;->enterShutterSoundOptionalFragment()V

    return-void
.end method

.method public exitShutterSoundOptionalFragment()V
    .registers 3

    .line 93
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/ShutterSoundOptionalManager;->mFragmentManager:Landroid/app/FragmentManager;

    const-string v0, "shutter_sound_optional_fragment"

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Landroid/app/FragmentManager;->popBackStackImmediate(Ljava/lang/String;I)Z

    return-void
.end method

.method public notifyCameraOperateActionToUI(I)V
    .registers 2

    return-void
.end method

.method public onAnimationEnd()V
    .registers 1

    return-void
.end method

.method public onOrientationChanged(I)V
    .registers 2

    .line 114
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/ShutterSoundOptionalManager;->mShutterSoundOptionalFragment:Lcom/transsion/camera/app/ui/ShutterSoundOptionalFragment;

    if-eqz p0, :cond_7

    .line 115
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/AbstractSettingFragment;->onOrientationChanged(I)V

    :cond_7
    return-void
.end method

.method public setSettingFragmentManager(Lcom/transsion/camera/app/ui/manager/SettingFragmentManager;)V
    .registers 2

    .line 130
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/ShutterSoundOptionalManager;->mShutterSoundOptionalFragment:Lcom/transsion/camera/app/ui/ShutterSoundOptionalFragment;

    if-eqz p0, :cond_7

    .line 131
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/ShutterSoundOptionalFragment;->setSettingFragmentManager(Lcom/transsion/camera/app/ui/manager/SettingFragmentManager;)V

    :cond_7
    return-void
.end method

.method public setSettingMonitor(Lcom/transsion/camera/app/common/setting/StatusMonitor;)V
    .registers 2

    .line 98
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/ShutterSoundOptionalManager;->mShutterSoundOptionalFragment:Lcom/transsion/camera/app/ui/ShutterSoundOptionalFragment;

    if-eqz p0, :cond_7

    .line 99
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/ShutterSoundOptionalFragment;->setSettingMonitor(Lcom/transsion/camera/app/common/setting/StatusMonitor;)V

    :cond_7
    return-void
.end method

.method public setStateListener(Lcom/transsion/camera/app/common/IAppUIListener$IFragmentStateListener;)V
    .registers 2

    .line 104
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/ShutterSoundOptionalManager;->mShutterSoundOptionalFragment:Lcom/transsion/camera/app/ui/ShutterSoundOptionalFragment;

    if-eqz p0, :cond_7

    .line 105
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/ShutterSoundOptionalFragment;->setStateListener(Lcom/transsion/camera/app/common/IAppUIListener$IFragmentStateListener;)V

    :cond_7
    return-void
.end method

.method public unInit()V
    .registers 3

    .line 140
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/ShutterSoundOptionalManager;->mShutterSoundOptionalFragment:Lcom/transsion/camera/app/ui/ShutterSoundOptionalFragment;

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    .line 141
    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/ShutterSoundOptionalFragment;->unInit()V

    .line 142
    iput-object v1, p0, Lcom/transsion/camera/app/ui/manager/ShutterSoundOptionalManager;->mShutterSoundOptionalFragment:Lcom/transsion/camera/app/ui/ShutterSoundOptionalFragment;

    .line 144
    :cond_a
    invoke-virtual {p0, v1}, Lcom/transsion/camera/app/ui/manager/ShutterSoundOptionalManager;->setStateListener(Lcom/transsion/camera/app/common/IAppUIListener$IFragmentStateListener;)V

    return-void
.end method
