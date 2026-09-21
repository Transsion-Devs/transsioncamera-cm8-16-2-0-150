.class public Lcom/transsion/camera/app/ui/widget/OverScrollBounceEffectDecoratorBase$OverScrollingState;
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
    name = "OverScrollingState"
.end annotation


# instance fields
.field final mMoveAttr:Lcom/transsion/camera/app/ui/widget/OverScrollBounceEffectDecoratorBase$MotionAttributes;

.field protected final mTouchDragRatioBck:F

.field protected final mTouchDragRatioFwd:F

.field final synthetic this$0:Lcom/transsion/camera/app/ui/widget/OverScrollBounceEffectDecoratorBase;


# direct methods
.method public constructor <init>(Lcom/transsion/camera/app/ui/widget/OverScrollBounceEffectDecoratorBase;FF)V
    .registers 4

    .line 199
    iput-object p1, p0, Lcom/transsion/camera/app/ui/widget/OverScrollBounceEffectDecoratorBase$OverScrollingState;->this$0:Lcom/transsion/camera/app/ui/widget/OverScrollBounceEffectDecoratorBase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 200
    invoke-virtual {p1}, Lcom/transsion/camera/app/ui/widget/OverScrollBounceEffectDecoratorBase;->createMotionAttributes()Lcom/transsion/camera/app/ui/widget/OverScrollBounceEffectDecoratorBase$MotionAttributes;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/app/ui/widget/OverScrollBounceEffectDecoratorBase$OverScrollingState;->mMoveAttr:Lcom/transsion/camera/app/ui/widget/OverScrollBounceEffectDecoratorBase$MotionAttributes;

    .line 201
    iput p2, p0, Lcom/transsion/camera/app/ui/widget/OverScrollBounceEffectDecoratorBase$OverScrollingState;->mTouchDragRatioFwd:F

    .line 202
    iput p3, p0, Lcom/transsion/camera/app/ui/widget/OverScrollBounceEffectDecoratorBase$OverScrollingState;->mTouchDragRatioBck:F

    return-void
.end method


# virtual methods
.method public handleEntryTransition(Lcom/transsion/camera/app/ui/widget/OverScrollBounceEffectDecoratorBase$IDecoratorState;)V
    .registers 2

    return-void
.end method

.method public handleMoveTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 12

    .line 210
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/OverScrollBounceEffectDecoratorBase$OverScrollingState;->this$0:Lcom/transsion/camera/app/ui/widget/OverScrollBounceEffectDecoratorBase;

    iget-object v0, v0, Lcom/transsion/camera/app/ui/widget/OverScrollBounceEffectDecoratorBase;->mStartAttr:Lcom/transsion/camera/app/ui/widget/OverScrollBounceEffectDecoratorBase$OverScrollStartAttributes;

    iget v0, v0, Lcom/transsion/camera/app/ui/widget/OverScrollBounceEffectDecoratorBase$OverScrollStartAttributes;->mPointerId:I

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v2

    const/4 v3, 0x1

    if-eq v0, v2, :cond_16

    .line 211
    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/OverScrollBounceEffectDecoratorBase$OverScrollingState;->this$0:Lcom/transsion/camera/app/ui/widget/OverScrollBounceEffectDecoratorBase;

    iget-object p1, p0, Lcom/transsion/camera/app/ui/widget/OverScrollBounceEffectDecoratorBase;->mBounceBackState:Lcom/transsion/camera/app/ui/widget/OverScrollBounceEffectDecoratorBase$BounceBackState;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/widget/OverScrollBounceEffectDecoratorBase;->issueStateTransition(Lcom/transsion/camera/app/ui/widget/OverScrollBounceEffectDecoratorBase$IDecoratorState;)V

    return v3

    .line 215
    :cond_16
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/OverScrollBounceEffectDecoratorBase$OverScrollingState;->this$0:Lcom/transsion/camera/app/ui/widget/OverScrollBounceEffectDecoratorBase;

    iget-object v0, v0, Lcom/transsion/camera/app/ui/widget/OverScrollBounceEffectDecoratorBase;->mViewAdapter:Lcom/transsion/camera/app/ui/widget/IOverScrollDecoratorAdapter;

    invoke-interface {v0}, Lcom/transsion/camera/app/ui/widget/IOverScrollDecoratorAdapter;->getView()Landroid/view/View;

    move-result-object v0

    .line 216
    iget-object v2, p0, Lcom/transsion/camera/app/ui/widget/OverScrollBounceEffectDecoratorBase$OverScrollingState;->mMoveAttr:Lcom/transsion/camera/app/ui/widget/OverScrollBounceEffectDecoratorBase$MotionAttributes;

    invoke-virtual {v2, v0, p1}, Lcom/transsion/camera/app/ui/widget/OverScrollBounceEffectDecoratorBase$MotionAttributes;->init(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v2

    if-nez v2, :cond_27

    return v3

    .line 221
    :cond_27
    iget-object v2, p0, Lcom/transsion/camera/app/ui/widget/OverScrollBounceEffectDecoratorBase$OverScrollingState;->mMoveAttr:Lcom/transsion/camera/app/ui/widget/OverScrollBounceEffectDecoratorBase$MotionAttributes;

    iget v4, v2, Lcom/transsion/camera/app/ui/widget/OverScrollBounceEffectDecoratorBase$MotionAttributes;->mDeltaOffset:F

    iget-boolean v5, v2, Lcom/transsion/camera/app/ui/widget/OverScrollBounceEffectDecoratorBase$MotionAttributes;->mDir:Z

    iget-object v6, p0, Lcom/transsion/camera/app/ui/widget/OverScrollBounceEffectDecoratorBase$OverScrollingState;->this$0:Lcom/transsion/camera/app/ui/widget/OverScrollBounceEffectDecoratorBase;

    iget-object v7, v6, Lcom/transsion/camera/app/ui/widget/OverScrollBounceEffectDecoratorBase;->mStartAttr:Lcom/transsion/camera/app/ui/widget/OverScrollBounceEffectDecoratorBase$OverScrollStartAttributes;

    iget-boolean v8, v7, Lcom/transsion/camera/app/ui/widget/OverScrollBounceEffectDecoratorBase$OverScrollStartAttributes;->mDir:Z

    if-ne v5, v8, :cond_38

    iget v9, p0, Lcom/transsion/camera/app/ui/widget/OverScrollBounceEffectDecoratorBase$OverScrollingState;->mTouchDragRatioFwd:F

    goto :goto_3a

    :cond_38
    iget v9, p0, Lcom/transsion/camera/app/ui/widget/OverScrollBounceEffectDecoratorBase$OverScrollingState;->mTouchDragRatioBck:F

    :goto_3a
    div-float/2addr v4, v9

    .line 222
    iget v2, v2, Lcom/transsion/camera/app/ui/widget/OverScrollBounceEffectDecoratorBase$MotionAttributes;->mAbsOffset:F

    add-float/2addr v2, v4

    if-eqz v8, :cond_48

    if-nez v5, :cond_48

    .line 227
    iget v9, v7, Lcom/transsion/camera/app/ui/widget/OverScrollBounceEffectDecoratorBase$OverScrollStartAttributes;->mAbsOffset:F

    cmpg-float v9, v2, v9

    if-lez v9, :cond_52

    :cond_48
    if-nez v8, :cond_5f

    if-eqz v5, :cond_5f

    iget v5, v7, Lcom/transsion/camera/app/ui/widget/OverScrollBounceEffectDecoratorBase$OverScrollStartAttributes;->mAbsOffset:F

    cmpl-float v5, v2, v5

    if-ltz v5, :cond_5f

    .line 229
    :cond_52
    iget v1, v7, Lcom/transsion/camera/app/ui/widget/OverScrollBounceEffectDecoratorBase$OverScrollStartAttributes;->mAbsOffset:F

    invoke-virtual {v6, v0, v1, p1}, Lcom/transsion/camera/app/ui/widget/OverScrollBounceEffectDecoratorBase;->translateViewAndEvent(Landroid/view/View;FLandroid/view/MotionEvent;)V

    .line 231
    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/OverScrollBounceEffectDecoratorBase$OverScrollingState;->this$0:Lcom/transsion/camera/app/ui/widget/OverScrollBounceEffectDecoratorBase;

    iget-object p1, p0, Lcom/transsion/camera/app/ui/widget/OverScrollBounceEffectDecoratorBase;->mIdleState:Lcom/transsion/camera/app/ui/widget/OverScrollBounceEffectDecoratorBase$IdleState;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/widget/OverScrollBounceEffectDecoratorBase;->issueStateTransition(Lcom/transsion/camera/app/ui/widget/OverScrollBounceEffectDecoratorBase$IDecoratorState;)V

    return v3

    .line 235
    :cond_5f
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    if-eqz v5, :cond_6c

    .line 236
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    invoke-interface {v5, v3}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 239
    :cond_6c
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v5

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getHistoricalEventTime(I)J

    move-result-wide v7

    sub-long/2addr v5, v7

    const-wide/16 v7, 0x0

    cmp-long p1, v5, v7

    if-lez p1, :cond_81

    .line 241
    iget-object p1, p0, Lcom/transsion/camera/app/ui/widget/OverScrollBounceEffectDecoratorBase$OverScrollingState;->this$0:Lcom/transsion/camera/app/ui/widget/OverScrollBounceEffectDecoratorBase;

    long-to-float v1, v5

    div-float/2addr v4, v1

    iput v4, p1, Lcom/transsion/camera/app/ui/widget/OverScrollBounceEffectDecoratorBase;->mVelocity:F

    .line 244
    :cond_81
    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/OverScrollBounceEffectDecoratorBase$OverScrollingState;->this$0:Lcom/transsion/camera/app/ui/widget/OverScrollBounceEffectDecoratorBase;

    invoke-virtual {p0, v0, v2}, Lcom/transsion/camera/app/ui/widget/OverScrollBounceEffectDecoratorBase;->translateView(Landroid/view/View;F)V

    return v3
.end method

.method public handleUpOrCancelTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 2

    .line 251
    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/OverScrollBounceEffectDecoratorBase$OverScrollingState;->this$0:Lcom/transsion/camera/app/ui/widget/OverScrollBounceEffectDecoratorBase;

    iget-object p1, p0, Lcom/transsion/camera/app/ui/widget/OverScrollBounceEffectDecoratorBase;->mBounceBackState:Lcom/transsion/camera/app/ui/widget/OverScrollBounceEffectDecoratorBase$BounceBackState;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/widget/OverScrollBounceEffectDecoratorBase;->issueStateTransition(Lcom/transsion/camera/app/ui/widget/OverScrollBounceEffectDecoratorBase$IDecoratorState;)V

    const/4 p0, 0x0

    return p0
.end method
