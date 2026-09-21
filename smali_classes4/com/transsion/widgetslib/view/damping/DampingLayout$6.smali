.class Lcom/transsion/widgetslib/view/damping/DampingLayout$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/widgetslib/view/damping/DampingLayout;->refreshFinishAnim()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/widgetslib/view/damping/DampingLayout;


# direct methods
.method constructor <init>(Lcom/transsion/widgetslib/view/damping/DampingLayout;)V
    .registers 2

    .line 372
    iput-object p1, p0, Lcom/transsion/widgetslib/view/damping/DampingLayout$6;->this$0:Lcom/transsion/widgetslib/view/damping/DampingLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .registers 3

    .line 375
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    .line 376
    instance-of v0, p1, Ljava/lang/Float;

    if-eqz v0, :cond_1c

    .line 377
    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    .line 378
    iget-object v0, p0, Lcom/transsion/widgetslib/view/damping/DampingLayout$6;->this$0:Lcom/transsion/widgetslib/view/damping/DampingLayout;

    # getter for: Lcom/transsion/widgetslib/view/damping/DampingLayout;->mLayoutContent:Landroid/view/View;
    invoke-static {v0}, Lcom/transsion/widgetslib/view/damping/DampingLayout;->access$700(Lcom/transsion/widgetslib/view/damping/DampingLayout;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->setTranslationY(F)V

    .line 379
    iget-object p0, p0, Lcom/transsion/widgetslib/view/damping/DampingLayout$6;->this$0:Lcom/transsion/widgetslib/view/damping/DampingLayout;

    # invokes: Lcom/transsion/widgetslib/view/damping/DampingLayout;->refreshTitleLayout(F)V
    invoke-static {p0, p1}, Lcom/transsion/widgetslib/view/damping/DampingLayout;->access$800(Lcom/transsion/widgetslib/view/damping/DampingLayout;F)V

    :cond_1c
    return-void
.end method
