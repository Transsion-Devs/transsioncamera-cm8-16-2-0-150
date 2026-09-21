.class public Lcom/transsion/camera/app/ui/widget/RootLayout;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private mAllowGesture:Z

.field private final mDisplaySize:Landroid/graphics/Point;

.field private final mDownPoint:Landroid/graphics/PointF;

.field private final mEdgeWidth:I

.field private final mNavBarGestureHeight:I

.field private mScreenState:I

.field private mSystemGestureOn:Z

.field private final mTouchSlop:F


# direct methods
.method public static synthetic $r8$lambda$NH1bZeS8EVBqMcZR7kCCl_WUfSs()V
    .registers 2

    .line 84
    sget-object v0, Lcom/transsion/camera/app/ui/widget/RootLayout;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "The first frame has been drawn and its buffer swapped."

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 33
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "RootLayout"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/app/ui/widget/RootLayout;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const/4 v0, 0x0

    .line 64
    invoke-direct {p0, p1, p2, v0}, Lcom/transsion/camera/app/ui/widget/RootLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5

    const/4 v0, 0x0

    .line 69
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/transsion/camera/app/ui/widget/RootLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 7

    .line 74
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 p2, 0x1

    .line 44
    iput p2, p0, Lcom/transsion/camera/app/ui/widget/RootLayout;->mScreenState:I

    .line 54
    new-instance p2, Landroid/graphics/Point;

    invoke-direct {p2}, Landroid/graphics/Point;-><init>()V

    iput-object p2, p0, Lcom/transsion/camera/app/ui/widget/RootLayout;->mDisplaySize:Landroid/graphics/Point;

    .line 56
    new-instance p2, Landroid/graphics/PointF;

    invoke-direct {p2}, Landroid/graphics/PointF;-><init>()V

    iput-object p2, p0, Lcom/transsion/camera/app/ui/widget/RootLayout;->mDownPoint:Landroid/graphics/PointF;

    .line 75
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/widget/RootLayout;->initDisplaySize(Landroid/content/Context;)V

    .line 76
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lcom/transsion/camera/app/ui/widget/RootLayout;->mTouchSlop:F

    .line 77
    const-string p2, "config_backGestureInset"

    const-string p3, "android"

    invoke-direct {p0, p2, p3}, Lcom/transsion/camera/app/ui/widget/RootLayout;->getDimensionPixelSize(Ljava/lang/String;Ljava/lang/String;)I

    move-result p2

    iput p2, p0, Lcom/transsion/camera/app/ui/widget/RootLayout;->mEdgeWidth:I

    .line 78
    const-string p4, "navigation_bar_gesture_height"

    invoke-direct {p0, p4, p3}, Lcom/transsion/camera/app/ui/widget/RootLayout;->getDimensionPixelSize(Ljava/lang/String;Ljava/lang/String;)I

    move-result p3

    iput p3, p0, Lcom/transsion/camera/app/ui/widget/RootLayout;->mNavBarGestureHeight:I

    .line 79
    sget-object p4, Lcom/transsion/camera/app/ui/widget/RootLayout;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mTouchSlop: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p1, ", mEdgeWidth: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", mNavBarGestureHeight: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p4, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 81
    invoke-virtual {p0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p0

    if-eqz p0, :cond_68

    .line 83
    new-instance p1, Lcom/transsion/camera/app/ui/widget/RootLayout$$ExternalSyntheticLambda0;

    invoke-direct {p1}, Lcom/transsion/camera/app/ui/widget/RootLayout$$ExternalSyntheticLambda0;-><init>()V

    invoke-virtual {p0, p1}, Landroid/view/ViewTreeObserver;->registerFrameCommitCallback(Ljava/lang/Runnable;)V

    :cond_68
    return-void
.end method

.method private getDimensionPixelSize(Ljava/lang/String;Ljava/lang/String;)I
    .registers 4

    .line 101
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    .line 102
    const-string v0, "dimen"

    invoke-virtual {p0, p1, v0, p2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p2

    if-gtz p2, :cond_24

    .line 105
    sget-object p0, Lcom/transsion/camera/app/ui/widget/RootLayout;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "invalid dimen "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0

    .line 108
    :cond_24
    invoke-virtual {p0, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    return p0
.end method

.method private initDisplaySize(Landroid/content/Context;)V
    .registers 3

    .line 90
    const-class v0, Landroid/hardware/display/DisplayManager;

    .line 91
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/display/DisplayManager;

    if-nez p1, :cond_12

    .line 93
    sget-object p0, Lcom/transsion/camera/app/ui/widget/RootLayout;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "displayManager is null"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    :cond_12
    const/4 v0, 0x0

    .line 96
    invoke-virtual {p1, v0}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object p1

    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/RootLayout;->mDisplaySize:Landroid/graphics/Point;

    .line 97
    invoke-virtual {p1, p0}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    return-void
.end method

.method private isSystemGestureOn()Z
    .registers 5

    .line 131
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    .line 132
    const-string v0, "integer"

    const-string v1, "android"

    const-string v2, "config_navBarInteractionMode"

    invoke-virtual {p0, v2, v0, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x0

    if-gtz v0, :cond_19

    .line 135
    sget-object p0, Lcom/transsion/camera/app/ui/widget/RootLayout;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "invalid config_navBarInteractionMode"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return v1

    .line 138
    :cond_19
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p0

    .line 139
    sget-object v0, Lcom/transsion/camera/app/ui/widget/RootLayout;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "navigationMode: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 v0, 0x2

    if-ne v0, p0, :cond_38

    const/4 p0, 0x1

    return p0

    :cond_38
    return v1
.end method

.method private isWithinTouchRegion(II)Z
    .registers 6

    .line 181
    iget v0, p0, Lcom/transsion/camera/app/ui/widget/RootLayout;->mEdgeWidth:I

    if-le p1, v0, :cond_14

    iget-object v1, p0, Lcom/transsion/camera/app/ui/widget/RootLayout;->mDisplaySize:Landroid/graphics/Point;

    iget v2, v1, Landroid/graphics/Point;->x:I

    sub-int/2addr v2, v0

    if-ge p1, v2, :cond_14

    iget p1, v1, Landroid/graphics/Point;->y:I

    iget p0, p0, Lcom/transsion/camera/app/ui/widget/RootLayout;->mNavBarGestureHeight:I

    sub-int/2addr p1, p0

    if-ge p2, p1, :cond_14

    const/4 p0, 0x0

    return p0

    :cond_14
    const/4 p0, 0x1

    return p0
.end method


# virtual methods
.method public getScreenState()I
    .registers 1

    .line 122
    iget p0, p0, Lcom/transsion/camera/app/ui/widget/RootLayout;->mScreenState:I

    return p0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 8

    .line 145
    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/widget/RootLayout;->mSystemGestureOn:Z

    if-nez v0, :cond_9

    .line 146
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0

    .line 148
    :cond_9
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_61

    if-eq v0, v2, :cond_5e

    const/4 v3, 0x2

    if-eq v0, v3, :cond_1a

    const/4 v2, 0x3

    if-eq v0, v2, :cond_5e

    goto :goto_83

    .line 158
    :cond_1a
    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/widget/RootLayout;->mAllowGesture:Z

    if-eqz v0, :cond_83

    .line 159
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget-object v1, p0, Lcom/transsion/camera/app/ui/widget/RootLayout;->mDownPoint:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->x:F

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    .line 160
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    iget-object v3, p0, Lcom/transsion/camera/app/ui/widget/RootLayout;->mDownPoint:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->y:F

    sub-float/2addr v1, v3

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpl-float v3, v0, v1

    if-lez v3, :cond_43

    .line 161
    iget v3, p0, Lcom/transsion/camera/app/ui/widget/RootLayout;->mTouchSlop:F

    cmpl-float v3, v0, v3

    if-lez v3, :cond_43

    return v2

    .line 165
    :cond_43
    iget-object v3, p0, Lcom/transsion/camera/app/ui/widget/RootLayout;->mDownPoint:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->y:F

    iget-object v4, p0, Lcom/transsion/camera/app/ui/widget/RootLayout;->mDisplaySize:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->y:I

    iget v5, p0, Lcom/transsion/camera/app/ui/widget/RootLayout;->mNavBarGestureHeight:I

    sub-int/2addr v4, v5

    int-to-float v4, v4

    cmpl-float v3, v3, v4

    if-lez v3, :cond_83

    cmpl-float v0, v1, v0

    if-lez v0, :cond_83

    .line 166
    iget v0, p0, Lcom/transsion/camera/app/ui/widget/RootLayout;->mTouchSlop:F

    cmpl-float v0, v1, v0

    if-lez v0, :cond_83

    return v2

    .line 173
    :cond_5e
    iput-boolean v1, p0, Lcom/transsion/camera/app/ui/widget/RootLayout;->mAllowGesture:Z

    goto :goto_83

    .line 150
    :cond_61
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v3, v3

    invoke-direct {p0, v0, v3}, Lcom/transsion/camera/app/ui/widget/RootLayout;->isWithinTouchRegion(II)Z

    move-result v0

    if-eqz v0, :cond_81

    .line 151
    iput-boolean v2, p0, Lcom/transsion/camera/app/ui/widget/RootLayout;->mAllowGesture:Z

    .line 152
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/RootLayout;->mDownPoint:Landroid/graphics/PointF;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/PointF;->set(FF)V

    goto :goto_83

    .line 154
    :cond_81
    iput-boolean v1, p0, Lcom/transsion/camera/app/ui/widget/RootLayout;->mAllowGesture:Z

    .line 177
    :cond_83
    :goto_83
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public onScreenStateChanged(I)V
    .registers 2

    .line 117
    invoke-super {p0, p1}, Landroid/view/View;->onScreenStateChanged(I)V

    .line 118
    iput p1, p0, Lcom/transsion/camera/app/ui/widget/RootLayout;->mScreenState:I

    return-void
.end method

.method public resume()V
    .registers 4

    .line 126
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/widget/RootLayout;->isSystemGestureOn()Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/widget/RootLayout;->mSystemGestureOn:Z

    .line 127
    sget-object v0, Lcom/transsion/camera/app/ui/widget/RootLayout;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "resume mSystemGestureOn: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/transsion/camera/app/ui/widget/RootLayout;->mSystemGestureOn:Z

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method public updateDisplaySize(Landroid/util/Size;)V
    .registers 3

    .line 112
    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/RootLayout;->mDisplaySize:Landroid/graphics/Point;

    invoke-virtual {p1}, Landroid/util/Size;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/util/Size;->getHeight()I

    move-result p1

    invoke-virtual {p0, v0, p1}, Landroid/graphics/Point;->set(II)V

    return-void
.end method
