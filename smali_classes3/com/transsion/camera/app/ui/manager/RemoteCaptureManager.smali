.class public Lcom/transsion/camera/app/ui/manager/RemoteCaptureManager;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/app/common/IAppUIControl$IRemoteCaptureFragmentControl;
.implements Lcom/transsion/camera/app/common/IScreenFormControl;
.implements Lcom/transsion/camera/app/ui/AbstractSettingFragment$OrientationAnimationListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/app/ui/manager/RemoteCaptureManager$RemoteCaptureFragmentStateListenerImpl;
    }
.end annotation


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private mAppUI:Lcom/transsion/camera/app/common/IAppUI;

.field private mContext:Landroid/content/Context;

.field private mFragmentManager:Landroid/app/FragmentManager;

.field mRemoteCaptureFragment:Lcom/transsion/camera/app/ui/RemoteCaptureFragment;

.field private mRootLayoutId:I

.field protected mScreenFormType:I

.field private mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;


# direct methods
.method static bridge synthetic -$$Nest$fgetmAppUI(Lcom/transsion/camera/app/ui/manager/RemoteCaptureManager;)Lcom/transsion/camera/app/common/IAppUI;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/RemoteCaptureManager;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    return-object p0
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 25
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "RemoteCaptureManager"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/app/ui/manager/RemoteCaptureManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Lcom/transsion/camera/app/common/IAppUI;Landroid/app/FragmentManager;ILandroid/content/Context;Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;)V
    .registers 7

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 30
    iput v0, p0, Lcom/transsion/camera/app/ui/manager/RemoteCaptureManager;->mScreenFormType:I

    .line 40
    iput-object p1, p0, Lcom/transsion/camera/app/ui/manager/RemoteCaptureManager;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    .line 41
    iput-object p2, p0, Lcom/transsion/camera/app/ui/manager/RemoteCaptureManager;->mFragmentManager:Landroid/app/FragmentManager;

    .line 42
    iput p3, p0, Lcom/transsion/camera/app/ui/manager/RemoteCaptureManager;->mRootLayoutId:I

    .line 43
    iput-object p4, p0, Lcom/transsion/camera/app/ui/manager/RemoteCaptureManager;->mContext:Landroid/content/Context;

    .line 44
    iput-object p5, p0, Lcom/transsion/camera/app/ui/manager/RemoteCaptureManager;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    .line 45
    invoke-interface {p1}, Lcom/transsion/camera/app/common/IAppUI;->getScreenFormType()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/manager/RemoteCaptureManager;->updateScreenFormType(I)V

    return-void
.end method

.method private updateScreenFormType(I)V
    .registers 2

    .line 139
    iput p1, p0, Lcom/transsion/camera/app/ui/manager/RemoteCaptureManager;->mScreenFormType:I

    .line 140
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/RemoteCaptureManager;->mRemoteCaptureFragment:Lcom/transsion/camera/app/ui/RemoteCaptureFragment;

    if-eqz p0, :cond_9

    .line 141
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/AbstractSettingFragment;->updateScreenFormType(I)V

    :cond_9
    return-void
.end method


# virtual methods
.method public enterRemoteCaptureFragment(Landroid/app/Fragment;Landroid/content/Context;)V
    .registers 9

    .line 50
    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/RemoteCaptureManager;->mRemoteCaptureFragment:Lcom/transsion/camera/app/ui/RemoteCaptureFragment;

    if-nez p1, :cond_3e

    .line 51
    new-instance p1, Lcom/transsion/camera/app/ui/RemoteCaptureFragment;

    invoke-direct {p1}, Lcom/transsion/camera/app/ui/RemoteCaptureFragment;-><init>()V

    iput-object p1, p0, Lcom/transsion/camera/app/ui/manager/RemoteCaptureManager;->mRemoteCaptureFragment:Lcom/transsion/camera/app/ui/RemoteCaptureFragment;

    .line 52
    invoke-virtual {p1, p0}, Lcom/transsion/camera/app/ui/RemoteCaptureFragment;->setOrientationAnimationListener(Lcom/transsion/camera/app/ui/AbstractSettingFragment$OrientationAnimationListener;)V

    .line 53
    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/RemoteCaptureManager;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    if-eqz p1, :cond_33

    .line 54
    invoke-interface {p1}, Lcom/transsion/camera/app/common/IAppUI;->getScreenFormType()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/manager/RemoteCaptureManager;->updateScreenFormType(I)V

    .line 55
    new-instance p1, Lcom/transsion/camera/app/ui/manager/RemoteCaptureManager$RemoteCaptureFragmentStateListenerImpl;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lcom/transsion/camera/app/ui/manager/RemoteCaptureManager$RemoteCaptureFragmentStateListenerImpl;-><init>(Lcom/transsion/camera/app/ui/manager/RemoteCaptureManager;Lcom/transsion/camera/app/ui/manager/RemoteCaptureManager-IA;)V

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/manager/RemoteCaptureManager;->setStateListener(Lcom/transsion/camera/app/common/IAppUIListener$IFragmentStateListener;)V

    .line 56
    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/RemoteCaptureManager;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/transsion/camera/utils/FeatureSupport;->isSupportFoldUI(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_33

    .line 57
    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/RemoteCaptureManager;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {p1}, Lcom/transsion/camera/app/common/IAppUI;->getOrientation()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/manager/RemoteCaptureManager;->onOrientationChanged(I)V

    .line 60
    :cond_33
    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/RemoteCaptureManager;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    if-eqz p1, :cond_3e

    .line 61
    invoke-interface {p1}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->getStatusMonitor()Lcom/transsion/camera/app/common/setting/StatusMonitor;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/manager/RemoteCaptureManager;->setSettingMonitor(Lcom/transsion/camera/app/common/setting/StatusMonitor;)V

    .line 65
    :cond_3e
    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/RemoteCaptureManager;->mFragmentManager:Landroid/app/FragmentManager;

    invoke-virtual {p1}, Landroid/app/FragmentManager;->getFragments()Ljava/util/List;

    move-result-object p1

    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/RemoteCaptureManager;->mRemoteCaptureFragment:Lcom/transsion/camera/app/ui/RemoteCaptureFragment;

    invoke-interface {p1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    const/4 v0, 0x1

    const-string v1, "remote_capture_fragment"

    if-eqz p1, :cond_5c

    .line 66
    sget-object p1, Lcom/transsion/camera/app/ui/manager/RemoteCaptureManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p2, "enterRemoteCaptureFragment return."

    invoke-static {p1, p2}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 67
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/RemoteCaptureManager;->mFragmentManager:Landroid/app/FragmentManager;

    invoke-virtual {p0, v1, v0}, Landroid/app/FragmentManager;->popBackStackImmediate(Ljava/lang/String;I)Z

    return-void

    .line 72
    :cond_5c
    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/RemoteCaptureManager;->mRemoteCaptureFragment:Lcom/transsion/camera/app/ui/RemoteCaptureFragment;

    iget-object v2, p0, Lcom/transsion/camera/app/ui/manager/RemoteCaptureManager;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {v2}, Lcom/transsion/camera/app/common/IAppUI;->getScreenFormType()I

    move-result v2

    invoke-virtual {p1, v2}, Lcom/transsion/camera/app/ui/AbstractSettingFragment;->updateScreenFormType(I)V

    .line 74
    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/RemoteCaptureManager;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/transsion/camera/utils/FeatureSupport;->isSupportFoldUI(Landroid/content/Context;)Z

    move-result p1

    const-string v2, "remote_capture"

    if-eqz p1, :cond_b0

    iget p1, p0, Lcom/transsion/camera/app/ui/manager/RemoteCaptureManager;->mScreenFormType:I

    if-eq p1, v0, :cond_7e

    const/4 v0, 0x2

    if-eq p1, v0, :cond_7e

    const/4 v0, 0x4

    if-eq p1, v0, :cond_7e

    const/4 v0, 0x5

    if-ne p1, v0, :cond_b0

    .line 79
    :cond_7e
    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/RemoteCaptureManager;->mFragmentManager:Landroid/app/FragmentManager;

    invoke-virtual {p1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object p1

    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/RemoteCaptureManager;->mRemoteCaptureFragment:Lcom/transsion/camera/app/ui/RemoteCaptureFragment;

    .line 80
    invoke-virtual {v0, p2}, Lcom/transsion/camera/app/ui/AbstractSettingFragment;->getEnterAnimation(Landroid/content/Context;)I

    move-result v0

    iget-object v3, p0, Lcom/transsion/camera/app/ui/manager/RemoteCaptureManager;->mRemoteCaptureFragment:Lcom/transsion/camera/app/ui/RemoteCaptureFragment;

    .line 81
    invoke-virtual {v3, p2}, Lcom/transsion/camera/app/ui/AbstractSettingFragment;->getExitAnimation(Landroid/content/Context;)I

    move-result v3

    iget-object v4, p0, Lcom/transsion/camera/app/ui/manager/RemoteCaptureManager;->mRemoteCaptureFragment:Lcom/transsion/camera/app/ui/RemoteCaptureFragment;

    .line 82
    invoke-virtual {v4, p2}, Lcom/transsion/camera/app/ui/AbstractSettingFragment;->getEnterAnimation(Landroid/content/Context;)I

    move-result v4

    iget-object v5, p0, Lcom/transsion/camera/app/ui/manager/RemoteCaptureManager;->mRemoteCaptureFragment:Lcom/transsion/camera/app/ui/RemoteCaptureFragment;

    .line 83
    invoke-virtual {v5, p2}, Lcom/transsion/camera/app/ui/AbstractSettingFragment;->getExitAnimation(Landroid/content/Context;)I

    move-result p2

    .line 80
    invoke-virtual {p1, v0, v3, v4, p2}, Landroid/app/FragmentTransaction;->setCustomAnimations(IIII)Landroid/app/FragmentTransaction;

    move-result-object p1

    iget p2, p0, Lcom/transsion/camera/app/ui/manager/RemoteCaptureManager;->mRootLayoutId:I

    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/RemoteCaptureManager;->mRemoteCaptureFragment:Lcom/transsion/camera/app/ui/RemoteCaptureFragment;

    .line 84
    invoke-virtual {p1, p2, v0, v2}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object p1

    .line 85
    invoke-virtual {p1, v1}, Landroid/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object p1

    .line 86
    invoke-virtual {p1}, Landroid/app/FragmentTransaction;->commit()I

    goto :goto_e1

    .line 88
    :cond_b0
    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/RemoteCaptureManager;->mFragmentManager:Landroid/app/FragmentManager;

    invoke-virtual {p1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object p1

    iget-object p2, p0, Lcom/transsion/camera/app/ui/manager/RemoteCaptureManager;->mRemoteCaptureFragment:Lcom/transsion/camera/app/ui/RemoteCaptureFragment;

    .line 89
    invoke-virtual {p2}, Lcom/transsion/camera/app/ui/AbstractSettingFragment;->getChildInAnim()I

    move-result p2

    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/RemoteCaptureManager;->mRemoteCaptureFragment:Lcom/transsion/camera/app/ui/RemoteCaptureFragment;

    .line 90
    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/AbstractSettingFragment;->getParentOutAnim()I

    move-result v0

    iget-object v3, p0, Lcom/transsion/camera/app/ui/manager/RemoteCaptureManager;->mRemoteCaptureFragment:Lcom/transsion/camera/app/ui/RemoteCaptureFragment;

    .line 91
    invoke-virtual {v3}, Lcom/transsion/camera/app/ui/AbstractSettingFragment;->getParentInAnim()I

    move-result v3

    iget-object v4, p0, Lcom/transsion/camera/app/ui/manager/RemoteCaptureManager;->mRemoteCaptureFragment:Lcom/transsion/camera/app/ui/RemoteCaptureFragment;

    .line 92
    invoke-virtual {v4}, Lcom/transsion/camera/app/ui/AbstractSettingFragment;->getChildOutAnim()I

    move-result v4

    .line 89
    invoke-virtual {p1, p2, v0, v3, v4}, Landroid/app/FragmentTransaction;->setCustomAnimations(IIII)Landroid/app/FragmentTransaction;

    move-result-object p1

    iget p2, p0, Lcom/transsion/camera/app/ui/manager/RemoteCaptureManager;->mRootLayoutId:I

    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/RemoteCaptureManager;->mRemoteCaptureFragment:Lcom/transsion/camera/app/ui/RemoteCaptureFragment;

    .line 93
    invoke-virtual {p1, p2, v0, v2}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object p1

    .line 94
    invoke-virtual {p1, v1}, Landroid/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object p1

    .line 95
    invoke-virtual {p1}, Landroid/app/FragmentTransaction;->commit()I

    .line 97
    :goto_e1
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/RemoteCaptureManager;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {p0}, Lcom/transsion/camera/app/common/IAppUI;->enterRemoteCaptureFragment()V

    return-void
.end method

.method public exitRemoteCaptureFragment()V
    .registers 3

    .line 121
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/RemoteCaptureManager;->mFragmentManager:Landroid/app/FragmentManager;

    const-string v0, "remote_capture_fragment"

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Landroid/app/FragmentManager;->popBackStackImmediate(Ljava/lang/String;I)Z

    return-void
.end method

.method public notifyCameraOperateActionToUI(I)V
    .registers 3

    const/16 v0, 0x8a

    if-eq p1, v0, :cond_5

    return-void

    .line 160
    :cond_5
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/manager/RemoteCaptureManager;->unInit()V

    return-void
.end method

.method public onAnimationEnd()V
    .registers 5

    .line 180
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/RemoteCaptureManager;->mFragmentManager:Landroid/app/FragmentManager;

    invoke-virtual {v0}, Landroid/app/FragmentManager;->getFragments()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 181
    sget-object v1, Lcom/transsion/camera/app/ui/manager/RemoteCaptureManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onAnimationEnd size: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    if-eqz v0, :cond_63

    .line 182
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/RemoteCaptureManager;->mRemoteCaptureFragment:Lcom/transsion/camera/app/ui/RemoteCaptureFragment;

    if-nez v0, :cond_27

    goto :goto_63

    .line 187
    :cond_27
    invoke-virtual {v0}, Landroid/app/Fragment;->isVisible()Z

    move-result v0

    const-string v1, "remote_capture_fragment"

    if-eqz v0, :cond_35

    .line 188
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/RemoteCaptureManager;->mFragmentManager:Landroid/app/FragmentManager;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/app/FragmentManager;->popBackStack(Ljava/lang/String;I)V

    .line 193
    :cond_35
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/RemoteCaptureManager;->mRemoteCaptureFragment:Lcom/transsion/camera/app/ui/RemoteCaptureFragment;

    invoke-virtual {v0}, Landroid/app/Fragment;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_63

    .line 194
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/RemoteCaptureManager;->mFragmentManager:Landroid/app/FragmentManager;

    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    .line 195
    iget-object v2, p0, Lcom/transsion/camera/app/ui/manager/RemoteCaptureManager;->mRemoteCaptureFragment:Lcom/transsion/camera/app/ui/RemoteCaptureFragment;

    iget-object v3, p0, Lcom/transsion/camera/app/ui/manager/RemoteCaptureManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v3}, Lcom/transsion/camera/app/ui/AbstractSettingFragment;->getExitAnimation(Landroid/content/Context;)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_52

    const/4 v3, 0x0

    .line 197
    invoke-virtual {v0, v3, v2, v3, v2}, Landroid/app/FragmentTransaction;->setCustomAnimations(IIII)Landroid/app/FragmentTransaction;

    .line 199
    :cond_52
    iget v2, p0, Lcom/transsion/camera/app/ui/manager/RemoteCaptureManager;->mRootLayoutId:I

    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/RemoteCaptureManager;->mRemoteCaptureFragment:Lcom/transsion/camera/app/ui/RemoteCaptureFragment;

    const-string v3, "remote_capture"

    invoke-virtual {v0, v2, p0, v3}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object p0

    .line 200
    invoke-virtual {p0, v1}, Landroid/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object p0

    .line 201
    invoke-virtual {p0}, Landroid/app/FragmentTransaction;->commit()I

    :cond_63
    :goto_63
    return-void
.end method

.method public onOrientationChanged(I)V
    .registers 2

    .line 173
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/RemoteCaptureManager;->mRemoteCaptureFragment:Lcom/transsion/camera/app/ui/RemoteCaptureFragment;

    if-eqz p0, :cond_7

    .line 174
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/AbstractSettingFragment;->onOrientationChanged(I)V

    :cond_7
    return-void
.end method

.method public setRTLDirection(Z)V
    .registers 2

    .line 127
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/RemoteCaptureManager;->mRemoteCaptureFragment:Lcom/transsion/camera/app/ui/RemoteCaptureFragment;

    if-eqz p0, :cond_7

    .line 128
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/AbstractSettingFragment;->setRTLDirection(Z)V

    :cond_7
    return-void
.end method

.method public setSettingFragmentManager(Lcom/transsion/camera/app/ui/manager/SettingFragmentManager;)V
    .registers 2

    .line 146
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/RemoteCaptureManager;->mRemoteCaptureFragment:Lcom/transsion/camera/app/ui/RemoteCaptureFragment;

    if-eqz p0, :cond_7

    .line 147
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/RemoteCaptureFragment;->setSettingFragmentManager(Lcom/transsion/camera/app/ui/manager/SettingFragmentManager;)V

    :cond_7
    return-void
.end method

.method public setSettingMonitor(Lcom/transsion/camera/app/common/setting/StatusMonitor;)V
    .registers 2

    .line 133
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/RemoteCaptureManager;->mRemoteCaptureFragment:Lcom/transsion/camera/app/ui/RemoteCaptureFragment;

    if-eqz p0, :cond_7

    .line 134
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/RemoteCaptureFragment;->setSettingMonitor(Lcom/transsion/camera/app/common/setting/StatusMonitor;)V

    :cond_7
    return-void
.end method

.method public setStateListener(Lcom/transsion/camera/app/common/IAppUIListener$IFragmentStateListener;)V
    .registers 2

    .line 152
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/RemoteCaptureManager;->mRemoteCaptureFragment:Lcom/transsion/camera/app/ui/RemoteCaptureFragment;

    if-eqz p0, :cond_7

    .line 153
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/RemoteCaptureFragment;->setStateListener(Lcom/transsion/camera/app/common/IAppUIListener$IFragmentStateListener;)V

    :cond_7
    return-void
.end method

.method public unInit()V
    .registers 3

    .line 206
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/RemoteCaptureManager;->mRemoteCaptureFragment:Lcom/transsion/camera/app/ui/RemoteCaptureFragment;

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    .line 207
    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/RemoteCaptureFragment;->unInit()V

    .line 208
    iput-object v1, p0, Lcom/transsion/camera/app/ui/manager/RemoteCaptureManager;->mRemoteCaptureFragment:Lcom/transsion/camera/app/ui/RemoteCaptureFragment;

    .line 210
    :cond_a
    invoke-virtual {p0, v1}, Lcom/transsion/camera/app/ui/manager/RemoteCaptureManager;->setStateListener(Lcom/transsion/camera/app/common/IAppUIListener$IFragmentStateListener;)V

    return-void
.end method
