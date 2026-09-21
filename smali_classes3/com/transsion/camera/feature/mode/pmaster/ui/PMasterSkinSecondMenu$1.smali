.class Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterSkinSecondMenu$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterSkinSecondMenu;->hideRootAnim(Landroid/widget/FrameLayout;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterSkinSecondMenu;

.field final synthetic val$rootView:Landroid/widget/FrameLayout;


# direct methods
.method constructor <init>(Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterSkinSecondMenu;Landroid/widget/FrameLayout;)V
    .registers 3

    .line 404
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterSkinSecondMenu$1;->this$0:Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterSkinSecondMenu;

    iput-object p2, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterSkinSecondMenu$1;->val$rootView:Landroid/widget/FrameLayout;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 2

    .line 407
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterSkinSecondMenu$1;->this$0:Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterSkinSecondMenu;

    invoke-static {p1}, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterSkinSecondMenu;->-$$Nest$fgetmItemContainer(Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterSkinSecondMenu;)Landroid/view/ViewGroup;

    move-result-object p1

    if-eqz p1, :cond_11

    .line 408
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterSkinSecondMenu$1;->this$0:Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterSkinSecondMenu;

    invoke-static {p1}, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterSkinSecondMenu;->-$$Nest$fgetmItemContainer(Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterSkinSecondMenu;)Landroid/view/ViewGroup;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 410
    :cond_11
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterSkinSecondMenu$1;->val$rootView:Landroid/widget/FrameLayout;

    const/4 p1, 0x4

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method
