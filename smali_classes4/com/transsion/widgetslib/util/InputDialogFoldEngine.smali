.class public final Lcom/transsion/widgetslib/util/InputDialogFoldEngine;
.super Lcom/transsion/widgetslib/util/ActivityLifecycleCallbacksAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/widgetslib/util/InputDialogFoldEngine$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/transsion/widgetslib/util/InputDialogFoldEngine$Companion;

.field public static final ENTER_DURATION:J = 0xfaL

.field public static final EXIT_DURATION:J = 0x12cL


# instance fields
.field private mEnterValueAnimator:Landroid/animation/ValueAnimator;

.field private mExitValueAnimator:Landroid/animation/ValueAnimator;

.field private final mHandler:Landroid/os/Handler;

.field private final mInputDialogInputManager$delegate:Lkotlin/Lazy;

.field private mIsPhoneHangOnStatus:Z

.field private final mLayoutStateChangeCallback:Landroidx/core/util/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/core/util/Consumer;"
        }
    .end annotation
.end field

.field private mParentStopped:Z

.field private final mWindowWeakR:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/Window;",
            ">;"
        }
    .end annotation
.end field

.field private final windowInfoTracker$delegate:Lkotlin/Lazy;


# direct methods
.method public static synthetic $r8$lambda$8pWkikzZXB4GdRv2Dz0U7hJaSK8(Landroidx/window/layout/WindowLayoutInfo;Lcom/transsion/widgetslib/util/InputDialogFoldEngine;)V
    .registers 2

    .line 0
    invoke-static {p0, p1}, Lcom/transsion/widgetslib/util/InputDialogFoldEngine;->mLayoutStateChangeCallback$lambda$2$lambda$1(Landroidx/window/layout/WindowLayoutInfo;Lcom/transsion/widgetslib/util/InputDialogFoldEngine;)V

    return-void
.end method

.method public static synthetic $r8$lambda$rPzFpV64EFcIiygAKc_kviKOvXQ(Lcom/transsion/widgetslib/util/InputDialogFoldEngine;Landroidx/window/layout/WindowLayoutInfo;)V
    .registers 2

    .line 0
    invoke-static {p0, p1}, Lcom/transsion/widgetslib/util/InputDialogFoldEngine;->mLayoutStateChangeCallback$lambda$2(Lcom/transsion/widgetslib/util/InputDialogFoldEngine;Landroidx/window/layout/WindowLayoutInfo;)V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/transsion/widgetslib/util/InputDialogFoldEngine$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/transsion/widgetslib/util/InputDialogFoldEngine$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/transsion/widgetslib/util/InputDialogFoldEngine;->Companion:Lcom/transsion/widgetslib/util/InputDialogFoldEngine$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/view/Window;)V
    .registers 4

    const-string v0, "window"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    invoke-direct {p0}, Lcom/transsion/widgetslib/util/ActivityLifecycleCallbacksAdapter;-><init>()V

    .line 35
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/transsion/widgetslib/util/InputDialogFoldEngine;->mWindowWeakR:Ljava/lang/ref/WeakReference;

    .line 44
    new-instance v0, Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/view/Window;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/transsion/widgetslib/util/InputDialogFoldEngine;->mHandler:Landroid/os/Handler;

    .line 46
    new-instance v0, Lcom/transsion/widgetslib/util/InputDialogFoldEngine$mInputDialogInputManager$2;

    invoke-direct {v0, p0}, Lcom/transsion/widgetslib/util/InputDialogFoldEngine$mInputDialogInputManager$2;-><init>(Lcom/transsion/widgetslib/util/InputDialogFoldEngine;)V

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/widgetslib/util/InputDialogFoldEngine;->mInputDialogInputManager$delegate:Lkotlin/Lazy;

    .line 50
    new-instance v0, Lcom/transsion/widgetslib/util/InputDialogFoldEngine$windowInfoTracker$2;

    invoke-direct {v0, p1}, Lcom/transsion/widgetslib/util/InputDialogFoldEngine$windowInfoTracker$2;-><init>(Landroid/view/Window;)V

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/widgetslib/util/InputDialogFoldEngine;->windowInfoTracker$delegate:Lkotlin/Lazy;

    .line 54
    new-instance p1, Lcom/transsion/widgetslib/util/InputDialogFoldEngine$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lcom/transsion/widgetslib/util/InputDialogFoldEngine$$ExternalSyntheticLambda0;-><init>(Lcom/transsion/widgetslib/util/InputDialogFoldEngine;)V

    iput-object p1, p0, Lcom/transsion/widgetslib/util/InputDialogFoldEngine;->mLayoutStateChangeCallback:Landroidx/core/util/Consumer;

    .line 134
    invoke-direct {p0}, Lcom/transsion/widgetslib/util/InputDialogFoldEngine;->getMInputDialogInputManager()Lcom/transsion/widgetslib/util/InputDialogInputManager;

    move-result-object p1

    new-instance v0, Lcom/transsion/widgetslib/util/InputDialogFoldEngine$1;

    invoke-direct {v0, p0}, Lcom/transsion/widgetslib/util/InputDialogFoldEngine$1;-><init>(Lcom/transsion/widgetslib/util/InputDialogFoldEngine;)V

    invoke-virtual {p1, v0}, Lcom/transsion/widgetslib/util/InputDialogInputManager;->registerListener(Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public static final synthetic access$adaptPosition(Lcom/transsion/widgetslib/util/InputDialogFoldEngine;)V
    .registers 1

    .line 32
    invoke-direct {p0}, Lcom/transsion/widgetslib/util/InputDialogFoldEngine;->adaptPosition()V

    return-void
.end method

.method public static final synthetic access$cancelAnimation(Lcom/transsion/widgetslib/util/InputDialogFoldEngine;)V
    .registers 1

    .line 32
    invoke-direct {p0}, Lcom/transsion/widgetslib/util/InputDialogFoldEngine;->cancelAnimation()V

    return-void
.end method

.method public static final synthetic access$flexWindow(Lcom/transsion/widgetslib/util/InputDialogFoldEngine;Lkotlin/jvm/functions/Function1;)Lkotlin/Unit;
    .registers 2

    .line 32
    invoke-direct {p0, p1}, Lcom/transsion/widgetslib/util/InputDialogFoldEngine;->flexWindow(Lkotlin/jvm/functions/Function1;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$flexWindowInsets(Lcom/transsion/widgetslib/util/InputDialogFoldEngine;Landroid/view/Window;Lkotlin/jvm/functions/Function2;)V
    .registers 3

    .line 32
    invoke-direct {p0, p1, p2}, Lcom/transsion/widgetslib/util/InputDialogFoldEngine;->flexWindowInsets(Landroid/view/Window;Lkotlin/jvm/functions/Function2;)V

    return-void
.end method

.method public static final synthetic access$getMEnterValueAnimator$p(Lcom/transsion/widgetslib/util/InputDialogFoldEngine;)Landroid/animation/ValueAnimator;
    .registers 1

    .line 32
    iget-object p0, p0, Lcom/transsion/widgetslib/util/InputDialogFoldEngine;->mEnterValueAnimator:Landroid/animation/ValueAnimator;

    return-object p0
.end method

.method public static final synthetic access$getMExitValueAnimator$p(Lcom/transsion/widgetslib/util/InputDialogFoldEngine;)Landroid/animation/ValueAnimator;
    .registers 1

    .line 32
    iget-object p0, p0, Lcom/transsion/widgetslib/util/InputDialogFoldEngine;->mExitValueAnimator:Landroid/animation/ValueAnimator;

    return-object p0
.end method

.method public static final synthetic access$getMInputDialogInputManager(Lcom/transsion/widgetslib/util/InputDialogFoldEngine;)Lcom/transsion/widgetslib/util/InputDialogInputManager;
    .registers 1

    .line 32
    invoke-direct {p0}, Lcom/transsion/widgetslib/util/InputDialogFoldEngine;->getMInputDialogInputManager()Lcom/transsion/widgetslib/util/InputDialogInputManager;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getMLayoutStateChangeCallback$p(Lcom/transsion/widgetslib/util/InputDialogFoldEngine;)Landroidx/core/util/Consumer;
    .registers 1

    .line 32
    iget-object p0, p0, Lcom/transsion/widgetslib/util/InputDialogFoldEngine;->mLayoutStateChangeCallback:Landroidx/core/util/Consumer;

    return-object p0
.end method

.method public static final synthetic access$getMParentStopped$p(Lcom/transsion/widgetslib/util/InputDialogFoldEngine;)Z
    .registers 1

    .line 32
    iget-boolean p0, p0, Lcom/transsion/widgetslib/util/InputDialogFoldEngine;->mParentStopped:Z

    return p0
.end method

.method public static final synthetic access$getWindow(Lcom/transsion/widgetslib/util/InputDialogFoldEngine;)Landroid/view/Window;
    .registers 1

    .line 32
    invoke-direct {p0}, Lcom/transsion/widgetslib/util/InputDialogFoldEngine;->getWindow()Landroid/view/Window;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getWindowInfoTracker(Lcom/transsion/widgetslib/util/InputDialogFoldEngine;)Landroidx/window/java/layout/WindowInfoTrackerCallbackAdapter;
    .registers 1

    .line 32
    invoke-direct {p0}, Lcom/transsion/widgetslib/util/InputDialogFoldEngine;->getWindowInfoTracker()Landroidx/window/java/layout/WindowInfoTrackerCallbackAdapter;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$isNormalStatus(Lcom/transsion/widgetslib/util/InputDialogFoldEngine;Landroid/view/Window;)Z
    .registers 2

    .line 32
    invoke-direct {p0, p1}, Lcom/transsion/widgetslib/util/InputDialogFoldEngine;->isNormalStatus(Landroid/view/Window;)Z

    move-result p0

    return p0
.end method

.method public static final synthetic access$isPhoneHungOnStatus(Lcom/transsion/widgetslib/util/InputDialogFoldEngine;)Z
    .registers 1

    .line 32
    invoke-direct {p0}, Lcom/transsion/widgetslib/util/InputDialogFoldEngine;->isPhoneHungOnStatus()Z

    move-result p0

    return p0
.end method

.method public static final synthetic access$revertBack(Lcom/transsion/widgetslib/util/InputDialogFoldEngine;)V
    .registers 1

    .line 32
    invoke-direct {p0}, Lcom/transsion/widgetslib/util/InputDialogFoldEngine;->revertBack()V

    return-void
.end method

.method public static final synthetic access$setCurrentState(Lcom/transsion/widgetslib/util/InputDialogFoldEngine;Landroid/view/Window;)V
    .registers 2

    .line 32
    invoke-direct {p0, p1}, Lcom/transsion/widgetslib/util/InputDialogFoldEngine;->setCurrentState(Landroid/view/Window;)V

    return-void
.end method

.method public static final synthetic access$setMEnterValueAnimator$p(Lcom/transsion/widgetslib/util/InputDialogFoldEngine;Landroid/animation/ValueAnimator;)V
    .registers 2

    .line 32
    iput-object p1, p0, Lcom/transsion/widgetslib/util/InputDialogFoldEngine;->mEnterValueAnimator:Landroid/animation/ValueAnimator;

    return-void
.end method

.method public static final synthetic access$setMExitValueAnimator$p(Lcom/transsion/widgetslib/util/InputDialogFoldEngine;Landroid/animation/ValueAnimator;)V
    .registers 2

    .line 32
    iput-object p1, p0, Lcom/transsion/widgetslib/util/InputDialogFoldEngine;->mExitValueAnimator:Landroid/animation/ValueAnimator;

    return-void
.end method

.method public static final synthetic access$shouldAdapt(Lcom/transsion/widgetslib/util/InputDialogFoldEngine;)Z
    .registers 1

    .line 32
    invoke-direct {p0}, Lcom/transsion/widgetslib/util/InputDialogFoldEngine;->shouldAdapt()Z

    move-result p0

    return p0
.end method

.method public static final synthetic access$softInputStatusChanged(Lcom/transsion/widgetslib/util/InputDialogFoldEngine;)Z
    .registers 1

    .line 32
    invoke-direct {p0}, Lcom/transsion/widgetslib/util/InputDialogFoldEngine;->softInputStatusChanged()Z

    move-result p0

    return p0
.end method

.method private final adaptPosition()V
    .registers 2

    .line 188
    iget-object v0, p0, Lcom/transsion/widgetslib/util/InputDialogFoldEngine;->mEnterValueAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_b

    .line 189
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_b

    return-void

    .line 193
    :cond_b
    new-instance v0, Lcom/transsion/widgetslib/util/InputDialogFoldEngine$adaptPosition$2;

    invoke-direct {v0, p0}, Lcom/transsion/widgetslib/util/InputDialogFoldEngine$adaptPosition$2;-><init>(Lcom/transsion/widgetslib/util/InputDialogFoldEngine;)V

    invoke-direct {p0, v0}, Lcom/transsion/widgetslib/util/InputDialogFoldEngine;->flexWindow(Lkotlin/jvm/functions/Function1;)Lkotlin/Unit;

    return-void
.end method

.method private final cancelAnimation()V
    .registers 3

    .line 278
    iget-object v0, p0, Lcom/transsion/widgetslib/util/InputDialogFoldEngine;->mEnterValueAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_d

    .line 279
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_d

    .line 280
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 283
    :cond_d
    iget-object p0, p0, Lcom/transsion/widgetslib/util/InputDialogFoldEngine;->mExitValueAnimator:Landroid/animation/ValueAnimator;

    if-eqz p0, :cond_1a

    .line 284
    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 285
    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_1a
    return-void
.end method

.method private final decideHungStatus(Landroidx/window/layout/FoldingFeature;)V
    .registers 4

    .line 105
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " FoldingFeature = isTableTopPosture state = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Landroidx/window/layout/FoldingFeature;->getState()Landroidx/window/layout/FoldingFeature$State;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " orientation = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Landroidx/window/layout/FoldingFeature;->getOrientation()Landroidx/window/layout/FoldingFeature$Orientation;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/transsion/widgetscore/utils/LogUtil;->v(Ljava/lang/String;)V

    .line 107
    invoke-static {p1}, Lcom/transsion/widgetslib/util/GlobalFuncsKt;->isTableTopPosture(Landroidx/window/layout/FoldingFeature;)Z

    move-result p1

    if-eqz p1, :cond_34

    const/4 p1, 0x1

    .line 109
    invoke-direct {p0, p1}, Lcom/transsion/widgetslib/util/InputDialogFoldEngine;->setPhoneHungOnStatus(Z)V

    .line 110
    const-string p0, " FoldingFeature = isTableTopPosture"

    invoke-static {p0}, Lcom/transsion/widgetscore/utils/LogUtil;->v(Ljava/lang/String;)V

    return-void

    :cond_34
    const/4 p1, 0x0

    .line 113
    invoke-direct {p0, p1}, Lcom/transsion/widgetslib/util/InputDialogFoldEngine;->setPhoneHungOnStatus(Z)V

    .line 114
    const-string p0, "FoldingFeature = else"

    invoke-static {p0}, Lcom/transsion/widgetscore/utils/LogUtil;->v(Ljava/lang/String;)V

    return-void
.end method

.method private final flexWindow(Lkotlin/jvm/functions/Function1;)Lkotlin/Unit;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1;",
            ")",
            "Lkotlin/Unit;"
        }
    .end annotation

    .line 291
    invoke-direct {p0}, Lcom/transsion/widgetslib/util/InputDialogFoldEngine;->getWindow()Landroid/view/Window;

    move-result-object p0

    if-eqz p0, :cond_c

    .line 292
    invoke-interface {p1, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 291
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    :cond_c
    const/4 p0, 0x0

    return-object p0
.end method

.method private final flexWindowInsets(Landroid/view/Window;Lkotlin/jvm/functions/Function2;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/Window;",
            "Lkotlin/jvm/functions/Function2;",
            ")V"
        }
    .end annotation

    .line 300
    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p0

    invoke-static {p0}, Landroidx/core/view/ViewCompat;->getRootWindowInsets(Landroid/view/View;)Landroidx/core/view/WindowInsetsCompat;

    move-result-object p0

    if-eqz p0, :cond_d

    .line 301
    invoke-interface {p2, p0, p0}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_d
    return-void
.end method

.method private final getMInputDialogInputManager()Lcom/transsion/widgetslib/util/InputDialogInputManager;
    .registers 1

    .line 46
    iget-object p0, p0, Lcom/transsion/widgetslib/util/InputDialogFoldEngine;->mInputDialogInputManager$delegate:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/widgetslib/util/InputDialogInputManager;

    return-object p0
.end method

.method private final getWindow()Landroid/view/Window;
    .registers 1

    .line 37
    iget-object p0, p0, Lcom/transsion/widgetslib/util/InputDialogFoldEngine;->mWindowWeakR:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/Window;

    return-object p0
.end method

.method private final getWindowInfoTracker()Landroidx/window/java/layout/WindowInfoTrackerCallbackAdapter;
    .registers 1

    .line 50
    iget-object p0, p0, Lcom/transsion/widgetslib/util/InputDialogFoldEngine;->windowInfoTracker$delegate:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/window/java/layout/WindowInfoTrackerCallbackAdapter;

    return-object p0
.end method

.method private final initWindowSoftInputMode()V
    .registers 2

    .line 263
    sget-object v0, Lcom/transsion/widgetslib/util/InputDialogFoldEngine$initWindowSoftInputMode$1;->INSTANCE:Lcom/transsion/widgetslib/util/InputDialogFoldEngine$initWindowSoftInputMode$1;

    invoke-direct {p0, v0}, Lcom/transsion/widgetslib/util/InputDialogFoldEngine;->flexWindow(Lkotlin/jvm/functions/Function1;)Lkotlin/Unit;

    return-void
.end method

.method private final isNormalStatus(Landroid/view/Window;)Z
    .registers 2

    .line 120
    invoke-direct {p0}, Lcom/transsion/widgetslib/util/InputDialogFoldEngine;->isPhoneHungOnStatus()Z

    move-result p0

    if-eqz p0, :cond_32

    invoke-virtual {p1}, Landroid/view/Window;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/transsion/widgetslib/util/Utils;->isThunderbackWindowMode(Landroid/content/Context;)Z

    move-result p0

    if-nez p0, :cond_32

    .line 121
    invoke-virtual {p1}, Landroid/view/Window;->getContext()Landroid/content/Context;

    move-result-object p0

    .line 120
    invoke-static {p0}, Lcom/transsion/widgetslib/util/Utils;->transformContext(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object p0

    .line 122
    invoke-virtual {p0}, Landroid/app/Activity;->isInMultiWindowMode()Z

    move-result p0

    if-nez p0, :cond_32

    invoke-virtual {p1}, Landroid/view/Window;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    iget p0, p0, Landroid/content/res/Configuration;->orientation:I

    const/4 p1, 0x2

    if-ne p0, p1, :cond_30

    goto :goto_32

    :cond_30
    const/4 p0, 0x0

    return p0

    :cond_32
    :goto_32
    const/4 p0, 0x1

    return p0
.end method

.method private final isPhoneHungOnStatus()Z
    .registers 1

    .line 184
    iget-boolean p0, p0, Lcom/transsion/widgetslib/util/InputDialogFoldEngine;->mIsPhoneHangOnStatus:Z

    return p0
.end method

.method private static final mLayoutStateChangeCallback$lambda$2(Lcom/transsion/widgetslib/util/InputDialogFoldEngine;Landroidx/window/layout/WindowLayoutInfo;)V
    .registers 4

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 55
    iget-object v0, p0, Lcom/transsion/widgetslib/util/InputDialogFoldEngine;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/transsion/widgetslib/util/InputDialogFoldEngine$$ExternalSyntheticLambda1;

    invoke-direct {v1, p1, p0}, Lcom/transsion/widgetslib/util/InputDialogFoldEngine$$ExternalSyntheticLambda1;-><init>(Landroidx/window/layout/WindowLayoutInfo;Lcom/transsion/widgetslib/util/InputDialogFoldEngine;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private static final mLayoutStateChangeCallback$lambda$2$lambda$1(Landroidx/window/layout/WindowLayoutInfo;Lcom/transsion/widgetslib/util/InputDialogFoldEngine;)V
    .registers 3

    const-string v0, "this$0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 56
    invoke-virtual {p0}, Landroidx/window/layout/WindowLayoutInfo;->getDisplayFeatures()Ljava/util/List;

    move-result-object p0

    .line 57
    invoke-static {p0}, Lkotlin/collections/CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/window/layout/DisplayFeature;

    if-eqz p0, :cond_22

    .line 58
    instance-of v0, p0, Landroidx/window/layout/FoldingFeature;

    if-eqz v0, :cond_22

    .line 59
    check-cast p0, Landroidx/window/layout/FoldingFeature;

    invoke-direct {p1, p0}, Lcom/transsion/widgetslib/util/InputDialogFoldEngine;->decideHungStatus(Landroidx/window/layout/FoldingFeature;)V

    .line 60
    new-instance p0, Lcom/transsion/widgetslib/util/InputDialogFoldEngine$mLayoutStateChangeCallback$1$1$1$1;

    invoke-direct {p0, p1}, Lcom/transsion/widgetslib/util/InputDialogFoldEngine$mLayoutStateChangeCallback$1$1$1$1;-><init>(Lcom/transsion/widgetslib/util/InputDialogFoldEngine;)V

    invoke-direct {p1, p0}, Lcom/transsion/widgetslib/util/InputDialogFoldEngine;->flexWindow(Lkotlin/jvm/functions/Function1;)Lkotlin/Unit;

    :cond_22
    return-void
.end method

.method private final revertBack()V
    .registers 2

    .line 224
    iget-object v0, p0, Lcom/transsion/widgetslib/util/InputDialogFoldEngine;->mExitValueAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_b

    .line 225
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_b

    return-void

    .line 229
    :cond_b
    new-instance v0, Lcom/transsion/widgetslib/util/InputDialogFoldEngine$revertBack$2;

    invoke-direct {v0, p0}, Lcom/transsion/widgetslib/util/InputDialogFoldEngine$revertBack$2;-><init>(Lcom/transsion/widgetslib/util/InputDialogFoldEngine;)V

    invoke-direct {p0, v0}, Lcom/transsion/widgetslib/util/InputDialogFoldEngine;->flexWindow(Lkotlin/jvm/functions/Function1;)Lkotlin/Unit;

    return-void
.end method

.method private final setCurrentState(Landroid/view/Window;)V
    .registers 8

    const/4 v0, 0x0

    .line 155
    :try_start_1
    const-string v1, "com.transsion.flamboyant.FoldableDeviceManager"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 156
    const-string v2, "get"

    const-class v3, Landroid/content/Context;

    filled-new-array {v3}, [Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 158
    const-string v3, "getCurrentFoldState"

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 159
    const-string v5, "STATE_HALF_OPEN"

    invoke-virtual {v1, v5}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    const/4 v5, 0x1

    .line 160
    invoke-virtual {v1, v5}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 161
    invoke-virtual {v1, v4}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 162
    invoke-virtual {v3, v5}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 164
    invoke-virtual {p1}, Landroid/view/Window;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/transsion/widgetslib/util/Utils;->transformContext(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v2, v4, p1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 165
    invoke-virtual {v3, p1, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 166
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "stateHalfOpenFinalValue = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " currentState = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/transsion/widgetscore/utils/LogUtil;->v(Ljava/lang/String;)V

    .line 167
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    invoke-direct {p0, p1}, Lcom/transsion/widgetslib/util/InputDialogFoldEngine;->setPhoneHungOnStatus(Z)V
    :try_end_62
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_62} :catch_67
    .catch Ljava/lang/NoSuchMethodError; {:try_start_1 .. :try_end_62} :catch_63

    return-void

    .line 171
    :catch_63
    invoke-direct {p0, v0}, Lcom/transsion/widgetslib/util/InputDialogFoldEngine;->setPhoneHungOnStatus(Z)V

    goto :goto_6a

    .line 169
    :catch_67
    invoke-direct {p0, v0}, Lcom/transsion/widgetslib/util/InputDialogFoldEngine;->setPhoneHungOnStatus(Z)V

    :goto_6a
    return-void
.end method

.method private final setPhoneHungOnStatus(Z)V
    .registers 2

    .line 180
    iput-boolean p1, p0, Lcom/transsion/widgetslib/util/InputDialogFoldEngine;->mIsPhoneHangOnStatus:Z

    return-void
.end method

.method private final shouldAdapt()Z
    .registers 1

    .line 176
    invoke-direct {p0}, Lcom/transsion/widgetslib/util/InputDialogFoldEngine;->getMInputDialogInputManager()Lcom/transsion/widgetslib/util/InputDialogInputManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/widgetslib/util/InputDialogInputManager;->getMOffset()I

    move-result p0

    if-lez p0, :cond_c

    const/4 p0, 0x1

    return p0

    :cond_c
    const/4 p0, 0x0

    return p0
.end method

.method private final softInputStatusChanged()Z
    .registers 1

    .line 130
    invoke-direct {p0}, Lcom/transsion/widgetslib/util/InputDialogFoldEngine;->getMInputDialogInputManager()Lcom/transsion/widgetslib/util/InputDialogInputManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/widgetslib/util/InputDialogInputManager;->getMIsSoftInputStatusInChanging()Z

    move-result p0

    return p0
.end method


# virtual methods
.method public onActivityStarted(Landroid/app/Activity;)V
    .registers 3

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 346
    const-string p1, "onActivityStarted"

    invoke-static {p1}, Lcom/transsion/widgetscore/utils/LogUtil;->v(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 347
    iput-boolean p1, p0, Lcom/transsion/widgetslib/util/InputDialogFoldEngine;->mParentStopped:Z

    .line 348
    invoke-virtual {p0}, Lcom/transsion/widgetslib/util/InputDialogFoldEngine;->onStart()V

    return-void
.end method

.method public onActivityStopped(Landroid/app/Activity;)V
    .registers 3

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 352
    const-string p1, "onActivityStopped:"

    invoke-static {p1}, Lcom/transsion/widgetscore/utils/LogUtil;->v(Ljava/lang/String;)V

    const/4 p1, 0x1

    .line 353
    iput-boolean p1, p0, Lcom/transsion/widgetslib/util/InputDialogFoldEngine;->mParentStopped:Z

    .line 354
    invoke-virtual {p0}, Lcom/transsion/widgetslib/util/InputDialogFoldEngine;->onStop()V

    return-void
.end method

.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 3

    const-string v0, "newConfigure"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 257
    invoke-direct {p0}, Lcom/transsion/widgetslib/util/InputDialogFoldEngine;->initWindowSoftInputMode()V

    .line 258
    invoke-direct {p0}, Lcom/transsion/widgetslib/util/InputDialogFoldEngine;->getMInputDialogInputManager()Lcom/transsion/widgetslib/util/InputDialogInputManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/transsion/widgetslib/util/InputDialogInputManager;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public final onShow()V
    .registers 2

    .line 306
    const-string v0, "onShow: "

    invoke-static {v0}, Lcom/transsion/widgetscore/utils/LogUtil;->v(Ljava/lang/String;)V

    .line 307
    new-instance v0, Lcom/transsion/widgetslib/util/InputDialogFoldEngine$onShow$1;

    invoke-direct {v0, p0}, Lcom/transsion/widgetslib/util/InputDialogFoldEngine$onShow$1;-><init>(Lcom/transsion/widgetslib/util/InputDialogFoldEngine;)V

    invoke-direct {p0, v0}, Lcom/transsion/widgetslib/util/InputDialogFoldEngine;->flexWindow(Lkotlin/jvm/functions/Function1;)Lkotlin/Unit;

    .line 318
    invoke-virtual {p0}, Lcom/transsion/widgetslib/util/InputDialogFoldEngine;->onStart()V

    return-void
.end method

.method public final onStart()V
    .registers 2

    .line 323
    new-instance v0, Lcom/transsion/widgetslib/util/InputDialogFoldEngine$onStart$1;

    invoke-direct {v0, p0}, Lcom/transsion/widgetslib/util/InputDialogFoldEngine$onStart$1;-><init>(Lcom/transsion/widgetslib/util/InputDialogFoldEngine;)V

    invoke-direct {p0, v0}, Lcom/transsion/widgetslib/util/InputDialogFoldEngine;->flexWindow(Lkotlin/jvm/functions/Function1;)Lkotlin/Unit;

    return-void
.end method

.method public final onStop()V
    .registers 2

    .line 338
    invoke-direct {p0}, Lcom/transsion/widgetslib/util/InputDialogFoldEngine;->getWindowInfoTracker()Landroidx/window/java/layout/WindowInfoTrackerCallbackAdapter;

    move-result-object v0

    if-eqz v0, :cond_d

    .line 339
    iget-object p0, p0, Lcom/transsion/widgetslib/util/InputDialogFoldEngine;->mLayoutStateChangeCallback:Landroidx/core/util/Consumer;

    if-eqz p0, :cond_d

    .line 340
    invoke-virtual {v0, p0}, Landroidx/window/java/layout/WindowInfoTrackerCallbackAdapter;->removeWindowLayoutInfoListener(Landroidx/core/util/Consumer;)V

    :cond_d
    return-void
.end method

.method public final release()V
    .registers 2

    .line 269
    invoke-direct {p0}, Lcom/transsion/widgetslib/util/InputDialogFoldEngine;->cancelAnimation()V

    .line 270
    invoke-virtual {p0}, Lcom/transsion/widgetslib/util/InputDialogFoldEngine;->onStop()V

    .line 271
    new-instance v0, Lcom/transsion/widgetslib/util/InputDialogFoldEngine$release$1;

    invoke-direct {v0, p0}, Lcom/transsion/widgetslib/util/InputDialogFoldEngine$release$1;-><init>(Lcom/transsion/widgetslib/util/InputDialogFoldEngine;)V

    invoke-direct {p0, v0}, Lcom/transsion/widgetslib/util/InputDialogFoldEngine;->flexWindow(Lkotlin/jvm/functions/Function1;)Lkotlin/Unit;

    return-void
.end method
