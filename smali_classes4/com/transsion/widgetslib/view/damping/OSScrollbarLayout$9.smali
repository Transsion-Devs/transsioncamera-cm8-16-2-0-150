.class Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout$9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;


# direct methods
.method constructor <init>(Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;)V
    .registers 2

    .line 545
    iput-object p1, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout$9;->this$0:Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 548
    iget-object v0, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout$9;->this$0:Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;

    # getter for: Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->mAnimScrollBarFade:Landroid/animation/ValueAnimator;
    invoke-static {v0}, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->access$1300(Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;)Landroid/animation/ValueAnimator;

    move-result-object v1

    # invokes: Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->cancelAnim(Landroid/animation/Animator;)V
    invoke-static {v0, v1}, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->access$1400(Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;Landroid/animation/Animator;)V

    .line 549
    iget-object p0, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout$9;->this$0:Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;

    # invokes: Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->playAnimScrollBarFade()V
    invoke-static {p0}, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->access$700(Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;)V

    return-void
.end method
