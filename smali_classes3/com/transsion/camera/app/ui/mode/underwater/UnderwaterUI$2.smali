.class Lcom/transsion/camera/app/ui/mode/underwater/UnderwaterUI$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/app/ui/mode/underwater/CircleCountDownView$OnCountDownListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/camera/app/ui/mode/underwater/UnderwaterUI;-><init>(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ILcom/transsion/camera/app/common/IAppUIControl$IHintControl;Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;Lcom/transsion/camera/app/common/IAppUI;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/app/ui/mode/underwater/UnderwaterUI;


# direct methods
.method constructor <init>(Lcom/transsion/camera/app/ui/mode/underwater/UnderwaterUI;)V
    .registers 2

    .line 132
    iput-object p1, p0, Lcom/transsion/camera/app/ui/mode/underwater/UnderwaterUI$2;->this$0:Lcom/transsion/camera/app/ui/mode/underwater/UnderwaterUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCountDownCancelled()V
    .registers 3

    .line 174
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/underwater/UnderwaterUI$2;->this$0:Lcom/transsion/camera/app/ui/mode/underwater/UnderwaterUI;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/mode/underwater/UnderwaterUI;->-$$Nest$fgetmCountDownView(Lcom/transsion/camera/app/ui/mode/underwater/UnderwaterUI;)Lcom/transsion/camera/app/ui/mode/underwater/CircleCountDownView;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 175
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/underwater/UnderwaterUI$2;->this$0:Lcom/transsion/camera/app/ui/mode/underwater/UnderwaterUI;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/mode/underwater/UnderwaterUI;->-$$Nest$fgetmCountDownRoot(Lcom/transsion/camera/app/ui/mode/underwater/UnderwaterUI;)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 177
    :cond_13
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/underwater/UnderwaterUI$2;->this$0:Lcom/transsion/camera/app/ui/mode/underwater/UnderwaterUI;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/mode/underwater/UnderwaterUI;->-$$Nest$fgetmCountDownListener(Lcom/transsion/camera/app/ui/mode/underwater/UnderwaterUI;)Lcom/transsion/camera/app/ui/mode/underwater/CircleCountDownView$OnCountDownListener;

    move-result-object v0

    if-eqz v0, :cond_24

    .line 178
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/underwater/UnderwaterUI$2;->this$0:Lcom/transsion/camera/app/ui/mode/underwater/UnderwaterUI;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/mode/underwater/UnderwaterUI;->-$$Nest$fgetmCountDownListener(Lcom/transsion/camera/app/ui/mode/underwater/UnderwaterUI;)Lcom/transsion/camera/app/ui/mode/underwater/CircleCountDownView$OnCountDownListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/transsion/camera/app/ui/mode/underwater/CircleCountDownView$OnCountDownListener;->onCountDownCancelled()V

    .line 180
    :cond_24
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/underwater/UnderwaterUI$2;->this$0:Lcom/transsion/camera/app/ui/mode/underwater/UnderwaterUI;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/mode/underwater/UnderwaterUI;->-$$Nest$fgetmCountDownDisappearAnim(Lcom/transsion/camera/app/ui/mode/underwater/UnderwaterUI;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    if-eqz v0, :cond_41

    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/underwater/UnderwaterUI$2;->this$0:Lcom/transsion/camera/app/ui/mode/underwater/UnderwaterUI;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/mode/underwater/UnderwaterUI;->-$$Nest$fgetmCountDownDisappearAnim(Lcom/transsion/camera/app/ui/mode/underwater/UnderwaterUI;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/Animator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_41

    .line 181
    iget-object p0, p0, Lcom/transsion/camera/app/ui/mode/underwater/UnderwaterUI$2;->this$0:Lcom/transsion/camera/app/ui/mode/underwater/UnderwaterUI;

    invoke-static {p0}, Lcom/transsion/camera/app/ui/mode/underwater/UnderwaterUI;->-$$Nest$fgetmCountDownDisappearAnim(Lcom/transsion/camera/app/ui/mode/underwater/UnderwaterUI;)Landroid/animation/ObjectAnimator;

    move-result-object p0

    invoke-virtual {p0}, Landroid/animation/Animator;->cancel()V

    :cond_41
    return-void
.end method

.method public onCountDownFinished()V
    .registers 3

    .line 160
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/underwater/UnderwaterUI$2;->this$0:Lcom/transsion/camera/app/ui/mode/underwater/UnderwaterUI;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/ui/mode/underwater/UnderwaterUI;->setPowerLongPressed(Z)V

    .line 161
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/underwater/UnderwaterUI$2;->this$0:Lcom/transsion/camera/app/ui/mode/underwater/UnderwaterUI;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/mode/underwater/UnderwaterUI;->-$$Nest$fgetmCountDownView(Lcom/transsion/camera/app/ui/mode/underwater/UnderwaterUI;)Lcom/transsion/camera/app/ui/mode/underwater/CircleCountDownView;

    move-result-object v0

    if-eqz v0, :cond_19

    .line 162
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/underwater/UnderwaterUI$2;->this$0:Lcom/transsion/camera/app/ui/mode/underwater/UnderwaterUI;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/mode/underwater/UnderwaterUI;->-$$Nest$fgetmCountDownRoot(Lcom/transsion/camera/app/ui/mode/underwater/UnderwaterUI;)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 164
    :cond_19
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/underwater/UnderwaterUI$2;->this$0:Lcom/transsion/camera/app/ui/mode/underwater/UnderwaterUI;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/mode/underwater/UnderwaterUI;->-$$Nest$fgetmCountDownListener(Lcom/transsion/camera/app/ui/mode/underwater/UnderwaterUI;)Lcom/transsion/camera/app/ui/mode/underwater/CircleCountDownView$OnCountDownListener;

    move-result-object v0

    if-eqz v0, :cond_2a

    .line 165
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/underwater/UnderwaterUI$2;->this$0:Lcom/transsion/camera/app/ui/mode/underwater/UnderwaterUI;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/mode/underwater/UnderwaterUI;->-$$Nest$fgetmCountDownListener(Lcom/transsion/camera/app/ui/mode/underwater/UnderwaterUI;)Lcom/transsion/camera/app/ui/mode/underwater/CircleCountDownView$OnCountDownListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/transsion/camera/app/ui/mode/underwater/CircleCountDownView$OnCountDownListener;->onCountDownFinished()V

    .line 167
    :cond_2a
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/underwater/UnderwaterUI$2;->this$0:Lcom/transsion/camera/app/ui/mode/underwater/UnderwaterUI;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/mode/underwater/UnderwaterUI;->-$$Nest$fgetmCountDownDisappearAnim(Lcom/transsion/camera/app/ui/mode/underwater/UnderwaterUI;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    if-eqz v0, :cond_47

    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/underwater/UnderwaterUI$2;->this$0:Lcom/transsion/camera/app/ui/mode/underwater/UnderwaterUI;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/mode/underwater/UnderwaterUI;->-$$Nest$fgetmCountDownDisappearAnim(Lcom/transsion/camera/app/ui/mode/underwater/UnderwaterUI;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/Animator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_47

    .line 168
    iget-object p0, p0, Lcom/transsion/camera/app/ui/mode/underwater/UnderwaterUI$2;->this$0:Lcom/transsion/camera/app/ui/mode/underwater/UnderwaterUI;

    invoke-static {p0}, Lcom/transsion/camera/app/ui/mode/underwater/UnderwaterUI;->-$$Nest$fgetmCountDownDisappearAnim(Lcom/transsion/camera/app/ui/mode/underwater/UnderwaterUI;)Landroid/animation/ObjectAnimator;

    move-result-object p0

    invoke-virtual {p0}, Landroid/animation/Animator;->cancel()V

    :cond_47
    return-void
.end method

.method public onCountDownFinishedPrepare()V
    .registers 5

    .line 146
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/underwater/UnderwaterUI$2;->this$0:Lcom/transsion/camera/app/ui/mode/underwater/UnderwaterUI;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/mode/underwater/UnderwaterUI;->-$$Nest$fgetmCountDownAnimRoot(Lcom/transsion/camera/app/ui/mode/underwater/UnderwaterUI;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_4f

    .line 147
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/underwater/UnderwaterUI$2;->this$0:Lcom/transsion/camera/app/ui/mode/underwater/UnderwaterUI;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/mode/underwater/UnderwaterUI;->-$$Nest$fgetmCountDownDisappearAnim(Lcom/transsion/camera/app/ui/mode/underwater/UnderwaterUI;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    if-nez v0, :cond_3a

    .line 148
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/underwater/UnderwaterUI$2;->this$0:Lcom/transsion/camera/app/ui/mode/underwater/UnderwaterUI;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/mode/underwater/UnderwaterUI;->-$$Nest$fgetmCountDownAnimRoot(Lcom/transsion/camera/app/ui/mode/underwater/UnderwaterUI;)Landroid/view/View;

    move-result-object v1

    sget-object v2, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v3, 0x2

    new-array v3, v3, [F

    fill-array-data v3, :array_50

    invoke-static {v1, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/app/ui/mode/underwater/UnderwaterUI;->-$$Nest$fputmCountDownDisappearAnim(Lcom/transsion/camera/app/ui/mode/underwater/UnderwaterUI;Landroid/animation/ObjectAnimator;)V

    .line 149
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/underwater/UnderwaterUI$2;->this$0:Lcom/transsion/camera/app/ui/mode/underwater/UnderwaterUI;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/mode/underwater/UnderwaterUI;->-$$Nest$fgetmCountDownDisappearAnim(Lcom/transsion/camera/app/ui/mode/underwater/UnderwaterUI;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    const-wide/16 v1, 0xfa

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 150
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/underwater/UnderwaterUI$2;->this$0:Lcom/transsion/camera/app/ui/mode/underwater/UnderwaterUI;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/mode/underwater/UnderwaterUI;->-$$Nest$fgetmCountDownDisappearAnim(Lcom/transsion/camera/app/ui/mode/underwater/UnderwaterUI;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 152
    :cond_3a
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/underwater/UnderwaterUI$2;->this$0:Lcom/transsion/camera/app/ui/mode/underwater/UnderwaterUI;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/mode/underwater/UnderwaterUI;->-$$Nest$fgetmCountDownDisappearAnim(Lcom/transsion/camera/app/ui/mode/underwater/UnderwaterUI;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/Animator;->isRunning()Z

    move-result v0

    if-nez v0, :cond_4f

    .line 153
    iget-object p0, p0, Lcom/transsion/camera/app/ui/mode/underwater/UnderwaterUI$2;->this$0:Lcom/transsion/camera/app/ui/mode/underwater/UnderwaterUI;

    invoke-static {p0}, Lcom/transsion/camera/app/ui/mode/underwater/UnderwaterUI;->-$$Nest$fgetmCountDownDisappearAnim(Lcom/transsion/camera/app/ui/mode/underwater/UnderwaterUI;)Landroid/animation/ObjectAnimator;

    move-result-object p0

    invoke-virtual {p0}, Landroid/animation/ObjectAnimator;->start()V

    :cond_4f
    return-void

    :array_50
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method public onCountDownStarted()V
    .registers 3

    .line 135
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/underwater/UnderwaterUI$2;->this$0:Lcom/transsion/camera/app/ui/mode/underwater/UnderwaterUI;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/mode/underwater/UnderwaterUI;->-$$Nest$fgetmCountDownView(Lcom/transsion/camera/app/ui/mode/underwater/UnderwaterUI;)Lcom/transsion/camera/app/ui/mode/underwater/CircleCountDownView;

    move-result-object v0

    if-eqz v0, :cond_1d

    .line 136
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/underwater/UnderwaterUI$2;->this$0:Lcom/transsion/camera/app/ui/mode/underwater/UnderwaterUI;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/mode/underwater/UnderwaterUI;->-$$Nest$fgetmCountDownRoot(Lcom/transsion/camera/app/ui/mode/underwater/UnderwaterUI;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 137
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/underwater/UnderwaterUI$2;->this$0:Lcom/transsion/camera/app/ui/mode/underwater/UnderwaterUI;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/mode/underwater/UnderwaterUI;->-$$Nest$fgetmCountDownAnimRoot(Lcom/transsion/camera/app/ui/mode/underwater/UnderwaterUI;)Landroid/view/View;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 139
    :cond_1d
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/underwater/UnderwaterUI$2;->this$0:Lcom/transsion/camera/app/ui/mode/underwater/UnderwaterUI;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/mode/underwater/UnderwaterUI;->-$$Nest$fgetmCountDownListener(Lcom/transsion/camera/app/ui/mode/underwater/UnderwaterUI;)Lcom/transsion/camera/app/ui/mode/underwater/CircleCountDownView$OnCountDownListener;

    move-result-object v0

    if-eqz v0, :cond_2e

    .line 140
    iget-object p0, p0, Lcom/transsion/camera/app/ui/mode/underwater/UnderwaterUI$2;->this$0:Lcom/transsion/camera/app/ui/mode/underwater/UnderwaterUI;

    invoke-static {p0}, Lcom/transsion/camera/app/ui/mode/underwater/UnderwaterUI;->-$$Nest$fgetmCountDownListener(Lcom/transsion/camera/app/ui/mode/underwater/UnderwaterUI;)Lcom/transsion/camera/app/ui/mode/underwater/CircleCountDownView$OnCountDownListener;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/camera/app/ui/mode/underwater/CircleCountDownView$OnCountDownListener;->onCountDownStarted()V

    :cond_2e
    return-void
.end method
