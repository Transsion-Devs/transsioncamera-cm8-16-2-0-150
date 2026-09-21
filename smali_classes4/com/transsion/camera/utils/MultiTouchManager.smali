.class public abstract Lcom/transsion/camera/utils/MultiTouchManager;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

.field private static mAdapter:Landroid/animation/AnimatorListenerAdapter;

.field private static mAnimationViewList:Ljava/util/ArrayList;

.field private static mHandler:Landroid/os/Handler;

.field private static mHandlerThread:Landroid/os/HandlerThread;

.field public static mIsAnimationButtonDown:Z

.field public static mIsBottomButtonDown:Z

.field public static mIsNormalButtonDown:Z

.field public static mIsTouching:Z

.field private static final mLock:Ljava/lang/Object;

.field private static mViewPressedMap:Ljava/util/Map;


# direct methods
.method public static synthetic $r8$lambda$Iw1pUpGc88mznr5Ww9iZ6enI0fI()V
    .registers 1

    const/4 v0, 0x0

    .line 171
    sput-boolean v0, Lcom/transsion/camera/utils/MultiTouchManager;->mIsNormalButtonDown:Z

    return-void
.end method

.method public static synthetic $r8$lambda$JnKVxlcYAF8VRa8EtikfXdRuNT8(Landroid/view/View;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 6

    .line 158
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result p1

    const/4 p2, 0x0

    const/4 v0, 0x1

    if-eqz p1, :cond_3f

    if-eq p1, v0, :cond_e

    const/4 v0, 0x3

    if-eq p1, v0, :cond_e

    goto :goto_3e

    .line 170
    :cond_e
    sget-object p1, Lcom/transsion/camera/utils/MultiTouchManager;->mHandler:Landroid/os/Handler;

    if-eqz p1, :cond_3e

    .line 171
    new-instance v0, Lcom/transsion/camera/utils/MultiTouchManager$$ExternalSyntheticLambda8;

    invoke-direct {v0}, Lcom/transsion/camera/utils/MultiTouchManager$$ExternalSyntheticLambda8;-><init>()V

    const-wide/16 v1, 0xa

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 172
    sget-object p1, Lcom/transsion/camera/utils/MultiTouchManager;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/transsion/camera/utils/MultiTouchManager$$ExternalSyntheticLambda9;

    invoke-direct {v0, p0}, Lcom/transsion/camera/utils/MultiTouchManager$$ExternalSyntheticLambda9;-><init>(Landroid/view/View;)V

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 173
    sget-object p1, Lcom/transsion/camera/utils/MultiTouchManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "bottomButtonPressSealAnimation: ACTION_UP and ACTION_UP, view = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 174
    sput-boolean p2, Lcom/transsion/camera/utils/MultiTouchManager;->mIsBottomButtonDown:Z

    :cond_3e
    :goto_3e
    return p2

    .line 160
    :cond_3f
    sget-boolean p1, Lcom/transsion/camera/utils/MultiTouchManager;->mIsAnimationButtonDown:Z

    if-nez p1, :cond_4f

    sget-boolean p1, Lcom/transsion/camera/utils/MultiTouchManager;->mIsNormalButtonDown:Z

    if-nez p1, :cond_4f

    sget-boolean p1, Lcom/transsion/camera/utils/MultiTouchManager;->mIsTouching:Z

    if-nez p1, :cond_4f

    sget-boolean p1, Lcom/transsion/camera/utils/MultiTouchManager;->mIsBottomButtonDown:Z

    if-eqz p1, :cond_56

    .line 161
    :cond_4f
    invoke-static {p0}, Lcom/transsion/camera/utils/MultiTouchManager;->canPerformClick(Landroid/view/View;)Z

    move-result p1

    if-nez p1, :cond_56

    return v0

    .line 164
    :cond_56
    sget-object p1, Lcom/transsion/camera/utils/MultiTouchManager;->mViewPressedMap:Ljava/util/Map;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {p1, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 165
    sget-object p1, Lcom/transsion/camera/utils/MultiTouchManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bottomButtonPressSealAnimation: ACTION_DOWN, view = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 166
    sput-boolean v0, Lcom/transsion/camera/utils/MultiTouchManager;->mIsBottomButtonDown:Z

    return p2
.end method

.method public static synthetic $r8$lambda$KriUqFYh1ICrF4RMsiZomhuyiOo(Landroid/view/View;FLandroid/animation/AnimatorListenerAdapter;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 8

    .line 59
    invoke-virtual {p4}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result p4

    .line 60
    sget-object v0, Lcom/transsion/camera/utils/MultiTouchManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "pressSealAnimation: action="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->v(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz p4, :cond_5a

    if-eq p4, v2, :cond_2b

    const/4 p1, 0x2

    if-eq p4, p1, :cond_28

    const/4 p1, 0x3

    if-eq p4, p1, :cond_2b

    goto/16 :goto_a1

    .line 82
    :cond_28
    sput-boolean v2, Lcom/transsion/camera/utils/MultiTouchManager;->mIsAnimationButtonDown:Z

    return v1

    .line 73
    :cond_2b
    sget-object p1, Lcom/transsion/camera/utils/MultiTouchManager;->mHandler:Landroid/os/Handler;

    if-eqz p1, :cond_a1

    .line 74
    sget-object p1, Lcom/transsion/camera/utils/MultiTouchManager;->mAnimationViewList:Ljava/util/ArrayList;

    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 75
    invoke-static {p3, p2}, Lcom/transsion/camera/utils/AnimationUtils;->stopPressedAnimator(Landroid/view/View;Landroid/animation/AnimatorListenerAdapter;)V

    .line 76
    sget-object p1, Lcom/transsion/camera/utils/MultiTouchManager;->mHandler:Landroid/os/Handler;

    new-instance p2, Lcom/transsion/camera/utils/MultiTouchManager$$ExternalSyntheticLambda7;

    invoke-direct {p2, p0}, Lcom/transsion/camera/utils/MultiTouchManager$$ExternalSyntheticLambda7;-><init>(Landroid/view/View;)V

    const-wide/16 p3, 0xa

    invoke-virtual {p1, p2, p3, p4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 77
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "pressSealAnimation: ACTION_CANCEL and ACTION_UP, view = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 78
    sput-boolean v1, Lcom/transsion/camera/utils/MultiTouchManager;->mIsAnimationButtonDown:Z

    return v1

    .line 63
    :cond_5a
    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    move-result p2

    if-eqz p2, :cond_a1

    invoke-virtual {p0}, Landroid/view/View;->isClickable()Z

    move-result p2

    if-eqz p2, :cond_a1

    invoke-static {p0}, Lcom/transsion/camera/utils/MultiTouchManager;->canPerformClick(Landroid/view/View;)Z

    move-result p2

    if-eqz p2, :cond_a1

    sget-boolean p2, Lcom/transsion/camera/utils/MultiTouchManager;->mIsNormalButtonDown:Z

    if-nez p2, :cond_a1

    sget-boolean p2, Lcom/transsion/camera/utils/MultiTouchManager;->mIsTouching:Z

    if-nez p2, :cond_a1

    .line 64
    invoke-static {p3, p1}, Lcom/transsion/camera/utils/AnimationUtils;->startPressedAnimator(Landroid/view/View;F)V

    .line 65
    sget-object p1, Lcom/transsion/camera/utils/MultiTouchManager;->mViewPressedMap:Ljava/util/Map;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    sget-object p3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {p1, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "pressSealAnimation: ACTION_DOWN, view = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 67
    sget-object p1, Lcom/transsion/camera/utils/MultiTouchManager;->mAnimationViewList:Ljava/util/ArrayList;

    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 68
    sput-boolean v2, Lcom/transsion/camera/utils/MultiTouchManager;->mIsAnimationButtonDown:Z

    :cond_a1
    :goto_a1
    return v1
.end method

.method public static synthetic $r8$lambda$LX2nr_973xRYwtH0NlsoDP3dItM()V
    .registers 1

    const/4 v0, 0x0

    .line 148
    sput-boolean v0, Lcom/transsion/camera/utils/MultiTouchManager;->mIsNormalButtonDown:Z

    return-void
.end method

.method public static synthetic $r8$lambda$NXgEzdr0no7mEvb7GTKSpSL7xqc(Landroid/view/View;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 5

    .line 118
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result p1

    const/4 p2, 0x1

    if-eqz p1, :cond_3c

    if-eq p1, p2, :cond_d

    const/4 p2, 0x3

    if-eq p1, p2, :cond_d

    goto :goto_6f

    .line 128
    :cond_d
    sget-object p1, Lcom/transsion/camera/utils/MultiTouchManager;->mHandler:Landroid/os/Handler;

    if-eqz p1, :cond_6f

    .line 129
    new-instance p2, Lcom/transsion/camera/utils/MultiTouchManager$$ExternalSyntheticLambda5;

    invoke-direct {p2}, Lcom/transsion/camera/utils/MultiTouchManager$$ExternalSyntheticLambda5;-><init>()V

    const-wide/16 v0, 0xa

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 130
    sget-object p1, Lcom/transsion/camera/utils/MultiTouchManager;->mHandler:Landroid/os/Handler;

    new-instance p2, Lcom/transsion/camera/utils/MultiTouchManager$$ExternalSyntheticLambda6;

    invoke-direct {p2, p0}, Lcom/transsion/camera/utils/MultiTouchManager$$ExternalSyntheticLambda6;-><init>(Landroid/view/View;)V

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 131
    sget-object p1, Lcom/transsion/camera/utils/MultiTouchManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "pressSealWithoutAnimation: ACTION_CANCEL and ACTION_UP, view = "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    goto :goto_6f

    .line 120
    :cond_3c
    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    move-result p1

    if-eqz p1, :cond_6f

    invoke-virtual {p0}, Landroid/view/View;->isClickable()Z

    move-result p1

    if-eqz p1, :cond_6f

    .line 121
    sget-object p1, Lcom/transsion/camera/utils/MultiTouchManager;->mViewPressedMap:Ljava/util/Map;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    sget-object p1, Lcom/transsion/camera/utils/MultiTouchManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "pressSealWithoutAnimation: ACTION_DOWN, view = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 123
    sput-boolean p2, Lcom/transsion/camera/utils/MultiTouchManager;->mIsNormalButtonDown:Z

    :cond_6f
    :goto_6f
    const/4 p0, 0x0

    return p0
.end method

.method public static synthetic $r8$lambda$SUpouGfAAOibDQqUE3icc4YounI(Landroid/view/View;)V
    .registers 3

    .line 149
    sget-object v0, Lcom/transsion/camera/utils/MultiTouchManager;->mViewPressedMap:Ljava/util/Map;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {v0, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static synthetic $r8$lambda$aPylkJ4jE9Tbup2ZXO2o16BY5q0(Landroid/view/View;)V
    .registers 3

    .line 192
    sget-object v0, Lcom/transsion/camera/utils/MultiTouchManager;->mViewPressedMap:Ljava/util/Map;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {v0, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static synthetic $r8$lambda$anOi3jX4Bf_cVrTzGjw0rpllJak()V
    .registers 1

    const/4 v0, 0x0

    .line 191
    sput-boolean v0, Lcom/transsion/camera/utils/MultiTouchManager;->mIsTouching:Z

    return-void
.end method

.method public static synthetic $r8$lambda$gan326TBBwSjsb67MdZ9kxRR2tw(Landroid/view/View;)V
    .registers 3

    .line 76
    sget-object v0, Lcom/transsion/camera/utils/MultiTouchManager;->mViewPressedMap:Ljava/util/Map;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {v0, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static synthetic $r8$lambda$nkN-ZkmCAFRlUYh9z4-wVSBCB34(Landroid/view/View;)V
    .registers 3

    .line 172
    sget-object v0, Lcom/transsion/camera/utils/MultiTouchManager;->mViewPressedMap:Ljava/util/Map;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {v0, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static synthetic $r8$lambda$om1cllHgi6HEOC06uKzAdJOtPWA(Landroid/view/View;)V
    .registers 3

    .line 130
    sget-object v0, Lcom/transsion/camera/utils/MultiTouchManager;->mViewPressedMap:Ljava/util/Map;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {v0, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static synthetic $r8$lambda$py95mDfVdOgr8jN_YleBVjO_nhM()V
    .registers 1

    const/4 v0, 0x0

    .line 129
    sput-boolean v0, Lcom/transsion/camera/utils/MultiTouchManager;->mIsNormalButtonDown:Z

    return-void
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 24
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "MultiTouchManager"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/utils/MultiTouchManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    .line 26
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/transsion/camera/utils/MultiTouchManager;->mViewPressedMap:Ljava/util/Map;

    .line 27
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/transsion/camera/utils/MultiTouchManager;->mAnimationViewList:Ljava/util/ArrayList;

    .line 35
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/transsion/camera/utils/MultiTouchManager;->mLock:Ljava/lang/Object;

    return-void
.end method

.method public static bottomButtonPressSealAnimation(Landroid/view/View;)V
    .registers 2

    if-eqz p0, :cond_d

    .line 156
    invoke-static {}, Lcom/transsion/camera/utils/MultiTouchManager;->confirmHandler()V

    .line 157
    new-instance v0, Lcom/transsion/camera/utils/MultiTouchManager$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Lcom/transsion/camera/utils/MultiTouchManager$$ExternalSyntheticLambda2;-><init>(Landroid/view/View;)V

    invoke-virtual {p0, v0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    :cond_d
    return-void
.end method

.method public static canPerformClick(Landroid/view/View;)Z
    .registers 5

    .line 214
    sget-object v0, Lcom/transsion/camera/utils/MultiTouchManager;->mViewPressedMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_46

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 215
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v3

    if-eq v2, v3, :cond_a

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    sget-object v3, Lcom/transsion/camera/utils/MultiTouchManager;->mViewPressedMap:Ljava/util/Map;

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 216
    sget-object v0, Lcom/transsion/camera/utils/MultiTouchManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "canPerformClick: false, view = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0

    .line 220
    :cond_46
    sget-object v0, Lcom/transsion/camera/utils/MultiTouchManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "canPerformClick: true, view = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0
.end method

.method private static confirmHandler()V
    .registers 3

    .line 42
    sget-object v0, Lcom/transsion/camera/utils/MultiTouchManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 43
    :try_start_3
    sget-object v1, Lcom/transsion/camera/utils/MultiTouchManager;->mHandlerThread:Landroid/os/HandlerThread;

    if-eqz v1, :cond_14

    invoke-virtual {v1}, Ljava/lang/Thread;->isAlive()Z

    move-result v1

    if-eqz v1, :cond_14

    sget-object v1, Lcom/transsion/camera/utils/MultiTouchManager;->mHandler:Landroid/os/Handler;

    if-nez v1, :cond_37

    goto :goto_14

    :catchall_12
    move-exception v1

    goto :goto_39

    .line 44
    :cond_14
    :goto_14
    new-instance v1, Landroid/os/HandlerThread;

    const-string v2, "MultiTouchManager"

    invoke-direct {v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    sput-object v1, Lcom/transsion/camera/utils/MultiTouchManager;->mHandlerThread:Landroid/os/HandlerThread;

    .line 45
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 46
    new-instance v1, Landroid/os/Handler;

    sget-object v2, Lcom/transsion/camera/utils/MultiTouchManager;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v1, Lcom/transsion/camera/utils/MultiTouchManager;->mHandler:Landroid/os/Handler;

    .line 47
    sget-object v1, Lcom/transsion/camera/utils/MultiTouchManager;->mViewPressedMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    const/4 v1, 0x0

    .line 48
    sput-boolean v1, Lcom/transsion/camera/utils/MultiTouchManager;->mIsNormalButtonDown:Z

    .line 49
    sput-boolean v1, Lcom/transsion/camera/utils/MultiTouchManager;->mIsTouching:Z

    .line 51
    :cond_37
    monitor-exit v0

    return-void

    :goto_39
    monitor-exit v0
    :try_end_3a
    .catchall {:try_start_3 .. :try_end_3a} :catchall_12

    throw v1
.end method

.method public static init()V
    .registers 0

    .line 38
    invoke-static {}, Lcom/transsion/camera/utils/MultiTouchManager;->confirmHandler()V

    return-void
.end method

.method public static isButtonDown()Z
    .registers 1

    .line 210
    sget-boolean v0, Lcom/transsion/camera/utils/MultiTouchManager;->mIsNormalButtonDown:Z

    if-nez v0, :cond_f

    sget-boolean v0, Lcom/transsion/camera/utils/MultiTouchManager;->mIsAnimationButtonDown:Z

    if-nez v0, :cond_f

    sget-boolean v0, Lcom/transsion/camera/utils/MultiTouchManager;->mIsBottomButtonDown:Z

    if-eqz v0, :cond_d

    goto :goto_f

    :cond_d
    const/4 v0, 0x0

    return v0

    :cond_f
    :goto_f
    const/4 v0, 0x1

    return v0
.end method

.method public static onDestroy()V
    .registers 3

    const/4 v0, 0x0

    .line 225
    sput-object v0, Lcom/transsion/camera/utils/MultiTouchManager;->mAdapter:Landroid/animation/AnimatorListenerAdapter;

    .line 226
    sget-object v1, Lcom/transsion/camera/utils/MultiTouchManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 227
    :try_start_6
    sget-object v2, Lcom/transsion/camera/utils/MultiTouchManager;->mHandler:Landroid/os/Handler;

    if-eqz v2, :cond_1b

    .line 228
    invoke-virtual {v2, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 229
    sget-object v2, Lcom/transsion/camera/utils/MultiTouchManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Looper;->quitSafely()V

    .line 230
    sput-object v0, Lcom/transsion/camera/utils/MultiTouchManager;->mHandler:Landroid/os/Handler;

    goto :goto_1b

    :catchall_19
    move-exception v0

    goto :goto_26

    .line 232
    :cond_1b
    :goto_1b
    sget-object v2, Lcom/transsion/camera/utils/MultiTouchManager;->mHandlerThread:Landroid/os/HandlerThread;

    if-eqz v2, :cond_24

    .line 233
    invoke-virtual {v2}, Landroid/os/HandlerThread;->quitSafely()Z

    .line 234
    sput-object v0, Lcom/transsion/camera/utils/MultiTouchManager;->mHandlerThread:Landroid/os/HandlerThread;

    .line 236
    :cond_24
    monitor-exit v1

    return-void

    :goto_26
    monitor-exit v1
    :try_end_27
    .catchall {:try_start_6 .. :try_end_27} :catchall_19

    throw v0
.end method

.method public static onPressDown(Landroid/view/View;)V
    .registers 4

    .line 141
    sget-object v0, Lcom/transsion/camera/utils/MultiTouchManager;->mViewPressedMap:Ljava/util/Map;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 142
    sget-object v0, Lcom/transsion/camera/utils/MultiTouchManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPressDown: ACTION_DOWN, view = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 p0, 0x1

    .line 143
    sput-boolean p0, Lcom/transsion/camera/utils/MultiTouchManager;->mIsNormalButtonDown:Z

    return-void
.end method

.method public static onPressUpOrCancel(Landroid/view/View;)V
    .registers 5

    .line 147
    sget-object v0, Lcom/transsion/camera/utils/MultiTouchManager;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_2e

    .line 148
    new-instance v1, Lcom/transsion/camera/utils/MultiTouchManager$$ExternalSyntheticLambda10;

    invoke-direct {v1}, Lcom/transsion/camera/utils/MultiTouchManager$$ExternalSyntheticLambda10;-><init>()V

    const-wide/16 v2, 0xa

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 149
    sget-object v0, Lcom/transsion/camera/utils/MultiTouchManager;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/transsion/camera/utils/MultiTouchManager$$ExternalSyntheticLambda11;

    invoke-direct {v1, p0}, Lcom/transsion/camera/utils/MultiTouchManager$$ExternalSyntheticLambda11;-><init>(Landroid/view/View;)V

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 150
    sget-object v0, Lcom/transsion/camera/utils/MultiTouchManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPressUp: ACTION_CANCEL and ACTION_UP, view = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    :cond_2e
    return-void
.end method

.method public static pressSealAnimation(Landroid/view/View;FLandroid/animation/AnimatorListenerAdapter;)V
    .registers 4

    .line 55
    sput-object p2, Lcom/transsion/camera/utils/MultiTouchManager;->mAdapter:Landroid/animation/AnimatorListenerAdapter;

    if-eqz p0, :cond_f

    .line 57
    invoke-static {}, Lcom/transsion/camera/utils/MultiTouchManager;->confirmHandler()V

    .line 58
    new-instance v0, Lcom/transsion/camera/utils/MultiTouchManager$$ExternalSyntheticLambda4;

    invoke-direct {v0, p0, p1, p2}, Lcom/transsion/camera/utils/MultiTouchManager$$ExternalSyntheticLambda4;-><init>(Landroid/view/View;FLandroid/animation/AnimatorListenerAdapter;)V

    invoke-virtual {p0, v0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    :cond_f
    return-void
.end method

.method public static pressSealWithoutAnimation(Landroid/view/View;)V
    .registers 2

    if-eqz p0, :cond_d

    .line 116
    invoke-static {}, Lcom/transsion/camera/utils/MultiTouchManager;->confirmHandler()V

    .line 117
    new-instance v0, Lcom/transsion/camera/utils/MultiTouchManager$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0}, Lcom/transsion/camera/utils/MultiTouchManager$$ExternalSyntheticLambda3;-><init>(Landroid/view/View;)V

    invoke-virtual {p0, v0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    :cond_d
    return-void
.end method

.method public static resetState()V
    .registers 3

    .line 197
    sget-object v0, Lcom/transsion/camera/utils/MultiTouchManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "resetState"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 198
    sput-boolean v0, Lcom/transsion/camera/utils/MultiTouchManager;->mIsNormalButtonDown:Z

    .line 199
    sput-boolean v0, Lcom/transsion/camera/utils/MultiTouchManager;->mIsAnimationButtonDown:Z

    .line 200
    sput-boolean v0, Lcom/transsion/camera/utils/MultiTouchManager;->mIsBottomButtonDown:Z

    .line 201
    :goto_e
    sget-object v1, Lcom/transsion/camera/utils/MultiTouchManager;->mAnimationViewList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_26

    .line 202
    sget-object v1, Lcom/transsion/camera/utils/MultiTouchManager;->mAnimationViewList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    sget-object v2, Lcom/transsion/camera/utils/MultiTouchManager;->mAdapter:Landroid/animation/AnimatorListenerAdapter;

    invoke-static {v1, v2}, Lcom/transsion/camera/utils/AnimationUtils;->stopPressedAnimator(Landroid/view/View;Landroid/animation/AnimatorListenerAdapter;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_e

    .line 204
    :cond_26
    sget-object v0, Lcom/transsion/camera/utils/MultiTouchManager;->mAnimationViewList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 205
    sget-object v0, Lcom/transsion/camera/utils/MultiTouchManager;->mViewPressedMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    const/4 v0, 0x0

    .line 206
    sput-object v0, Lcom/transsion/camera/utils/MultiTouchManager;->mAdapter:Landroid/animation/AnimatorListenerAdapter;

    return-void
.end method

.method public static startTouching(Landroid/view/View;)V
    .registers 3

    const/4 v0, 0x1

    .line 184
    sput-boolean v0, Lcom/transsion/camera/utils/MultiTouchManager;->mIsTouching:Z

    .line 185
    sget-object v0, Lcom/transsion/camera/utils/MultiTouchManager;->mViewPressedMap:Ljava/util/Map;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v0, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static stopTouching(Landroid/view/View;)V
    .registers 5

    .line 189
    invoke-static {}, Lcom/transsion/camera/utils/MultiTouchManager;->confirmHandler()V

    .line 190
    sget-object v0, Lcom/transsion/camera/utils/MultiTouchManager;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_1b

    .line 191
    new-instance v1, Lcom/transsion/camera/utils/MultiTouchManager$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lcom/transsion/camera/utils/MultiTouchManager$$ExternalSyntheticLambda0;-><init>()V

    const-wide/16 v2, 0xa

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 192
    sget-object v0, Lcom/transsion/camera/utils/MultiTouchManager;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/transsion/camera/utils/MultiTouchManager$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/transsion/camera/utils/MultiTouchManager$$ExternalSyntheticLambda1;-><init>(Landroid/view/View;)V

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1b
    return-void
.end method
