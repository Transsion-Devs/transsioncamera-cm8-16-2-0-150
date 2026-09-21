.class Lcom/transsion/camera/ui/setting/celebrityscene/CelebritySceneSettingUI$1;
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

    .line 99
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/celebrityscene/CelebritySceneSettingUI$1;->this$0:Lcom/transsion/camera/ui/setting/celebrityscene/CelebritySceneSettingUI;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationStart(Landroid/animation/Animator;)V
    .registers 3

    .line 102
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationStart(Landroid/animation/Animator;)V

    .line 103
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/celebrityscene/CelebritySceneSettingUI$1;->this$0:Lcom/transsion/camera/ui/setting/celebrityscene/CelebritySceneSettingUI;

    invoke-static {p1}, Lcom/transsion/camera/ui/setting/celebrityscene/CelebritySceneSettingUI;->-$$Nest$fgetmCelebritySceneRootView(Lcom/transsion/camera/ui/setting/celebrityscene/CelebritySceneSettingUI;)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_15

    .line 104
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/celebrityscene/CelebritySceneSettingUI$1;->this$0:Lcom/transsion/camera/ui/setting/celebrityscene/CelebritySceneSettingUI;

    invoke-static {p1}, Lcom/transsion/camera/ui/setting/celebrityscene/CelebritySceneSettingUI;->-$$Nest$fgetmCelebritySceneRootView(Lcom/transsion/camera/ui/setting/celebrityscene/CelebritySceneSettingUI;)Landroid/view/View;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 107
    :cond_15
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/celebrityscene/CelebritySceneSettingUI$1;->this$0:Lcom/transsion/camera/ui/setting/celebrityscene/CelebritySceneSettingUI;

    invoke-static {p1}, Lcom/transsion/camera/ui/setting/celebrityscene/CelebritySceneSettingUI;->-$$Nest$fgetmStatusMonitor(Lcom/transsion/camera/ui/setting/celebrityscene/CelebritySceneSettingUI;)Lcom/transsion/camera/app/common/setting/StatusMonitor;

    move-result-object p1

    if-eqz p1, :cond_2e

    .line 108
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/celebrityscene/CelebritySceneSettingUI$1;->this$0:Lcom/transsion/camera/ui/setting/celebrityscene/CelebritySceneSettingUI;

    invoke-static {p0}, Lcom/transsion/camera/ui/setting/celebrityscene/CelebritySceneSettingUI;->-$$Nest$fgetmStatusMonitor(Lcom/transsion/camera/ui/setting/celebrityscene/CelebritySceneSettingUI;)Lcom/transsion/camera/app/common/setting/StatusMonitor;

    move-result-object p0

    const-string p1, "key_conflict_ui_state"

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->getStatusResponder(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;

    move-result-object p0

    const-string v0, "value_filter_ui_on"

    invoke-virtual {p0, p1, v0}, Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;->statusChanged(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_2e
    return-void
.end method
