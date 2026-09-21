.class Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->initAnimScrollBarFade()V
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

    .line 99
    iput-object p1, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout$1;->this$0:Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .registers 3

    .line 102
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    .line 103
    instance-of v0, p1, Ljava/lang/Float;

    if-eqz v0, :cond_1f

    iget-object v0, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout$1;->this$0:Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;

    # getter for: Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->mHasScrollBar:Z
    invoke-static {v0}, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->access$000(Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;)Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 104
    iget-object p0, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout$1;->this$0:Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;

    # getter for: Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->mViewScrollBar:Landroid/view/View;
    invoke-static {p0}, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->access$100(Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;)Landroid/view/View;

    move-result-object p0

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-virtual {p0, p1}, Landroid/view/View;->setAlpha(F)V

    :cond_1f
    return-void
.end method
