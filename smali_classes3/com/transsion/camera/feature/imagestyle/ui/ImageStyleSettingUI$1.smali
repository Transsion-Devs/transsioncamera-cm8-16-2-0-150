.class Lcom/transsion/camera/feature/imagestyle/ui/ImageStyleSettingUI$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/imagestyle/ui/ImageStyleSettingUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/feature/imagestyle/ui/ImageStyleSettingUI;


# direct methods
.method constructor <init>(Lcom/transsion/camera/feature/imagestyle/ui/ImageStyleSettingUI;)V
    .registers 2

    .line 78
    iput-object p1, p0, Lcom/transsion/camera/feature/imagestyle/ui/ImageStyleSettingUI$1;->this$0:Lcom/transsion/camera/feature/imagestyle/ui/ImageStyleSettingUI;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .registers 2

    .line 81
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationCancel(Landroid/animation/Animator;)V

    .line 83
    iget-object p1, p0, Lcom/transsion/camera/feature/imagestyle/ui/ImageStyleSettingUI$1;->this$0:Lcom/transsion/camera/feature/imagestyle/ui/ImageStyleSettingUI;

    invoke-static {p1}, Lcom/transsion/camera/feature/imagestyle/ui/ImageStyleSettingUI;->-$$Nest$fgetmImageStyleSelectRoot(Lcom/transsion/camera/feature/imagestyle/ui/ImageStyleSettingUI;)Landroid/view/ViewGroup;

    move-result-object p1

    if-eqz p1, :cond_16

    .line 84
    iget-object p0, p0, Lcom/transsion/camera/feature/imagestyle/ui/ImageStyleSettingUI$1;->this$0:Lcom/transsion/camera/feature/imagestyle/ui/ImageStyleSettingUI;

    invoke-static {p0}, Lcom/transsion/camera/feature/imagestyle/ui/ImageStyleSettingUI;->-$$Nest$fgetmImageStyleSelectRoot(Lcom/transsion/camera/feature/imagestyle/ui/ImageStyleSettingUI;)Landroid/view/ViewGroup;

    move-result-object p0

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    :cond_16
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 2

    .line 90
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 92
    iget-object p1, p0, Lcom/transsion/camera/feature/imagestyle/ui/ImageStyleSettingUI$1;->this$0:Lcom/transsion/camera/feature/imagestyle/ui/ImageStyleSettingUI;

    invoke-static {p1}, Lcom/transsion/camera/feature/imagestyle/ui/ImageStyleSettingUI;->-$$Nest$fgetmImageStyleSelectRoot(Lcom/transsion/camera/feature/imagestyle/ui/ImageStyleSettingUI;)Landroid/view/ViewGroup;

    move-result-object p1

    if-eqz p1, :cond_16

    .line 93
    iget-object p0, p0, Lcom/transsion/camera/feature/imagestyle/ui/ImageStyleSettingUI$1;->this$0:Lcom/transsion/camera/feature/imagestyle/ui/ImageStyleSettingUI;

    invoke-static {p0}, Lcom/transsion/camera/feature/imagestyle/ui/ImageStyleSettingUI;->-$$Nest$fgetmImageStyleSelectRoot(Lcom/transsion/camera/feature/imagestyle/ui/ImageStyleSettingUI;)Landroid/view/ViewGroup;

    move-result-object p0

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    :cond_16
    return-void
.end method
