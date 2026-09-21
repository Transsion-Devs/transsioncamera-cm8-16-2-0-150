.class public Lcom/transsion/camera/app/PortraitReviewActivity;
.super Lcom/transsion/camera/app/PermissionActivity;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/app/common/IReviewCameraActivityCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/app/PortraitReviewActivity$FragmentFactory;
    }
.end annotation


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private mFragment:Lcom/transsion/camera/app/common/ui/AbstractReviewFragment;

.field private mScreenBrightnessManager:Lcom/transsion/camera/manager/ScreenBrightnessManager;

.field private mScreenManager:Lcom/transsion/camera/app/ui/ScreenManager;

.field private mScreenOffReceiver:Landroid/content/BroadcastReceiver;

.field private mSecureCamera:Z


# direct methods
.method public static synthetic $r8$lambda$7Z3QlEuuMRBjdkGdI6C0wQYiZRo(Lcom/transsion/camera/app/PortraitReviewActivity;)Lcom/transsion/camera/app/ui/ScreenManager;
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/app/PortraitReviewActivity;->lambda$onCreateTasks$0()Lcom/transsion/camera/app/ui/ScreenManager;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;
    .registers 1

    .line 0
    sget-object v0, Lcom/transsion/camera/app/PortraitReviewActivity;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 36
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "PortraitReviewActivity"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/app/PortraitReviewActivity;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 34
    invoke-direct {p0}, Lcom/transsion/camera/app/PermissionActivity;-><init>()V

    const/4 v0, 0x0

    .line 41
    iput-boolean v0, p0, Lcom/transsion/camera/app/PortraitReviewActivity;->mSecureCamera:Z

    const/4 v0, 0x0

    .line 43
    iput-object v0, p0, Lcom/transsion/camera/app/PortraitReviewActivity;->mFragment:Lcom/transsion/camera/app/common/ui/AbstractReviewFragment;

    .line 209
    new-instance v0, Lcom/transsion/camera/app/PortraitReviewActivity$1;

    invoke-direct {v0, p0}, Lcom/transsion/camera/app/PortraitReviewActivity$1;-><init>(Lcom/transsion/camera/app/PortraitReviewActivity;)V

    iput-object v0, p0, Lcom/transsion/camera/app/PortraitReviewActivity;->mScreenOffReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method private synthetic lambda$onCreateTasks$0()Lcom/transsion/camera/app/ui/ScreenManager;
    .registers 3

    .line 51
    new-instance v0, Lcom/transsion/camera/app/ui/ScreenManager;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/transsion/camera/app/ui/ScreenManager;-><init>(Landroid/content/Context;I)V

    return-object v0
.end method

.method private updateWindow()V
    .registers 3

    const/4 v0, 0x1

    .line 84
    invoke-virtual {p0, v0}, Landroid/app/Activity;->requestWindowFeature(I)Z

    .line 86
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    .line 87
    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x200

    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 88
    invoke-virtual {p0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    const/4 v1, 0x3

    .line 89
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    .line 90
    invoke-virtual {p0, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    return-void
.end method


# virtual methods
.method public getBottomBarHeight()I
    .registers 1

    .line 165
    iget-object p0, p0, Lcom/transsion/camera/app/PortraitReviewActivity;->mScreenManager:Lcom/transsion/camera/app/ui/ScreenManager;

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/ScreenManager;->getBottomHeight()I

    move-result p0

    return p0
.end method

.method public getNavigationBarHeight()I
    .registers 1

    .line 170
    iget-object p0, p0, Lcom/transsion/camera/app/PortraitReviewActivity;->mScreenManager:Lcom/transsion/camera/app/ui/ScreenManager;

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/ScreenManager;->getNavigationHeight()I

    move-result p0

    return p0
.end method

.method public getScreenType()I
    .registers 1

    .line 140
    iget-object p0, p0, Lcom/transsion/camera/app/PortraitReviewActivity;->mScreenManager:Lcom/transsion/camera/app/ui/ScreenManager;

    if-nez p0, :cond_6

    const/4 p0, 0x0

    return p0

    .line 143
    :cond_6
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/ScreenManager;->getScreenFormType()I

    move-result p0

    return p0
.end method

.method public getShutterButtonHeight()I
    .registers 1

    .line 180
    iget-object p0, p0, Lcom/transsion/camera/app/PortraitReviewActivity;->mScreenManager:Lcom/transsion/camera/app/ui/ScreenManager;

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/ScreenManager;->getShutterButtonHeight()I

    move-result p0

    return p0
.end method

.method public getShutterPanelPaddingHeight()I
    .registers 1

    .line 175
    iget-object p0, p0, Lcom/transsion/camera/app/PortraitReviewActivity;->mScreenManager:Lcom/transsion/camera/app/ui/ScreenManager;

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/ScreenManager;->getShutterPanelBasePaddingHeight()I

    move-result p0

    return p0
.end method

.method public getToolBarOriginPaddingHeight()I
    .registers 1

    .line 185
    iget-object p0, p0, Lcom/transsion/camera/app/PortraitReviewActivity;->mScreenManager:Lcom/transsion/camera/app/ui/ScreenManager;

    if-nez p0, :cond_6

    const/4 p0, 0x0

    return p0

    .line 188
    :cond_6
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/ScreenManager;->getToolBarOriginPaddingHeight()I

    move-result p0

    return p0
.end method

.method public getTopRegionHeight()I
    .registers 2

    .line 153
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v0

    iget-boolean v0, v0, Lcom/transsion/camera/utils/CustomConfigUtil;->mSupportUI5:Z

    if-eqz v0, :cond_f

    .line 154
    iget-object p0, p0, Lcom/transsion/camera/app/PortraitReviewActivity;->mScreenManager:Lcom/transsion/camera/app/ui/ScreenManager;

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/ScreenManager;->getOriginTopBarHeight()I

    move-result p0

    return p0

    .line 155
    :cond_f
    iget-object p0, p0, Lcom/transsion/camera/app/PortraitReviewActivity;->mScreenManager:Lcom/transsion/camera/app/ui/ScreenManager;

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/ScreenManager;->getTopBarHeight()I

    move-result p0

    return p0
.end method

.method public onBackPressed()V
    .registers 4

    .line 199
    iget-object v0, p0, Lcom/transsion/camera/app/PortraitReviewActivity;->mFragment:Lcom/transsion/camera/app/common/ui/AbstractReviewFragment;

    if-eqz v0, :cond_15

    .line 200
    invoke-virtual {v0}, Lcom/transsion/camera/app/common/ui/AbstractReviewFragment;->onBackPressed()Z

    move-result v0

    if-eqz v0, :cond_b

    return-void

    .line 203
    :cond_b
    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    const-string v1, "review_fragment"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/app/FragmentManager;->popBackStackImmediate(Ljava/lang/String;I)Z

    .line 206
    :cond_15
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 4

    .line 193
    iget-object v0, p0, Lcom/transsion/camera/app/PortraitReviewActivity;->mScreenManager:Lcom/transsion/camera/app/ui/ScreenManager;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1, v1}, Lcom/transsion/camera/app/ui/ScreenManager;->updateScreenFormType(Landroid/content/Context;IZ)Z

    .line 194
    invoke-super {p0, p1}, Lcom/transsion/camera/app/QuickActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method protected onCreateTasks(Landroid/os/Bundle;)V
    .registers 6

    .line 48
    invoke-direct {p0}, Lcom/transsion/camera/app/PortraitReviewActivity;->updateWindow()V

    .line 49
    new-instance p1, Lcom/transsion/camera/app/ui/widget/adapter/UIAdapter$Builder;

    invoke-direct {p1}, Lcom/transsion/camera/app/ui/widget/adapter/UIAdapter$Builder;-><init>()V

    sget-object v0, Lcom/transsion/camera/app/ui/widget/adapter/UIAdapter$Version;->UI5:Lcom/transsion/camera/app/ui/widget/adapter/UIAdapter$Version;

    const-string v1, "com.transsion.camera.app.ui.ScreenManager5"

    .line 50
    invoke-virtual {p1, v0, v1}, Lcom/transsion/camera/app/ui/widget/adapter/UIAdapter$Builder;->add(Lcom/transsion/camera/app/ui/widget/adapter/UIAdapter$Version;Ljava/lang/String;)Lcom/transsion/camera/app/ui/widget/adapter/UIAdapter$Builder;

    move-result-object p1

    new-instance v0, Lcom/transsion/camera/app/PortraitReviewActivity$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/transsion/camera/app/PortraitReviewActivity$$ExternalSyntheticLambda0;-><init>(Lcom/transsion/camera/app/PortraitReviewActivity;)V

    const/4 v1, 0x1

    .line 52
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {p0, v2}, [Ljava/lang/Object;

    move-result-object v2

    .line 51
    invoke-virtual {p1, v0, v2}, Lcom/transsion/camera/app/ui/widget/adapter/UIAdapter$Builder;->build(Ljava/util/function/Supplier;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/transsion/camera/app/ui/ScreenManager;

    iput-object p1, p0, Lcom/transsion/camera/app/PortraitReviewActivity;->mScreenManager:Lcom/transsion/camera/app/ui/ScreenManager;

    .line 54
    sget p1, Lcom/transsion/camera/R$layout;->camerafragment_layout:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->setContentView(I)V

    .line 56
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    .line 58
    invoke-static {p1}, Lcom/transsion/camera/app/PortraitReviewActivity$FragmentFactory;->-$$Nest$smcreate(Landroid/content/Intent;)Lcom/transsion/camera/app/common/ui/AbstractReviewFragment;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/app/PortraitReviewActivity;->mFragment:Lcom/transsion/camera/app/common/ui/AbstractReviewFragment;

    if-nez v0, :cond_3b

    .line 60
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void

    :cond_3b
    const/4 v0, 0x0

    .line 64
    const-string v2, "isSecureCamera"

    invoke-virtual {p1, v2, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/transsion/camera/app/PortraitReviewActivity;->mSecureCamera:Z

    .line 65
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 66
    iget-boolean v0, p0, Lcom/transsion/camera/app/PortraitReviewActivity;->mSecureCamera:Z

    invoke-virtual {p1, v2, v0}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 67
    iget-object v0, p0, Lcom/transsion/camera/app/PortraitReviewActivity;->mFragment:Lcom/transsion/camera/app/common/ui/AbstractReviewFragment;

    invoke-virtual {v0, p1}, Landroid/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 69
    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object p1

    .line 70
    const-string v0, "review_fragment"

    invoke-virtual {p1, v0}, Landroid/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/app/FragmentTransaction;

    .line 71
    sget v0, Lcom/transsion/camera/R$id;->camera_fragment_root:I

    iget-object v2, p0, Lcom/transsion/camera/app/PortraitReviewActivity;->mFragment:Lcom/transsion/camera/app/common/ui/AbstractReviewFragment;

    const-string v3, "ReviewVideo"

    invoke-virtual {p1, v0, v2, v3}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object p1

    .line 72
    invoke-virtual {p1}, Landroid/app/FragmentTransaction;->commit()I

    .line 74
    iget-boolean p1, p0, Lcom/transsion/camera/app/PortraitReviewActivity;->mSecureCamera:Z

    if-eqz p1, :cond_81

    .line 75
    invoke-virtual {p0, v1}, Landroid/app/Activity;->setShowWhenLocked(Z)V

    .line 76
    new-instance p1, Landroid/content/IntentFilter;

    const-string v0, "android.intent.action.SCREEN_OFF"

    invoke-direct {p1, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 77
    iget-object v0, p0, Lcom/transsion/camera/app/PortraitReviewActivity;->mScreenOffReceiver:Landroid/content/BroadcastReceiver;

    const/4 v1, 0x2

    invoke-virtual {p0, v0, p1, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    .line 79
    :cond_81
    new-instance p1, Lcom/transsion/camera/manager/ScreenBrightnessManager;

    invoke-direct {p1, p0}, Lcom/transsion/camera/manager/ScreenBrightnessManager;-><init>(Landroid/app/Activity;)V

    iput-object p1, p0, Lcom/transsion/camera/app/PortraitReviewActivity;->mScreenBrightnessManager:Lcom/transsion/camera/manager/ScreenBrightnessManager;

    .line 80
    invoke-virtual {p1}, Lcom/transsion/camera/manager/ScreenBrightnessManager;->init()V

    return-void
.end method

.method protected onDestroyTasks()V
    .registers 2

    .line 132
    iget-boolean v0, p0, Lcom/transsion/camera/app/PortraitReviewActivity;->mSecureCamera:Z

    if-eqz v0, :cond_9

    .line 133
    iget-object v0, p0, Lcom/transsion/camera/app/PortraitReviewActivity;->mScreenOffReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 135
    :cond_9
    iget-object p0, p0, Lcom/transsion/camera/app/PortraitReviewActivity;->mScreenBrightnessManager:Lcom/transsion/camera/manager/ScreenBrightnessManager;

    invoke-virtual {p0}, Lcom/transsion/camera/manager/ScreenBrightnessManager;->unInit()V

    return-void
.end method

.method protected onPauseTasks()V
    .registers 1

    .line 111
    invoke-super {p0}, Lcom/transsion/camera/app/PermissionActivity;->onPauseTasks()V

    .line 112
    iget-object p0, p0, Lcom/transsion/camera/app/PortraitReviewActivity;->mScreenBrightnessManager:Lcom/transsion/camera/manager/ScreenBrightnessManager;

    if-eqz p0, :cond_a

    .line 113
    invoke-virtual {p0}, Lcom/transsion/camera/manager/ScreenBrightnessManager;->pause()V

    :cond_a
    return-void
.end method

.method protected onRestartTasks()V
    .registers 3

    .line 127
    invoke-super {p0}, Lcom/transsion/camera/app/PermissionActivity;->onRestartTasks()V

    .line 128
    iget-object v0, p0, Lcom/transsion/camera/app/PortraitReviewActivity;->mScreenManager:Lcom/transsion/camera/app/ui/ScreenManager;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1, v1}, Lcom/transsion/camera/app/ui/ScreenManager;->updateScreenFormType(Landroid/content/Context;IZ)Z

    return-void
.end method

.method protected onResumeTasks()V
    .registers 1

    .line 103
    invoke-super {p0}, Lcom/transsion/camera/app/PermissionActivity;->onResumeTasks()V

    .line 104
    iget-object p0, p0, Lcom/transsion/camera/app/PortraitReviewActivity;->mScreenBrightnessManager:Lcom/transsion/camera/manager/ScreenBrightnessManager;

    if-eqz p0, :cond_a

    .line 105
    invoke-virtual {p0}, Lcom/transsion/camera/manager/ScreenBrightnessManager;->resume()V

    :cond_a
    return-void
.end method

.method protected onStartTasks()V
    .registers 1

    .line 95
    invoke-super {p0}, Lcom/transsion/camera/app/PermissionActivity;->onStartTasks()V

    .line 96
    iget-object p0, p0, Lcom/transsion/camera/app/PortraitReviewActivity;->mScreenBrightnessManager:Lcom/transsion/camera/manager/ScreenBrightnessManager;

    if-eqz p0, :cond_a

    .line 97
    invoke-virtual {p0}, Lcom/transsion/camera/manager/ScreenBrightnessManager;->start()V

    :cond_a
    return-void
.end method

.method protected onStopTasks()V
    .registers 3

    .line 119
    sget-object v0, Lcom/transsion/camera/app/PortraitReviewActivity;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "onStopTasks"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 120
    iget-object p0, p0, Lcom/transsion/camera/app/PortraitReviewActivity;->mScreenBrightnessManager:Lcom/transsion/camera/manager/ScreenBrightnessManager;

    if-eqz p0, :cond_e

    .line 121
    invoke-virtual {p0}, Lcom/transsion/camera/manager/ScreenBrightnessManager;->stop()V

    :cond_e
    return-void
.end method
