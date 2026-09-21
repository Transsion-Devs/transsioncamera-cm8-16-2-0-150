.class Lcom/transsion/camera/ui/setting/celebrityscene/CelebritySceneSettingUI$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/ui/setting/celebrityscene/CelebritySceneSettingUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/ui/setting/celebrityscene/CelebritySceneSettingUI;


# direct methods
.method constructor <init>(Lcom/transsion/camera/ui/setting/celebrityscene/CelebritySceneSettingUI;)V
    .registers 2

    .line 113
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/celebrityscene/CelebritySceneSettingUI$2;->this$0:Lcom/transsion/camera/ui/setting/celebrityscene/CelebritySceneSettingUI;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method

.method private onCollapseDone()V
    .registers 3

    .line 128
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/celebrityscene/CelebritySceneSettingUI$2;->this$0:Lcom/transsion/camera/ui/setting/celebrityscene/CelebritySceneSettingUI;

    invoke-static {v0}, Lcom/transsion/camera/ui/setting/celebrityscene/CelebritySceneSettingUI;->-$$Nest$fgetmCelebritySceneRootView(Lcom/transsion/camera/ui/setting/celebrityscene/CelebritySceneSettingUI;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 129
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/celebrityscene/CelebritySceneSettingUI$2;->this$0:Lcom/transsion/camera/ui/setting/celebrityscene/CelebritySceneSettingUI;

    invoke-static {v0}, Lcom/transsion/camera/ui/setting/celebrityscene/CelebritySceneSettingUI;->-$$Nest$fgetmCelebritySceneRootView(Lcom/transsion/camera/ui/setting/celebrityscene/CelebritySceneSettingUI;)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 131
    :cond_13
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/celebrityscene/CelebritySceneSettingUI$2;->this$0:Lcom/transsion/camera/ui/setting/celebrityscene/CelebritySceneSettingUI;

    invoke-static {v0}, Lcom/transsion/camera/ui/setting/celebrityscene/CelebritySceneSettingUI;->-$$Nest$fgetmStatusMonitor(Lcom/transsion/camera/ui/setting/celebrityscene/CelebritySceneSettingUI;)Lcom/transsion/camera/app/common/setting/StatusMonitor;

    move-result-object v0

    if-eqz v0, :cond_2c

    .line 132
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/celebrityscene/CelebritySceneSettingUI$2;->this$0:Lcom/transsion/camera/ui/setting/celebrityscene/CelebritySceneSettingUI;

    invoke-static {p0}, Lcom/transsion/camera/ui/setting/celebrityscene/CelebritySceneSettingUI;->-$$Nest$fgetmStatusMonitor(Lcom/transsion/camera/ui/setting/celebrityscene/CelebritySceneSettingUI;)Lcom/transsion/camera/app/common/setting/StatusMonitor;

    move-result-object p0

    const-string v0, "key_conflict_ui_state"

    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->getStatusResponder(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;

    move-result-object p0

    const-string v1, "value_filter_ui_off"

    invoke-virtual {p0, v0, v1}, Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;->statusChanged(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_2c
    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .registers 2

    .line 116
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationCancel(Landroid/animation/Animator;)V

    .line 117
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/celebrityscene/CelebritySceneSettingUI$2;->onCollapseDone()V

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 3

    .line 122
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 123
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/celebrityscene/CelebritySceneSettingUI$2;->this$0:Lcom/transsion/camera/ui/setting/celebrityscene/CelebritySceneSettingUI;

    invoke-static {p1}, Lcom/transsion/camera/ui/setting/celebrityscene/CelebritySceneSettingUI;->-$$Nest$fgetmCameraOperate(Lcom/transsion/camera/ui/setting/celebrityscene/CelebritySceneSettingUI;)Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;

    move-result-object p1

    const/16 v0, 0x16f

    invoke-interface {p1, v0}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    .line 124
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/celebrityscene/CelebritySceneSettingUI$2;->onCollapseDone()V

    return-void
.end method
