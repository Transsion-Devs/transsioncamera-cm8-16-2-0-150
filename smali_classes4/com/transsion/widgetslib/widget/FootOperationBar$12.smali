.class Lcom/transsion/widgetslib/widget/FootOperationBar$12;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/widgetslib/widget/FootOperationBar;->closeAnimator()V
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

    .line 1089
    iput-object p1, p0, Lcom/transsion/widgetslib/widget/FootOperationBar$12;->this$0:Lcom/transsion/widgetslib/widget/FootOperationBar;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 3

    .line 1092
    iget-object p1, p0, Lcom/transsion/widgetslib/widget/FootOperationBar$12;->this$0:Lcom/transsion/widgetslib/widget/FootOperationBar;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 1093
    iget-object p1, p0, Lcom/transsion/widgetslib/widget/FootOperationBar$12;->this$0:Lcom/transsion/widgetslib/widget/FootOperationBar;

    const/4 v0, 0x0

    # setter for: Lcom/transsion/widgetslib/widget/FootOperationBar;->mAnim:Z
    invoke-static {p1, v0}, Lcom/transsion/widgetslib/widget/FootOperationBar;->access$1202(Lcom/transsion/widgetslib/widget/FootOperationBar;Z)Z

    .line 1094
    iget-object p1, p0, Lcom/transsion/widgetslib/widget/FootOperationBar$12;->this$0:Lcom/transsion/widgetslib/widget/FootOperationBar;

    # getter for: Lcom/transsion/widgetslib/widget/FootOperationBar;->mMoreView:Landroid/view/View;
    invoke-static {p1}, Lcom/transsion/widgetslib/widget/FootOperationBar;->access$300(Lcom/transsion/widgetslib/widget/FootOperationBar;)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_1f

    .line 1095
    iget-object p1, p0, Lcom/transsion/widgetslib/widget/FootOperationBar$12;->this$0:Lcom/transsion/widgetslib/widget/FootOperationBar;

    # getter for: Lcom/transsion/widgetslib/widget/FootOperationBar;->mMoreView:Landroid/view/View;
    invoke-static {p1}, Lcom/transsion/widgetslib/widget/FootOperationBar;->access$300(Lcom/transsion/widgetslib/widget/FootOperationBar;)Landroid/view/View;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/View;->setEnabled(Z)V

    .line 1097
    :cond_1f
    iget-object p1, p0, Lcom/transsion/widgetslib/widget/FootOperationBar$12;->this$0:Lcom/transsion/widgetslib/widget/FootOperationBar;

    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    iget-object p0, p0, Lcom/transsion/widgetslib/widget/FootOperationBar$12;->this$0:Lcom/transsion/widgetslib/widget/FootOperationBar;

    # getter for: Lcom/transsion/widgetslib/widget/FootOperationBar;->mMyOnPreDrawListener:Lcom/transsion/widgetslib/widget/FootOperationBar$MyOnPreDrawListener;
    invoke-static {p0}, Lcom/transsion/widgetslib/widget/FootOperationBar;->access$1300(Lcom/transsion/widgetslib/widget/FootOperationBar;)Lcom/transsion/widgetslib/widget/FootOperationBar$MyOnPreDrawListener;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    return-void
.end method
