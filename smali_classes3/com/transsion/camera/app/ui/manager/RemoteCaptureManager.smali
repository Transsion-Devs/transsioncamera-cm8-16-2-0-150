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

    .line 26
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "RemoteCaptureManager"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/app/ui/manager/RemoteCaptureManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Lcom/transsion/camera/app/common/IAppUI;Landroid/app/FragmentManager;ILandroid/content/Context;Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;)V
    .registers 7

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 31
    iput v0, p0, Lcom/transsion/camera/app/ui/manager/RemoteCaptureManager;->mScreenFormType:I

    .line 41
    iput-object p1, p0, Lcom/transsion/camera/app/ui/manager/RemoteCaptureManager;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    .line 42
    iput-object p2, p0, Lcom/transsion/camera/app/ui/manager/RemoteCaptureManager;->mFragmentManager:Landroid/app/FragmentManager;

    .line 43
    iput p3, p0, Lcom/transsion/camera/app/ui/manager/RemoteCaptureManager;->mRootLayoutId:I

    .line 44
    iput-object p4, p0, Lcom/transsion/camera/app/ui/manager/RemoteCaptureManager;->mContext:Landroid/content/Context;

    .line 45
    iput-object p5, p0, Lcom/transsion/camera/app/ui/manager/RemoteCaptureManager;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    .line 46
    invoke-interface {p1}, Lcom/transsion/camera/app/common/IAppUI;->getScreenFormType()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/manager/RemoteCaptureManager;->updateScreenFormType(I)V

    return-void
.end method

.method private updateScreenFormType(I)V
    .registers 2

    .line 144
    iput p1, p0, Lcom/transsion/camera/app/ui/manager/RemoteCaptureManager;->mScreenFormType:I

    .line 145
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/RemoteCaptureManager;->mRemoteCaptureFragment:Lcom/transsion/camera/app/ui/RemoteCaptureFragment;

    if-eqz p0, :cond_9

    .line 146
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/AbstractSettingFragment;->updateScreenFormType(I)V

    :cond_9
    return-void
.end method


# virtual methods
.method public enterRemoteCaptureFragment(Landroid/app/Fragment;Landroid/content/Context;)V
    .registers 9

    .line 51
    invoke-static {}, Lcom/transsion/camera/app/common/permission/PermissionManager;->isCameraLocationPermissionRequesting()Z

    move-result p1

    if-eqz p1, :cond_e

    .line 52
    sget-object p0, Lcom/transsion/camera/app/ui/manager/RemoteCaptureManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "enterRemoteCaptureFragment ignored for location permission requesting"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 55
    :cond_e
    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/RemoteCaptureManager;->mRemoteCaptureFragment:Lcom/transsion/camera/app/ui/RemoteCaptureFragment;

    if-nez p1, :cond_4c

    .line 56
    new-instance p1, Lcom/transsion/camera/app/ui/RemoteCaptureFragment;

    invoke-direct {p1}, Lcom/transsion/camera/app/ui/RemoteCaptureFragment;-><init>()V

    iput-object p1, p0, Lcom/transsion/camera/app/ui/manager/RemoteCaptureManager;->mRemoteCaptureFragment:Lcom/transsion/camera/app/ui/RemoteCaptureFragment;

    .line 57
    invoke-virtual {p1, p0}, Lcom/transsion/camera/app/ui/RemoteCaptureFragment;->setOrientationAnimationListener(Lcom/transsion/camera/app/ui/AbstractSettingFragment$OrientationAnimationListener;)V

    .line 58
    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/RemoteCaptureManager;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    if-eqz p1, :cond_41

    .line 59
    invoke-interface {p1}, Lcom/transsion/camera/app/common/IAppUI;->getScreenFormType()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/manager/RemoteCaptureManager;->updateScreenFormType(I)V

    .line 60
    new-instance p1, Lcom/transsion/camera/app/ui/manager/RemoteCaptureManager$RemoteCaptureFragmentStateListenerImpl;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lcom/transsion/camera/app/ui/manager/RemoteCaptureManager$RemoteCaptureFragmentStateListenerImpl;-><init>(Lcom/transsion/camera/app/ui/manager/RemoteCaptureManager;Lcom/transsion/camera/app/ui/manager/RemoteCaptureManager-IA;)V

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/manager/RemoteCaptureManager;->setStateListener(Lcom/transsion/camera/app/common/IAppUIListener$IFragmentStateListener;)V

    .line 61
    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/RemoteCaptureManager;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/transsion/camera/utils/FeatureSupport;->isSupportFoldUI(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_41

    .line 62
    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/RemoteCaptureManager;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {p1}, Lcom/transsion/camera/app/common/IAppUI;->getOrientation()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/manager/RemoteCaptureManager;->onOrientationChanged(I)V

    .line 65
    :cond_41
    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/RemoteCaptureManager;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    if-eqz p1, :cond_4c

    .line 66
    invoke-interface {p1}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->getStatusMonitor()Lcom/transsion/camera/app/common/setting/StatusMonitor;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/manager/RemoteCaptureManager;->setSettingMonitor(Lcom/transsion/camera/app/common/setting/StatusMonitor;)V

    .line 70
    :cond_4c
    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/RemoteCaptureManager;->mFragmentManager:Landroid/app/FragmentManager;

    invoke-virtual {p1}, Landroid/app/FragmentManager;->getFragments()Ljava/util/List;

    move-result-object p1

    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/RemoteCaptureManager;->mRemoteCaptureFragment:Lcom/transsion/camera/app/ui/RemoteCaptureFragment;

    invoke-interface {p1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    const/4 v0, 0x1

    const-string v1, "remote_capture_fragment"

    if-eqz p1, :cond_6a

    .line 71
    sget-object p1, Lcom/transsion/camera/app/ui/manager/RemoteCaptureManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p2, "enterRemoteCaptureFragment return."

    invoke-static {p1, p2}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 72
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/RemoteCaptureManager;->mFragmentManager:Landroid/app/FragmentManager;

    invoke-virtual {p0, v1, v0}, Landroid/app/FragmentManager;->popBackStackImmediate(Ljava/lang/String;I)Z

    return-void

    .line 77
    :cond_6a
    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/RemoteCaptureManager;->mRemoteCaptureFragment:Lcom/transsion/camera/app/ui/RemoteCaptureFragment;

    iget-object v2, p0, Lcom/transsion/camera/app/ui/manager/RemoteCaptureManager;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {v2}, Lcom/transsion/camera/app/common/IAppUI;->getScreenFormType()I

    move-result v2

    invoke-virtual {p1, v2}, Lcom/transsion/camera/app/ui/AbstractSettingFragment;->updateScreenFormType(I)V

    .line 79
    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/RemoteCaptureManager;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/transsion/camera/utils/FeatureSupport;->isSupportFoldUI(Landroid/content/Context;)Z

    move-result p1

    const-string v2, "remote_capture"

    if-eqz p1, :cond_be

    iget p1, p0, Lcom/transsion/camera/app/ui/manager/RemoteCaptureManager;->mScreenFormType:I

    if-eq p1, v0, :cond_8c

    const/4 v0, 0x2

    if-eq p1, v0, :cond_8c

    const/4 v0, 0x4

    if-eq p1, v0, :cond_8c

    const/4 v0, 0x5

    if-ne p1, v0, :cond_be

    .line 84
    :cond_8c
    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/RemoteCaptureManager;->mFragmentManager:Landroid/app/FragmentManager;

    invoke-virtual {p1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object p1

    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/RemoteCaptureManager;->mRemoteCaptureFragment:Lcom/transsion/camera/app/ui/RemoteCaptureFragment;

    .line 85
    invoke-virtual {v0, p2}, Lcom/transsion/camera/app/ui/AbstractSettingFragment;->getEnterAnimation(Landroid/content/Context;)I

    move-result v0

    iget-object v3, p0, Lcom/transsion/camera/app/ui/manager/RemoteCaptureManager;->mRemoteCaptureFragment:Lcom/transsion/camera/app/ui/RemoteCaptureFragment;

    .line 86
    invoke-virtual {v3, p2}, Lcom/transsion/camera/app/ui/AbstractSettingFragment;->getExitAnimation(Landroid/content/Context;)I

    move-result v3

    iget-object v4, p0, Lcom/transsion/camera/app/ui/manager/RemoteCaptureManager;->mRemoteCaptureFragment:Lcom/transsion/camera/app/ui/RemoteCaptureFragment;

    .line 87
    invoke-virtual {v4, p2}, Lcom/transsion/camera/app/ui/AbstractSettingFragment;->getEnterAnimation(Landroid/content/Context;)I

    move-result v4

    iget-object v5, p0, Lcom/transsion/camera/app/ui/manager/RemoteCaptureManager;->mRemoteCaptureFragment:Lcom/transsion/camera/app/ui/RemoteCaptureFragment;

    .line 88
    invoke-virtual {v5, p2}, Lcom/transsion/camera/app/ui/AbstractSettingFragment;->getExitAnimation(Landroid/content/Context;)I

    move-result p2

    .line 85
    invoke-virtual {p1, v0, v3, v4, p2}, Landroid/app/FragmentTransaction;->setCustomAnimations(IIII)Landroid/app/FragmentTransaction;

    move-result-object p1

    iget p2, p0, Lcom/transsion/camera/app/ui/manager/RemoteCaptureManager;->mRootLayoutId:I

    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/RemoteCaptureManager;->mRemoteCaptureFragment:Lcom/transsion/camera/app/ui/RemoteCaptureFragment;

    .line 89
    invoke-virtual {p1, p2, v0, v2}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object p1

    .line 90
    invoke-virtual {p1, v1}, Landroid/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object p1

    .line 91
    invoke-virtual {p1}, Landroid/app/FragmentTransaction;->commit()I

    goto :goto_ef

    .line 93
    :cond_be
    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/RemoteCaptureManager;->mFragmentManager:Landroid/app/FragmentManager;

    invoke-virtual {p1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object p1

    iget-object p2, p0, Lcom/transsion/camera/app/ui/manager/RemoteCaptureManager;->mRemoteCaptureFragment:Lcom/transsion/camera/app/ui/RemoteCaptureFragment;

    .line 94
    invoke-virtual {p2}, Lcom/transsion/camera/app/ui/AbstractSettingFragment;->getChildInAnim()I

    move-result p2

    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/RemoteCaptureManager;->mRemoteCaptureFragment:Lcom/transsion/camera/app/ui/RemoteCaptureFragment;

    .line 95
    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/AbstractSettingFragment;->getParentOutAnim()I

    move-result v0

    iget-object v3, p0, Lcom/transsion/camera/app/ui/manager/RemoteCaptureManager;->mRemoteCaptureFragment:Lcom/transsion/camera/app/ui/RemoteCaptureFragment;

    .line 96
    invoke-virtual {v3}, Lcom/transsion/camera/app/ui/AbstractSettingFragment;->getParentInAnim()I

    move-result v3

    iget-object v4, p0, Lcom/transsion/camera/app/ui/manager/RemoteCaptureManager;->mRemoteCaptureFragment:Lcom/transsion/camera/app/ui/RemoteCaptureFragment;

    .line 97
    invoke-virtual {v4}, Lcom/transsion/camera/app/ui/AbstractSettingFragment;->getChildOutAnim()I

    move-result v4

    .line 94
    invoke-virtual {p1, p2, v0, v3, v4}, Landroid/app/FragmentTransaction;->setCustomAnimations(IIII)Landroid/app/FragmentTransaction;

    move-result-object p1

    iget p2, p0, Lcom/transsion/camera/app/ui/manager/RemoteCaptureManager;->mRootLayoutId:I

    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/RemoteCaptureManager;->mRemoteCaptureFragment:Lcom/transsion/camera/app/ui/RemoteCaptureFragment;

    .line 98
    invoke-virtual {p1, p2, v0, v2}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object p1

    .line 99
    invoke-virtual {p1, v1}, Landroid/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object p1

    .line 100
    invoke-virtual {p1}, Landroid/app/FragmentTransaction;->commit()I

    .line 102
    :goto_ef
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/RemoteCaptureManager;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {p0}, Lcom/transsion/camera/app/common/IAppUI;->enterRemoteCaptureFragment()V

    return-void
.end method

.method public exitRemoteCaptureFragment()V
    .registers 3

    .line 126
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

    .line 165
    :cond_5
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/manager/RemoteCaptureManager;->unInit()V

    return-void
.end method

.method public onAnimationEnd()V
    .registers 5

    .line 185
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/RemoteCaptureManager;->mFragmentManager:Landroid/app/FragmentManager;

    invoke-virtual {v0}, Landroid/app/FragmentManager;->getFragments()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 186
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

    .line 187
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/RemoteCaptureManager;->mRemoteCaptureFragment:Lcom/transsion/camera/app/ui/RemoteCaptureFragment;

    if-nez v0, :cond_27

    goto :goto_63

    .line 192
    :cond_27
    invoke-virtual {v0}, Landroid/app/Fragment;->isVisible()Z

    move-result v0

    const-string v1, "remote_capture_fragment"

    if-eqz v0, :cond_35

    .line 193
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/RemoteCaptureManager;->mFragmentManager:Landroid/app/FragmentManager;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/app/FragmentManager;->popBackStack(Ljava/lang/String;I)V

    .line 198
    :cond_35
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/RemoteCaptureManager;->mRemoteCaptureFragment:Lcom/transsion/camera/app/ui/RemoteCaptureFragment;

    invoke-virtual {v0}, Landroid/app/Fragment;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_63

    .line 199
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/RemoteCaptureManager;->mFragmentManager:Landroid/app/FragmentManager;

    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    .line 200
    iget-object v2, p0, Lcom/transsion/camera/app/ui/manager/RemoteCaptureManager;->mRemoteCaptureFragment:Lcom/transsion/camera/app/ui/RemoteCaptureFragment;

    iget-object v3, p0, Lcom/transsion/camera/app/ui/manager/RemoteCaptureManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v3}, Lcom/transsion/camera/app/ui/AbstractSettingFragment;->getExitAnimation(Landroid/content/Context;)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_52

    const/4 v3, 0x0

    .line 202
    invoke-virtual {v0, v3, v2, v3, v2}, Landroid/app/FragmentTransaction;->setCustomAnimations(IIII)Landroid/app/FragmentTransaction;

    .line 204
    :cond_52
    iget v2, p0, Lcom/transsion/camera/app/ui/manager/RemoteCaptureManager;->mRootLayoutId:I

    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/RemoteCaptureManager;->mRemoteCaptureFragment:Lcom/transsion/camera/app/ui/RemoteCaptureFragment;

    const-string v3, "remote_capture"

    invoke-virtual {v0, v2, p0, v3}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object p0

    .line 205
    invoke-virtual {p0, v1}, Landroid/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object p0

    .line 206
    invoke-virtual {p0}, Landroid/app/FragmentTransaction;->commit()I

    :cond_63
    :goto_63
    return-void
.end method

.method public onOrientationChanged(I)V
    .registers 2

    .line 178
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/RemoteCaptureManager;->mRemoteCaptureFragment:Lcom/transsion/camera/app/ui/RemoteCaptureFragment;

    if-eqz p0, :cond_7

    .line 179
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/AbstractSettingFragment;->onOrientationChanged(I)V

    :cond_7
    return-void
.end method

.method public setRTLDirection(Z)V
    .registers 2

    .line 132
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/RemoteCaptureManager;->mRemoteCaptureFragment:Lcom/transsion/camera/app/ui/RemoteCaptureFragment;

    if-eqz p0, :cond_7

    .line 133
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/AbstractSettingFragment;->setRTLDirection(Z)V

    :cond_7
    return-void
.end method

.method public setSettingFragmentManager(Lcom/transsion/camera/app/ui/manager/SettingFragmentManager;)V
    .registers 2

    .line 151
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/RemoteCaptureManager;->mRemoteCaptureFragment:Lcom/transsion/camera/app/ui/RemoteCaptureFragment;

    if-eqz p0, :cond_7

    .line 152
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/RemoteCaptureFragment;->setSettingFragmentManager(Lcom/transsion/camera/app/ui/manager/SettingFragmentManager;)V

    :cond_7
    return-void
.end method

.method public setSettingMonitor(Lcom/transsion/camera/app/common/setting/StatusMonitor;)V
    .registers 2

    .line 138
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/RemoteCaptureManager;->mRemoteCaptureFragment:Lcom/transsion/camera/app/ui/RemoteCaptureFragment;

    if-eqz p0, :cond_7

    .line 139
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/RemoteCaptureFragment;->setSettingMonitor(Lcom/transsion/camera/app/common/setting/StatusMonitor;)V

    :cond_7
    return-void
.end method

.method public setStateListener(Lcom/transsion/camera/app/common/IAppUIListener$IFragmentStateListener;)V
    .registers 2

    .line 157
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/RemoteCaptureManager;->mRemoteCaptureFragment:Lcom/transsion/camera/app/ui/RemoteCaptureFragment;

    if-eqz p0, :cond_7

    .line 158
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/RemoteCaptureFragment;->setStateListener(Lcom/transsion/camera/app/common/IAppUIListener$IFragmentStateListener;)V

    :cond_7
    return-void
.end method

.method public unInit()V
    .registers 3

    .line 211
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/RemoteCaptureManager;->mRemoteCaptureFragment:Lcom/transsion/camera/app/ui/RemoteCaptureFragment;

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    .line 212
    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/RemoteCaptureFragment;->unInit()V

    .line 213
    iput-object v1, p0, Lcom/transsion/camera/app/ui/manager/RemoteCaptureManager;->mRemoteCaptureFragment:Lcom/transsion/camera/app/ui/RemoteCaptureFragment;

    .line 215
    :cond_a
    invoke-virtual {p0, v1}, Lcom/transsion/camera/app/ui/manager/RemoteCaptureManager;->setStateListener(Lcom/transsion/camera/app/common/IAppUIListener$IFragmentStateListener;)V

    return-void
.end method
