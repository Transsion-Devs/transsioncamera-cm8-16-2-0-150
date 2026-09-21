.class Lcom/transsion/widgetslib/widget/FootOperationBar$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/widgetslib/widget/FootOperationBar;->resetClickListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/widgetslib/widget/FootOperationBar;

.field final synthetic val$longPressRunnable:Ljava/lang/Runnable;

.field final synthetic val$press:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/transsion/widgetslib/widget/FootOperationBar;Ljava/lang/Runnable;Landroid/view/View;)V
    .registers 4

    .line 555
    iput-object p1, p0, Lcom/transsion/widgetslib/widget/FootOperationBar$6;->this$0:Lcom/transsion/widgetslib/widget/FootOperationBar;

    iput-object p2, p0, Lcom/transsion/widgetslib/widget/FootOperationBar$6;->val$longPressRunnable:Ljava/lang/Runnable;

    iput-object p3, p0, Lcom/transsion/widgetslib/widget/FootOperationBar$6;->val$press:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 5

    .line 558
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    if-eqz p1, :cond_1d

    const/4 p2, 0x1

    if-eq p1, p2, :cond_d

    const/4 p2, 0x3

    if-eq p1, p2, :cond_d

    goto :goto_26

    .line 565
    :cond_d
    iget-object p1, p0, Lcom/transsion/widgetslib/widget/FootOperationBar$6;->this$0:Lcom/transsion/widgetslib/widget/FootOperationBar;

    iget-object p2, p0, Lcom/transsion/widgetslib/widget/FootOperationBar$6;->val$longPressRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, p2}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 566
    iget-object p1, p0, Lcom/transsion/widgetslib/widget/FootOperationBar$6;->this$0:Lcom/transsion/widgetslib/widget/FootOperationBar;

    iget-object p0, p0, Lcom/transsion/widgetslib/widget/FootOperationBar$6;->val$press:Landroid/view/View;

    const/4 p2, 0x0

    # invokes: Lcom/transsion/widgetslib/widget/FootOperationBar;->startAlphaAnimation(Landroid/view/View;F)V
    invoke-static {p1, p0, p2}, Lcom/transsion/widgetslib/widget/FootOperationBar;->access$900(Lcom/transsion/widgetslib/widget/FootOperationBar;Landroid/view/View;F)V

    goto :goto_26

    .line 561
    :cond_1d
    iget-object p1, p0, Lcom/transsion/widgetslib/widget/FootOperationBar$6;->this$0:Lcom/transsion/widgetslib/widget/FootOperationBar;

    iget-object p0, p0, Lcom/transsion/widgetslib/widget/FootOperationBar$6;->val$longPressRunnable:Ljava/lang/Runnable;

    const-wide/16 v0, 0x64

    invoke-virtual {p1, p0, v0, v1}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_26
    const/4 p0, 0x0

    return p0
.end method
