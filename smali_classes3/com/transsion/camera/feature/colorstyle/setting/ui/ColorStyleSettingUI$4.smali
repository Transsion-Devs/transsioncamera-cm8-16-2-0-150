.class Lcom/transsion/camera/feature/colorstyle/setting/ui/ColorStyleSettingUI$4;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/colorstyle/setting/ui/ColorStyleSettingUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/feature/colorstyle/setting/ui/ColorStyleSettingUI;


# direct methods
.method constructor <init>(Lcom/transsion/camera/feature/colorstyle/setting/ui/ColorStyleSettingUI;)V
    .registers 2

    .line 674
    iput-object p1, p0, Lcom/transsion/camera/feature/colorstyle/setting/ui/ColorStyleSettingUI$4;->this$0:Lcom/transsion/camera/feature/colorstyle/setting/ui/ColorStyleSettingUI;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationStart(Landroid/animation/Animator;)V
    .registers 3

    .line 677
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationStart(Landroid/animation/Animator;)V

    .line 678
    iget-object p1, p0, Lcom/transsion/camera/feature/colorstyle/setting/ui/ColorStyleSettingUI$4;->this$0:Lcom/transsion/camera/feature/colorstyle/setting/ui/ColorStyleSettingUI;

    invoke-static {p1}, Lcom/transsion/camera/feature/colorstyle/setting/ui/ColorStyleSettingUI;->-$$Nest$fgetmColorStyleRootView(Lcom/transsion/camera/feature/colorstyle/setting/ui/ColorStyleSettingUI;)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_15

    .line 679
    iget-object p1, p0, Lcom/transsion/camera/feature/colorstyle/setting/ui/ColorStyleSettingUI$4;->this$0:Lcom/transsion/camera/feature/colorstyle/setting/ui/ColorStyleSettingUI;

    invoke-static {p1}, Lcom/transsion/camera/feature/colorstyle/setting/ui/ColorStyleSettingUI;->-$$Nest$fgetmColorStyleRootView(Lcom/transsion/camera/feature/colorstyle/setting/ui/ColorStyleSettingUI;)Landroid/view/View;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 681
    :cond_15
    iget-object p1, p0, Lcom/transsion/camera/feature/colorstyle/setting/ui/ColorStyleSettingUI$4;->this$0:Lcom/transsion/camera/feature/colorstyle/setting/ui/ColorStyleSettingUI;

    invoke-static {p1}, Lcom/transsion/camera/feature/colorstyle/setting/ui/ColorStyleSettingUI;->-$$Nest$fgetmStatusMonitor(Lcom/transsion/camera/feature/colorstyle/setting/ui/ColorStyleSettingUI;)Lcom/transsion/camera/app/common/setting/StatusMonitor;

    move-result-object p1

    if-eqz p1, :cond_2f

    .line 682
    iget-object p0, p0, Lcom/transsion/camera/feature/colorstyle/setting/ui/ColorStyleSettingUI$4;->this$0:Lcom/transsion/camera/feature/colorstyle/setting/ui/ColorStyleSettingUI;

    invoke-static {p0}, Lcom/transsion/camera/feature/colorstyle/setting/ui/ColorStyleSettingUI;->-$$Nest$fgetmStatusMonitor(Lcom/transsion/camera/feature/colorstyle/setting/ui/ColorStyleSettingUI;)Lcom/transsion/camera/app/common/setting/StatusMonitor;

    move-result-object p0

    const-string p1, "key_conflict_ui_state"

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->getStatusResponder(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;

    move-result-object p0

    const-string/jumbo v0, "value_filter_ui_on"

    invoke-virtual {p0, p1, v0}, Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;->statusChanged(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_2f
    return-void
.end method
