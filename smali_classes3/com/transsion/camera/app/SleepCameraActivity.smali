.class public Lcom/transsion/camera/app/SleepCameraActivity;
.super Lcom/transsion/camera/app/PermissionActivity;
.source "SourceFile"


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field protected mFoldFlipSleepActivityProxy:Lcom/transsion/camera/interfaces/fold_flip/IFoldFlipSleepActivityProxy;

.field private mLastTime:J

.field private final mScreenOffReceiver:Landroid/content/BroadcastReceiver;

.field private mSecureCamera:Z


# direct methods
.method public static synthetic $r8$lambda$_iALkEHx8BGDYmc-BB3hJM5nAuw(Lcom/transsion/camera/app/SleepCameraActivity;Landroid/view/View;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/SleepCameraActivity;->lambda$onCreateTasks$0(Landroid/view/View;)V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 32
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "SleepCameraActivity"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/app/SleepCameraActivity;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .line 30
    invoke-direct {p0}, Lcom/transsion/camera/app/PermissionActivity;-><init>()V

    const-wide/16 v0, 0x0

    .line 36
    iput-wide v0, p0, Lcom/transsion/camera/app/SleepCameraActivity;->mLastTime:J

    const/4 v0, 0x0

    .line 38
    iput-boolean v0, p0, Lcom/transsion/camera/app/SleepCameraActivity;->mSecureCamera:Z

    .line 132
    new-instance v0, Lcom/transsion/camera/app/SleepCameraActivity$1;

    invoke-direct {v0, p0}, Lcom/transsion/camera/app/SleepCameraActivity$1;-><init>(Lcom/transsion/camera/app/SleepCameraActivity;)V

    iput-object v0, p0, Lcom/transsion/camera/app/SleepCameraActivity;->mScreenOffReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method private getFoldFlipSleepActivityProxy()Lcom/transsion/camera/interfaces/fold_flip/IFoldFlipSleepActivityProxy;
    .registers 3

    .line 164
    invoke-static {}, Lcom/transsion/camera/utils/FeatureSupport;->isSupportFoldUI()Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 165
    iget-object v0, p0, Lcom/transsion/camera/app/SleepCameraActivity;->mFoldFlipSleepActivityProxy:Lcom/transsion/camera/interfaces/fold_flip/IFoldFlipSleepActivityProxy;

    if-nez v0, :cond_17

    const/4 v0, 0x0

    .line 167
    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "com.transsion.camera.app.FoldFlipSleepActivityProxyImpl"

    invoke-static {v1, v0}, Lcom/transsion/camera/utils/ReflectionUtils;->instance(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/camera/interfaces/fold_flip/IFoldFlipSleepActivityProxy;

    iput-object v0, p0, Lcom/transsion/camera/app/SleepCameraActivity;->mFoldFlipSleepActivityProxy:Lcom/transsion/camera/interfaces/fold_flip/IFoldFlipSleepActivityProxy;

    .line 169
    :cond_17
    iget-object p0, p0, Lcom/transsion/camera/app/SleepCameraActivity;->mFoldFlipSleepActivityProxy:Lcom/transsion/camera/interfaces/fold_flip/IFoldFlipSleepActivityProxy;

    return-object p0

    :cond_1a
    const/4 p0, 0x0

    return-object p0
.end method

.method private initWindowAttributes()V
    .registers 3

    .line 95
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    const/4 v1, 0x3

    .line 97
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    .line 101
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    .line 102
    invoke-virtual {p0, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    const/4 v0, 0x0

    .line 103
    invoke-virtual {p0, v0}, Landroid/view/Window;->setDecorFitsSystemWindows(Z)V

    return-void
.end method

.method private synthetic lambda$onCreateTasks$0(Landroid/view/View;)V
    .registers 6

    .line 72
    sget-object p1, Lcom/transsion/camera/app/SleepCameraActivity;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "onClick"

    invoke-static {p1, v0}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 73
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 74
    iget-wide v2, p0, Lcom/transsion/camera/app/SleepCameraActivity;->mLastTime:J

    sub-long v2, v0, v2

    .line 76
    iput-wide v0, p0, Lcom/transsion/camera/app/SleepCameraActivity;->mLastTime:J

    const-wide/16 v0, 0x0

    cmp-long p1, v2, v0

    if-lez p1, :cond_20

    const-wide/16 v0, 0x1f4

    cmp-long v0, v2, v0

    if-gez v0, :cond_20

    .line 79
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 82
    :cond_20
    invoke-virtual {p0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/transsion/camera/utils/CameraUtil;->isTalkBackEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2f

    if-lez p1, :cond_2f

    .line 84
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_2f
    return-void
.end method


# virtual methods
.method protected onCreateTasks(Landroid/os/Bundle;)V
    .registers 4

    .line 43
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "caller"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 44
    const-string v0, "camera"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1a

    .line 45
    sget-object p0, Lcom/transsion/camera/app/SleepCameraActivity;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "not called by camera, return."

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 49
    :cond_1a
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "isSecureCamera"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/transsion/camera/app/SleepCameraActivity;->mSecureCamera:Z

    if-eqz p1, :cond_3a

    const/4 p1, 0x1

    .line 51
    invoke-virtual {p0, p1}, Landroid/app/Activity;->setShowWhenLocked(Z)V

    .line 52
    new-instance p1, Landroid/content/IntentFilter;

    const-string v0, "android.intent.action.SCREEN_OFF"

    invoke-direct {p1, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 53
    iget-object v0, p0, Lcom/transsion/camera/app/SleepCameraActivity;->mScreenOffReceiver:Landroid/content/BroadcastReceiver;

    const/4 v1, 0x2

    invoke-virtual {p0, v0, p1, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    .line 56
    :cond_3a
    invoke-direct {p0}, Lcom/transsion/camera/app/SleepCameraActivity;->initWindowAttributes()V

    .line 58
    invoke-direct {p0}, Lcom/transsion/camera/app/SleepCameraActivity;->getFoldFlipSleepActivityProxy()Lcom/transsion/camera/interfaces/fold_flip/IFoldFlipSleepActivityProxy;

    move-result-object p1

    if-eqz p1, :cond_4e

    .line 60
    invoke-interface {p1, p0}, Lcom/transsion/camera/interfaces/fold_flip/IFoldFlipSleepActivityProxy;->onCreateTask(Landroid/app/Activity;)V

    .line 61
    invoke-interface {p1}, Lcom/transsion/camera/interfaces/fold_flip/IFoldFlipSleepActivityProxy;->getContentView()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setContentView(I)V

    goto :goto_53

    .line 63
    :cond_4e
    sget v0, Lcom/transsion/camera/R$layout;->sleep_camera_layout:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setContentView(I)V

    :goto_53
    if-eqz p1, :cond_58

    .line 67
    invoke-interface {p1, p0}, Lcom/transsion/camera/interfaces/fold_flip/IFoldFlipSleepActivityProxy;->initOrientation(Landroid/app/Activity;)V

    .line 70
    :cond_58
    sget v0, Lcom/transsion/camera/R$id;->sleep_camera_root:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 71
    new-instance v1, Lcom/transsion/camera/app/SleepCameraActivity$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/transsion/camera/app/SleepCameraActivity$$ExternalSyntheticLambda0;-><init>(Lcom/transsion/camera/app/SleepCameraActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    if-eqz p1, :cond_6b

    .line 90
    invoke-interface {p1, p0}, Lcom/transsion/camera/interfaces/fold_flip/IFoldFlipSleepActivityProxy;->updateFlipLayout(Landroid/app/Activity;)V

    :cond_6b
    return-void
.end method

.method protected onDestroyTasks()V
    .registers 3

    const-wide/16 v0, 0x0

    .line 126
    iput-wide v0, p0, Lcom/transsion/camera/app/SleepCameraActivity;->mLastTime:J

    .line 127
    iget-boolean v0, p0, Lcom/transsion/camera/app/SleepCameraActivity;->mSecureCamera:Z

    if-eqz v0, :cond_d

    .line 128
    iget-object v0, p0, Lcom/transsion/camera/app/SleepCameraActivity;->mScreenOffReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_d
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 4

    const/16 v0, 0x18

    if-eq p1, v0, :cond_d

    const/16 v0, 0x19

    if-eq p1, v0, :cond_d

    .line 148
    invoke-super {p0, p1, p2}, Lcom/transsion/camera/app/QuickActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0

    :cond_d
    const/4 p0, 0x1

    return p0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .registers 4

    const/16 v0, 0x18

    if-eq p1, v0, :cond_d

    const/16 v0, 0x19

    if-eq p1, v0, :cond_d

    .line 160
    invoke-super {p0, p1, p2}, Lcom/transsion/camera/app/QuickActivity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0

    :cond_d
    const/4 p0, 0x1

    return p0
.end method

.method protected onStartTasks()V
    .registers 2

    .line 108
    invoke-super {p0}, Lcom/transsion/camera/app/PermissionActivity;->onStartTasks()V

    .line 109
    invoke-direct {p0}, Lcom/transsion/camera/app/SleepCameraActivity;->getFoldFlipSleepActivityProxy()Lcom/transsion/camera/interfaces/fold_flip/IFoldFlipSleepActivityProxy;

    move-result-object v0

    if-eqz v0, :cond_c

    .line 111
    invoke-interface {v0, p0}, Lcom/transsion/camera/interfaces/fold_flip/IFoldFlipSleepActivityProxy;->onStartTasks(Landroid/app/Activity;)V

    :cond_c
    return-void
.end method

.method protected onStopTasks()V
    .registers 3

    .line 117
    sget-object v0, Lcom/transsion/camera/app/SleepCameraActivity;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "onStopTasks"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 118
    invoke-direct {p0}, Lcom/transsion/camera/app/SleepCameraActivity;->getFoldFlipSleepActivityProxy()Lcom/transsion/camera/interfaces/fold_flip/IFoldFlipSleepActivityProxy;

    move-result-object v0

    if-eqz v0, :cond_10

    .line 120
    invoke-interface {v0, p0}, Lcom/transsion/camera/interfaces/fold_flip/IFoldFlipSleepActivityProxy;->onStopTasks(Landroid/app/Activity;)V

    .line 122
    :cond_10
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method
