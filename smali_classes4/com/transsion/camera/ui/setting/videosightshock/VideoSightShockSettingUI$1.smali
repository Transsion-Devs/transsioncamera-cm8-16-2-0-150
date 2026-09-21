.class Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockSettingUI$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockSettingUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockSettingUI;


# direct methods
.method constructor <init>(Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockSettingUI;)V
    .registers 2

    .line 105
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockSettingUI$1;->this$0:Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockSettingUI;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .registers 3

    .line 108
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationCancel(Landroid/animation/Animator;)V

    .line 110
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockSettingUI$1;->this$0:Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockSettingUI;

    invoke-static {p1}, Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockSettingUI;->-$$Nest$fgetmSelectRoot(Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockSettingUI;)Landroid/view/ViewGroup;

    move-result-object p1

    if-eqz p1, :cond_28

    .line 111
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockSettingUI$1;->this$0:Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockSettingUI;

    invoke-static {p1}, Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockSettingUI;->-$$Nest$fgetmSelectRoot(Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockSettingUI;)Landroid/view/ViewGroup;

    move-result-object p1

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 112
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockSettingUI$1;->this$0:Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockSettingUI;

    invoke-static {p1}, Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockSettingUI;->-$$Nest$fgetmSelectRoot(Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockSettingUI;)Landroid/view/ViewGroup;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationY(F)V

    .line 113
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockSettingUI$1;->this$0:Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockSettingUI;

    invoke-static {p0}, Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockSettingUI;->-$$Nest$fgetmSelectRoot(Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockSettingUI;)Landroid/view/ViewGroup;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/view/View;->setTranslationX(F)V

    :cond_28
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 3

    .line 119
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 121
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockSettingUI$1;->this$0:Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockSettingUI;

    invoke-static {p1}, Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockSettingUI;->-$$Nest$fgetmSelectRoot(Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockSettingUI;)Landroid/view/ViewGroup;

    move-result-object p1

    if-eqz p1, :cond_28

    .line 122
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockSettingUI$1;->this$0:Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockSettingUI;

    invoke-static {p1}, Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockSettingUI;->-$$Nest$fgetmSelectRoot(Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockSettingUI;)Landroid/view/ViewGroup;

    move-result-object p1

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 123
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockSettingUI$1;->this$0:Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockSettingUI;

    invoke-static {p1}, Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockSettingUI;->-$$Nest$fgetmSelectRoot(Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockSettingUI;)Landroid/view/ViewGroup;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationY(F)V

    .line 124
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockSettingUI$1;->this$0:Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockSettingUI;

    invoke-static {p0}, Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockSettingUI;->-$$Nest$fgetmSelectRoot(Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockSettingUI;)Landroid/view/ViewGroup;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/view/View;->setTranslationX(F)V

    :cond_28
    return-void
.end method
