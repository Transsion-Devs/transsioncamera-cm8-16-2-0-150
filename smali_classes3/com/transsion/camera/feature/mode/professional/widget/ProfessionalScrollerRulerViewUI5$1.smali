.class Lcom/transsion/camera/feature/mode/professional/widget/ProfessionalScrollerRulerViewUI5$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/mode/professional/widget/ProfessionalScrollerRulerViewUI5;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/feature/mode/professional/widget/ProfessionalScrollerRulerViewUI5;


# direct methods
.method constructor <init>(Lcom/transsion/camera/feature/mode/professional/widget/ProfessionalScrollerRulerViewUI5;)V
    .registers 2

    .line 12
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/professional/widget/ProfessionalScrollerRulerViewUI5$1;->this$0:Lcom/transsion/camera/feature/mode/professional/widget/ProfessionalScrollerRulerViewUI5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 15
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/professional/widget/ProfessionalScrollerRulerViewUI5$1;->this$0:Lcom/transsion/camera/feature/mode/professional/widget/ProfessionalScrollerRulerViewUI5;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/professional/widget/ProfessionalScrollerRulerViewUI5;->-$$Nest$fgetmValue(Lcom/transsion/camera/feature/mode/professional/widget/ProfessionalScrollerRulerViewUI5;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_39

    .line 16
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/professional/widget/ProfessionalScrollerRulerViewUI5$1;->this$0:Lcom/transsion/camera/feature/mode/professional/widget/ProfessionalScrollerRulerViewUI5;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/professional/widget/ProfessionalScrollerRulerViewUI5;->-$$Nest$fgetmValue(Lcom/transsion/camera/feature/mode/professional/widget/ProfessionalScrollerRulerViewUI5;)Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/transsion/camera/app/ui/widget/ScrollerRulerViewUI5;->getPointXByValue(Ljava/lang/String;)I
    invoke-static {v0, v1}, Lcom/transsion/camera/feature/mode/professional/widget/ProfessionalScrollerRulerViewUI5;->access$000(Lcom/transsion/camera/feature/mode/professional/widget/ProfessionalScrollerRulerViewUI5;Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_39

    .line 18
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/professional/widget/ProfessionalScrollerRulerViewUI5$1;->this$0:Lcom/transsion/camera/feature/mode/professional/widget/ProfessionalScrollerRulerViewUI5;

    # getter for: Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mCenterPointX:F
    invoke-static {v1}, Lcom/transsion/camera/feature/mode/professional/widget/ProfessionalScrollerRulerViewUI5;->access$100(Lcom/transsion/camera/feature/mode/professional/widget/ProfessionalScrollerRulerViewUI5;)F

    move-result v2

    float-to-int v2, v2

    sub-int/2addr v2, v0

    neg-int v0, v2

    iget-object v2, p0, Lcom/transsion/camera/feature/mode/professional/widget/ProfessionalScrollerRulerViewUI5$1;->this$0:Lcom/transsion/camera/feature/mode/professional/widget/ProfessionalScrollerRulerViewUI5;

    iget-object v2, v2, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v2}, Landroid/widget/Scroller;->getFinalX()I

    move-result v2

    sub-int/2addr v0, v2

    const/16 v2, 0x1f4

    # invokes: Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->doScroll(II)V
    invoke-static {v1, v0, v2}, Lcom/transsion/camera/feature/mode/professional/widget/ProfessionalScrollerRulerViewUI5;->access$200(Lcom/transsion/camera/feature/mode/professional/widget/ProfessionalScrollerRulerViewUI5;II)V

    .line 19
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/professional/widget/ProfessionalScrollerRulerViewUI5$1;->this$0:Lcom/transsion/camera/feature/mode/professional/widget/ProfessionalScrollerRulerViewUI5;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/professional/widget/ProfessionalScrollerRulerViewUI5;->-$$Nest$fgetmValue(Lcom/transsion/camera/feature/mode/professional/widget/ProfessionalScrollerRulerViewUI5;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/ui/widget/ScrollerRulerViewUI5;->setCurrentItem(Ljava/lang/String;)V

    .line 20
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/professional/widget/ProfessionalScrollerRulerViewUI5$1;->this$0:Lcom/transsion/camera/feature/mode/professional/widget/ProfessionalScrollerRulerViewUI5;

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_39
    return-void
.end method
