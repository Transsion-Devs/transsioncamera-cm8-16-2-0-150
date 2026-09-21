.class public Lcom/transsion/camera/app/ui/view/manager/ButtonSwipeUpAction;
.super Lcom/transsion/camera/app/ui/view/manager/AbstractButtonAction;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/app/ui/view/manager/ButtonSwipeUpAction$SwipeUpListener;
    }
.end annotation


# instance fields
.field private final mActionEventListener:Lcom/transsion/camera/app/ui/view/manager/AbstractButtonAction$ActionEventListener;

.field private mCurTouchPointId:I

.field private mDownPoint:Landroid/graphics/PointF;

.field private mSwipeUpListener:Lcom/transsion/camera/app/ui/view/manager/ButtonSwipeUpAction$SwipeUpListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/transsion/camera/app/ui/view/manager/AbstractButtonAction$ActionEventListener;)V
    .registers 3

    .line 30
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/view/manager/AbstractButtonAction;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 16
    iput p1, p0, Lcom/transsion/camera/app/ui/view/manager/ButtonSwipeUpAction;->mCurTouchPointId:I

    .line 31
    iput-object p2, p0, Lcom/transsion/camera/app/ui/view/manager/ButtonSwipeUpAction;->mActionEventListener:Lcom/transsion/camera/app/ui/view/manager/AbstractButtonAction$ActionEventListener;

    return-void
.end method

.method private triggerCondition(Landroid/view/MotionEvent;)Z
    .registers 7

    .line 81
    iget-object v0, p0, Lcom/transsion/camera/app/ui/view/manager/AbstractButtonAction;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/transsion/camera/R$dimen;->floating_shutter_ui_move_thresh_hold_first:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    .line 82
    iget-object v1, p0, Lcom/transsion/camera/app/ui/view/manager/AbstractButtonAction;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/transsion/camera/R$dimen;->floating_shutter_ui_move_thresh_hold_second:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    .line 83
    iget v2, p0, Lcom/transsion/camera/app/ui/view/manager/AbstractButtonAction;->mOrientation:I

    const/4 v3, -0x1

    const/4 v4, 0x0

    if-ne v2, v3, :cond_20

    .line 84
    iput v4, p0, Lcom/transsion/camera/app/ui/view/manager/AbstractButtonAction;->mOrientation:I

    .line 87
    :cond_20
    iget v2, p0, Lcom/transsion/camera/app/ui/view/manager/AbstractButtonAction;->mScreenFormType:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_85

    .line 88
    iget p0, p0, Lcom/transsion/camera/app/ui/view/manager/AbstractButtonAction;->mOrientation:I

    if-eqz p0, :cond_7a

    const/16 v2, 0x5a

    if-eq p0, v2, :cond_5e

    const/16 v2, 0xb4

    if-eq p0, v2, :cond_42

    const/16 v1, 0x10e

    if-eq p0, v1, :cond_37

    goto/16 :goto_ba

    .line 99
    :cond_37
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p0

    neg-float p1, v0

    cmpg-float p0, p0, p1

    if-gez p0, :cond_41

    return v3

    :cond_41
    return v4

    .line 96
    :cond_42
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p0

    neg-float v0, v0

    cmpg-float p0, p0, v0

    if-ltz p0, :cond_5d

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p0

    cmpl-float p0, p0, v1

    if-lez p0, :cond_5c

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p0

    cmpl-float p0, p0, v1

    if-lez p0, :cond_5c

    goto :goto_5d

    :cond_5c
    return v4

    :cond_5d
    :goto_5d
    return v3

    .line 93
    :cond_5e
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p0

    neg-float v0, v0

    cmpg-float p0, p0, v0

    if-ltz p0, :cond_79

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p0

    cmpl-float p0, p0, v1

    if-lez p0, :cond_78

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p0

    cmpl-float p0, p0, v1

    if-lez p0, :cond_78

    goto :goto_79

    :cond_78
    return v4

    :cond_79
    :goto_79
    return v3

    .line 90
    :cond_7a
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p0

    neg-float p1, v0

    cmpg-float p0, p0, p1

    if-gez p0, :cond_84

    return v3

    :cond_84
    return v4

    :cond_85
    if-eqz v2, :cond_bb

    const/4 p0, 0x2

    if-eq v2, p0, :cond_bb

    const/4 p0, 0x3

    if-ne v2, p0, :cond_8e

    goto :goto_bb

    :cond_8e
    const/4 p0, 0x4

    if-ne v2, p0, :cond_ad

    .line 109
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p0

    neg-float v0, v0

    cmpg-float p0, p0, v0

    if-ltz p0, :cond_ac

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p0

    cmpl-float p0, p0, v1

    if-lez p0, :cond_ab

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p0

    cmpl-float p0, p0, v1

    if-lez p0, :cond_ab

    goto :goto_ac

    :cond_ab
    return v4

    :cond_ac
    :goto_ac
    return v3

    :cond_ad
    const/4 p0, 0x5

    if-ne v2, p0, :cond_ba

    .line 111
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p0

    neg-float p1, v0

    cmpg-float p0, p0, p1

    if-gez p0, :cond_ba

    return v3

    :cond_ba
    :goto_ba
    return v4

    .line 107
    :cond_bb
    :goto_bb
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p0

    neg-float p1, v0

    cmpg-float p0, p0, p1

    if-gez p0, :cond_c5

    return v3

    :cond_c5
    return v4
.end method


# virtual methods
.method public onTouchEvent(Landroid/view/MotionEvent;Landroid/graphics/Rect;)Z
    .registers 5

    .line 40
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p2

    and-int/lit16 p2, p2, 0xff

    const/4 v0, 0x0

    if-eqz p2, :cond_6d

    const/4 v1, 0x1

    if-eq p2, v1, :cond_55

    const/4 v1, 0x2

    if-eq p2, v1, :cond_14

    const/4 p1, 0x3

    if-eq p2, p1, :cond_55

    goto/16 :goto_8d

    .line 51
    :cond_14
    iget-object p2, p0, Lcom/transsion/camera/app/ui/view/manager/ButtonSwipeUpAction;->mDownPoint:Landroid/graphics/PointF;

    if-nez p2, :cond_19

    return v0

    .line 54
    :cond_19
    iget p2, p0, Lcom/transsion/camera/app/ui/view/manager/ButtonSwipeUpAction;->mCurTouchPointId:I

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    if-eq p2, v1, :cond_22

    return v0

    .line 57
    :cond_22
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/view/manager/ButtonSwipeUpAction;->triggerCondition(Landroid/view/MotionEvent;)Z

    move-result p2

    if-eqz p2, :cond_3f

    iget-object p2, p0, Lcom/transsion/camera/app/ui/view/manager/AbstractButtonAction;->mCurrentActionState:Lcom/transsion/camera/app/ui/view/manager/AbstractButtonAction$ActionState;

    sget-object v1, Lcom/transsion/camera/app/ui/view/manager/AbstractButtonAction$ActionState;->ACTIVATE:Lcom/transsion/camera/app/ui/view/manager/AbstractButtonAction$ActionState;

    if-ne p2, v1, :cond_3f

    iget-object p2, p0, Lcom/transsion/camera/app/ui/view/manager/ButtonSwipeUpAction;->mSwipeUpListener:Lcom/transsion/camera/app/ui/view/manager/ButtonSwipeUpAction$SwipeUpListener;

    invoke-interface {p2}, Lcom/transsion/camera/app/ui/view/manager/ButtonSwipeUpAction$SwipeUpListener;->onSwipeUp()Z

    move-result p2

    if-eqz p2, :cond_3f

    .line 58
    sget-object p2, Lcom/transsion/camera/app/ui/view/manager/AbstractButtonAction$ActionState;->CONSUME:Lcom/transsion/camera/app/ui/view/manager/AbstractButtonAction$ActionState;

    iput-object p2, p0, Lcom/transsion/camera/app/ui/view/manager/AbstractButtonAction;->mCurrentActionState:Lcom/transsion/camera/app/ui/view/manager/AbstractButtonAction$ActionState;

    .line 59
    iget-object p2, p0, Lcom/transsion/camera/app/ui/view/manager/ButtonSwipeUpAction;->mActionEventListener:Lcom/transsion/camera/app/ui/view/manager/AbstractButtonAction$ActionEventListener;

    invoke-interface {p2, p0}, Lcom/transsion/camera/app/ui/view/manager/AbstractButtonAction$ActionEventListener;->onConsume(Lcom/transsion/camera/app/ui/view/manager/AbstractButtonAction;)V

    .line 61
    :cond_3f
    iget-object p2, p0, Lcom/transsion/camera/app/ui/view/manager/AbstractButtonAction;->mCurrentActionState:Lcom/transsion/camera/app/ui/view/manager/AbstractButtonAction$ActionState;

    sget-object v1, Lcom/transsion/camera/app/ui/view/manager/AbstractButtonAction$ActionState;->CONSUME:Lcom/transsion/camera/app/ui/view/manager/AbstractButtonAction$ActionState;

    if-ne p2, v1, :cond_8d

    .line 62
    iget-object p0, p0, Lcom/transsion/camera/app/ui/view/manager/ButtonSwipeUpAction;->mSwipeUpListener:Lcom/transsion/camera/app/ui/view/manager/ButtonSwipeUpAction$SwipeUpListener;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result p2

    float-to-int p2, p2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result p1

    float-to-int p1, p1

    invoke-interface {p0, p2, p1}, Lcom/transsion/camera/app/ui/view/manager/ButtonSwipeUpAction$SwipeUpListener;->onMoveAfterSwipeUp(II)V

    goto :goto_8d

    .line 67
    :cond_55
    iget-object p1, p0, Lcom/transsion/camera/app/ui/view/manager/AbstractButtonAction;->mCurrentActionState:Lcom/transsion/camera/app/ui/view/manager/AbstractButtonAction$ActionState;

    sget-object p2, Lcom/transsion/camera/app/ui/view/manager/AbstractButtonAction$ActionState;->CONSUME:Lcom/transsion/camera/app/ui/view/manager/AbstractButtonAction$ActionState;

    if-ne p1, p2, :cond_60

    .line 68
    iget-object p1, p0, Lcom/transsion/camera/app/ui/view/manager/ButtonSwipeUpAction;->mSwipeUpListener:Lcom/transsion/camera/app/ui/view/manager/ButtonSwipeUpAction$SwipeUpListener;

    invoke-interface {p1}, Lcom/transsion/camera/app/ui/view/manager/ButtonSwipeUpAction$SwipeUpListener;->onLeaveAfterSwipeUp()V

    .line 70
    :cond_60
    iget-object p1, p0, Lcom/transsion/camera/app/ui/view/manager/ButtonSwipeUpAction;->mSwipeUpListener:Lcom/transsion/camera/app/ui/view/manager/ButtonSwipeUpAction$SwipeUpListener;

    invoke-interface {p1}, Lcom/transsion/camera/app/ui/view/manager/ButtonSwipeUpAction$SwipeUpListener;->onSwipeTouchUp()V

    .line 71
    sget-object p1, Lcom/transsion/camera/app/ui/view/manager/AbstractButtonAction$ActionState;->IDLE:Lcom/transsion/camera/app/ui/view/manager/AbstractButtonAction$ActionState;

    iput-object p1, p0, Lcom/transsion/camera/app/ui/view/manager/AbstractButtonAction;->mCurrentActionState:Lcom/transsion/camera/app/ui/view/manager/AbstractButtonAction$ActionState;

    const/4 p1, 0x0

    .line 72
    iput-object p1, p0, Lcom/transsion/camera/app/ui/view/manager/ButtonSwipeUpAction;->mDownPoint:Landroid/graphics/PointF;

    goto :goto_8d

    .line 43
    :cond_6d
    sget-object p2, Lcom/transsion/camera/app/ui/view/manager/AbstractButtonAction$ActionState;->ACTIVATE:Lcom/transsion/camera/app/ui/view/manager/AbstractButtonAction$ActionState;

    iput-object p2, p0, Lcom/transsion/camera/app/ui/view/manager/AbstractButtonAction;->mCurrentActionState:Lcom/transsion/camera/app/ui/view/manager/AbstractButtonAction$ActionState;

    .line 44
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result p2

    iput p2, p0, Lcom/transsion/camera/app/ui/view/manager/ButtonSwipeUpAction;->mCurTouchPointId:I

    .line 45
    new-instance p2, Landroid/graphics/PointF;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    invoke-direct {p2, v1, p1}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object p2, p0, Lcom/transsion/camera/app/ui/view/manager/ButtonSwipeUpAction;->mDownPoint:Landroid/graphics/PointF;

    .line 46
    iget-object p0, p0, Lcom/transsion/camera/app/ui/view/manager/ButtonSwipeUpAction;->mSwipeUpListener:Lcom/transsion/camera/app/ui/view/manager/ButtonSwipeUpAction$SwipeUpListener;

    if-eqz p0, :cond_8d

    .line 47
    invoke-interface {p0}, Lcom/transsion/camera/app/ui/view/manager/ButtonSwipeUpAction$SwipeUpListener;->onSwipeTouchDown()V

    :cond_8d
    :goto_8d
    return v0
.end method

.method public setSwipeUpListener(Lcom/transsion/camera/app/ui/view/manager/ButtonSwipeUpAction$SwipeUpListener;)V
    .registers 2

    .line 35
    iput-object p1, p0, Lcom/transsion/camera/app/ui/view/manager/ButtonSwipeUpAction;->mSwipeUpListener:Lcom/transsion/camera/app/ui/view/manager/ButtonSwipeUpAction$SwipeUpListener;

    return-void
.end method
