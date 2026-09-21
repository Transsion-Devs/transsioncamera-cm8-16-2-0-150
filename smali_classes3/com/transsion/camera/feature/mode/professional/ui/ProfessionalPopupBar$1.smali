.class Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalPopupBar$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalPopupBar;->startHideAnim(FZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalPopupBar;

.field final synthetic val$notify:Z


# direct methods
.method constructor <init>(Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalPopupBar;Z)V
    .registers 3

    .line 246
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalPopupBar$1;->this$0:Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalPopupBar;

    iput-boolean p2, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalPopupBar$1;->val$notify:Z

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .registers 2

    .line 249
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationCancel(Landroid/animation/Animator;)V

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 3

    .line 254
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 255
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalPopupBar$1;->this$0:Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalPopupBar;

    invoke-static {p1}, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalPopupBar;->-$$Nest$fgetmContentRoot(Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalPopupBar;)Landroid/view/ViewGroup;

    move-result-object p1

    if-eqz p1, :cond_28

    .line 256
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalPopupBar$1;->this$0:Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalPopupBar;

    invoke-static {p1}, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalPopupBar;->-$$Nest$fgetmContentRoot(Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalPopupBar;)Landroid/view/ViewGroup;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 257
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalPopupBar$1;->this$0:Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalPopupBar;

    invoke-static {p1}, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalPopupBar;->-$$Nest$fgetmContentRoot(Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalPopupBar;)Landroid/view/ViewGroup;

    move-result-object p1

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 258
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalPopupBar$1;->this$0:Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalPopupBar;

    invoke-static {p1}, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalPopupBar;->-$$Nest$fgetmContentRoot(Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalPopupBar;)Landroid/view/ViewGroup;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setY(F)V

    .line 260
    :cond_28
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalPopupBar$1;->this$0:Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalPopupBar;

    invoke-static {p1}, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalPopupBar;->-$$Nest$fgetmStateCallback(Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalPopupBar;)Lcom/transsion/camera/app/common/ui/setting/IPopupOptionControl$PopupOptionStateCallback;

    move-result-object p1

    if-eqz p1, :cond_3b

    .line 261
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalPopupBar$1;->this$0:Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalPopupBar;

    invoke-static {p1}, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalPopupBar;->-$$Nest$fgetmStateCallback(Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalPopupBar;)Lcom/transsion/camera/app/common/ui/setting/IPopupOptionControl$PopupOptionStateCallback;

    move-result-object p1

    iget-boolean v0, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalPopupBar$1;->val$notify:Z

    invoke-interface {p1, v0}, Lcom/transsion/camera/app/common/ui/setting/IPopupOptionControl$PopupOptionStateCallback;->onDismiss(Z)V

    .line 263
    :cond_3b
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalPopupBar$1;->this$0:Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalPopupBar;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalPopupBar;->-$$Nest$fputmStateCallback(Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalPopupBar;Lcom/transsion/camera/app/common/ui/setting/IPopupOptionControl$PopupOptionStateCallback;)V

    return-void
.end method
