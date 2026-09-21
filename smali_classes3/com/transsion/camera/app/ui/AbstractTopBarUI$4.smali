.class Lcom/transsion/camera/app/ui/AbstractTopBarUI$4;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/camera/app/ui/AbstractTopBarUI;->onPopupShow()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/app/ui/AbstractTopBarUI;


# direct methods
.method constructor <init>(Lcom/transsion/camera/app/ui/AbstractTopBarUI;)V
    .registers 2

    .line 1171
    iput-object p1, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI$4;->this$0:Lcom/transsion/camera/app/ui/AbstractTopBarUI;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .registers 2

    .line 1182
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationCancel(Landroid/animation/Animator;)V

    .line 1183
    iget-object p1, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI$4;->this$0:Lcom/transsion/camera/app/ui/AbstractTopBarUI;

    invoke-virtual {p1}, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->isPopupShowing()Z

    move-result p1

    if-eqz p1, :cond_12

    .line 1184
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI$4;->this$0:Lcom/transsion/camera/app/ui/AbstractTopBarUI;

    const/16 p1, 0x8

    invoke-static {p0, p1}, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->-$$Nest$msetTopBarContainerVisible(Lcom/transsion/camera/app/ui/AbstractTopBarUI;I)V

    :cond_12
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 2

    .line 1174
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 1175
    iget-object p1, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI$4;->this$0:Lcom/transsion/camera/app/ui/AbstractTopBarUI;

    invoke-virtual {p1}, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->isPopupShowing()Z

    move-result p1

    if-eqz p1, :cond_12

    .line 1176
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI$4;->this$0:Lcom/transsion/camera/app/ui/AbstractTopBarUI;

    const/16 p1, 0x8

    invoke-static {p0, p1}, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->-$$Nest$msetTopBarContainerVisible(Lcom/transsion/camera/app/ui/AbstractTopBarUI;I)V

    :cond_12
    return-void
.end method
