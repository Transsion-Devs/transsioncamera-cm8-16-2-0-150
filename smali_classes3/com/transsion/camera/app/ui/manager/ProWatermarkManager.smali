.class public Lcom/transsion/camera/app/ui/manager/ProWatermarkManager;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/app/common/IAppUIControl$IProWatermarkFragmentControl;
.implements Lcom/transsion/camera/app/common/IScreenFormControl;
.implements Lcom/transsion/camera/app/ui/AbstractSettingFragment$OrientationAnimationListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/app/ui/manager/ProWatermarkManager$ProWaterMarkFragmentStateListenerImpl;
    }
.end annotation


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private final mAppUI:Lcom/transsion/camera/app/common/IAppUI;

.field private final mContext:Landroid/content/Context;

.field private final mFragmentManager:Landroid/app/FragmentManager;

.field private mProWatermarkFragment:Lcom/transsion/camera/app/ui/widget/ProWatermarkFragment;

.field private final mRootLayoutId:I

.field private mScreenFormType:I

.field private final mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;


# direct methods
.method static bridge synthetic -$$Nest$fgetmAppUI(Lcom/transsion/camera/app/ui/manager/ProWatermarkManager;)Lcom/transsion/camera/app/common/IAppUI;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/ProWatermarkManager;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    return-object p0
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 30
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "EditAndGoldWatermarkManager"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/app/ui/manager/ProWatermarkManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Lcom/transsion/camera/app/common/IAppUI;Landroid/app/FragmentManager;ILandroid/content/Context;Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;)V
    .registers 7

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 41
    iput v0, p0, Lcom/transsion/camera/app/ui/manager/ProWatermarkManager;->mScreenFormType:I

    .line 44
    iput-object p1, p0, Lcom/transsion/camera/app/ui/manager/ProWatermarkManager;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    .line 45
    iput-object p2, p0, Lcom/transsion/camera/app/ui/manager/ProWatermarkManager;->mFragmentManager:Landroid/app/FragmentManager;

    .line 46
    iput p3, p0, Lcom/transsion/camera/app/ui/manager/ProWatermarkManager;->mRootLayoutId:I

    .line 47
    iput-object p4, p0, Lcom/transsion/camera/app/ui/manager/ProWatermarkManager;->mContext:Landroid/content/Context;

    .line 48
    iput-object p5, p0, Lcom/transsion/camera/app/ui/manager/ProWatermarkManager;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    .line 49
    invoke-interface {p1}, Lcom/transsion/camera/app/common/IAppUI;->getScreenFormType()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/manager/ProWatermarkManager;->updateScreenFormType(I)V

    return-void
.end method

.method private initProWatermarkFragment()V
    .registers 3

    .line 53
    new-instance v0, Lcom/transsion/camera/app/ui/widget/ProWatermarkFragment;

    invoke-direct {v0}, Lcom/transsion/camera/app/ui/widget/ProWatermarkFragment;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/app/ui/manager/ProWatermarkManager;->mProWatermarkFragment:Lcom/transsion/camera/app/ui/widget/ProWatermarkFragment;

    .line 55
    invoke-virtual {v0, p0}, Lcom/transsion/camera/app/ui/AbstractSettingFragment;->setOrientationAnimationListener(Lcom/transsion/camera/app/ui/AbstractSettingFragment$OrientationAnimationListener;)V

    .line 56
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/ProWatermarkManager;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    if-eqz v0, :cond_25

    .line 57
    iget-object v1, p0, Lcom/transsion/camera/app/ui/manager/ProWatermarkManager;->mProWatermarkFragment:Lcom/transsion/camera/app/ui/widget/ProWatermarkFragment;

    invoke-virtual {v1, v0}, Lcom/transsion/camera/app/ui/widget/ProWatermarkFragment;->linkAppUI(Lcom/transsion/camera/app/common/IAppUI;)V

    .line 58
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/ProWatermarkManager;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {v0}, Lcom/transsion/camera/app/common/IAppUI;->getScreenFormType()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/transsion/camera/app/ui/manager/ProWatermarkManager;->updateScreenFormType(I)V

    .line 59
    new-instance v0, Lcom/transsion/camera/app/ui/manager/ProWatermarkManager$ProWaterMarkFragmentStateListenerImpl;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/transsion/camera/app/ui/manager/ProWatermarkManager$ProWaterMarkFragmentStateListenerImpl;-><init>(Lcom/transsion/camera/app/ui/manager/ProWatermarkManager;Lcom/transsion/camera/app/ui/manager/ProWatermarkManager-IA;)V

    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/ui/manager/ProWatermarkManager;->setStateListener(Lcom/transsion/camera/app/common/IAppUIListener$IFragmentStateListener;)V

    .line 61
    :cond_25
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/ProWatermarkManager;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    if-eqz v0, :cond_42

    .line 62
    invoke-interface {v0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->getSettingProvide()Lcom/transsion/camera/app/common/setting/ISettingManager$SettingProvide;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/ui/manager/ProWatermarkManager;->setSettingProvide(Lcom/transsion/camera/app/common/setting/ISettingManager$SettingProvide;)V

    .line 63
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/ProWatermarkManager;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    invoke-interface {v0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->getStatusMonitor()Lcom/transsion/camera/app/common/setting/StatusMonitor;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/ui/manager/ProWatermarkManager;->setSettingMonitor(Lcom/transsion/camera/app/common/setting/StatusMonitor;)V

    .line 64
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/ProWatermarkManager;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    invoke-interface {v0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->getLocationManager()Lcom/transsion/camera/app/common/location/LocationManager;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/ui/manager/ProWatermarkManager;->setLocationManager(Lcom/transsion/camera/app/common/location/LocationManager;)V

    :cond_42
    return-void
.end method

.method private updateFragmentExitAnim()V
    .registers 5

    .line 191
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/ProWatermarkManager;->mFragmentManager:Landroid/app/FragmentManager;

    invoke-virtual {v0}, Landroid/app/FragmentManager;->getFragments()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 192
    sget-object v1, Lcom/transsion/camera/app/ui/manager/ProWatermarkManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onAnimationEnd size: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    if-eqz v0, :cond_63

    .line 193
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/ProWatermarkManager;->mProWatermarkFragment:Lcom/transsion/camera/app/ui/widget/ProWatermarkFragment;

    if-nez v0, :cond_27

    goto :goto_63

    .line 198
    :cond_27
    invoke-virtual {v0}, Landroid/app/Fragment;->isVisible()Z

    move-result v0

    const-string v1, "edit_and_gold_watermark_fragment"

    if-eqz v0, :cond_35

    .line 199
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/ProWatermarkManager;->mFragmentManager:Landroid/app/FragmentManager;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/app/FragmentManager;->popBackStack(Ljava/lang/String;I)V

    .line 204
    :cond_35
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/ProWatermarkManager;->mProWatermarkFragment:Lcom/transsion/camera/app/ui/widget/ProWatermarkFragment;

    invoke-virtual {v0}, Landroid/app/Fragment;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_63

    .line 205
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/ProWatermarkManager;->mFragmentManager:Landroid/app/FragmentManager;

    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    .line 206
    iget-object v2, p0, Lcom/transsion/camera/app/ui/manager/ProWatermarkManager;->mProWatermarkFragment:Lcom/transsion/camera/app/ui/widget/ProWatermarkFragment;

    iget-object v3, p0, Lcom/transsion/camera/app/ui/manager/ProWatermarkManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v3}, Lcom/transsion/camera/app/ui/AbstractSettingFragment;->getExitAnimation(Landroid/content/Context;)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_52

    const/4 v3, 0x0

    .line 208
    invoke-virtual {v0, v3, v2, v3, v2}, Landroid/app/FragmentTransaction;->setCustomAnimations(IIII)Landroid/app/FragmentTransaction;

    .line 210
    :cond_52
    iget v2, p0, Lcom/transsion/camera/app/ui/manager/ProWatermarkManager;->mRootLayoutId:I

    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/ProWatermarkManager;->mProWatermarkFragment:Lcom/transsion/camera/app/ui/widget/ProWatermarkFragment;

    const-string v3, "edit_and_gold_watermark"

    invoke-virtual {v0, v2, p0, v3}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object p0

    .line 211
    invoke-virtual {p0, v1}, Landroid/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object p0

    .line 212
    invoke-virtual {p0}, Landroid/app/FragmentTransaction;->commit()I

    :cond_63
    :goto_63
    return-void
.end method

.method private updateScreenFormType(I)V
    .registers 2

    .line 116
    iput p1, p0, Lcom/transsion/camera/app/ui/manager/ProWatermarkManager;->mScreenFormType:I

    .line 117
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/ProWatermarkManager;->mProWatermarkFragment:Lcom/transsion/camera/app/ui/widget/ProWatermarkFragment;

    if-eqz p0, :cond_9

    .line 118
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/widget/ProWatermarkFragment;->updateScreenFormType(I)V

    :cond_9
    return-void
.end method


# virtual methods
.method public enterProWaterMarkFragment(Landroid/app/Fragment;Landroid/content/Context;)V
    .registers 9

    .line 70
    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/ProWatermarkManager;->mProWatermarkFragment:Lcom/transsion/camera/app/ui/widget/ProWatermarkFragment;

    if-nez p1, :cond_7

    .line 71
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/manager/ProWatermarkManager;->initProWatermarkFragment()V

    .line 73
    :cond_7
    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/ProWatermarkManager;->mFragmentManager:Landroid/app/FragmentManager;

    invoke-virtual {p1}, Landroid/app/FragmentManager;->getFragments()Ljava/util/List;

    move-result-object p1

    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/ProWatermarkManager;->mProWatermarkFragment:Lcom/transsion/camera/app/ui/widget/ProWatermarkFragment;

    invoke-interface {p1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    const/4 v0, 0x1

    const-string v1, "edit_and_gold_watermark_fragment"

    if-eqz p1, :cond_2a

    .line 74
    sget-object p1, Lcom/transsion/camera/app/ui/manager/ProWatermarkManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p2, "enterEditWaterMarkFragment return."

    invoke-static {p1, p2}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 75
    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/ProWatermarkManager;->mFragmentManager:Landroid/app/FragmentManager;

    invoke-virtual {p1, v1, v0}, Landroid/app/FragmentManager;->popBackStackImmediate(Ljava/lang/String;I)Z

    .line 77
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/ProWatermarkManager;->mFragmentManager:Landroid/app/FragmentManager;

    invoke-virtual {p0}, Landroid/app/FragmentManager;->executePendingTransactions()Z

    return-void

    .line 80
    :cond_2a
    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/ProWatermarkManager;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {p1}, Lcom/transsion/camera/app/common/IAppUI;->getCurrentModeSettingUISpec()Lcom/transsion/camera/app/common/ModeSettingUISpec;

    move-result-object p1

    if-eqz p1, :cond_37

    .line 83
    invoke-virtual {p1}, Lcom/transsion/camera/app/common/ModeSettingUISpec;->getName()Ljava/lang/String;

    move-result-object p1

    goto :goto_40

    .line 85
    :cond_37
    sget-object p1, Lcom/transsion/camera/app/ui/manager/ProWatermarkManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v2, "getCurrentModeSettingUISpec is null."

    invoke-static {p1, v2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const-string p1, "com.transsion.camera.feature.mode.autoscenedetection.ASDModeEntry"

    .line 87
    :goto_40
    iget-object v2, p0, Lcom/transsion/camera/app/ui/manager/ProWatermarkManager;->mProWatermarkFragment:Lcom/transsion/camera/app/ui/widget/ProWatermarkFragment;

    invoke-virtual {v2, p1}, Lcom/transsion/camera/app/ui/widget/ProWatermarkFragment;->updateCurrentMode(Ljava/lang/String;)V

    .line 88
    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/ProWatermarkManager;->mProWatermarkFragment:Lcom/transsion/camera/app/ui/widget/ProWatermarkFragment;

    iget-object v2, p0, Lcom/transsion/camera/app/ui/manager/ProWatermarkManager;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {v2}, Lcom/transsion/camera/app/common/IAppUI;->getScreenFormType()I

    move-result v2

    invoke-virtual {p1, v2}, Lcom/transsion/camera/app/ui/widget/ProWatermarkFragment;->updateScreenFormType(I)V

    .line 89
    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/ProWatermarkManager;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/transsion/camera/utils/FeatureSupport;->isSupportFoldUI(Landroid/content/Context;)Z

    move-result p1

    const-string v2, "edit_and_gold_watermark"

    if-eqz p1, :cond_99

    iget p1, p0, Lcom/transsion/camera/app/ui/manager/ProWatermarkManager;->mScreenFormType:I

    if-eq p1, v0, :cond_67

    const/4 v0, 0x2

    if-eq p1, v0, :cond_67

    const/4 v0, 0x4

    if-eq p1, v0, :cond_67

    const/4 v0, 0x5

    if-ne p1, v0, :cond_99

    .line 94
    :cond_67
    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/ProWatermarkManager;->mFragmentManager:Landroid/app/FragmentManager;

    invoke-virtual {p1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object p1

    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/ProWatermarkManager;->mProWatermarkFragment:Lcom/transsion/camera/app/ui/widget/ProWatermarkFragment;

    .line 95
    invoke-virtual {v0, p2}, Lcom/transsion/camera/app/ui/AbstractSettingFragment;->getEnterAnimation(Landroid/content/Context;)I

    move-result v0

    iget-object v3, p0, Lcom/transsion/camera/app/ui/manager/ProWatermarkManager;->mProWatermarkFragment:Lcom/transsion/camera/app/ui/widget/ProWatermarkFragment;

    .line 96
    invoke-virtual {v3, p2}, Lcom/transsion/camera/app/ui/AbstractSettingFragment;->getExitAnimation(Landroid/content/Context;)I

    move-result v3

    iget-object v4, p0, Lcom/transsion/camera/app/ui/manager/ProWatermarkManager;->mProWatermarkFragment:Lcom/transsion/camera/app/ui/widget/ProWatermarkFragment;

    .line 97
    invoke-virtual {v4, p2}, Lcom/transsion/camera/app/ui/AbstractSettingFragment;->getEnterAnimation(Landroid/content/Context;)I

    move-result v4

    iget-object v5, p0, Lcom/transsion/camera/app/ui/manager/ProWatermarkManager;->mProWatermarkFragment:Lcom/transsion/camera/app/ui/widget/ProWatermarkFragment;

    .line 98
    invoke-virtual {v5, p2}, Lcom/transsion/camera/app/ui/AbstractSettingFragment;->getExitAnimation(Landroid/content/Context;)I

    move-result p2

    .line 95
    invoke-virtual {p1, v0, v3, v4, p2}, Landroid/app/FragmentTransaction;->setCustomAnimations(IIII)Landroid/app/FragmentTransaction;

    move-result-object p1

    iget p2, p0, Lcom/transsion/camera/app/ui/manager/ProWatermarkManager;->mRootLayoutId:I

    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/ProWatermarkManager;->mProWatermarkFragment:Lcom/transsion/camera/app/ui/widget/ProWatermarkFragment;

    .line 99
    invoke-virtual {p1, p2, v0, v2}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object p1

    .line 100
    invoke-virtual {p1, v1}, Landroid/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object p1

    .line 101
    invoke-virtual {p1}, Landroid/app/FragmentTransaction;->commit()I

    goto :goto_ca

    .line 103
    :cond_99
    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/ProWatermarkManager;->mFragmentManager:Landroid/app/FragmentManager;

    invoke-virtual {p1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object p1

    iget-object p2, p0, Lcom/transsion/camera/app/ui/manager/ProWatermarkManager;->mProWatermarkFragment:Lcom/transsion/camera/app/ui/widget/ProWatermarkFragment;

    .line 104
    invoke-virtual {p2}, Lcom/transsion/camera/app/ui/AbstractSettingFragment;->getChildInAnim()I

    move-result p2

    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/ProWatermarkManager;->mProWatermarkFragment:Lcom/transsion/camera/app/ui/widget/ProWatermarkFragment;

    .line 105
    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/AbstractSettingFragment;->getParentOutAnim()I

    move-result v0

    iget-object v3, p0, Lcom/transsion/camera/app/ui/manager/ProWatermarkManager;->mProWatermarkFragment:Lcom/transsion/camera/app/ui/widget/ProWatermarkFragment;

    .line 106
    invoke-virtual {v3}, Lcom/transsion/camera/app/ui/AbstractSettingFragment;->getParentInAnim()I

    move-result v3

    iget-object v4, p0, Lcom/transsion/camera/app/ui/manager/ProWatermarkManager;->mProWatermarkFragment:Lcom/transsion/camera/app/ui/widget/ProWatermarkFragment;

    .line 107
    invoke-virtual {v4}, Lcom/transsion/camera/app/ui/AbstractSettingFragment;->getChildOutAnim()I

    move-result v4

    .line 104
    invoke-virtual {p1, p2, v0, v3, v4}, Landroid/app/FragmentTransaction;->setCustomAnimations(IIII)Landroid/app/FragmentTransaction;

    move-result-object p1

    iget p2, p0, Lcom/transsion/camera/app/ui/manager/ProWatermarkManager;->mRootLayoutId:I

    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/ProWatermarkManager;->mProWatermarkFragment:Lcom/transsion/camera/app/ui/widget/ProWatermarkFragment;

    .line 108
    invoke-virtual {p1, p2, v0, v2}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object p1

    .line 109
    invoke-virtual {p1, v1}, Landroid/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object p1

    .line 110
    invoke-virtual {p1}, Landroid/app/FragmentTransaction;->commit()I

    .line 112
    :goto_ca
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/ProWatermarkManager;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {p0}, Lcom/transsion/camera/app/common/IAppUI;->enterProWaterMarkFragment()V

    return-void
.end method

.method public exitProWaterMarkFragment()V
    .registers 3

    .line 124
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/ProWatermarkManager;->mProWatermarkFragment:Lcom/transsion/camera/app/ui/widget/ProWatermarkFragment;

    if-eqz v0, :cond_7

    .line 125
    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/widget/ProWatermarkFragment;->exitEditAndGoldWaterMarkFragment()V

    .line 127
    :cond_7
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/ProWatermarkManager;->mFragmentManager:Landroid/app/FragmentManager;

    const-string v0, "edit_and_gold_watermark_fragment"

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Landroid/app/FragmentManager;->popBackStackImmediate(Ljava/lang/String;I)Z

    return-void
.end method

.method public notifyCameraOperateActionToUI(I)V
    .registers 3

    const/16 v0, 0xf5

    if-ne p1, v0, :cond_7

    .line 163
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/manager/ProWatermarkManager;->unInit()V

    :cond_7
    return-void
.end method

.method public onAnimationEnd()V
    .registers 1

    .line 218
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/manager/ProWatermarkManager;->updateFragmentExitAnim()V

    return-void
.end method

.method public setLocationManager(Lcom/transsion/camera/app/common/location/LocationManager;)V
    .registers 2

    .line 150
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/ProWatermarkManager;->mProWatermarkFragment:Lcom/transsion/camera/app/ui/widget/ProWatermarkFragment;

    if-eqz p0, :cond_7

    .line 151
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/widget/ProWatermarkFragment;->setLocationManager(Lcom/transsion/camera/app/common/location/LocationManager;)V

    :cond_7
    return-void
.end method

.method public setRTLDirection(Z)V
    .registers 2

    .line 156
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/ProWatermarkManager;->mProWatermarkFragment:Lcom/transsion/camera/app/ui/widget/ProWatermarkFragment;

    if-eqz p0, :cond_7

    .line 157
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/AbstractSettingFragment;->setRTLDirection(Z)V

    :cond_7
    return-void
.end method

.method public setSettingMonitor(Lcom/transsion/camera/app/common/setting/StatusMonitor;)V
    .registers 2

    .line 138
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/ProWatermarkManager;->mProWatermarkFragment:Lcom/transsion/camera/app/ui/widget/ProWatermarkFragment;

    if-eqz p0, :cond_7

    .line 139
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/widget/ProWatermarkFragment;->setSettingMonitor(Lcom/transsion/camera/app/common/setting/StatusMonitor;)V

    :cond_7
    return-void
.end method

.method public setSettingProvide(Lcom/transsion/camera/app/common/setting/ISettingManager$SettingProvide;)V
    .registers 2

    .line 226
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/ProWatermarkManager;->mProWatermarkFragment:Lcom/transsion/camera/app/ui/widget/ProWatermarkFragment;

    if-eqz p0, :cond_7

    .line 227
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/widget/ProWatermarkFragment;->setSettingProvide(Lcom/transsion/camera/app/common/setting/ISettingManager$SettingProvide;)V

    :cond_7
    return-void
.end method

.method public setSettingStatusListener(Lcom/transsion/camera/app/common/IApp$ModeAndSettingStatusListener;)V
    .registers 2

    return-void
.end method

.method public setStateListener(Lcom/transsion/camera/app/common/IAppUIListener$IFragmentStateListener;)V
    .registers 2

    .line 144
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/ProWatermarkManager;->mProWatermarkFragment:Lcom/transsion/camera/app/ui/widget/ProWatermarkFragment;

    if-eqz p0, :cond_7

    .line 145
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/AbstractSettingFragment;->setStateListener(Lcom/transsion/camera/app/common/IAppUIListener$IFragmentStateListener;)V

    :cond_7
    return-void
.end method

.method public unInit()V
    .registers 3

    .line 238
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/ProWatermarkManager;->mProWatermarkFragment:Lcom/transsion/camera/app/ui/widget/ProWatermarkFragment;

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    .line 239
    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/widget/ProWatermarkFragment;->unInit()V

    .line 240
    iput-object v1, p0, Lcom/transsion/camera/app/ui/manager/ProWatermarkManager;->mProWatermarkFragment:Lcom/transsion/camera/app/ui/widget/ProWatermarkFragment;

    .line 242
    :cond_a
    invoke-virtual {p0, v1}, Lcom/transsion/camera/app/ui/manager/ProWatermarkManager;->setStateListener(Lcom/transsion/camera/app/common/IAppUIListener$IFragmentStateListener;)V

    return-void
.end method
