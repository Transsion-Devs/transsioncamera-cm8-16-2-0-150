.class public Lcom/transsion/camera/app/ThermalThrottleUrgentActivity;
.super Landroid/app/Activity;
.source "SourceFile"


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private mFoldFlipThermalActivityProxy:Lcom/transsion/camera/interfaces/fold_flip/IFoldFlipThermalActivityProxy;

.field private mThrottleUrgentUI:Lcom/transsion/camera/app/ui/IThermalThrottleUrgentUI;


# direct methods
.method public static synthetic $r8$lambda$9CgCFg0siiorB905Wh4ELG87nMM(Lcom/transsion/camera/app/ThermalThrottleUrgentActivity;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/app/ThermalThrottleUrgentActivity;->lambda$onCreate$0()V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 37
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "ThermalThrottleUrgentActivity"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/app/ThermalThrottleUrgentActivity;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 36
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private getFoldFlipThermalActivityProxy()Lcom/transsion/camera/interfaces/fold_flip/IFoldFlipThermalActivityProxy;
    .registers 3

    .line 119
    invoke-static {}, Lcom/transsion/camera/utils/FeatureSupport;->isSupportFoldUI()Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 120
    iget-object v0, p0, Lcom/transsion/camera/app/ThermalThrottleUrgentActivity;->mFoldFlipThermalActivityProxy:Lcom/transsion/camera/interfaces/fold_flip/IFoldFlipThermalActivityProxy;

    if-nez v0, :cond_17

    const/4 v0, 0x0

    .line 122
    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "com.transsion.camera.app.FoldFlipThermalActivityProxyImpl"

    invoke-static {v1, v0}, Lcom/transsion/camera/utils/ReflectionUtils;->instance(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/camera/interfaces/fold_flip/IFoldFlipThermalActivityProxy;

    iput-object v0, p0, Lcom/transsion/camera/app/ThermalThrottleUrgentActivity;->mFoldFlipThermalActivityProxy:Lcom/transsion/camera/interfaces/fold_flip/IFoldFlipThermalActivityProxy;

    .line 124
    :cond_17
    iget-object p0, p0, Lcom/transsion/camera/app/ThermalThrottleUrgentActivity;->mFoldFlipThermalActivityProxy:Lcom/transsion/camera/interfaces/fold_flip/IFoldFlipThermalActivityProxy;

    return-object p0

    :cond_1a
    const/4 p0, 0x0

    return-object p0
.end method

.method private initWindowAttributes()V
    .registers 3

    .line 88
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    const/4 v1, 0x3

    .line 90
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    .line 94
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    .line 95
    invoke-virtual {p0, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    const/4 v0, 0x0

    .line 96
    invoke-virtual {p0, v0}, Landroid/view/Window;->setDecorFitsSystemWindows(Z)V

    return-void
.end method

.method private synthetic lambda$onCreate$0()V
    .registers 3

    .line 75
    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_18

    .line 76
    sget-object v0, Lcom/transsion/camera/app/ThermalThrottleUrgentActivity;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "performExit"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 77
    invoke-static {}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->getInstance()Lcom/transsion/camera/utils/analytics/AnalyticsUtils;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->thermalWaring(I)V

    .line 78
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_18
    return-void
.end method


# virtual methods
.method protected final onCreate(Landroid/os/Bundle;)V
    .registers 5

    .line 44
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 46
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_16

    .line 47
    const-string v1, "isSecureCamera"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_16

    const/4 p1, 0x1

    .line 48
    invoke-virtual {p0, p1}, Landroid/app/Activity;->setShowWhenLocked(Z)V

    .line 51
    :cond_16
    invoke-direct {p0}, Lcom/transsion/camera/app/ThermalThrottleUrgentActivity;->initWindowAttributes()V

    .line 53
    invoke-direct {p0}, Lcom/transsion/camera/app/ThermalThrottleUrgentActivity;->getFoldFlipThermalActivityProxy()Lcom/transsion/camera/interfaces/fold_flip/IFoldFlipThermalActivityProxy;

    move-result-object p1

    if-eqz p1, :cond_22

    .line 55
    invoke-interface {p1, p0}, Lcom/transsion/camera/interfaces/fold_flip/IFoldFlipThermalActivityProxy;->onCreateTask(Landroid/app/Activity;)V

    .line 58
    :cond_22
    invoke-static {}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->getInstance()Lcom/transsion/camera/utils/analytics/AnalyticsUtils;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->thermalWaring(I)V

    .line 60
    sget v0, Lcom/transsion/camera/R$layout;->thermal_throttle_urgent_warning_high_layout:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setContentView(I)V

    if-eqz p1, :cond_35

    .line 64
    invoke-interface {p1, p0}, Lcom/transsion/camera/interfaces/fold_flip/IFoldFlipThermalActivityProxy;->createThrottleUrgentUI(Landroid/app/Activity;)Lcom/transsion/camera/app/ui/IThermalThrottleUrgentUI;

    move-result-object v0

    goto :goto_36

    :cond_35
    const/4 v0, 0x0

    :goto_36
    if-eqz v0, :cond_3b

    .line 67
    iput-object v0, p0, Lcom/transsion/camera/app/ThermalThrottleUrgentActivity;->mThrottleUrgentUI:Lcom/transsion/camera/app/ui/IThermalThrottleUrgentUI;

    goto :goto_42

    .line 69
    :cond_3b
    new-instance v0, Lcom/transsion/camera/app/ui/ThermalThrottleUrgentUI;

    invoke-direct {v0}, Lcom/transsion/camera/app/ui/ThermalThrottleUrgentUI;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/app/ThermalThrottleUrgentActivity;->mThrottleUrgentUI:Lcom/transsion/camera/app/ui/IThermalThrottleUrgentUI;

    .line 72
    :goto_42
    iget-object v0, p0, Lcom/transsion/camera/app/ThermalThrottleUrgentActivity;->mThrottleUrgentUI:Lcom/transsion/camera/app/ui/IThermalThrottleUrgentUI;

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    sget v2, Lcom/transsion/camera/R$id;->thermal_throttle_urgent_root:I

    invoke-virtual {p0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    invoke-interface {v0, v1, v2}, Lcom/transsion/camera/app/ui/IThermalThrottleUrgentUI;->inflateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)V

    .line 73
    iget-object v0, p0, Lcom/transsion/camera/app/ThermalThrottleUrgentActivity;->mThrottleUrgentUI:Lcom/transsion/camera/app/ui/IThermalThrottleUrgentUI;

    invoke-interface {v0}, Lcom/transsion/camera/app/ui/IThermalThrottleUrgentUI;->setupView()V

    .line 74
    iget-object v0, p0, Lcom/transsion/camera/app/ThermalThrottleUrgentActivity;->mThrottleUrgentUI:Lcom/transsion/camera/app/ui/IThermalThrottleUrgentUI;

    new-instance v1, Lcom/transsion/camera/app/ThermalThrottleUrgentActivity$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/transsion/camera/app/ThermalThrottleUrgentActivity$$ExternalSyntheticLambda0;-><init>(Lcom/transsion/camera/app/ThermalThrottleUrgentActivity;)V

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/ui/IThermalThrottleUrgentUI;->setThermalThrottleOperator(Lcom/transsion/camera/app/ui/IThermalThrottleUrgentUI$IThermalThrottleOperator;)V

    if-eqz p1, :cond_67

    .line 83
    invoke-interface {p1, p0}, Lcom/transsion/camera/interfaces/fold_flip/IFoldFlipThermalActivityProxy;->initOrientation(Landroid/app/Activity;)V

    :cond_67
    return-void
.end method

.method protected onStart()V
    .registers 2

    .line 101
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 102
    invoke-direct {p0}, Lcom/transsion/camera/app/ThermalThrottleUrgentActivity;->getFoldFlipThermalActivityProxy()Lcom/transsion/camera/interfaces/fold_flip/IFoldFlipThermalActivityProxy;

    move-result-object v0

    if-eqz v0, :cond_c

    .line 104
    invoke-interface {v0, p0}, Lcom/transsion/camera/interfaces/fold_flip/IFoldFlipThermalActivityProxy;->onStartTasks(Landroid/app/Activity;)V

    :cond_c
    return-void
.end method

.method protected onStop()V
    .registers 2

    .line 110
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 111
    invoke-direct {p0}, Lcom/transsion/camera/app/ThermalThrottleUrgentActivity;->getFoldFlipThermalActivityProxy()Lcom/transsion/camera/interfaces/fold_flip/IFoldFlipThermalActivityProxy;

    move-result-object v0

    if-eqz v0, :cond_c

    .line 113
    invoke-interface {v0, p0}, Lcom/transsion/camera/interfaces/fold_flip/IFoldFlipThermalActivityProxy;->onStopTasks(Landroid/app/Activity;)V

    .line 115
    :cond_c
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method
