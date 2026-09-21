.class Lcom/transsion/camera/app/ui/setting/PopupOption$1$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/camera/app/ui/setting/PopupOption$1;->onLayoutEnd()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/transsion/camera/app/ui/setting/PopupOption$1;


# direct methods
.method constructor <init>(Lcom/transsion/camera/app/ui/setting/PopupOption$1;)V
    .registers 2

    .line 167
    iput-object p1, p0, Lcom/transsion/camera/app/ui/setting/PopupOption$1$1;->this$1:Lcom/transsion/camera/app/ui/setting/PopupOption$1;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .registers 2

    .line 170
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationCancel(Landroid/animation/Animator;)V

    .line 171
    iget-object p0, p0, Lcom/transsion/camera/app/ui/setting/PopupOption$1$1;->this$1:Lcom/transsion/camera/app/ui/setting/PopupOption$1;

    iget-object p0, p0, Lcom/transsion/camera/app/ui/setting/PopupOption$1;->this$0:Lcom/transsion/camera/app/ui/setting/PopupOption;

    const/4 p1, 0x1

    invoke-static {p0, p1}, Lcom/transsion/camera/app/ui/setting/PopupOption;->-$$Nest$fputmEnable(Lcom/transsion/camera/app/ui/setting/PopupOption;Z)V

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 2

    .line 176
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 177
    iget-object p0, p0, Lcom/transsion/camera/app/ui/setting/PopupOption$1$1;->this$1:Lcom/transsion/camera/app/ui/setting/PopupOption$1;

    iget-object p0, p0, Lcom/transsion/camera/app/ui/setting/PopupOption$1;->this$0:Lcom/transsion/camera/app/ui/setting/PopupOption;

    const/4 p1, 0x1

    invoke-static {p0, p1}, Lcom/transsion/camera/app/ui/setting/PopupOption;->-$$Nest$fputmEnable(Lcom/transsion/camera/app/ui/setting/PopupOption;Z)V

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .registers 3

    .line 182
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationStart(Landroid/animation/Animator;)V

    .line 183
    iget-object p1, p0, Lcom/transsion/camera/app/ui/setting/PopupOption$1$1;->this$1:Lcom/transsion/camera/app/ui/setting/PopupOption$1;

    iget-object p1, p1, Lcom/transsion/camera/app/ui/setting/PopupOption$1;->this$0:Lcom/transsion/camera/app/ui/setting/PopupOption;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/transsion/camera/app/ui/setting/PopupOption;->-$$Nest$fputmEnable(Lcom/transsion/camera/app/ui/setting/PopupOption;Z)V

    .line 184
    iget-object p0, p0, Lcom/transsion/camera/app/ui/setting/PopupOption$1$1;->this$1:Lcom/transsion/camera/app/ui/setting/PopupOption$1;

    iget-object p0, p0, Lcom/transsion/camera/app/ui/setting/PopupOption$1;->this$0:Lcom/transsion/camera/app/ui/setting/PopupOption;

    invoke-static {p0, v0}, Lcom/transsion/camera/app/ui/setting/PopupOption;->-$$Nest$fputmIsShowing(Lcom/transsion/camera/app/ui/setting/PopupOption;Z)V

    return-void
.end method
