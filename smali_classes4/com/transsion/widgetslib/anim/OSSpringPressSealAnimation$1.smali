.class Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation;->createStartAnimation(FF)Landroidx/dynamicanimation/animation/SpringAnimation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation;


# direct methods
.method constructor <init>(Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation;)V
    .registers 2

    .line 135
    iput-object p1, p0, Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation$1;->this$0:Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroidx/dynamicanimation/animation/DynamicAnimation;FF)V
    .registers 5

    .line 138
    iget-object v0, p0, Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation$1;->this$0:Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation;

    # getter for: Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation;->mViewHolder:Ljava/lang/ref/WeakReference;
    invoke-static {v0}, Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation;->access$2100(Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    if-eqz v0, :cond_3a

    iget-object v0, p0, Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation$1;->this$0:Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation;

    # getter for: Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation;->mViewHolder:Ljava/lang/ref/WeakReference;
    invoke-static {v0}, Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation;->access$2100(Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_15

    goto :goto_3a

    .line 144
    :cond_15
    iget-object v0, p0, Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation$1;->this$0:Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation;

    # getter for: Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation;->mViewHolder:Ljava/lang/ref/WeakReference;
    invoke-static {v0}, Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation;->access$2100(Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 145
    invoke-virtual {v0, p2}, Landroid/view/View;->setScaleX(F)V

    .line 146
    invoke-virtual {v0, p2}, Landroid/view/View;->setScaleY(F)V

    .line 147
    iget-object v0, p0, Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation$1;->this$0:Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation;

    # getter for: Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation;->mOnAnimationUpdateListener:Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation$OnAnimationUpdateListener;
    invoke-static {v0}, Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation;->access$2200(Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation;)Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation$OnAnimationUpdateListener;

    move-result-object v0

    if-eqz v0, :cond_45

    .line 148
    iget-object p0, p0, Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation$1;->this$0:Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation;

    # getter for: Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation;->mOnAnimationUpdateListener:Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation$OnAnimationUpdateListener;
    invoke-static {p0}, Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation;->access$2200(Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation;)Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation$OnAnimationUpdateListener;

    move-result-object p0

    const/4 v0, 0x1

    invoke-interface {p0, v0, p1, p2, p3}, Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation$OnAnimationUpdateListener;->onAnimationUpdate(ZLandroidx/dynamicanimation/animation/DynamicAnimation;FF)V

    return-void

    :cond_3a
    :goto_3a
    if-eqz p1, :cond_45

    .line 139
    invoke-virtual {p1}, Landroidx/dynamicanimation/animation/DynamicAnimation;->isRunning()Z

    move-result p0

    if-eqz p0, :cond_45

    .line 140
    invoke-virtual {p1}, Landroidx/dynamicanimation/animation/DynamicAnimation;->cancel()V

    :cond_45
    return-void
.end method
