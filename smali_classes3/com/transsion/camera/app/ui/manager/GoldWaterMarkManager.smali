.class public Lcom/transsion/camera/app/ui/manager/GoldWaterMarkManager;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/app/common/IAppUIControl$IGoldWaterMarkFragmentControl;
.implements Lcom/transsion/camera/app/common/IScreenFormControl;
.implements Lcom/transsion/camera/app/ui/AbstractSettingFragment$OrientationAnimationListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/app/ui/manager/GoldWaterMarkManager$GoldWaterMarkFragmentStateListenerImpl;
    }
.end annotation


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private mAppUI:Lcom/transsion/camera/app/common/IAppUI;

.field private mContext:Landroid/content/Context;

.field private mFragmentManager:Landroid/app/FragmentManager;

.field mGoldWaterMarkFragment:Lcom/transsion/camera/app/ui/widget/GoldWaterMarkFragment;

.field private mRootLayoutId:I

.field protected mScreenFormType:I

.field private mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;


# direct methods
.method static bridge synthetic -$$Nest$fgetmAppUI(Lcom/transsion/camera/app/ui/manager/GoldWaterMarkManager;)Lcom/transsion/camera/app/common/IAppUI;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/GoldWaterMarkManager;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    return-object p0
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 23
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "GoldWaterMarkManager"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/app/ui/manager/GoldWaterMarkManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Lcom/transsion/camera/app/common/IAppUI;Landroid/app/FragmentManager;ILandroid/content/Context;Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;)V
    .registers 7

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 28
    iput v0, p0, Lcom/transsion/camera/app/ui/manager/GoldWaterMarkManager;->mScreenFormType:I

    .line 39
    iput-object p1, p0, Lcom/transsion/camera/app/ui/manager/GoldWaterMarkManager;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    .line 40
    iput-object p2, p0, Lcom/transsion/camera/app/ui/manager/GoldWaterMarkManager;->mFragmentManager:Landroid/app/FragmentManager;

    .line 41
    iput p3, p0, Lcom/transsion/camera/app/ui/manager/GoldWaterMarkManager;->mRootLayoutId:I

    .line 42
    iput-object p4, p0, Lcom/transsion/camera/app/ui/manager/GoldWaterMarkManager;->mContext:Landroid/content/Context;

    .line 43
    iput-object p5, p0, Lcom/transsion/camera/app/ui/manager/GoldWaterMarkManager;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    .line 44
    invoke-interface {p1}, Lcom/transsion/camera/app/common/IAppUI;->getScreenFormType()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/manager/GoldWaterMarkManager;->updateScreenFormType(I)V

    return-void
.end method

.method private initGoldWaterMarkFragment()V
    .registers 3

    .line 48
    new-instance v0, Lcom/transsion/camera/app/ui/widget/GoldWaterMarkFragment;

    invoke-direct {v0}, Lcom/transsion/camera/app/ui/widget/GoldWaterMarkFragment;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/app/ui/manager/GoldWaterMarkManager;->mGoldWaterMarkFragment:Lcom/transsion/camera/app/ui/widget/GoldWaterMarkFragment;

    .line 49
    invoke-virtual {v0, p0}, Lcom/transsion/camera/app/ui/widget/GoldWaterMarkFragment;->setOrientationAnimationListener(Lcom/transsion/camera/app/ui/AbstractSettingFragment$OrientationAnimationListener;)V

    .line 50
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/GoldWaterMarkManager;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    if-eqz v0, :cond_25

    .line 51
    iget-object v1, p0, Lcom/transsion/camera/app/ui/manager/GoldWaterMarkManager;->mGoldWaterMarkFragment:Lcom/transsion/camera/app/ui/widget/GoldWaterMarkFragment;

    invoke-virtual {v1, v0}, Lcom/transsion/camera/app/ui/widget/GoldWaterMarkFragment;->linkAppUI(Lcom/transsion/camera/app/common/IAppUI;)V

    .line 52
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/GoldWaterMarkManager;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {v0}, Lcom/transsion/camera/app/common/IAppUI;->getScreenFormType()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/transsion/camera/app/ui/manager/GoldWaterMarkManager;->updateScreenFormType(I)V

    .line 53
    new-instance v0, Lcom/transsion/camera/app/ui/manager/GoldWaterMarkManager$GoldWaterMarkFragmentStateListenerImpl;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/transsion/camera/app/ui/manager/GoldWaterMarkManager$GoldWaterMarkFragmentStateListenerImpl;-><init>(Lcom/transsion/camera/app/ui/manager/GoldWaterMarkManager;Lcom/transsion/camera/app/ui/manager/GoldWaterMarkManager-IA;)V

    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/ui/manager/GoldWaterMarkManager;->setStateListener(Lcom/transsion/camera/app/common/IAppUIListener$IFragmentStateListener;)V

    .line 55
    :cond_25
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/GoldWaterMarkManager;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    if-eqz v0, :cond_39

    .line 56
    invoke-interface {v0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->getStatusMonitor()Lcom/transsion/camera/app/common/setting/StatusMonitor;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/ui/manager/GoldWaterMarkManager;->setSettingMonitor(Lcom/transsion/camera/app/common/setting/StatusMonitor;)V

    .line 57
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/GoldWaterMarkManager;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    invoke-interface {v0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->getLocationManager()Lcom/transsion/camera/app/common/location/LocationManager;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/ui/manager/GoldWaterMarkManager;->setLocationManager(Lcom/transsion/camera/app/common/location/LocationManager;)V

    :cond_39
    return-void
.end method

.method private updateScreenFormType(I)V
    .registers 2

    .line 90
    iput p1, p0, Lcom/transsion/camera/app/ui/manager/GoldWaterMarkManager;->mScreenFormType:I

    return-void
.end method


# virtual methods
.method public enterGoldWaterMarkFragment(Landroid/app/Fragment;Landroid/content/Context;)V
    .registers 7

    .line 63
    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/GoldWaterMarkManager;->mGoldWaterMarkFragment:Lcom/transsion/camera/app/ui/widget/GoldWaterMarkFragment;

    if-nez p1, :cond_7

    .line 64
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/manager/GoldWaterMarkManager;->initGoldWaterMarkFragment()V

    .line 66
    :cond_7
    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/GoldWaterMarkManager;->mFragmentManager:Landroid/app/FragmentManager;

    invoke-virtual {p1}, Landroid/app/FragmentManager;->getFragments()Ljava/util/List;

    move-result-object p1

    iget-object p2, p0, Lcom/transsion/camera/app/ui/manager/GoldWaterMarkManager;->mGoldWaterMarkFragment:Lcom/transsion/camera/app/ui/widget/GoldWaterMarkFragment;

    invoke-interface {p1, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    const-string p2, "gold_watermark_fragment"

    if-eqz p1, :cond_25

    .line 67
    sget-object p1, Lcom/transsion/camera/app/ui/manager/GoldWaterMarkManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "enterEditWaterMarkFragment return."

    invoke-static {p1, v0}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 68
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/GoldWaterMarkManager;->mFragmentManager:Landroid/app/FragmentManager;

    const/4 p1, 0x1

    invoke-virtual {p0, p2, p1}, Landroid/app/FragmentManager;->popBackStackImmediate(Ljava/lang/String;I)Z

    return-void

    .line 72
    :cond_25
    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/GoldWaterMarkManager;->mFragmentManager:Landroid/app/FragmentManager;

    invoke-virtual {p1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object p1

    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/GoldWaterMarkManager;->mGoldWaterMarkFragment:Lcom/transsion/camera/app/ui/widget/GoldWaterMarkFragment;

    .line 73
    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/AbstractSettingFragment;->getChildInAnim()I

    move-result v0

    iget-object v1, p0, Lcom/transsion/camera/app/ui/manager/GoldWaterMarkManager;->mGoldWaterMarkFragment:Lcom/transsion/camera/app/ui/widget/GoldWaterMarkFragment;

    .line 74
    invoke-virtual {v1}, Lcom/transsion/camera/app/ui/AbstractSettingFragment;->getParentOutAnim()I

    move-result v1

    iget-object v2, p0, Lcom/transsion/camera/app/ui/manager/GoldWaterMarkManager;->mGoldWaterMarkFragment:Lcom/transsion/camera/app/ui/widget/GoldWaterMarkFragment;

    .line 75
    invoke-virtual {v2}, Lcom/transsion/camera/app/ui/AbstractSettingFragment;->getParentInAnim()I

    move-result v2

    iget-object v3, p0, Lcom/transsion/camera/app/ui/manager/GoldWaterMarkManager;->mGoldWaterMarkFragment:Lcom/transsion/camera/app/ui/widget/GoldWaterMarkFragment;

    .line 76
    invoke-virtual {v3}, Lcom/transsion/camera/app/ui/AbstractSettingFragment;->getChildOutAnim()I

    move-result v3

    .line 73
    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/app/FragmentTransaction;->setCustomAnimations(IIII)Landroid/app/FragmentTransaction;

    move-result-object p1

    iget v0, p0, Lcom/transsion/camera/app/ui/manager/GoldWaterMarkManager;->mRootLayoutId:I

    iget-object v1, p0, Lcom/transsion/camera/app/ui/manager/GoldWaterMarkManager;->mGoldWaterMarkFragment:Lcom/transsion/camera/app/ui/widget/GoldWaterMarkFragment;

    const-string v2, "gold_watermark"

    .line 77
    invoke-virtual {p1, v0, v1, v2}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object p1

    .line 78
    invoke-virtual {p1, p2}, Landroid/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object p1

    .line 79
    invoke-virtual {p1}, Landroid/app/FragmentTransaction;->commit()I

    .line 80
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/GoldWaterMarkManager;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {p0}, Lcom/transsion/camera/app/common/IAppUI;->enterGoldWaterMarkFragment()V

    return-void
.end method

.method public exitGoldWaterMarkFragment()V
    .registers 3

    .line 85
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/GoldWaterMarkManager;->mFragmentManager:Landroid/app/FragmentManager;

    const-string v0, "gold_watermark_fragment"

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Landroid/app/FragmentManager;->popBackStackImmediate(Ljava/lang/String;I)Z

    return-void
.end method

.method public notifyCameraOperateActionToUI(I)V
    .registers 3

    const/16 v0, 0xb1

    if-eq p1, v0, :cond_5

    return-void

    .line 126
    :cond_5
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/manager/GoldWaterMarkManager;->unInit()V

    return-void
.end method

.method public onAnimationEnd()V
    .registers 1

    return-void
.end method

.method public setLocationManager(Lcom/transsion/camera/app/common/location/LocationManager;)V
    .registers 2

    .line 112
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/GoldWaterMarkManager;->mGoldWaterMarkFragment:Lcom/transsion/camera/app/ui/widget/GoldWaterMarkFragment;

    if-eqz p0, :cond_7

    .line 113
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/widget/GoldWaterMarkFragment;->setLocationmanager(Lcom/transsion/camera/app/common/location/LocationManager;)V

    :cond_7
    return-void
.end method

.method public setRTLDirection(Z)V
    .registers 2

    .line 118
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/GoldWaterMarkManager;->mGoldWaterMarkFragment:Lcom/transsion/camera/app/ui/widget/GoldWaterMarkFragment;

    if-eqz p0, :cond_7

    .line 119
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/AbstractSettingFragment;->setRTLDirection(Z)V

    :cond_7
    return-void
.end method

.method public setSettingFragmentManager(Lcom/transsion/camera/app/ui/manager/SettingFragmentManager;)V
    .registers 2

    .line 94
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/GoldWaterMarkManager;->mGoldWaterMarkFragment:Lcom/transsion/camera/app/ui/widget/GoldWaterMarkFragment;

    if-eqz p0, :cond_7

    .line 95
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/widget/GoldWaterMarkFragment;->setSettingFragmentManager(Lcom/transsion/camera/app/ui/manager/SettingFragmentManager;)V

    :cond_7
    return-void
.end method

.method public setSettingMonitor(Lcom/transsion/camera/app/common/setting/StatusMonitor;)V
    .registers 2

    .line 100
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/GoldWaterMarkManager;->mGoldWaterMarkFragment:Lcom/transsion/camera/app/ui/widget/GoldWaterMarkFragment;

    if-eqz p0, :cond_7

    .line 101
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/widget/GoldWaterMarkFragment;->setSettingMonitor(Lcom/transsion/camera/app/common/setting/StatusMonitor;)V

    :cond_7
    return-void
.end method

.method public setStateListener(Lcom/transsion/camera/app/common/IAppUIListener$IFragmentStateListener;)V
    .registers 2

    .line 106
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/GoldWaterMarkManager;->mGoldWaterMarkFragment:Lcom/transsion/camera/app/ui/widget/GoldWaterMarkFragment;

    if-eqz p0, :cond_7

    .line 107
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/widget/GoldWaterMarkFragment;->setStateListener(Lcom/transsion/camera/app/common/IAppUIListener$IFragmentStateListener;)V

    :cond_7
    return-void
.end method

.method public unInit()V
    .registers 3

    .line 165
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/GoldWaterMarkManager;->mGoldWaterMarkFragment:Lcom/transsion/camera/app/ui/widget/GoldWaterMarkFragment;

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    .line 166
    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/widget/GoldWaterMarkFragment;->unInit()V

    .line 167
    iput-object v1, p0, Lcom/transsion/camera/app/ui/manager/GoldWaterMarkManager;->mGoldWaterMarkFragment:Lcom/transsion/camera/app/ui/widget/GoldWaterMarkFragment;

    .line 169
    :cond_a
    invoke-virtual {p0, v1}, Lcom/transsion/camera/app/ui/manager/GoldWaterMarkManager;->setStateListener(Lcom/transsion/camera/app/common/IAppUIListener$IFragmentStateListener;)V

    return-void
.end method
