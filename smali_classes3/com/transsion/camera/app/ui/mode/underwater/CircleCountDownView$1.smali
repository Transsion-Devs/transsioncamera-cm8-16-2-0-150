.class Lcom/transsion/camera/app/ui/mode/underwater/CircleCountDownView$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/camera/app/ui/mode/underwater/CircleCountDownView;->startCountDown()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/app/ui/mode/underwater/CircleCountDownView;


# direct methods
.method constructor <init>(Lcom/transsion/camera/app/ui/mode/underwater/CircleCountDownView;)V
    .registers 2

    .line 163
    iput-object p1, p0, Lcom/transsion/camera/app/ui/mode/underwater/CircleCountDownView$1;->this$0:Lcom/transsion/camera/app/ui/mode/underwater/CircleCountDownView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .registers 3

    .line 186
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationCancel(Landroid/animation/Animator;)V

    .line 187
    invoke-static {}, Lcom/transsion/camera/app/ui/mode/underwater/CircleCountDownView;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p1

    const-string v0, "onAnimationCancel"

    invoke-static {p1, v0}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 188
    iget-object p1, p0, Lcom/transsion/camera/app/ui/mode/underwater/CircleCountDownView$1;->this$0:Lcom/transsion/camera/app/ui/mode/underwater/CircleCountDownView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 189
    iget-object p1, p0, Lcom/transsion/camera/app/ui/mode/underwater/CircleCountDownView$1;->this$0:Lcom/transsion/camera/app/ui/mode/underwater/CircleCountDownView;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/transsion/camera/app/ui/mode/underwater/CircleCountDownView;->-$$Nest$fputmIsAnimatorCancelled(Lcom/transsion/camera/app/ui/mode/underwater/CircleCountDownView;Z)V

    .line 190
    iget-object p1, p0, Lcom/transsion/camera/app/ui/mode/underwater/CircleCountDownView$1;->this$0:Lcom/transsion/camera/app/ui/mode/underwater/CircleCountDownView;

    invoke-static {p1}, Lcom/transsion/camera/app/ui/mode/underwater/CircleCountDownView;->-$$Nest$fgetmCountDownListener(Lcom/transsion/camera/app/ui/mode/underwater/CircleCountDownView;)Lcom/transsion/camera/app/ui/mode/underwater/CircleCountDownView$OnCountDownListener;

    move-result-object p1

    if-eqz p1, :cond_2a

    .line 191
    iget-object p0, p0, Lcom/transsion/camera/app/ui/mode/underwater/CircleCountDownView$1;->this$0:Lcom/transsion/camera/app/ui/mode/underwater/CircleCountDownView;

    invoke-static {p0}, Lcom/transsion/camera/app/ui/mode/underwater/CircleCountDownView;->-$$Nest$fgetmCountDownListener(Lcom/transsion/camera/app/ui/mode/underwater/CircleCountDownView;)Lcom/transsion/camera/app/ui/mode/underwater/CircleCountDownView$OnCountDownListener;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/camera/app/ui/mode/underwater/CircleCountDownView$OnCountDownListener;->onCountDownCancelled()V

    :cond_2a
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 3

    .line 176
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 177
    invoke-static {}, Lcom/transsion/camera/app/ui/mode/underwater/CircleCountDownView;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p1

    const-string v0, "onAnimationEnd"

    invoke-static {p1, v0}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 178
    iget-object p1, p0, Lcom/transsion/camera/app/ui/mode/underwater/CircleCountDownView$1;->this$0:Lcom/transsion/camera/app/ui/mode/underwater/CircleCountDownView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 179
    iget-object p1, p0, Lcom/transsion/camera/app/ui/mode/underwater/CircleCountDownView$1;->this$0:Lcom/transsion/camera/app/ui/mode/underwater/CircleCountDownView;

    invoke-static {p1}, Lcom/transsion/camera/app/ui/mode/underwater/CircleCountDownView;->-$$Nest$fgetmIsAnimatorCancelled(Lcom/transsion/camera/app/ui/mode/underwater/CircleCountDownView;)Z

    move-result p1

    if-nez p1, :cond_2c

    iget-object p1, p0, Lcom/transsion/camera/app/ui/mode/underwater/CircleCountDownView$1;->this$0:Lcom/transsion/camera/app/ui/mode/underwater/CircleCountDownView;

    invoke-static {p1}, Lcom/transsion/camera/app/ui/mode/underwater/CircleCountDownView;->-$$Nest$fgetmCountDownListener(Lcom/transsion/camera/app/ui/mode/underwater/CircleCountDownView;)Lcom/transsion/camera/app/ui/mode/underwater/CircleCountDownView$OnCountDownListener;

    move-result-object p1

    if-eqz p1, :cond_2c

    .line 180
    iget-object p0, p0, Lcom/transsion/camera/app/ui/mode/underwater/CircleCountDownView$1;->this$0:Lcom/transsion/camera/app/ui/mode/underwater/CircleCountDownView;

    invoke-static {p0}, Lcom/transsion/camera/app/ui/mode/underwater/CircleCountDownView;->-$$Nest$fgetmCountDownListener(Lcom/transsion/camera/app/ui/mode/underwater/CircleCountDownView;)Lcom/transsion/camera/app/ui/mode/underwater/CircleCountDownView$OnCountDownListener;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/camera/app/ui/mode/underwater/CircleCountDownView$OnCountDownListener;->onCountDownFinished()V

    :cond_2c
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .registers 3

    .line 166
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationStart(Landroid/animation/Animator;)V

    .line 167
    invoke-static {}, Lcom/transsion/camera/app/ui/mode/underwater/CircleCountDownView;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p1

    const-string v0, "onAnimationStart"

    invoke-static {p1, v0}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 168
    iget-object p1, p0, Lcom/transsion/camera/app/ui/mode/underwater/CircleCountDownView$1;->this$0:Lcom/transsion/camera/app/ui/mode/underwater/CircleCountDownView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 169
    iget-object p1, p0, Lcom/transsion/camera/app/ui/mode/underwater/CircleCountDownView$1;->this$0:Lcom/transsion/camera/app/ui/mode/underwater/CircleCountDownView;

    invoke-static {p1}, Lcom/transsion/camera/app/ui/mode/underwater/CircleCountDownView;->-$$Nest$fgetmCountDownListener(Lcom/transsion/camera/app/ui/mode/underwater/CircleCountDownView;)Lcom/transsion/camera/app/ui/mode/underwater/CircleCountDownView$OnCountDownListener;

    move-result-object p1

    if-eqz p1, :cond_23

    .line 170
    iget-object p0, p0, Lcom/transsion/camera/app/ui/mode/underwater/CircleCountDownView$1;->this$0:Lcom/transsion/camera/app/ui/mode/underwater/CircleCountDownView;

    invoke-static {p0}, Lcom/transsion/camera/app/ui/mode/underwater/CircleCountDownView;->-$$Nest$fgetmCountDownListener(Lcom/transsion/camera/app/ui/mode/underwater/CircleCountDownView;)Lcom/transsion/camera/app/ui/mode/underwater/CircleCountDownView$OnCountDownListener;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/camera/app/ui/mode/underwater/CircleCountDownView$OnCountDownListener;->onCountDownStarted()V

    :cond_23
    return-void
.end method
