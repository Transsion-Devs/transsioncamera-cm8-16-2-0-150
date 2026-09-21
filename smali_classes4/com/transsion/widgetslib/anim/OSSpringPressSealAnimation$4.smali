.class Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationEndListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation;->createEndAnimation(FF)Landroidx/dynamicanimation/animation/SpringAnimation;
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

    .line 202
    iput-object p1, p0, Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation$4;->this$0:Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroidx/dynamicanimation/animation/DynamicAnimation;ZFF)V
    .registers 13

    if-nez p2, :cond_12

    .line 206
    iget-object v0, p0, Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation$4;->this$0:Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation;

    const/4 v1, 0x0

    # setter for: Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation;->mInterruptAnimation:Z
    invoke-static {v0, v1}, Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation;->access$2502(Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation;Z)Z

    .line 207
    iget-object v0, p0, Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation$4;->this$0:Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation;

    # getter for: Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation;->mStartValue:F
    invoke-static {v0}, Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation;->access$2300(Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation;)F

    move-result v1

    # setter for: Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation;->mCurrentStartValue:F
    invoke-static {v0, v1}, Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation;->access$102(Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation;F)F

    goto :goto_17

    .line 209
    :cond_12
    iget-object v0, p0, Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation$4;->this$0:Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation;

    # setter for: Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation;->mCurrentStartValue:F
    invoke-static {v0, p3}, Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation;->access$102(Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation;F)F

    .line 211
    :goto_17
    iget-object v0, p0, Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation$4;->this$0:Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation;

    # getter for: Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation;->mEndValue:F
    invoke-static {v0}, Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation;->access$300(Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation;)F

    move-result v1

    # setter for: Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation;->mCurrentEndValue:F
    invoke-static {v0, v1}, Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation;->access$202(Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation;F)F

    .line 212
    iget-object v0, p0, Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation$4;->this$0:Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation;

    # getter for: Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation;->mOnAnimationEndListener:Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation$OnAnimationEndListener;
    invoke-static {v0}, Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation;->access$2400(Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation;)Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation$OnAnimationEndListener;

    move-result-object v0

    if-eqz v0, :cond_3a

    .line 213
    iget-object v0, p0, Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation$4;->this$0:Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation;

    # getter for: Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation;->mOnAnimationEndListener:Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation$OnAnimationEndListener;
    invoke-static {v0}, Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation;->access$2400(Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation;)Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation$OnAnimationEndListener;

    move-result-object v1

    iget-object p0, p0, Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation$4;->this$0:Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation;

    iget-boolean v5, p0, Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation;->regret:Z

    const/4 v2, 0x0

    move-object v3, p1

    move v4, p2

    move v6, p3

    move v7, p4

    invoke-interface/range {v1 .. v7}, Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation$OnAnimationEndListener;->onAnimationEnd(ZLandroidx/dynamicanimation/animation/DynamicAnimation;ZZFF)V

    :cond_3a
    return-void
.end method
