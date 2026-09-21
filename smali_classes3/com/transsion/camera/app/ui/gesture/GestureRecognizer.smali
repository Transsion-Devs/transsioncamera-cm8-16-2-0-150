.class public Lcom/transsion/camera/app/ui/gesture/GestureRecognizer;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/app/ui/gesture/GestureRecognizer$Listener;,
        Lcom/transsion/camera/app/ui/gesture/GestureRecognizer$GestureListenerImpl;,
        Lcom/transsion/camera/app/ui/gesture/GestureRecognizer$GestureDoubleListenerImpl;,
        Lcom/transsion/camera/app/ui/gesture/GestureRecognizer$ScaleListenerImpl;,
        Lcom/transsion/camera/app/ui/gesture/GestureRecognizer$UpListenerImpl;,
        Lcom/transsion/camera/app/ui/gesture/GestureRecognizer$DragMoveListener;
    }
.end annotation


# instance fields
.field private ACTION_STATE_DRAG:I

.field private ACTION_STATE_IDLE:I

.field private mActionState:I

.field private mAppUI:Lcom/transsion/camera/app/common/IAppUI;

.field private mDownUpDetector:Lcom/transsion/camera/app/ui/gesture/UpDetector;

.field private mDx:F

.field private mDy:F

.field private final mGestureDetector:Lcom/transsion/camera/app/ui/gesture/GestureDetectorCompatImplBase;

.field private mInitialTouchEvent:Landroid/view/MotionEvent;

.field private mLastTouchX:F

.field private mLastTouchY:F

.field private mListener:Lcom/transsion/camera/app/ui/gesture/GestureRecognizer$Listener;

.field private mNeedDoubleTap:Z

.field private final mScaleDetector:Landroid/view/ScaleGestureDetector;


# direct methods
.method static bridge synthetic -$$Nest$fgetACTION_STATE_DRAG(Lcom/transsion/camera/app/ui/gesture/GestureRecognizer;)I
    .registers 1

    .line 0
    iget p0, p0, Lcom/transsion/camera/app/ui/gesture/GestureRecognizer;->ACTION_STATE_DRAG:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmListener(Lcom/transsion/camera/app/ui/gesture/GestureRecognizer;)Lcom/transsion/camera/app/ui/gesture/GestureRecognizer$Listener;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/app/ui/gesture/GestureRecognizer;->mListener:Lcom/transsion/camera/app/ui/gesture/GestureRecognizer$Listener;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmNeedDoubleTap(Lcom/transsion/camera/app/ui/gesture/GestureRecognizer;)Z
    .registers 1

    .line 0
    iget-boolean p0, p0, Lcom/transsion/camera/app/ui/gesture/GestureRecognizer;->mNeedDoubleTap:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fputmDx(Lcom/transsion/camera/app/ui/gesture/GestureRecognizer;F)V
    .registers 2

    .line 0
    iput p1, p0, Lcom/transsion/camera/app/ui/gesture/GestureRecognizer;->mDx:F

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmDy(Lcom/transsion/camera/app/ui/gesture/GestureRecognizer;F)V
    .registers 2

    .line 0
    iput p1, p0, Lcom/transsion/camera/app/ui/gesture/GestureRecognizer;->mDy:F

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmInitialTouchEvent(Lcom/transsion/camera/app/ui/gesture/GestureRecognizer;Landroid/view/MotionEvent;)V
    .registers 2

    .line 0
    iput-object p1, p0, Lcom/transsion/camera/app/ui/gesture/GestureRecognizer;->mInitialTouchEvent:Landroid/view/MotionEvent;

    return-void
.end method

.method static bridge synthetic -$$Nest$mselect(Lcom/transsion/camera/app/ui/gesture/GestureRecognizer;I)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/gesture/GestureRecognizer;->select(I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/transsion/camera/app/ui/gesture/GestureRecognizer$Listener;ZLcom/transsion/camera/app/common/IAppUI;)V
    .registers 8

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 41
    iput v0, p0, Lcom/transsion/camera/app/ui/gesture/GestureRecognizer;->ACTION_STATE_IDLE:I

    const/4 v1, 0x1

    .line 42
    iput v1, p0, Lcom/transsion/camera/app/ui/gesture/GestureRecognizer;->ACTION_STATE_DRAG:I

    .line 43
    iput v0, p0, Lcom/transsion/camera/app/ui/gesture/GestureRecognizer;->mActionState:I

    .line 54
    iput-object p2, p0, Lcom/transsion/camera/app/ui/gesture/GestureRecognizer;->mListener:Lcom/transsion/camera/app/ui/gesture/GestureRecognizer$Listener;

    .line 55
    iput-boolean p3, p0, Lcom/transsion/camera/app/ui/gesture/GestureRecognizer;->mNeedDoubleTap:Z

    .line 56
    new-instance p2, Lcom/transsion/camera/app/ui/gesture/GestureDetectorCompatImplBase;

    new-instance v1, Lcom/transsion/camera/app/ui/gesture/GestureRecognizer$GestureListenerImpl;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/transsion/camera/app/ui/gesture/GestureRecognizer$GestureListenerImpl;-><init>(Lcom/transsion/camera/app/ui/gesture/GestureRecognizer;Lcom/transsion/camera/app/ui/gesture/GestureRecognizer-IA;)V

    invoke-direct {p2, p1, v1, v2}, Lcom/transsion/camera/app/ui/gesture/GestureDetectorCompatImplBase;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;Landroid/os/Handler;)V

    iput-object p2, p0, Lcom/transsion/camera/app/ui/gesture/GestureRecognizer;->mGestureDetector:Lcom/transsion/camera/app/ui/gesture/GestureDetectorCompatImplBase;

    if-eqz p3, :cond_26

    .line 58
    new-instance p3, Lcom/transsion/camera/app/ui/gesture/GestureRecognizer$GestureDoubleListenerImpl;

    invoke-direct {p3, p0, v2}, Lcom/transsion/camera/app/ui/gesture/GestureRecognizer$GestureDoubleListenerImpl;-><init>(Lcom/transsion/camera/app/ui/gesture/GestureRecognizer;Lcom/transsion/camera/app/ui/gesture/GestureRecognizer-IA;)V

    invoke-virtual {p2, p3}, Lcom/transsion/camera/app/ui/gesture/GestureDetectorCompatImplBase;->setOnDoubleTapListener(Landroid/view/GestureDetector$OnDoubleTapListener;)V

    .line 60
    :cond_26
    new-instance p2, Lcom/transsion/camera/app/ui/gesture/ScaleDetector;

    new-instance p3, Lcom/transsion/camera/app/ui/gesture/GestureRecognizer$ScaleListenerImpl;

    invoke-direct {p3, p0, v2}, Lcom/transsion/camera/app/ui/gesture/GestureRecognizer$ScaleListenerImpl;-><init>(Lcom/transsion/camera/app/ui/gesture/GestureRecognizer;Lcom/transsion/camera/app/ui/gesture/GestureRecognizer-IA;)V

    invoke-direct {p2, p1, p3}, Lcom/transsion/camera/app/ui/gesture/ScaleDetector;-><init>(Landroid/content/Context;Landroid/view/ScaleGestureDetector$OnScaleGestureListener;)V

    iput-object p2, p0, Lcom/transsion/camera/app/ui/gesture/GestureRecognizer;->mScaleDetector:Landroid/view/ScaleGestureDetector;

    .line 61
    invoke-virtual {p2, v0}, Landroid/view/ScaleGestureDetector;->setQuickScaleEnabled(Z)V

    .line 62
    new-instance p1, Lcom/transsion/camera/app/ui/gesture/UpDetector;

    new-instance p2, Lcom/transsion/camera/app/ui/gesture/GestureRecognizer$UpListenerImpl;

    invoke-direct {p2, p0, v2}, Lcom/transsion/camera/app/ui/gesture/GestureRecognizer$UpListenerImpl;-><init>(Lcom/transsion/camera/app/ui/gesture/GestureRecognizer;Lcom/transsion/camera/app/ui/gesture/GestureRecognizer-IA;)V

    invoke-direct {p1, p2}, Lcom/transsion/camera/app/ui/gesture/UpDetector;-><init>(Lcom/transsion/camera/app/ui/gesture/UpDetector$DownUpListener;)V

    iput-object p1, p0, Lcom/transsion/camera/app/ui/gesture/GestureRecognizer;->mDownUpDetector:Lcom/transsion/camera/app/ui/gesture/UpDetector;

    .line 63
    iput-object p4, p0, Lcom/transsion/camera/app/ui/gesture/GestureRecognizer;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    return-void
.end method

.method private select(I)V
    .registers 3

    .line 221
    iget v0, p0, Lcom/transsion/camera/app/ui/gesture/GestureRecognizer;->mActionState:I

    if-ne p1, v0, :cond_5

    return-void

    .line 224
    :cond_5
    iput p1, p0, Lcom/transsion/camera/app/ui/gesture/GestureRecognizer;->mActionState:I

    return-void
.end method


# virtual methods
.method public onTouchEvent(Landroid/view/MotionEvent;)V
    .registers 5

    .line 67
    iget-object v0, p0, Lcom/transsion/camera/app/ui/gesture/GestureRecognizer;->mListener:Lcom/transsion/camera/app/ui/gesture/GestureRecognizer$Listener;

    invoke-interface {v0, p1}, Lcom/transsion/camera/app/ui/gesture/GestureRecognizer$Listener;->onGestureTouchEvent(Landroid/view/MotionEvent;)V

    .line 68
    iget-object v0, p0, Lcom/transsion/camera/app/ui/gesture/GestureRecognizer;->mGestureDetector:Lcom/transsion/camera/app/ui/gesture/GestureDetectorCompatImplBase;

    invoke-virtual {v0, p1}, Lcom/transsion/camera/app/ui/gesture/GestureDetectorCompatImplBase;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 69
    iget-object v0, p0, Lcom/transsion/camera/app/ui/gesture/GestureRecognizer;->mScaleDetector:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/ScaleGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 70
    iget-object v0, p0, Lcom/transsion/camera/app/ui/gesture/GestureRecognizer;->mDownUpDetector:Lcom/transsion/camera/app/ui/gesture/UpDetector;

    invoke-virtual {v0, p1}, Lcom/transsion/camera/app/ui/gesture/UpDetector;->onTouchEvent(Landroid/view/MotionEvent;)V

    .line 71
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-eqz v0, :cond_67

    const/4 v1, 0x1

    const/16 v2, 0xc3

    if-eq v0, v1, :cond_5c

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2c

    const/4 p1, 0x3

    if-eq v0, p1, :cond_26

    goto :goto_5b

    .line 95
    :cond_26
    iget-object p0, p0, Lcom/transsion/camera/app/ui/gesture/GestureRecognizer;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {p0, v2}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    return-void

    .line 80
    :cond_2c
    iget v0, p0, Lcom/transsion/camera/app/ui/gesture/GestureRecognizer;->mActionState:I

    iget v1, p0, Lcom/transsion/camera/app/ui/gesture/GestureRecognizer;->ACTION_STATE_DRAG:I

    if-ne v0, v1, :cond_5b

    .line 81
    iget v0, p0, Lcom/transsion/camera/app/ui/gesture/GestureRecognizer;->mLastTouchX:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/transsion/camera/app/ui/gesture/GestureRecognizer;->mDx:F

    .line 82
    iget v0, p0, Lcom/transsion/camera/app/ui/gesture/GestureRecognizer;->mLastTouchY:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/transsion/camera/app/ui/gesture/GestureRecognizer;->mDy:F

    .line 83
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/transsion/camera/app/ui/gesture/GestureRecognizer;->mLastTouchX:F

    .line 84
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/transsion/camera/app/ui/gesture/GestureRecognizer;->mLastTouchY:F

    .line 85
    iget-object v0, p0, Lcom/transsion/camera/app/ui/gesture/GestureRecognizer;->mListener:Lcom/transsion/camera/app/ui/gesture/GestureRecognizer$Listener;

    iget-object v1, p0, Lcom/transsion/camera/app/ui/gesture/GestureRecognizer;->mInitialTouchEvent:Landroid/view/MotionEvent;

    iget v2, p0, Lcom/transsion/camera/app/ui/gesture/GestureRecognizer;->mDx:F

    iget p0, p0, Lcom/transsion/camera/app/ui/gesture/GestureRecognizer;->mDy:F

    invoke-interface {v0, v1, p1, v2, p0}, Lcom/transsion/camera/app/ui/gesture/GestureRecognizer$DragMoveListener;->onDragMove(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    :cond_5b
    :goto_5b
    return-void

    .line 90
    :cond_5c
    iget-object p1, p0, Lcom/transsion/camera/app/ui/gesture/GestureRecognizer;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {p1, v2}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    .line 91
    iget p1, p0, Lcom/transsion/camera/app/ui/gesture/GestureRecognizer;->ACTION_STATE_IDLE:I

    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/gesture/GestureRecognizer;->select(I)V

    return-void

    .line 74
    :cond_67
    iget-object v0, p0, Lcom/transsion/camera/app/ui/gesture/GestureRecognizer;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    const/16 v1, 0xc2

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    .line 75
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr v0, v1

    float-to-int v0, v0

    int-to-float v0, v0

    iput v0, p0, Lcom/transsion/camera/app/ui/gesture/GestureRecognizer;->mLastTouchX:F

    .line 76
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    add-float/2addr p1, v1

    float-to-int p1, p1

    int-to-float p1, p1

    iput p1, p0, Lcom/transsion/camera/app/ui/gesture/GestureRecognizer;->mLastTouchY:F

    return-void
.end method
