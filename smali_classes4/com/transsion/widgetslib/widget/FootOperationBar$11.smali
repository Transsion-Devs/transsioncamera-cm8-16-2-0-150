.class Lcom/transsion/widgetslib/widget/FootOperationBar$11;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/widgetslib/widget/FootOperationBar;->openAnimator()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/widgetslib/widget/FootOperationBar;


# direct methods
.method constructor <init>(Lcom/transsion/widgetslib/widget/FootOperationBar;)V
    .registers 2

    .line 1069
    iput-object p1, p0, Lcom/transsion/widgetslib/widget/FootOperationBar$11;->this$0:Lcom/transsion/widgetslib/widget/FootOperationBar;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 2

    .line 1078
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 1079
    iget-object p0, p0, Lcom/transsion/widgetslib/widget/FootOperationBar$11;->this$0:Lcom/transsion/widgetslib/widget/FootOperationBar;

    const/4 p1, 0x0

    # setter for: Lcom/transsion/widgetslib/widget/FootOperationBar;->mAnim:Z
    invoke-static {p0, p1}, Lcom/transsion/widgetslib/widget/FootOperationBar;->access$1202(Lcom/transsion/widgetslib/widget/FootOperationBar;Z)Z

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .registers 2

    .line 1072
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationStart(Landroid/animation/Animator;)V

    .line 1073
    iget-object p0, p0, Lcom/transsion/widgetslib/widget/FootOperationBar$11;->this$0:Lcom/transsion/widgetslib/widget/FootOperationBar;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method
