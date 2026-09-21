.class public Lcom/transsion/camera/app/ui/manager/TuningFeatureManager;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/app/common/IAppUIControl$ITuningFeatureFragmentControl;
.implements Lcom/transsion/camera/app/ui/AbstractSettingFragment$OrientationAnimationListener;
.implements Lcom/transsion/camera/app/common/IScreenFormControl;


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private final mAppUI:Lcom/transsion/camera/app/common/IAppUI;

.field private final mContext:Landroid/content/Context;

.field private mFragment:Lcom/transsion/camera/app/ui/TuningFeatureFragment;

.field private final mFragmentManager:Landroid/app/FragmentManager;

.field private final mRootLayoutId:I

.field private final mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 19
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-class v1, Lcom/transsion/camera/app/ui/manager/TuningFeatureManager;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/app/ui/manager/TuningFeatureManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Lcom/transsion/camera/app/common/IAppUI;Landroid/app/FragmentManager;Landroid/content/Context;ILcom/transsion/camera/app/common/setting/ISettingManager$SettingController;)V
    .registers 6

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lcom/transsion/camera/app/ui/manager/TuningFeatureManager;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    .line 37
    iput-object p3, p0, Lcom/transsion/camera/app/ui/manager/TuningFeatureManager;->mContext:Landroid/content/Context;

    .line 38
    iput-object p2, p0, Lcom/transsion/camera/app/ui/manager/TuningFeatureManager;->mFragmentManager:Landroid/app/FragmentManager;

    .line 39
    iput p4, p0, Lcom/transsion/camera/app/ui/manager/TuningFeatureManager;->mRootLayoutId:I

    .line 40
    iput-object p5, p0, Lcom/transsion/camera/app/ui/manager/TuningFeatureManager;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    return-void
.end method


# virtual methods
.method public enterTuningFeatureFragment(Landroid/app/Fragment;Landroid/content/Context;)V
    .registers 6

    .line 58
    new-instance p1, Lcom/transsion/camera/app/ui/TuningFeatureFragment;

    invoke-direct {p1}, Lcom/transsion/camera/app/ui/TuningFeatureFragment;-><init>()V

    iput-object p1, p0, Lcom/transsion/camera/app/ui/manager/TuningFeatureManager;->mFragment:Lcom/transsion/camera/app/ui/TuningFeatureFragment;

    .line 59
    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/TuningFeatureManager;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {p1}, Lcom/transsion/camera/app/common/IAppUI;->getScreenFormType()I

    move-result p1

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Lcom/transsion/camera/app/ui/manager/TuningFeatureManager;->onScreenFormChanged(IZ)V

    .line 60
    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/TuningFeatureManager;->mFragment:Lcom/transsion/camera/app/ui/TuningFeatureFragment;

    invoke-virtual {p1, p0}, Lcom/transsion/camera/app/ui/AbstractSettingFragment;->setOrientationAnimationListener(Lcom/transsion/camera/app/ui/AbstractSettingFragment$OrientationAnimationListener;)V

    .line 61
    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/TuningFeatureManager;->mFragmentManager:Landroid/app/FragmentManager;

    invoke-virtual {p1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object p1

    iget v0, p0, Lcom/transsion/camera/app/ui/manager/TuningFeatureManager;->mRootLayoutId:I

    iget-object v1, p0, Lcom/transsion/camera/app/ui/manager/TuningFeatureManager;->mFragment:Lcom/transsion/camera/app/ui/TuningFeatureFragment;

    const-string/jumbo v2, "tuning_feature_manage"

    .line 62
    invoke-virtual {p1, v0, v1, v2}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object p1

    const-string/jumbo v0, "tuning_feature_manage_fragment"

    .line 63
    invoke-virtual {p1, v0}, Landroid/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object p1

    .line 64
    invoke-virtual {p1}, Landroid/app/FragmentTransaction;->commit()I

    .line 65
    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/TuningFeatureManager;->mFragment:Lcom/transsion/camera/app/ui/TuningFeatureFragment;

    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/TuningFeatureManager;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    invoke-interface {v0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->getSettingProvide()Lcom/transsion/camera/app/common/setting/ISettingManager$SettingProvide;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/transsion/camera/app/ui/TuningFeatureFragment;->setSettingProvide(Lcom/transsion/camera/app/common/setting/ISettingManager$SettingProvide;)V

    .line 66
    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/TuningFeatureManager;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {p1}, Lcom/transsion/camera/app/common/IAppUI;->getScreenFormType()I

    move-result p1

    invoke-virtual {p0, p1, p2}, Lcom/transsion/camera/app/ui/manager/TuningFeatureManager;->onScreenFormChanged(IZ)V

    .line 67
    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/TuningFeatureManager;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/transsion/camera/utils/FeatureSupport;->isSupportFoldUI(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_56

    .line 68
    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/TuningFeatureManager;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {p1}, Lcom/transsion/camera/app/common/IAppUI;->getOrientation()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/manager/TuningFeatureManager;->onOrientationChanged(I)V

    :cond_56
    return-void
.end method

.method public exitTuningFeatureFragment()V
    .registers 4

    .line 74
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/TuningFeatureManager;->mFragmentManager:Landroid/app/FragmentManager;

    const-string/jumbo v1, "tuning_feature_manage_fragment"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/app/FragmentManager;->popBackStackImmediate(Ljava/lang/String;I)Z

    const/4 v0, 0x0

    .line 75
    iput-object v0, p0, Lcom/transsion/camera/app/ui/manager/TuningFeatureManager;->mFragment:Lcom/transsion/camera/app/ui/TuningFeatureFragment;

    return-void
.end method

.method public onAnimationEnd()V
    .registers 5

    .line 80
    sget-object v0, Lcom/transsion/camera/app/ui/manager/TuningFeatureManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "onAnimationEnd: screen rotate animation end, update FragmentManager"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 81
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/TuningFeatureManager;->mFragmentManager:Landroid/app/FragmentManager;

    invoke-virtual {v0}, Landroid/app/FragmentManager;->getFragments()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_56

    .line 82
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/TuningFeatureManager;->mFragment:Lcom/transsion/camera/app/ui/TuningFeatureFragment;

    if-nez v0, :cond_18

    goto :goto_56

    .line 87
    :cond_18
    invoke-virtual {v0}, Landroid/app/Fragment;->isVisible()Z

    move-result v0

    const-string/jumbo v1, "tuning_feature_manage_fragment"

    if-eqz v0, :cond_27

    .line 88
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/TuningFeatureManager;->mFragmentManager:Landroid/app/FragmentManager;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/app/FragmentManager;->popBackStack(Ljava/lang/String;I)V

    .line 93
    :cond_27
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/TuningFeatureManager;->mFragment:Lcom/transsion/camera/app/ui/TuningFeatureFragment;

    invoke-virtual {v0}, Landroid/app/Fragment;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_56

    .line 94
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/TuningFeatureManager;->mFragmentManager:Landroid/app/FragmentManager;

    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    .line 95
    iget-object v2, p0, Lcom/transsion/camera/app/ui/manager/TuningFeatureManager;->mFragment:Lcom/transsion/camera/app/ui/TuningFeatureFragment;

    iget-object v3, p0, Lcom/transsion/camera/app/ui/manager/TuningFeatureManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v3}, Lcom/transsion/camera/app/ui/AbstractSettingFragment;->getExitAnimation(Landroid/content/Context;)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_44

    const/4 v3, 0x0

    .line 97
    invoke-virtual {v0, v3, v2, v3, v2}, Landroid/app/FragmentTransaction;->setCustomAnimations(IIII)Landroid/app/FragmentTransaction;

    .line 99
    :cond_44
    iget v2, p0, Lcom/transsion/camera/app/ui/manager/TuningFeatureManager;->mRootLayoutId:I

    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/TuningFeatureManager;->mFragment:Lcom/transsion/camera/app/ui/TuningFeatureFragment;

    const-string/jumbo v3, "tuning_feature_manage"

    invoke-virtual {v0, v2, p0, v3}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object p0

    .line 100
    invoke-virtual {p0, v1}, Landroid/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object p0

    .line 101
    invoke-virtual {p0}, Landroid/app/FragmentTransaction;->commit()I

    :cond_56
    :goto_56
    return-void
.end method

.method public onOrientationChanged(I)V
    .registers 5

    .line 110
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/TuningFeatureManager;->mFragment:Lcom/transsion/camera/app/ui/TuningFeatureFragment;

    if-eqz v0, :cond_1f

    .line 111
    sget-object v0, Lcom/transsion/camera/app/ui/manager/TuningFeatureManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[onOrientationChanged]: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 112
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/TuningFeatureManager;->mFragment:Lcom/transsion/camera/app/ui/TuningFeatureFragment;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/AbstractSettingFragment;->onOrientationChanged(I)V

    :cond_1f
    return-void
.end method

.method public onScreenFormChanged(IZ)V
    .registers 5

    .line 118
    iget-object p2, p0, Lcom/transsion/camera/app/ui/manager/TuningFeatureManager;->mFragment:Lcom/transsion/camera/app/ui/TuningFeatureFragment;

    if-eqz p2, :cond_1f

    .line 119
    sget-object p2, Lcom/transsion/camera/app/ui/manager/TuningFeatureManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[onScreenFormChanged]: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 120
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/TuningFeatureManager;->mFragment:Lcom/transsion/camera/app/ui/TuningFeatureFragment;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/AbstractSettingFragment;->updateScreenFormType(I)V

    :cond_1f
    return-void
.end method

.method public unInit()V
    .registers 1

    .line 125
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/TuningFeatureManager;->mFragment:Lcom/transsion/camera/app/ui/TuningFeatureFragment;

    if-eqz p0, :cond_7

    .line 126
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/TuningFeatureFragment;->unInit()V

    :cond_7
    return-void
.end method
