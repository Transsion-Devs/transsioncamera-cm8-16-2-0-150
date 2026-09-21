.class Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockSettingUI$2;
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

    .line 129
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockSettingUI$2;->this$0:Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockSettingUI;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationStart(Landroid/animation/Animator;)V
    .registers 2

    .line 132
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationStart(Landroid/animation/Animator;)V

    .line 133
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockSettingUI$2;->this$0:Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockSettingUI;

    invoke-static {p1}, Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockSettingUI;->-$$Nest$fgetmSelectRoot(Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockSettingUI;)Landroid/view/ViewGroup;

    move-result-object p1

    if-eqz p1, :cond_15

    .line 134
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockSettingUI$2;->this$0:Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockSettingUI;

    invoke-static {p0}, Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockSettingUI;->-$$Nest$fgetmSelectRoot(Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockSettingUI;)Landroid/view/ViewGroup;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    :cond_15
    return-void
.end method
