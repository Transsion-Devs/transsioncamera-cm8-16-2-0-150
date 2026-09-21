.class Lcom/transsion/widgetslib/view/damping/HeaderHelper$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/widgetslib/view/damping/HeaderHelper;->refreshFinishAnim(F)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/widgetslib/view/damping/HeaderHelper;


# direct methods
.method constructor <init>(Lcom/transsion/widgetslib/view/damping/HeaderHelper;)V
    .registers 2

    .line 212
    iput-object p1, p0, Lcom/transsion/widgetslib/view/damping/HeaderHelper$4;->this$0:Lcom/transsion/widgetslib/view/damping/HeaderHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .registers 4

    .line 215
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    .line 216
    instance-of v0, p1, Ljava/lang/Float;

    if-eqz v0, :cond_19

    .line 217
    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    .line 218
    iget-object v0, p0, Lcom/transsion/widgetslib/view/damping/HeaderHelper$4;->this$0:Lcom/transsion/widgetslib/view/damping/HeaderHelper;

    float-to-int v1, p1

    # invokes: Lcom/transsion/widgetslib/view/damping/HeaderHelper;->updateHeaderLayoutParams(I)V
    invoke-static {v0, v1}, Lcom/transsion/widgetslib/view/damping/HeaderHelper;->access$400(Lcom/transsion/widgetslib/view/damping/HeaderHelper;I)V

    .line 219
    iget-object p0, p0, Lcom/transsion/widgetslib/view/damping/HeaderHelper$4;->this$0:Lcom/transsion/widgetslib/view/damping/HeaderHelper;

    # invokes: Lcom/transsion/widgetslib/view/damping/HeaderHelper;->refreshTitleLayout(F)V
    invoke-static {p0, p1}, Lcom/transsion/widgetslib/view/damping/HeaderHelper;->access$500(Lcom/transsion/widgetslib/view/damping/HeaderHelper;F)V

    :cond_19
    return-void
.end method
