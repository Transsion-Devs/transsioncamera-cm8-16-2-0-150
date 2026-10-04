.class public Lcom/transsion/camera/ui/setting/googlelens/GoogleLensTopBarItemUI;
.super Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private final mMonitorListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;"
        }
    .end annotation
.end field

.field private mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;


# direct methods
.method public static synthetic $r8$lambda$HhN3hBHBXdG4iREUuWWGFcEfaU8(Lcom/transsion/camera/ui/setting/googlelens/GoogleLensTopBarItemUI;Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/ui/setting/googlelens/GoogleLensTopBarItemUI;->lambda$new$1(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$V9a2Z6SPzthGHdKdP1gDejPKveE(Lcom/transsion/camera/ui/setting/googlelens/GoogleLensTopBarItemUI;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/googlelens/GoogleLensTopBarItemUI;->lambda$new$0()V

    return-void
.end method

.method public constructor <init>(Landroid/content/res/Resources;Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;)V
    .registers 3

    .line 29
    invoke-direct {p0, p2}, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;-><init>(Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;)V

    .line 90
    new-instance p1, Lcom/transsion/camera/ui/setting/googlelens/GoogleLensTopBarItemUI$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lcom/transsion/camera/ui/setting/googlelens/GoogleLensTopBarItemUI$$ExternalSyntheticLambda0;-><init>(Lcom/transsion/camera/ui/setting/googlelens/GoogleLensTopBarItemUI;)V

    iput-object p1, p0, Lcom/transsion/camera/ui/setting/googlelens/GoogleLensTopBarItemUI;->mMonitorListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    return-void
.end method

.method private synthetic lambda$new$0()V
    .registers 2

    .line 95
    iget-object p0, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mEntryView:Lcom/transsion/camera/app/ui/widget/RotateLottieAnimationView;

    if-eqz p0, :cond_8

    const/4 v0, 0x1

    .line 96
    invoke-virtual {p0, v0}, Landroid/view/View;->setEnabled(Z)V

    :cond_8
    return-void
.end method

.method private synthetic lambda$new$1(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 91
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string p2, "key_google_lens_visible"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_c

    goto :goto_18

    .line 93
    :cond_c
    iget-object p1, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mEntryView:Lcom/transsion/camera/app/ui/widget/RotateLottieAnimationView;

    if-eqz p1, :cond_18

    .line 94
    new-instance p2, Lcom/transsion/camera/ui/setting/googlelens/GoogleLensTopBarItemUI$$ExternalSyntheticLambda1;

    invoke-direct {p2, p0}, Lcom/transsion/camera/ui/setting/googlelens/GoogleLensTopBarItemUI$$ExternalSyntheticLambda1;-><init>(Lcom/transsion/camera/ui/setting/googlelens/GoogleLensTopBarItemUI;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_18
    :goto_18
    return-void
.end method

.method private sendGoogleLensEvent(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 131
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/googlelens/GoogleLensTopBarItemUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    if-nez p0, :cond_5

    return-void

    .line 134
    :cond_5
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->getStatusResponder(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;->statusChanged(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method private updateEntryVisibility()V
    .registers 4

    .line 56
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    const/4 v1, 0x1

    if-nez v0, :cond_9

    .line 57
    invoke-virtual {p0, v1}, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->updateShouldGone(Z)V

    return-void

    .line 60
    :cond_9
    invoke-interface {v0}, Lcom/transsion/camera/app/common/setting/ISetting;->getSupport()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1c

    .line 61
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v2, 0x2

    if-ge v0, v2, :cond_17

    goto :goto_1c

    :cond_17
    const/4 v0, 0x0

    .line 65
    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->updateShouldGone(Z)V

    return-void

    .line 62
    :cond_1c
    :goto_1c
    invoke-virtual {p0, v1}, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->updateShouldGone(Z)V

    return-void
.end method


# virtual methods
.method public createEntryView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;IIII)Landroid/view/View;
    .registers 7

    const/4 p5, 0x0

    .line 37
    invoke-virtual {p1, p3, p2, p5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mEntryRootLayout:Landroid/view/View;

    .line 38
    invoke-virtual {p1, p4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/transsion/camera/app/ui/widget/RotateLottieAnimationView;

    iput-object p1, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mEntryView:Lcom/transsion/camera/app/ui/widget/RotateLottieAnimationView;

    .line 39
    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/transsion/camera/utils/CameraUtil;->isTalkBackEnabled(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_1f

    .line 40
    iget-object p1, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mEntryView:Lcom/transsion/camera/app/ui/widget/RotateLottieAnimationView;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/view/View;->setFocusable(Z)V

    .line 42
    :cond_1f
    iget-object p1, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mEntryView:Lcom/transsion/camera/app/ui/widget/RotateLottieAnimationView;

    const p2, 0x3f4ccccd    # 0.8f

    const/4 p3, 0x0

    invoke-static {p1, p2, p3}, Lcom/transsion/camera/utils/MultiTouchManager;->pressSealAnimation(Landroid/view/View;FLandroid/animation/AnimatorListenerAdapter;)V

    .line 43
    iget-object p0, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mEntryRootLayout:Landroid/view/View;

    return-object p0
.end method

.method public bridge synthetic getExtraKey()Ljava/lang/String;
    .registers 1

    .line 0
    invoke-super {p0}, Lcom/transsion/camera/app/common/ui/setting/ISettingUI;->getExtraKey()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getKey()Ljava/lang/String;
    .registers 1

    .line 113
    const-string p0, "key_google_lens"

    return-object p0
.end method

.method public notifyCameraOperateAction(I)V
    .registers 3

    .line 118
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->notifyCameraOperateAction(I)V

    const/16 v0, 0xb

    if-eq p1, v0, :cond_19

    const/16 v0, 0xc

    if-eq p1, v0, :cond_10

    const/16 v0, 0x20

    if-eq p1, v0, :cond_10

    goto :goto_21

    .line 125
    :cond_10
    iget-object p0, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mEntryView:Lcom/transsion/camera/app/ui/widget/RotateLottieAnimationView;

    if-eqz p0, :cond_21

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroid/view/View;->setClickable(Z)V

    return-void

    .line 121
    :cond_19
    iget-object p0, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mEntryView:Lcom/transsion/camera/app/ui/widget/RotateLottieAnimationView;

    if-eqz p0, :cond_21

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/view/View;->setClickable(Z)V

    :cond_21
    :goto_21
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .registers 3

    .line 77
    invoke-static {p1}, Lcom/transsion/camera/utils/MultiTouchManager;->canPerformClick(Landroid/view/View;)Z

    move-result p1

    if-nez p1, :cond_7

    return-void

    .line 80
    :cond_7
    const-string p1, "google_lens_clicked"

    const-string v0, "key_google_lens_click"

    invoke-direct {p0, v0, p1}, Lcom/transsion/camera/ui/setting/googlelens/GoogleLensTopBarItemUI;->sendGoogleLensEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    invoke-static {}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->getInstance()Lcom/transsion/camera/utils/analytics/AnalyticsUtils;

    move-result-object p0

    const/16 p1, 0x28

    invoke-virtual {p0, p1, v0}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->setClickIconId(ILjava/lang/String;)V

    return-void
.end method

.method public bridge synthetic setAppUI(Lcom/transsion/camera/app/common/IAppUI;)V
    .registers 2

    .line 0
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/ui/setting/ISettingUI;->setAppUI(Lcom/transsion/camera/app/common/IAppUI;)V

    return-void
.end method

.method public setEnable(Z)V
    .registers 2

    .line 70
    iget-object p0, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mEntryView:Lcom/transsion/camera/app/ui/widget/RotateLottieAnimationView;

    if-eqz p0, :cond_7

    .line 71
    invoke-virtual {p0, p1}, Landroid/view/View;->setEnabled(Z)V

    :cond_7
    return-void
.end method

.method public bridge synthetic setExtraDeviceSetting(Lcom/transsion/camera/app/common/setting/ISetting;)V
    .registers 2

    .line 0
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/ui/setting/ISettingUI;->setExtraDeviceSetting(Lcom/transsion/camera/app/common/setting/ISetting;)V

    return-void
.end method

.method public setSettingMonitor(Lcom/transsion/camera/app/common/setting/StatusMonitor;)V
    .registers 2

    .line 108
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/googlelens/GoogleLensTopBarItemUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    return-void
.end method

.method public setupEntryView()V
    .registers 4

    .line 48
    invoke-super {p0}, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->setupEntryView()V

    .line 49
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mEntryView:Lcom/transsion/camera/app/ui/widget/RotateLottieAnimationView;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 50
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/googlelens/GoogleLensTopBarItemUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    const-string v1, "key_google_lens_visible"

    iget-object v2, p0, Lcom/transsion/camera/ui/setting/googlelens/GoogleLensTopBarItemUI;->mMonitorListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    invoke-virtual {v0, v1, v2}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->registerValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 52
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/googlelens/GoogleLensTopBarItemUI;->updateEntryVisibility()V

    return-void
.end method

.method public unInit()V
    .registers 3

    .line 86
    invoke-super {p0}, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->unInit()V

    .line 87
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/googlelens/GoogleLensTopBarItemUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    const-string v1, "key_google_lens_visible"

    iget-object p0, p0, Lcom/transsion/camera/ui/setting/googlelens/GoogleLensTopBarItemUI;->mMonitorListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    invoke-virtual {v0, v1, p0}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->unregisterValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    return-void
.end method
