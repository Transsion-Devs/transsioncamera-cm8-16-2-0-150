.class public Lcom/transsion/camera/app/ui/view/ShutterButtonView;
.super Lcom/transsion/camera/app/ui/widget/RotateImageView;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnLongClickListener;
.implements Lcom/transsion/camera/app/ui/view/manager/ButtonLongPressAction$LongPressListener;
.implements Lcom/transsion/camera/app/ui/view/manager/ButtonSwipeLeftAction$SwipeLeftListener;
.implements Lcom/transsion/camera/app/ui/view/manager/ButtonSwipeUpAction$SwipeUpListener;
.implements Lcom/transsion/camera/app/ui/view/manager/ButtonSwipeRightAction$SwipeRightListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/app/ui/view/ShutterButtonView$OnShutterButtonListener;,
        Lcom/transsion/camera/app/ui/view/ShutterButtonView$IMotionEventListener;
    }
.end annotation


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private mAlwaysEnableShutter:Z

.field private mAppUI:Lcom/transsion/camera/app/common/IAppUI;

.field private mButtonActionManager:Lcom/transsion/camera/app/ui/view/manager/ButtonActionManager;

.field private mCurrentScreenFormType:I

.field private mDownRawX:F

.field private mDownRawY:F

.field private mDownScreenFormType:I

.field private mEnabled:Z

.field private mFirstPointerId:I

.field private mInterruptDispatchEvent:Z

.field private mInterruptTransmitEvent:Z

.field private mIsCanceled:Z

.field private mIsCapturing:Z

.field private mListener:Lcom/transsion/camera/app/ui/view/ShutterButtonView$OnShutterButtonListener;

.field private mLongPressed:Z

.field private mMotionEventListener:Lcom/transsion/camera/app/ui/view/ShutterButtonView$IMotionEventListener;

.field private mOldPressed:Z

.field private mOrientation:I

.field private mPanoramaCaptureBegin:Z

.field private mPressed:Z

.field private mSelfTimerBegin:Z

.field private mShutterUINewStyleSupport:Z

.field private mTriggerThreshold:I


# direct methods
.method static bridge synthetic -$$Nest$mcallShutterButtonFocus(Lcom/transsion/camera/app/ui/view/ShutterButtonView;Z)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/view/ShutterButtonView;->callShutterButtonFocus(Z)V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 32
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "ShutterButtonView"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/app/ui/view/ShutterButtonView;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const/4 v0, 0x0

    .line 216
    invoke-direct {p0, p1, p2, v0}, Lcom/transsion/camera/app/ui/view/ShutterButtonView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    .line 220
    invoke-direct {p0, p1, p2, p3}, Lcom/transsion/camera/app/ui/widget/RotateImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p2, 0x0

    .line 42
    iput-boolean p2, p0, Lcom/transsion/camera/app/ui/view/ShutterButtonView;->mIsCapturing:Z

    .line 50
    iput-boolean p2, p0, Lcom/transsion/camera/app/ui/view/ShutterButtonView;->mPressed:Z

    .line 53
    iput-boolean p2, p0, Lcom/transsion/camera/app/ui/view/ShutterButtonView;->mAlwaysEnableShutter:Z

    const/4 p2, -0x1

    .line 56
    iput p2, p0, Lcom/transsion/camera/app/ui/view/ShutterButtonView;->mFirstPointerId:I

    .line 221
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/view/ShutterButtonView;->init(Landroid/content/Context;)V

    return-void
.end method

.method private callShutterButtonFocus(Z)V
    .registers 5

    .line 403
    sget-object v0, Lcom/transsion/camera/app/ui/view/ShutterButtonView;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "callShutterButtonFocus isEnabled:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", mEnabled:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/transsion/camera/app/ui/view/ShutterButtonView;->mEnabled:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", isClickable:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 404
    invoke-virtual {p0}, Landroid/view/View;->isClickable()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", pressed:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", mPressed:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/transsion/camera/app/ui/view/ShutterButtonView;->mPressed:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 403
    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 405
    iget-boolean v1, p0, Lcom/transsion/camera/app/ui/view/ShutterButtonView;->mAlwaysEnableShutter:Z

    if-eqz v1, :cond_50

    iget-boolean v1, p0, Lcom/transsion/camera/app/ui/view/ShutterButtonView;->mEnabled:Z

    if-nez v1, :cond_50

    .line 406
    const-string p0, "callShutterButtonFocus, shutter always enabled, but do not response this time"

    invoke-static {v0, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 409
    :cond_50
    iget-object v0, p0, Lcom/transsion/camera/app/ui/view/ShutterButtonView;->mListener:Lcom/transsion/camera/app/ui/view/ShutterButtonView$OnShutterButtonListener;

    if-eqz v0, :cond_79

    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_64

    invoke-virtual {p0}, Landroid/view/View;->isClickable()Z

    move-result v0

    if-eqz v0, :cond_64

    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/view/ShutterButtonView;->mPressed:Z

    if-ne v0, p1, :cond_6a

    :cond_64
    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/view/ShutterButtonView;->mPressed:Z

    if-eqz v0, :cond_79

    if-nez p1, :cond_79

    .line 410
    :cond_6a
    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/view/ShutterButtonView;->mPressed:Z

    if-eqz p1, :cond_74

    .line 412
    iget-object p1, p0, Lcom/transsion/camera/app/ui/view/ShutterButtonView;->mListener:Lcom/transsion/camera/app/ui/view/ShutterButtonView$OnShutterButtonListener;

    invoke-interface {p1}, Lcom/transsion/camera/app/ui/view/ShutterButtonView$OnShutterButtonListener;->onShutterDown()V

    goto :goto_79

    .line 414
    :cond_74
    iget-object p1, p0, Lcom/transsion/camera/app/ui/view/ShutterButtonView;->mListener:Lcom/transsion/camera/app/ui/view/ShutterButtonView$OnShutterButtonListener;

    invoke-interface {p1}, Lcom/transsion/camera/app/ui/view/ShutterButtonView$OnShutterButtonListener;->onShutterUp()V

    :cond_79
    :goto_79
    const/4 p1, 0x0

    .line 417
    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/view/ShutterButtonView;->mLongPressed:Z

    return-void
.end method

.method private dispatchEvent(Landroid/view/MotionEvent;)V
    .registers 8

    .line 365
    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/view/ShutterButtonView;->mShutterUINewStyleSupport:Z

    if-nez v0, :cond_6

    goto/16 :goto_c0

    .line 368
    :cond_6
    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/view/ShutterButtonView;->mInterruptDispatchEvent:Z

    if-nez v0, :cond_c0

    iget-object v0, p0, Lcom/transsion/camera/app/ui/view/ShutterButtonView;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {v0}, Lcom/transsion/camera/app/common/IAppUI;->isFromIntent()Z

    move-result v0

    if-eqz v0, :cond_14

    goto/16 :goto_c0

    .line 371
    :cond_14
    iget v0, p0, Lcom/transsion/camera/app/ui/view/ShutterButtonView;->mCurrentScreenFormType:I

    iget v1, p0, Lcom/transsion/camera/app/ui/view/ShutterButtonView;->mDownScreenFormType:I

    const/4 v2, 0x2

    if-eq v0, v1, :cond_23

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v2, :cond_23

    goto/16 :goto_c0

    .line 374
    :cond_23
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 375
    new-array v1, v2, [I

    .line 376
    invoke-virtual {p0, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 377
    iget v2, p0, Lcom/transsion/camera/app/ui/view/ShutterButtonView;->mOrientation:I

    const/16 v3, -0x5a

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-ne v2, v3, :cond_4e

    .line 378
    aget v2, v1, v5

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v3

    sub-int/2addr v2, v3

    iput v2, v0, Landroid/graphics/Rect;->left:I

    .line 379
    aget v2, v1, v4

    iput v2, v0, Landroid/graphics/Rect;->top:I

    .line 380
    aget v1, v1, v5

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 381
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    add-int/2addr v2, v1

    iput v2, v0, Landroid/graphics/Rect;->bottom:I

    goto :goto_85

    :cond_4e
    const/16 v3, 0x5a

    if-ne v2, v3, :cond_6d

    .line 383
    aget v2, v1, v5

    iput v2, v0, Landroid/graphics/Rect;->left:I

    .line 384
    aget v2, v1, v4

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v3

    sub-int/2addr v2, v3

    iput v2, v0, Landroid/graphics/Rect;->top:I

    .line 385
    aget v2, v1, v5

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v3

    add-int/2addr v2, v3

    iput v2, v0, Landroid/graphics/Rect;->right:I

    .line 386
    aget v1, v1, v4

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    goto :goto_85

    .line 388
    :cond_6d
    aget v2, v1, v5

    iput v2, v0, Landroid/graphics/Rect;->left:I

    .line 389
    aget v3, v1, v4

    iput v3, v0, Landroid/graphics/Rect;->top:I

    .line 390
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v3

    add-int/2addr v2, v3

    iput v2, v0, Landroid/graphics/Rect;->right:I

    .line 391
    aget v1, v1, v4

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v2

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 393
    :goto_85
    iget-object p0, p0, Lcom/transsion/camera/app/ui/view/ShutterButtonView;->mButtonActionManager:Lcom/transsion/camera/app/ui/view/manager/ButtonActionManager;

    invoke-virtual {p0, p1, v0}, Lcom/transsion/camera/app/ui/view/manager/ButtonActionManager;->onTouchEvent(Landroid/view/MotionEvent;Landroid/graphics/Rect;)Z

    .line 394
    sget-object p0, Lcom/transsion/camera/app/ui/view/ShutterButtonView;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "left: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v0, Landroid/graphics/Rect;->left:I

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", top: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", right: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v0, Landroid/graphics/Rect;->right:I

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", bottom: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    :cond_c0
    :goto_c0
    return-void
.end method

.method private init(Landroid/content/Context;)V
    .registers 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 225
    invoke-virtual {p0, v0, v1}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 226
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/transsion/camera/R$bool;->always_enable_shutter:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/view/ShutterButtonView;->mAlwaysEnableShutter:Z

    .line 227
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/transsion/camera/R$dimen;->trigger_scroll_min_distance:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/app/ui/view/ShutterButtonView;->mTriggerThreshold:I

    .line 228
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/transsion/camera/R$bool;->support_shutter_ui_new_style:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/view/ShutterButtonView;->mShutterUINewStyleSupport:Z

    .line 229
    new-instance v0, Lcom/transsion/camera/app/ui/view/manager/ButtonActionManager;

    invoke-direct {v0, p1}, Lcom/transsion/camera/app/ui/view/manager/ButtonActionManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/transsion/camera/app/ui/view/ShutterButtonView;->mButtonActionManager:Lcom/transsion/camera/app/ui/view/manager/ButtonActionManager;

    .line 230
    invoke-virtual {v0, p0}, Lcom/transsion/camera/app/ui/view/manager/ButtonActionManager;->setLongPressListener(Lcom/transsion/camera/app/ui/view/manager/ButtonLongPressAction$LongPressListener;)V

    .line 231
    iget-object p1, p0, Lcom/transsion/camera/app/ui/view/ShutterButtonView;->mButtonActionManager:Lcom/transsion/camera/app/ui/view/manager/ButtonActionManager;

    invoke-virtual {p1, p0}, Lcom/transsion/camera/app/ui/view/manager/ButtonActionManager;->setSwipeLeftListener(Lcom/transsion/camera/app/ui/view/manager/ButtonSwipeLeftAction$SwipeLeftListener;)V

    .line 232
    iget-object p1, p0, Lcom/transsion/camera/app/ui/view/ShutterButtonView;->mButtonActionManager:Lcom/transsion/camera/app/ui/view/manager/ButtonActionManager;

    invoke-virtual {p1, p0}, Lcom/transsion/camera/app/ui/view/manager/ButtonActionManager;->setSwipeRightListener(Lcom/transsion/camera/app/ui/view/manager/ButtonSwipeRightAction$SwipeRightListener;)V

    .line 233
    iget-object p1, p0, Lcom/transsion/camera/app/ui/view/ShutterButtonView;->mButtonActionManager:Lcom/transsion/camera/app/ui/view/manager/ButtonActionManager;

    invoke-virtual {p1, p0}, Lcom/transsion/camera/app/ui/view/manager/ButtonActionManager;->setSwipeUpListener(Lcom/transsion/camera/app/ui/view/manager/ButtonSwipeUpAction$SwipeUpListener;)V

    .line 234
    invoke-virtual {p0, p0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    return-void
.end method

.method private onTouchShutterCancel()V
    .registers 4

    .line 450
    sget-object v0, Lcom/transsion/camera/app/ui/view/ShutterButtonView;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onTouchShutterCancel mLongPressed:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/transsion/camera/app/ui/view/ShutterButtonView;->mLongPressed:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", mPressed:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/transsion/camera/app/ui/view/ShutterButtonView;->mPressed:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 451
    iget-object v0, p0, Lcom/transsion/camera/app/ui/view/ShutterButtonView;->mListener:Lcom/transsion/camera/app/ui/view/ShutterButtonView$OnShutterButtonListener;

    if-eqz v0, :cond_31

    iget-boolean v1, p0, Lcom/transsion/camera/app/ui/view/ShutterButtonView;->mLongPressed:Z

    if-nez v1, :cond_31

    iget-boolean p0, p0, Lcom/transsion/camera/app/ui/view/ShutterButtonView;->mPressed:Z

    if-eqz p0, :cond_31

    .line 452
    invoke-interface {v0}, Lcom/transsion/camera/app/ui/view/ShutterButtonView$OnShutterButtonListener;->onShutterCancel()V

    :cond_31
    return-void
.end method

.method private reachedScrollThreshold(FF)Z
    .registers 4

    .line 398
    iget v0, p0, Lcom/transsion/camera/app/ui/view/ShutterButtonView;->mDownRawX:F

    sub-float/2addr p1, v0

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    iget v0, p0, Lcom/transsion/camera/app/ui/view/ShutterButtonView;->mTriggerThreshold:I

    int-to-float v0, v0

    cmpl-float p1, p1, v0

    if-gtz p1, :cond_1f

    iget p1, p0, Lcom/transsion/camera/app/ui/view/ShutterButtonView;->mDownRawY:F

    sub-float/2addr p2, p1

    .line 399
    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p1

    iget p0, p0, Lcom/transsion/camera/app/ui/view/ShutterButtonView;->mTriggerThreshold:I

    int-to-float p0, p0

    cmpl-float p0, p1, p0

    if-lez p0, :cond_1d

    goto :goto_1f

    :cond_1d
    const/4 p0, 0x0

    return p0

    :cond_1f
    :goto_1f
    const/4 p0, 0x1

    return p0
.end method


# virtual methods
.method public drawableStateChanged()V
    .registers 5

    .line 252
    invoke-super {p0}, Landroid/view/View;->drawableStateChanged()V

    .line 254
    invoke-virtual {p0}, Landroid/view/View;->isPressed()Z

    move-result v0

    .line 255
    sget-object v1, Lcom/transsion/camera/app/ui/view/ShutterButtonView;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "drawableStateChanged: pressed = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", mOldPressed = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/transsion/camera/app/ui/view/ShutterButtonView;->mOldPressed:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 257
    iget-boolean v1, p0, Lcom/transsion/camera/app/ui/view/ShutterButtonView;->mOldPressed:Z

    if-eq v0, v1, :cond_3b

    .line 258
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/view/ShutterButtonView;->mOldPressed:Z

    if-nez v0, :cond_38

    .line 276
    new-instance v1, Lcom/transsion/camera/app/ui/view/ShutterButtonView$1;

    invoke-direct {v1, p0, v0}, Lcom/transsion/camera/app/ui/view/ShutterButtonView$1;-><init>(Lcom/transsion/camera/app/ui/view/ShutterButtonView;Z)V

    invoke-virtual {p0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void

    .line 283
    :cond_38
    invoke-direct {p0, v0}, Lcom/transsion/camera/app/ui/view/ShutterButtonView;->callShutterButtonFocus(Z)V

    :cond_3b
    return-void
.end method

.method public onLeaveAfterSwipeUp()V
    .registers 1

    .line 108
    iget-object p0, p0, Lcom/transsion/camera/app/ui/view/ShutterButtonView;->mListener:Lcom/transsion/camera/app/ui/view/ShutterButtonView$OnShutterButtonListener;

    if-eqz p0, :cond_7

    .line 109
    invoke-interface {p0}, Lcom/transsion/camera/app/ui/view/ShutterButtonView$OnShutterButtonListener;->onLeaveAfterSwipeUp()V

    :cond_7
    return-void
.end method

.method public onLongClick(Landroid/view/View;)Z
    .registers 4

    .line 437
    sget-object p1, Lcom/transsion/camera/app/ui/view/ShutterButtonView;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onLongClick isEnabled:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", isClickable:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/view/View;->isClickable()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mPressed:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/transsion/camera/app/ui/view/ShutterButtonView;->mPressed:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 438
    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/view/ShutterButtonView;->mAlwaysEnableShutter:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_3f

    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/view/ShutterButtonView;->mEnabled:Z

    if-nez v0, :cond_3f

    .line 439
    const-string p0, "onLongClick, shutter always enabled, but do not response this time"

    invoke-static {p1, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return v1

    .line 442
    :cond_3f
    iget-object p1, p0, Lcom/transsion/camera/app/ui/view/ShutterButtonView;->mListener:Lcom/transsion/camera/app/ui/view/ShutterButtonView$OnShutterButtonListener;

    if-eqz p1, :cond_5a

    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    move-result p1

    if-eqz p1, :cond_4f

    invoke-virtual {p0}, Landroid/view/View;->isClickable()Z

    move-result p1

    if-nez p1, :cond_53

    :cond_4f
    iget-boolean p1, p0, Lcom/transsion/camera/app/ui/view/ShutterButtonView;->mPressed:Z

    if-eqz p1, :cond_5a

    .line 443
    :cond_53
    iget-object p1, p0, Lcom/transsion/camera/app/ui/view/ShutterButtonView;->mListener:Lcom/transsion/camera/app/ui/view/ShutterButtonView$OnShutterButtonListener;

    invoke-interface {p1}, Lcom/transsion/camera/app/ui/view/ShutterButtonView$OnShutterButtonListener;->onShutterLongClick()V

    .line 444
    iput-boolean v1, p0, Lcom/transsion/camera/app/ui/view/ShutterButtonView;->mLongPressed:Z

    :cond_5a
    const/4 p0, 0x0

    return p0
.end method

.method public onLongPress()V
    .registers 1

    return-void
.end method

.method public onMoveAfterSwipeUp(II)V
    .registers 3

    .line 92
    iget-object p0, p0, Lcom/transsion/camera/app/ui/view/ShutterButtonView;->mListener:Lcom/transsion/camera/app/ui/view/ShutterButtonView$OnShutterButtonListener;

    if-eqz p0, :cond_7

    .line 93
    invoke-interface {p0, p1, p2}, Lcom/transsion/camera/app/ui/view/ShutterButtonView$OnShutterButtonListener;->onFloatingShutterButtonMove(II)V

    :cond_7
    return-void
.end method

.method public onScreenFormChanged(IZ)V
    .registers 3

    .line 166
    iput p1, p0, Lcom/transsion/camera/app/ui/view/ShutterButtonView;->mCurrentScreenFormType:I

    .line 167
    iget-object p0, p0, Lcom/transsion/camera/app/ui/view/ShutterButtonView;->mButtonActionManager:Lcom/transsion/camera/app/ui/view/manager/ButtonActionManager;

    if-eqz p0, :cond_9

    .line 168
    invoke-virtual {p0, p1, p2}, Lcom/transsion/camera/app/ui/view/manager/ButtonActionManager;->onScreenFormChanged(IZ)V

    :cond_9
    return-void
.end method

.method public onSwipeLeftEnd()V
    .registers 2

    .line 84
    iget-object v0, p0, Lcom/transsion/camera/app/ui/view/ShutterButtonView;->mListener:Lcom/transsion/camera/app/ui/view/ShutterButtonView$OnShutterButtonListener;

    if-eqz v0, :cond_b

    .line 85
    invoke-interface {v0}, Lcom/transsion/camera/app/ui/view/ShutterButtonView$OnShutterButtonListener;->onSwipeLeftEnd()V

    const/4 v0, 0x1

    .line 86
    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/ui/view/ShutterButtonView;->setEnabled(Z)V

    :cond_b
    return-void
.end method

.method public onSwipeLeftStart()V
    .registers 2

    .line 76
    iget-object v0, p0, Lcom/transsion/camera/app/ui/view/ShutterButtonView;->mListener:Lcom/transsion/camera/app/ui/view/ShutterButtonView$OnShutterButtonListener;

    if-eqz v0, :cond_b

    .line 77
    invoke-interface {v0}, Lcom/transsion/camera/app/ui/view/ShutterButtonView$OnShutterButtonListener;->onSwipeLeftStart()V

    const/4 v0, 0x0

    .line 78
    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/ui/view/ShutterButtonView;->setEnabled(Z)V

    :cond_b
    return-void
.end method

.method public onSwipeRightEnd()V
    .registers 3

    .line 142
    sget-object v0, Lcom/transsion/camera/app/ui/view/ShutterButtonView;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "onSwipeRightEnd"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 143
    iget-object v0, p0, Lcom/transsion/camera/app/ui/view/ShutterButtonView;->mListener:Lcom/transsion/camera/app/ui/view/ShutterButtonView$OnShutterButtonListener;

    if-eqz v0, :cond_12

    .line 144
    invoke-interface {v0}, Lcom/transsion/camera/app/ui/view/ShutterButtonView$OnShutterButtonListener;->onSwipeRightEnd()V

    const/4 v0, 0x1

    .line 145
    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/ui/view/ShutterButtonView;->setEnabled(Z)V

    :cond_12
    return-void
.end method

.method public onSwipeRightStart()V
    .registers 3

    .line 133
    sget-object v0, Lcom/transsion/camera/app/ui/view/ShutterButtonView;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "onSwipeRightStart"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 134
    iget-object v0, p0, Lcom/transsion/camera/app/ui/view/ShutterButtonView;->mListener:Lcom/transsion/camera/app/ui/view/ShutterButtonView$OnShutterButtonListener;

    if-eqz v0, :cond_12

    .line 135
    invoke-interface {v0}, Lcom/transsion/camera/app/ui/view/ShutterButtonView$OnShutterButtonListener;->onSwipeRightStart()V

    const/4 v0, 0x0

    .line 136
    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/ui/view/ShutterButtonView;->setEnabled(Z)V

    :cond_12
    return-void
.end method

.method public onSwipeTouchDown()V
    .registers 1

    .line 115
    iget-object p0, p0, Lcom/transsion/camera/app/ui/view/ShutterButtonView;->mListener:Lcom/transsion/camera/app/ui/view/ShutterButtonView$OnShutterButtonListener;

    if-eqz p0, :cond_7

    .line 116
    invoke-interface {p0}, Lcom/transsion/camera/app/ui/view/ShutterButtonView$OnShutterButtonListener;->onSwipeTouchDown()V

    :cond_7
    return-void
.end method

.method public onSwipeTouchUp()V
    .registers 1

    .line 122
    iget-object p0, p0, Lcom/transsion/camera/app/ui/view/ShutterButtonView;->mListener:Lcom/transsion/camera/app/ui/view/ShutterButtonView$OnShutterButtonListener;

    if-eqz p0, :cond_7

    .line 123
    invoke-interface {p0}, Lcom/transsion/camera/app/ui/view/ShutterButtonView$OnShutterButtonListener;->onSwipeTouchUp()V

    :cond_7
    return-void
.end method

.method public onSwipeUp()Z
    .registers 3

    .line 99
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 100
    invoke-virtual {p0, v0}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 101
    iget-object p0, p0, Lcom/transsion/camera/app/ui/view/ShutterButtonView;->mListener:Lcom/transsion/camera/app/ui/view/ShutterButtonView$OnShutterButtonListener;

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerX()I

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerY()I

    move-result v0

    invoke-interface {p0, v1, v0}, Lcom/transsion/camera/app/ui/view/ShutterButtonView$OnShutterButtonListener;->onShutterButtonSwipeUp(II)Z

    move-result p0

    return p0

    :cond_1a
    const/4 p0, 0x0

    return p0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 7

    .line 304
    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 305
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    .line 306
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    .line 308
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_7c

    if-eq v1, v2, :cond_64

    const/4 v4, 0x2

    if-eq v1, v4, :cond_2c

    const/4 v0, 0x3

    if-eq v1, v0, :cond_28

    const/4 v0, 0x5

    if-eq v1, v0, :cond_c5

    const/4 v0, 0x6

    if-eq v1, v0, :cond_23

    goto/16 :goto_c2

    .line 353
    :cond_23
    invoke-virtual {p0, v3}, Landroid/view/View;->setPressed(Z)V

    goto/16 :goto_c5

    .line 341
    :cond_28
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/view/ShutterButtonView;->onTouchShutterCancel()V

    goto :goto_64

    .line 322
    :cond_2c
    iget v1, p0, Lcom/transsion/camera/app/ui/view/ShutterButtonView;->mFirstPointerId:I

    if-eq v0, v1, :cond_32

    goto/16 :goto_c5

    .line 326
    :cond_32
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    .line 327
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    .line 328
    invoke-direct {p0, v0, v1}, Lcom/transsion/camera/app/ui/view/ShutterButtonView;->reachedScrollThreshold(FF)Z

    move-result v0

    if-eqz v0, :cond_50

    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/view/ShutterButtonView;->mIsCanceled:Z

    if-nez v0, :cond_50

    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/view/ShutterButtonView;->mLongPressed:Z

    if-nez v0, :cond_50

    .line 329
    iput-boolean v2, p0, Lcom/transsion/camera/app/ui/view/ShutterButtonView;->mIsCanceled:Z

    .line 330
    invoke-virtual {p0, v3}, Landroid/view/View;->setPressed(Z)V

    .line 331
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/view/ShutterButtonView;->onTouchShutterCancel()V

    .line 333
    :cond_50
    iget v0, p0, Lcom/transsion/camera/app/ui/view/ShutterButtonView;->mCurrentScreenFormType:I

    iget v1, p0, Lcom/transsion/camera/app/ui/view/ShutterButtonView;->mDownScreenFormType:I

    if-eq v0, v1, :cond_58

    goto/16 :goto_c2

    .line 336
    :cond_58
    iget-object v0, p0, Lcom/transsion/camera/app/ui/view/ShutterButtonView;->mMotionEventListener:Lcom/transsion/camera/app/ui/view/ShutterButtonView$IMotionEventListener;

    if-eqz v0, :cond_c2

    iget-boolean v1, p0, Lcom/transsion/camera/app/ui/view/ShutterButtonView;->mInterruptTransmitEvent:Z

    if-nez v1, :cond_c2

    .line 337
    invoke-interface {v0, p1}, Lcom/transsion/camera/app/ui/view/ShutterButtonView$IMotionEventListener;->onTransmitMotionEvent(Landroid/view/MotionEvent;)V

    goto :goto_c2

    .line 343
    :cond_64
    :goto_64
    iget-object v0, p0, Lcom/transsion/camera/app/ui/view/ShutterButtonView;->mMotionEventListener:Lcom/transsion/camera/app/ui/view/ShutterButtonView$IMotionEventListener;

    if-eqz v0, :cond_6f

    iget-boolean v1, p0, Lcom/transsion/camera/app/ui/view/ShutterButtonView;->mInterruptTransmitEvent:Z

    if-nez v1, :cond_6f

    .line 344
    invoke-interface {v0, p1}, Lcom/transsion/camera/app/ui/view/ShutterButtonView$IMotionEventListener;->onTransmitMotionEvent(Landroid/view/MotionEvent;)V

    .line 346
    :cond_6f
    iget-object v0, p0, Lcom/transsion/camera/app/ui/view/ShutterButtonView;->mListener:Lcom/transsion/camera/app/ui/view/ShutterButtonView$OnShutterButtonListener;

    if-eqz v0, :cond_76

    .line 347
    invoke-interface {v0}, Lcom/transsion/camera/app/ui/view/ShutterButtonView$OnShutterButtonListener;->onTouchCancel()V

    .line 349
    :cond_76
    iput-boolean v3, p0, Lcom/transsion/camera/app/ui/view/ShutterButtonView;->mIsCanceled:Z

    .line 350
    invoke-virtual {p0, v3}, Landroid/view/View;->setPressed(Z)V

    goto :goto_c2

    .line 313
    :cond_7c
    iput v0, p0, Lcom/transsion/camera/app/ui/view/ShutterButtonView;->mFirstPointerId:I

    .line 314
    iget v0, p0, Lcom/transsion/camera/app/ui/view/ShutterButtonView;->mCurrentScreenFormType:I

    iput v0, p0, Lcom/transsion/camera/app/ui/view/ShutterButtonView;->mDownScreenFormType:I

    .line 315
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    iput v0, p0, Lcom/transsion/camera/app/ui/view/ShutterButtonView;->mDownRawX:F

    .line 316
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    iput v0, p0, Lcom/transsion/camera/app/ui/view/ShutterButtonView;->mDownRawY:F

    .line 317
    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/view/ShutterButtonView;->mIsCapturing:Z

    if-nez v0, :cond_a3

    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/view/ShutterButtonView;->mSelfTimerBegin:Z

    if-nez v0, :cond_a3

    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/view/ShutterButtonView;->mPanoramaCaptureBegin:Z

    if-nez v0, :cond_a3

    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_a1

    goto :goto_a3

    :cond_a1
    move v0, v3

    goto :goto_a4

    :cond_a3
    :goto_a3
    move v0, v2

    :goto_a4
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/view/ShutterButtonView;->mInterruptTransmitEvent:Z

    .line 318
    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/view/ShutterButtonView;->mSelfTimerBegin:Z

    if-nez v0, :cond_b8

    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/view/ShutterButtonView;->mPanoramaCaptureBegin:Z

    if-nez v0, :cond_b8

    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_b9

    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/view/ShutterButtonView;->mPressed:Z

    if-nez v0, :cond_b9

    :cond_b8
    move v3, v2

    :cond_b9
    iput-boolean v3, p0, Lcom/transsion/camera/app/ui/view/ShutterButtonView;->mInterruptDispatchEvent:Z

    .line 319
    iget-object v0, p0, Lcom/transsion/camera/app/ui/view/ShutterButtonView;->mButtonActionManager:Lcom/transsion/camera/app/ui/view/manager/ButtonActionManager;

    iget-boolean v1, p0, Lcom/transsion/camera/app/ui/view/ShutterButtonView;->mIsCapturing:Z

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/ui/view/manager/ButtonActionManager;->setIsCapturing(Z)V

    .line 359
    :cond_c2
    :goto_c2
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/view/ShutterButtonView;->dispatchEvent(Landroid/view/MotionEvent;)V

    :cond_c5
    :goto_c5
    return v2
.end method

.method public performClick()Z
    .registers 4

    .line 422
    sget-object v0, Lcom/transsion/camera/app/ui/view/ShutterButtonView;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "performClick isEnabled:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", isClickable:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/view/View;->isClickable()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", mLongPressed:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/transsion/camera/app/ui/view/ShutterButtonView;->mLongPressed:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", mPressed:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/transsion/camera/app/ui/view/ShutterButtonView;->mPressed:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 424
    iget-boolean v1, p0, Lcom/transsion/camera/app/ui/view/ShutterButtonView;->mAlwaysEnableShutter:Z

    if-eqz v1, :cond_49

    iget-boolean v1, p0, Lcom/transsion/camera/app/ui/view/ShutterButtonView;->mEnabled:Z

    if-nez v1, :cond_49

    .line 425
    const-string p0, "performClick, shutter always enabled, but do not response this time"

    invoke-static {v0, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0

    .line 428
    :cond_49
    invoke-super {p0}, Landroid/view/View;->performClick()Z

    move-result v0

    .line 429
    iget-object v1, p0, Lcom/transsion/camera/app/ui/view/ShutterButtonView;->mListener:Lcom/transsion/camera/app/ui/view/ShutterButtonView$OnShutterButtonListener;

    if-eqz v1, :cond_6a

    iget-boolean v1, p0, Lcom/transsion/camera/app/ui/view/ShutterButtonView;->mLongPressed:Z

    if-nez v1, :cond_6a

    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_61

    invoke-virtual {p0}, Landroid/view/View;->isClickable()Z

    move-result v1

    if-nez v1, :cond_65

    :cond_61
    iget-boolean v1, p0, Lcom/transsion/camera/app/ui/view/ShutterButtonView;->mPressed:Z

    if-eqz v1, :cond_6a

    .line 430
    :cond_65
    iget-object p0, p0, Lcom/transsion/camera/app/ui/view/ShutterButtonView;->mListener:Lcom/transsion/camera/app/ui/view/ShutterButtonView$OnShutterButtonListener;

    invoke-interface {p0}, Lcom/transsion/camera/app/ui/view/ShutterButtonView$OnShutterButtonListener;->onShutterClick()V

    :cond_6a
    return v0
.end method

.method public setAppUI(Lcom/transsion/camera/app/common/IAppUI;)V
    .registers 2

    .line 128
    iput-object p1, p0, Lcom/transsion/camera/app/ui/view/ShutterButtonView;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    return-void
.end method

.method public setEnabled(Z)V
    .registers 5

    .line 60
    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/view/ShutterButtonView;->mAlwaysEnableShutter:Z

    if-eqz v0, :cond_21

    .line 61
    sget-object v0, Lcom/transsion/camera/app/ui/view/ShutterButtonView;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setEnabled, shutter always enabled, setEnabled:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 62
    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/view/ShutterButtonView;->mEnabled:Z

    const/4 p1, 0x1

    .line 63
    invoke-super {p0, p1}, Landroid/view/View;->setEnabled(Z)V

    return-void

    .line 66
    :cond_21
    invoke-super {p0, p1}, Landroid/view/View;->setEnabled(Z)V

    return-void
.end method

.method public setIsCapturing(Z)V
    .registers 2

    .line 154
    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/view/ShutterButtonView;->mIsCapturing:Z

    return-void
.end method

.method public setIsQuickRecording(Z)V
    .registers 2

    .line 297
    iget-object p0, p0, Lcom/transsion/camera/app/ui/view/ShutterButtonView;->mButtonActionManager:Lcom/transsion/camera/app/ui/view/manager/ButtonActionManager;

    if-eqz p0, :cond_7

    .line 298
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/view/manager/ButtonActionManager;->setIsQuickRecording(Z)V

    :cond_7
    return-void
.end method

.method public setMotionEventListener(Lcom/transsion/camera/app/ui/view/ShutterButtonView$IMotionEventListener;)V
    .registers 2

    .line 293
    iput-object p1, p0, Lcom/transsion/camera/app/ui/view/ShutterButtonView;->mMotionEventListener:Lcom/transsion/camera/app/ui/view/ShutterButtonView$IMotionEventListener;

    return-void
.end method

.method public setOnShutterListener(Lcom/transsion/camera/app/ui/view/ShutterButtonView$OnShutterButtonListener;)V
    .registers 2

    .line 238
    iput-object p1, p0, Lcom/transsion/camera/app/ui/view/ShutterButtonView;->mListener:Lcom/transsion/camera/app/ui/view/ShutterButtonView$OnShutterButtonListener;

    return-void
.end method

.method public setPanoramaCaptureBegin(Z)V
    .registers 2

    .line 162
    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/view/ShutterButtonView;->mPanoramaCaptureBegin:Z

    return-void
.end method

.method public setScreenFormType(I)V
    .registers 2

    .line 173
    iput p1, p0, Lcom/transsion/camera/app/ui/view/ShutterButtonView;->mCurrentScreenFormType:I

    .line 174
    iget-object p0, p0, Lcom/transsion/camera/app/ui/view/ShutterButtonView;->mButtonActionManager:Lcom/transsion/camera/app/ui/view/manager/ButtonActionManager;

    if-eqz p0, :cond_9

    .line 175
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/view/manager/ButtonActionManager;->setScreenFormType(I)V

    :cond_9
    return-void
.end method

.method public setSelfTimerBegin(Z)V
    .registers 2

    .line 158
    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/view/ShutterButtonView;->mSelfTimerBegin:Z

    return-void
.end method

.method public updateCurrentMode(Ljava/lang/String;)V
    .registers 2

    .line 150
    iget-object p0, p0, Lcom/transsion/camera/app/ui/view/ShutterButtonView;->mButtonActionManager:Lcom/transsion/camera/app/ui/view/manager/ButtonActionManager;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/view/manager/ButtonActionManager;->updateCurrentMode(Ljava/lang/String;)V

    return-void
.end method

.method public updateOrientation(I)V
    .registers 2

    .line 242
    iput p1, p0, Lcom/transsion/camera/app/ui/view/ShutterButtonView;->mOrientation:I

    .line 243
    iget-object p0, p0, Lcom/transsion/camera/app/ui/view/ShutterButtonView;->mButtonActionManager:Lcom/transsion/camera/app/ui/view/manager/ButtonActionManager;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/view/manager/ButtonActionManager;->updateOrientation(I)V

    return-void
.end method
