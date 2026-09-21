.class Lcom/transsion/camera/featurelibs/aicommon/ui/IndicatorUI$3;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/camera/featurelibs/aicommon/ui/IndicatorUI;->startIndicatorAnimation(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/featurelibs/aicommon/ui/IndicatorUI;

.field final synthetic val$show:Z


# direct methods
.method constructor <init>(Lcom/transsion/camera/featurelibs/aicommon/ui/IndicatorUI;Z)V
    .registers 3

    .line 343
    iput-object p1, p0, Lcom/transsion/camera/featurelibs/aicommon/ui/IndicatorUI$3;->this$0:Lcom/transsion/camera/featurelibs/aicommon/ui/IndicatorUI;

    iput-boolean p2, p0, Lcom/transsion/camera/featurelibs/aicommon/ui/IndicatorUI$3;->val$show:Z

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .registers 2

    .line 346
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationCancel(Landroid/animation/Animator;)V

    .line 347
    iget-object p1, p0, Lcom/transsion/camera/featurelibs/aicommon/ui/IndicatorUI$3;->this$0:Lcom/transsion/camera/featurelibs/aicommon/ui/IndicatorUI;

    invoke-static {p1}, Lcom/transsion/camera/featurelibs/aicommon/ui/IndicatorUI;->-$$Nest$fgetmIndicatorEntryRoot(Lcom/transsion/camera/featurelibs/aicommon/ui/IndicatorUI;)Landroid/view/View;

    move-result-object p1

    iget-boolean p0, p0, Lcom/transsion/camera/featurelibs/aicommon/ui/IndicatorUI$3;->val$show:Z

    if-eqz p0, :cond_f

    const/4 p0, 0x0

    goto :goto_10

    :cond_f
    const/4 p0, 0x4

    :goto_10
    invoke-virtual {p1, p0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 2

    .line 352
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 353
    iget-object p1, p0, Lcom/transsion/camera/featurelibs/aicommon/ui/IndicatorUI$3;->this$0:Lcom/transsion/camera/featurelibs/aicommon/ui/IndicatorUI;

    invoke-static {p1}, Lcom/transsion/camera/featurelibs/aicommon/ui/IndicatorUI;->-$$Nest$fgetmIndicatorEntryRoot(Lcom/transsion/camera/featurelibs/aicommon/ui/IndicatorUI;)Landroid/view/View;

    move-result-object p1

    iget-boolean p0, p0, Lcom/transsion/camera/featurelibs/aicommon/ui/IndicatorUI$3;->val$show:Z

    if-eqz p0, :cond_f

    const/4 p0, 0x0

    goto :goto_10

    :cond_f
    const/4 p0, 0x4

    :goto_10
    invoke-virtual {p1, p0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .registers 2

    .line 358
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationStart(Landroid/animation/Animator;)V

    .line 359
    iget-object p0, p0, Lcom/transsion/camera/featurelibs/aicommon/ui/IndicatorUI$3;->this$0:Lcom/transsion/camera/featurelibs/aicommon/ui/IndicatorUI;

    invoke-static {p0}, Lcom/transsion/camera/featurelibs/aicommon/ui/IndicatorUI;->-$$Nest$fgetmIndicatorEntryRoot(Lcom/transsion/camera/featurelibs/aicommon/ui/IndicatorUI;)Landroid/view/View;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method
