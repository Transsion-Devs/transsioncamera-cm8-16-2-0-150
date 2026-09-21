.class public Lcom/transsion/camera/app/ReviewCameraActivity;
.super Lcom/transsion/camera/app/PermissionActivity;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/app/common/IReviewCameraActivityCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/app/ReviewCameraActivity$FragmentFactory;
    }
.end annotation


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private mFragment:Lcom/transsion/camera/app/common/ui/AbstractReviewFragment;

.field private mFragmentType:Ljava/lang/String;

.field private mScreenBrightnessManager:Lcom/transsion/camera/manager/ScreenBrightnessManager;

.field private mScreenManager:Lcom/transsion/camera/app/ui/ScreenManager;

.field private mScreenOffReceiver:Landroid/content/BroadcastReceiver;

.field private mSecureCamera:Z


# direct methods
.method static bridge synthetic -$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;
    .registers 1

    .line 0
    sget-object v0, Lcom/transsion/camera/app/ReviewCameraActivity;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 50
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "ReviewCameraActivity"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/app/ReviewCameraActivity;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 48
    invoke-direct {p0}, Lcom/transsion/camera/app/PermissionActivity;-><init>()V

    const/4 v0, 0x0

    .line 55
    iput-boolean v0, p0, Lcom/transsion/camera/app/ReviewCameraActivity;->mSecureCamera:Z

    const/4 v0, 0x0

    .line 59
    iput-object v0, p0, Lcom/transsion/camera/app/ReviewCameraActivity;->mFragment:Lcom/transsion/camera/app/common/ui/AbstractReviewFragment;

    .line 208
    new-instance v0, Lcom/transsion/camera/app/ReviewCameraActivity$1;

    invoke-direct {v0, p0}, Lcom/transsion/camera/app/ReviewCameraActivity$1;-><init>(Lcom/transsion/camera/app/ReviewCameraActivity;)V

    iput-object v0, p0, Lcom/transsion/camera/app/ReviewCameraActivity;->mScreenOffReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method private updateWindow()V
    .registers 3

    const/4 v0, 0x1

    .line 111
    invoke-virtual {p0, v0}, Landroid/app/Activity;->requestWindowFeature(I)Z

    .line 113
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    .line 114
    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x200

    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 115
    invoke-virtual {p0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    const/4 v1, 0x3

    .line 116
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    .line 117
    invoke-virtual {p0, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    return-void
.end method


# virtual methods
.method public getScreenType()I
    .registers 1

    .line 177
    iget-object p0, p0, Lcom/transsion/camera/app/ReviewCameraActivity;->mScreenManager:Lcom/transsion/camera/app/ui/ScreenManager;

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/ScreenManager;->getScreenFormType()I

    move-result p0

    return p0
.end method

.method public getToolBarOriginPaddingHeight()I
    .registers 1

    .line 187
    iget-object p0, p0, Lcom/transsion/camera/app/ReviewCameraActivity;->mScreenManager:Lcom/transsion/camera/app/ui/ScreenManager;

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/ScreenManager;->getToolBarOriginPaddingHeight()I

    move-result p0

    return p0
.end method

.method public onBackPressed()V
    .registers 4

    .line 198
    iget-object v0, p0, Lcom/transsion/camera/app/ReviewCameraActivity;->mFragment:Lcom/transsion/camera/app/common/ui/AbstractReviewFragment;

    if-eqz v0, :cond_15

    .line 199
    invoke-virtual {v0}, Lcom/transsion/camera/app/common/ui/AbstractReviewFragment;->onBackPressed()Z

    move-result v0

    if-eqz v0, :cond_b

    return-void

    .line 202
    :cond_b
    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    const-string v1, "review_fragment"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/app/FragmentManager;->popBackStackImmediate(Ljava/lang/String;I)Z

    .line 205
    :cond_15
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 4

    .line 192
    iget-object v0, p0, Lcom/transsion/camera/app/ReviewCameraActivity;->mScreenManager:Lcom/transsion/camera/app/ui/ScreenManager;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1, v1}, Lcom/transsion/camera/app/ui/ScreenManager;->updateScreenFormType(Landroid/content/Context;IZ)Z

    .line 193
    invoke-super {p0, p1}, Lcom/transsion/camera/app/QuickActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method protected onCreateTasks(Landroid/os/Bundle;)V
    .registers 7

    .line 64
    invoke-direct {p0}, Lcom/transsion/camera/app/ReviewCameraActivity;->updateWindow()V

    .line 65
    new-instance v0, Lcom/transsion/camera/app/ui/ScreenManager;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/transsion/camera/app/ui/ScreenManager;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/transsion/camera/app/ReviewCameraActivity;->mScreenManager:Lcom/transsion/camera/app/ui/ScreenManager;

    .line 67
    sget v0, Lcom/transsion/camera/R$layout;->camerafragment_layout:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setContentView(I)V

    .line 69
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-nez p1, :cond_1c

    .line 72
    invoke-static {v0}, Lcom/transsion/camera/app/ReviewCameraActivity$FragmentFactory;->-$$Nest$smcreate(Landroid/content/Intent;)Lcom/transsion/camera/app/common/ui/AbstractReviewFragment;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/app/ReviewCameraActivity;->mFragment:Lcom/transsion/camera/app/common/ui/AbstractReviewFragment;

    .line 75
    :cond_1c
    iget-object p1, p0, Lcom/transsion/camera/app/ReviewCameraActivity;->mFragment:Lcom/transsion/camera/app/common/ui/AbstractReviewFragment;

    if-nez p1, :cond_24

    .line 76
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void

    :cond_24
    const/4 p1, 0x0

    .line 80
    const-string v2, "isSecureCamera"

    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/transsion/camera/app/ReviewCameraActivity;->mSecureCamera:Z

    .line 81
    const-string p1, "review_fragment"

    invoke-virtual {v0, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/transsion/camera/app/ReviewCameraActivity;->mFragmentType:Ljava/lang/String;

    .line 82
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 83
    iget-boolean v4, p0, Lcom/transsion/camera/app/ReviewCameraActivity;->mSecureCamera:Z

    invoke-virtual {v3, v2, v4}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 84
    const-string v2, "ai_feature"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v2, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    iget-object v0, p0, Lcom/transsion/camera/app/ReviewCameraActivity;->mFragment:Lcom/transsion/camera/app/common/ui/AbstractReviewFragment;

    invoke-virtual {v0, v3}, Landroid/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 87
    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    .line 88
    iget-object v2, p0, Lcom/transsion/camera/app/ReviewCameraActivity;->mFragment:Lcom/transsion/camera/app/common/ui/AbstractReviewFragment;

    invoke-virtual {v2}, Landroid/app/Fragment;->isAdded()Z

    move-result v2

    if-eqz v2, :cond_63

    .line 89
    iget-object v2, p0, Lcom/transsion/camera/app/ReviewCameraActivity;->mFragment:Lcom/transsion/camera/app/common/ui/AbstractReviewFragment;

    invoke-virtual {v0, v2}, Landroid/app/FragmentTransaction;->show(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    goto :goto_6c

    .line 91
    :cond_63
    sget v2, Lcom/transsion/camera/R$id;->camera_fragment_root:I

    iget-object v3, p0, Lcom/transsion/camera/app/ReviewCameraActivity;->mFragment:Lcom/transsion/camera/app/common/ui/AbstractReviewFragment;

    const-string v4, "ReviewVideo"

    invoke-virtual {v0, v2, v3, v4}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    .line 93
    :goto_6c
    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/FragmentManager;->getFragments()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_78
    :goto_78
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_92

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/Fragment;

    .line 94
    iget-object v4, p0, Lcom/transsion/camera/app/ReviewCameraActivity;->mFragment:Lcom/transsion/camera/app/common/ui/AbstractReviewFragment;

    if-eq v3, v4, :cond_78

    invoke-virtual {v3}, Landroid/app/Fragment;->isVisible()Z

    move-result v4

    if-eqz v4, :cond_78

    .line 95
    invoke-virtual {v0, v3}, Landroid/app/FragmentTransaction;->hide(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    goto :goto_78

    .line 98
    :cond_92
    invoke-virtual {v0, p1}, Landroid/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/app/FragmentTransaction;

    .line 99
    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commit()I

    .line 101
    iget-boolean p1, p0, Lcom/transsion/camera/app/ReviewCameraActivity;->mSecureCamera:Z

    if-eqz p1, :cond_ac

    .line 102
    invoke-virtual {p0, v1}, Landroid/app/Activity;->setShowWhenLocked(Z)V

    .line 103
    new-instance p1, Landroid/content/IntentFilter;

    const-string v0, "android.intent.action.SCREEN_OFF"

    invoke-direct {p1, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 104
    iget-object v0, p0, Lcom/transsion/camera/app/ReviewCameraActivity;->mScreenOffReceiver:Landroid/content/BroadcastReceiver;

    const/4 v1, 0x2

    invoke-virtual {p0, v0, p1, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    .line 106
    :cond_ac
    new-instance p1, Lcom/transsion/camera/manager/ScreenBrightnessManager;

    invoke-direct {p1, p0}, Lcom/transsion/camera/manager/ScreenBrightnessManager;-><init>(Landroid/app/Activity;)V

    iput-object p1, p0, Lcom/transsion/camera/app/ReviewCameraActivity;->mScreenBrightnessManager:Lcom/transsion/camera/manager/ScreenBrightnessManager;

    .line 107
    invoke-virtual {p1}, Lcom/transsion/camera/manager/ScreenBrightnessManager;->init()V

    return-void
.end method

.method protected onDestroyTasks()V
    .registers 2

    .line 159
    iget-boolean v0, p0, Lcom/transsion/camera/app/ReviewCameraActivity;->mSecureCamera:Z

    if-eqz v0, :cond_9

    .line 160
    iget-object v0, p0, Lcom/transsion/camera/app/ReviewCameraActivity;->mScreenOffReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 162
    :cond_9
    iget-object p0, p0, Lcom/transsion/camera/app/ReviewCameraActivity;->mScreenBrightnessManager:Lcom/transsion/camera/manager/ScreenBrightnessManager;

    if-eqz p0, :cond_10

    .line 163
    invoke-virtual {p0}, Lcom/transsion/camera/manager/ScreenBrightnessManager;->unInit()V

    :cond_10
    return-void
.end method

.method protected onPauseTasks()V
    .registers 1

    .line 138
    invoke-super {p0}, Lcom/transsion/camera/app/PermissionActivity;->onPauseTasks()V

    .line 139
    iget-object p0, p0, Lcom/transsion/camera/app/ReviewCameraActivity;->mScreenBrightnessManager:Lcom/transsion/camera/manager/ScreenBrightnessManager;

    if-eqz p0, :cond_a

    .line 140
    invoke-virtual {p0}, Lcom/transsion/camera/manager/ScreenBrightnessManager;->pause()V

    :cond_a
    return-void
.end method

.method protected onRestartTasks()V
    .registers 3

    .line 154
    invoke-super {p0}, Lcom/transsion/camera/app/PermissionActivity;->onRestartTasks()V

    .line 155
    iget-object v0, p0, Lcom/transsion/camera/app/ReviewCameraActivity;->mScreenManager:Lcom/transsion/camera/app/ui/ScreenManager;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1, v1}, Lcom/transsion/camera/app/ui/ScreenManager;->updateScreenFormType(Landroid/content/Context;IZ)Z

    return-void
.end method

.method protected onResumeTasks()V
    .registers 1

    .line 130
    invoke-super {p0}, Lcom/transsion/camera/app/PermissionActivity;->onResumeTasks()V

    .line 131
    iget-object p0, p0, Lcom/transsion/camera/app/ReviewCameraActivity;->mScreenBrightnessManager:Lcom/transsion/camera/manager/ScreenBrightnessManager;

    if-eqz p0, :cond_a

    .line 132
    invoke-virtual {p0}, Lcom/transsion/camera/manager/ScreenBrightnessManager;->resume()V

    :cond_a
    return-void
.end method

.method protected onStartTasks()V
    .registers 1

    .line 122
    invoke-super {p0}, Lcom/transsion/camera/app/PermissionActivity;->onStartTasks()V

    .line 123
    iget-object p0, p0, Lcom/transsion/camera/app/ReviewCameraActivity;->mScreenBrightnessManager:Lcom/transsion/camera/manager/ScreenBrightnessManager;

    if-eqz p0, :cond_a

    .line 124
    invoke-virtual {p0}, Lcom/transsion/camera/manager/ScreenBrightnessManager;->start()V

    :cond_a
    return-void
.end method

.method protected onStopTasks()V
    .registers 3

    .line 146
    sget-object v0, Lcom/transsion/camera/app/ReviewCameraActivity;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "onStopTasks"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 147
    iget-object p0, p0, Lcom/transsion/camera/app/ReviewCameraActivity;->mScreenBrightnessManager:Lcom/transsion/camera/manager/ScreenBrightnessManager;

    if-eqz p0, :cond_e

    .line 148
    invoke-virtual {p0}, Lcom/transsion/camera/manager/ScreenBrightnessManager;->stop()V

    :cond_e
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .registers 3

    .line 169
    invoke-super {p0, p1}, Lcom/transsion/camera/app/QuickActivity;->onWindowFocusChanged(Z)V

    if-eqz p1, :cond_14

    .line 170
    const-string p1, "fun_video"

    iget-object v0, p0, Lcom/transsion/camera/app/ReviewCameraActivity;->mFragmentType:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_14

    .line 171
    iget-object p0, p0, Lcom/transsion/camera/app/ReviewCameraActivity;->mFragment:Lcom/transsion/camera/app/common/ui/AbstractReviewFragment;

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/ui/AbstractReviewFragment;->startAnimation()V

    :cond_14
    return-void
.end method
