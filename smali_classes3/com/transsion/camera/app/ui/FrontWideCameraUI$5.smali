.class Lcom/transsion/camera/app/ui/FrontWideCameraUI$5;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/camera/app/ui/FrontWideCameraUI;->startTranslateXWithAnimation(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/app/ui/FrontWideCameraUI;


# direct methods
.method constructor <init>(Lcom/transsion/camera/app/ui/FrontWideCameraUI;)V
    .registers 2

    .line 1112
    iput-object p1, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI$5;->this$0:Lcom/transsion/camera/app/ui/FrontWideCameraUI;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 3

    .line 1115
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 1116
    iget-object p1, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI$5;->this$0:Lcom/transsion/camera/app/ui/FrontWideCameraUI;

    invoke-static {p1}, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->-$$Nest$fgetmPreviousIndicator(Lcom/transsion/camera/app/ui/FrontWideCameraUI;)Landroid/view/View;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 1117
    iget-object p1, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI$5;->this$0:Lcom/transsion/camera/app/ui/FrontWideCameraUI;

    invoke-static {p1}, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->-$$Nest$fgetmIndicator(Lcom/transsion/camera/app/ui/FrontWideCameraUI;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-eqz p1, :cond_24

    .line 1118
    iget-object p0, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI$5;->this$0:Lcom/transsion/camera/app/ui/FrontWideCameraUI;

    invoke-static {p0}, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->-$$Nest$fgetmIndicator(Lcom/transsion/camera/app/ui/FrontWideCameraUI;)Landroid/view/View;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    :cond_24
    return-void
.end method
