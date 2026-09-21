.class Lcom/transsion/camera/featurelibs/aicommon/ui/IndicatorUI$5;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/camera/featurelibs/aicommon/ui/IndicatorUI;->startShotAnimation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/featurelibs/aicommon/ui/IndicatorUI;


# direct methods
.method constructor <init>(Lcom/transsion/camera/featurelibs/aicommon/ui/IndicatorUI;)V
    .registers 2

    .line 702
    iput-object p1, p0, Lcom/transsion/camera/featurelibs/aicommon/ui/IndicatorUI$5;->this$0:Lcom/transsion/camera/featurelibs/aicommon/ui/IndicatorUI;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .registers 2

    .line 705
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationCancel(Landroid/animation/Animator;)V

    .line 706
    iget-object p0, p0, Lcom/transsion/camera/featurelibs/aicommon/ui/IndicatorUI$5;->this$0:Lcom/transsion/camera/featurelibs/aicommon/ui/IndicatorUI;

    invoke-static {p0}, Lcom/transsion/camera/featurelibs/aicommon/ui/IndicatorUI;->-$$Nest$fgetmPreviewShotContainer(Lcom/transsion/camera/featurelibs/aicommon/ui/IndicatorUI;)Landroidx/cardview/widget/CardView;

    move-result-object p0

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 2

    .line 711
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 712
    iget-object p0, p0, Lcom/transsion/camera/featurelibs/aicommon/ui/IndicatorUI$5;->this$0:Lcom/transsion/camera/featurelibs/aicommon/ui/IndicatorUI;

    invoke-static {p0}, Lcom/transsion/camera/featurelibs/aicommon/ui/IndicatorUI;->-$$Nest$fgetmPreviewShotContainer(Lcom/transsion/camera/featurelibs/aicommon/ui/IndicatorUI;)Landroidx/cardview/widget/CardView;

    move-result-object p0

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .registers 2

    .line 717
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationStart(Landroid/animation/Animator;)V

    .line 718
    iget-object p0, p0, Lcom/transsion/camera/featurelibs/aicommon/ui/IndicatorUI$5;->this$0:Lcom/transsion/camera/featurelibs/aicommon/ui/IndicatorUI;

    invoke-static {p0}, Lcom/transsion/camera/featurelibs/aicommon/ui/IndicatorUI;->-$$Nest$fgetmPreviewShotContainer(Lcom/transsion/camera/featurelibs/aicommon/ui/IndicatorUI;)Landroidx/cardview/widget/CardView;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method
