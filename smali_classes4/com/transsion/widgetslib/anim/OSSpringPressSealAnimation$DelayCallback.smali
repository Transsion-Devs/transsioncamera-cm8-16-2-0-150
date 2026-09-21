.class Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation$DelayCallback;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DelayCallback"
.end annotation


# instance fields
.field private mHostViewWR:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mOsSpringPressSealAnimationWR:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/view/View;Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation;)V
    .registers 4

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation$DelayCallback;->mHostViewWR:Ljava/lang/ref/WeakReference;

    .line 54
    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation$DelayCallback;->mOsSpringPressSealAnimationWR:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 58
    iget-object v0, p0, Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation$DelayCallback;->mOsSpringPressSealAnimationWR:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_50

    .line 59
    iget-object p0, p0, Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation$DelayCallback;->mOsSpringPressSealAnimationWR:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation;

    .line 60
    # getter for: Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation;->endAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;
    invoke-static {p0}, Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation;->access$000(Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation;)Landroidx/dynamicanimation/animation/SpringAnimation;

    move-result-object v0

    if-eqz v0, :cond_27

    # getter for: Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation;->endAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;
    invoke-static {p0}, Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation;->access$000(Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation;)Landroidx/dynamicanimation/animation/SpringAnimation;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/dynamicanimation/animation/DynamicAnimation;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_27

    .line 61
    # getter for: Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation;->endAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;
    invoke-static {p0}, Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation;->access$000(Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation;)Landroidx/dynamicanimation/animation/SpringAnimation;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/dynamicanimation/animation/DynamicAnimation;->cancel()V

    .line 63
    :cond_27
    # getter for: Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation;->mCurrentStartValue:F
    invoke-static {p0}, Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation;->access$100(Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation;)F

    move-result v0

    # getter for: Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation;->mCurrentEndValue:F
    invoke-static {p0}, Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation;->access$200(Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation;)F

    move-result v1

    cmpl-float v0, v0, v1

    if-nez v0, :cond_3a

    .line 64
    # getter for: Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation;->mEndValue:F
    invoke-static {p0}, Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation;->access$300(Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation;)F

    move-result v0

    # setter for: Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation;->mCurrentEndValue:F
    invoke-static {p0, v0}, Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation;->access$202(Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation;F)F

    .line 66
    :cond_3a
    # getter for: Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation;->mCurrentStartValue:F
    invoke-static {p0}, Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation;->access$100(Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation;)F

    move-result v0

    # getter for: Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation;->mCurrentEndValue:F
    invoke-static {p0}, Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation;->access$200(Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation;)F

    move-result v1

    # invokes: Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation;->createStartAnimation(FF)Landroidx/dynamicanimation/animation/SpringAnimation;
    invoke-static {p0, v0, v1}, Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation;->access$500(Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation;FF)Landroidx/dynamicanimation/animation/SpringAnimation;

    move-result-object v0

    # setter for: Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation;->startAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;
    invoke-static {p0, v0}, Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation;->access$402(Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation;Landroidx/dynamicanimation/animation/SpringAnimation;)Landroidx/dynamicanimation/animation/SpringAnimation;

    .line 67
    # getter for: Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation;->startAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;
    invoke-static {p0}, Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation;->access$400(Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation;)Landroidx/dynamicanimation/animation/SpringAnimation;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/dynamicanimation/animation/SpringAnimation;->start()V

    :cond_50
    return-void
.end method
