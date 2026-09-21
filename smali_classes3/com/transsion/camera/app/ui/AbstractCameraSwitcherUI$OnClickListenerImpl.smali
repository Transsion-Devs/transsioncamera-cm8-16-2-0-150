.class Lcom/transsion/camera/app/ui/AbstractCameraSwitcherUI$OnClickListenerImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/app/ui/AbstractCameraSwitcherUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OnClickListenerImpl"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/app/ui/AbstractCameraSwitcherUI;


# direct methods
.method private constructor <init>(Lcom/transsion/camera/app/ui/AbstractCameraSwitcherUI;)V
    .registers 2

    .line 112
    iput-object p1, p0, Lcom/transsion/camera/app/ui/AbstractCameraSwitcherUI$OnClickListenerImpl;->this$0:Lcom/transsion/camera/app/ui/AbstractCameraSwitcherUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/transsion/camera/app/ui/AbstractCameraSwitcherUI;Lcom/transsion/camera/app/ui/AbstractCameraSwitcherUI-IA;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/AbstractCameraSwitcherUI$OnClickListenerImpl;-><init>(Lcom/transsion/camera/app/ui/AbstractCameraSwitcherUI;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5

    .line 115
    invoke-static {p1}, Lcom/transsion/camera/utils/MultiTouchManager;->canPerformClick(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_81

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_81

    .line 118
    :cond_d
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractCameraSwitcherUI$OnClickListenerImpl;->this$0:Lcom/transsion/camera/app/ui/AbstractCameraSwitcherUI;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/AbstractCameraSwitcherUI;->-$$Nest$fgetmCameraSwitchListener(Lcom/transsion/camera/app/ui/AbstractCameraSwitcherUI;)Lcom/transsion/camera/app/common/IAppUIListener$ICameraSwitchListener;

    move-result-object v0

    if-eqz v0, :cond_45

    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractCameraSwitcherUI$OnClickListenerImpl;->this$0:Lcom/transsion/camera/app/ui/AbstractCameraSwitcherUI;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/AbstractCameraSwitcherUI;->-$$Nest$fgetmAppUI(Lcom/transsion/camera/app/ui/AbstractCameraSwitcherUI;)Lcom/transsion/camera/app/common/IAppUI;

    move-result-object v0

    if-eqz v0, :cond_45

    .line 119
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractCameraSwitcherUI$OnClickListenerImpl;->this$0:Lcom/transsion/camera/app/ui/AbstractCameraSwitcherUI;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/AbstractCameraSwitcherUI;->-$$Nest$fgetmAppUI(Lcom/transsion/camera/app/ui/AbstractCameraSwitcherUI;)Lcom/transsion/camera/app/common/IAppUI;

    move-result-object v0

    const/16 v1, 0x149

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    .line 120
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractCameraSwitcherUI$OnClickListenerImpl;->this$0:Lcom/transsion/camera/app/ui/AbstractCameraSwitcherUI;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/AbstractCameraSwitcherUI;->-$$Nest$fgetmAppUI(Lcom/transsion/camera/app/ui/AbstractCameraSwitcherUI;)Lcom/transsion/camera/app/common/IAppUI;

    move-result-object v0

    invoke-interface {v0}, Lcom/transsion/camera/app/common/IAppUI;->hidePopSettingView()V

    .line 121
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractCameraSwitcherUI$OnClickListenerImpl;->this$0:Lcom/transsion/camera/app/ui/AbstractCameraSwitcherUI;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/AbstractCameraSwitcherUI;->-$$Nest$fgetmAppUI(Lcom/transsion/camera/app/ui/AbstractCameraSwitcherUI;)Lcom/transsion/camera/app/common/IAppUI;

    move-result-object v0

    invoke-interface {v0}, Lcom/transsion/camera/app/common/IAppUI;->resetTBScrollerView()V

    .line 122
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractCameraSwitcherUI$OnClickListenerImpl;->this$0:Lcom/transsion/camera/app/ui/AbstractCameraSwitcherUI;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/AbstractCameraSwitcherUI;->-$$Nest$fgetmCameraSwitchListener(Lcom/transsion/camera/app/ui/AbstractCameraSwitcherUI;)Lcom/transsion/camera/app/common/IAppUIListener$ICameraSwitchListener;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/transsion/camera/app/common/IAppUIListener$ICameraSwitchListener;->onCameraSwitch(ZLjava/lang/String;)V

    .line 124
    :cond_45
    invoke-static {}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->getInstance()Lcom/transsion/camera/utils/analytics/AnalyticsUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->getCameraId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/transsion/camera/adapter/CameraInfoUtil;->isCameraFacingFront(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_64

    .line 125
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractCameraSwitcherUI$OnClickListenerImpl;->this$0:Lcom/transsion/camera/app/ui/AbstractCameraSwitcherUI;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/AbstractCameraSwitcherUI;->-$$Nest$fgetmContext(Lcom/transsion/camera/app/ui/AbstractCameraSwitcherUI;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/transsion/camera/R$string;->camera_switcher_front:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_74

    .line 126
    :cond_64
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractCameraSwitcherUI$OnClickListenerImpl;->this$0:Lcom/transsion/camera/app/ui/AbstractCameraSwitcherUI;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/AbstractCameraSwitcherUI;->-$$Nest$fgetmContext(Lcom/transsion/camera/app/ui/AbstractCameraSwitcherUI;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/transsion/camera/R$string;->camera_switcher_back:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 125
    :goto_74
    invoke-virtual {p1, v0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 127
    iget-object p1, p0, Lcom/transsion/camera/app/ui/AbstractCameraSwitcherUI$OnClickListenerImpl;->this$0:Lcom/transsion/camera/app/ui/AbstractCameraSwitcherUI;

    invoke-virtual {p1}, Lcom/transsion/camera/app/ui/AbstractCameraSwitcherUI;->startAnimation()V

    .line 128
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractCameraSwitcherUI$OnClickListenerImpl;->this$0:Lcom/transsion/camera/app/ui/AbstractCameraSwitcherUI;

    invoke-static {p0}, Lcom/transsion/camera/app/ui/AbstractCameraSwitcherUI;->-$$Nest$mvibrateWhenCamSwitch(Lcom/transsion/camera/app/ui/AbstractCameraSwitcherUI;)V

    :cond_81
    :goto_81
    return-void
.end method
