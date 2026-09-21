.class public Lcom/transsion/camera/app/ui/widget/OverScrollBounceEffectDecoratorBase$IdleState;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/app/ui/widget/OverScrollBounceEffectDecoratorBase$IDecoratorState;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/app/ui/widget/OverScrollBounceEffectDecoratorBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "IdleState"
.end annotation


# instance fields
.field final mMoveAttr:Lcom/transsion/camera/app/ui/widget/OverScrollBounceEffectDecoratorBase$MotionAttributes;

.field final synthetic this$0:Lcom/transsion/camera/app/ui/widget/OverScrollBounceEffectDecoratorBase;


# direct methods
.method public constructor <init>(Lcom/transsion/camera/app/ui/widget/OverScrollBounceEffectDecoratorBase;)V
    .registers 2

    .line 143
    iput-object p1, p0, Lcom/transsion/camera/app/ui/widget/OverScrollBounceEffectDecoratorBase$IdleState;->this$0:Lcom/transsion/camera/app/ui/widget/OverScrollBounceEffectDecoratorBase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 144
    invoke-virtual {p1}, Lcom/transsion/camera/app/ui/widget/OverScrollBounceEffectDecoratorBase;->createMotionAttributes()Lcom/transsion/camera/app/ui/widget/OverScrollBounceEffectDecoratorBase$MotionAttributes;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/app/ui/widget/OverScrollBounceEffectDecoratorBase$IdleState;->mMoveAttr:Lcom/transsion/camera/app/ui/widget/OverScrollBounceEffectDecoratorBase$MotionAttributes;

    return-void
.end method


# virtual methods
.method public handleEntryTransition(Lcom/transsion/camera/app/ui/widget/OverScrollBounceEffectDecoratorBase$IDecoratorState;)V
    .registers 2

    return-void
.end method

.method public handleMoveTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 6

    .line 150
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/OverScrollBounceEffectDecoratorBase$IdleState;->this$0:Lcom/transsion/camera/app/ui/widget/OverScrollBounceEffectDecoratorBase;

    iget-object v0, v0, Lcom/transsion/camera/app/ui/widget/OverScrollBounceEffectDecoratorBase;->mViewAdapter:Lcom/transsion/camera/app/ui/widget/IOverScrollDecoratorAdapter;

    invoke-interface {v0}, Lcom/transsion/camera/app/ui/widget/IOverScrollDecoratorAdapter;->getView()Landroid/view/View;

    move-result-object v0

    .line 151
    iget-object v1, p0, Lcom/transsion/camera/app/ui/widget/OverScrollBounceEffectDecoratorBase$IdleState;->mMoveAttr:Lcom/transsion/camera/app/ui/widget/OverScrollBounceEffectDecoratorBase$MotionAttributes;

    invoke-virtual {v1, v0, p1}, Lcom/transsion/camera/app/ui/widget/OverScrollBounceEffectDecoratorBase$MotionAttributes;->init(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_12

    return v1

    .line 156
    :cond_12
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/OverScrollBounceEffectDecoratorBase$IdleState;->this$0:Lcom/transsion/camera/app/ui/widget/OverScrollBounceEffectDecoratorBase;

    iget-object v0, v0, Lcom/transsion/camera/app/ui/widget/OverScrollBounceEffectDecoratorBase;->mViewAdapter:Lcom/transsion/camera/app/ui/widget/IOverScrollDecoratorAdapter;

    invoke-interface {v0}, Lcom/transsion/camera/app/ui/widget/IOverScrollDecoratorAdapter;->isInAbsoluteStart()Z

    move-result v0

    if-eqz v0, :cond_22

    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/OverScrollBounceEffectDecoratorBase$IdleState;->mMoveAttr:Lcom/transsion/camera/app/ui/widget/OverScrollBounceEffectDecoratorBase$MotionAttributes;

    iget-boolean v0, v0, Lcom/transsion/camera/app/ui/widget/OverScrollBounceEffectDecoratorBase$MotionAttributes;->mDir:Z

    if-nez v0, :cond_32

    :cond_22
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/OverScrollBounceEffectDecoratorBase$IdleState;->this$0:Lcom/transsion/camera/app/ui/widget/OverScrollBounceEffectDecoratorBase;

    iget-object v0, v0, Lcom/transsion/camera/app/ui/widget/OverScrollBounceEffectDecoratorBase;->mViewAdapter:Lcom/transsion/camera/app/ui/widget/IOverScrollDecoratorAdapter;

    .line 157
    invoke-interface {v0}, Lcom/transsion/camera/app/ui/widget/IOverScrollDecoratorAdapter;->isInAbsoluteEnd()Z

    move-result v0

    if-eqz v0, :cond_58

    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/OverScrollBounceEffectDecoratorBase$IdleState;->mMoveAttr:Lcom/transsion/camera/app/ui/widget/OverScrollBounceEffectDecoratorBase$MotionAttributes;

    iget-boolean v0, v0, Lcom/transsion/camera/app/ui/widget/OverScrollBounceEffectDecoratorBase$MotionAttributes;->mDir:Z

    if-nez v0, :cond_58

    .line 160
    :cond_32
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/OverScrollBounceEffectDecoratorBase$IdleState;->this$0:Lcom/transsion/camera/app/ui/widget/OverScrollBounceEffectDecoratorBase;

    iget-object v0, v0, Lcom/transsion/camera/app/ui/widget/OverScrollBounceEffectDecoratorBase;->mStartAttr:Lcom/transsion/camera/app/ui/widget/OverScrollBounceEffectDecoratorBase$OverScrollStartAttributes;

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    iput v1, v0, Lcom/transsion/camera/app/ui/widget/OverScrollBounceEffectDecoratorBase$OverScrollStartAttributes;->mPointerId:I

    .line 161
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/OverScrollBounceEffectDecoratorBase$IdleState;->this$0:Lcom/transsion/camera/app/ui/widget/OverScrollBounceEffectDecoratorBase;

    iget-object v1, v0, Lcom/transsion/camera/app/ui/widget/OverScrollBounceEffectDecoratorBase;->mStartAttr:Lcom/transsion/camera/app/ui/widget/OverScrollBounceEffectDecoratorBase$OverScrollStartAttributes;

    iget-object v2, p0, Lcom/transsion/camera/app/ui/widget/OverScrollBounceEffectDecoratorBase$IdleState;->mMoveAttr:Lcom/transsion/camera/app/ui/widget/OverScrollBounceEffectDecoratorBase$MotionAttributes;

    iget v3, v2, Lcom/transsion/camera/app/ui/widget/OverScrollBounceEffectDecoratorBase$MotionAttributes;->mAbsOffset:F

    iput v3, v1, Lcom/transsion/camera/app/ui/widget/OverScrollBounceEffectDecoratorBase$OverScrollStartAttributes;->mAbsOffset:F

    .line 162
    iget-boolean v2, v2, Lcom/transsion/camera/app/ui/widget/OverScrollBounceEffectDecoratorBase$MotionAttributes;->mDir:Z

    iput-boolean v2, v1, Lcom/transsion/camera/app/ui/widget/OverScrollBounceEffectDecoratorBase$OverScrollStartAttributes;->mDir:Z

    .line 164
    iget-object v1, v0, Lcom/transsion/camera/app/ui/widget/OverScrollBounceEffectDecoratorBase;->mOverScrollingState:Lcom/transsion/camera/app/ui/widget/OverScrollBounceEffectDecoratorBase$OverScrollingState;

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/ui/widget/OverScrollBounceEffectDecoratorBase;->issueStateTransition(Lcom/transsion/camera/app/ui/widget/OverScrollBounceEffectDecoratorBase$IDecoratorState;)V

    .line 165
    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/OverScrollBounceEffectDecoratorBase$IdleState;->this$0:Lcom/transsion/camera/app/ui/widget/OverScrollBounceEffectDecoratorBase;

    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/OverScrollBounceEffectDecoratorBase;->mOverScrollingState:Lcom/transsion/camera/app/ui/widget/OverScrollBounceEffectDecoratorBase$OverScrollingState;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/widget/OverScrollBounceEffectDecoratorBase$OverScrollingState;->handleMoveTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0

    :cond_58
    return v1
.end method

.method public handleUpOrCancelTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 2

    const/4 p0, 0x0

    return p0
.end method
