.class public Lcom/transsion/camera/app/ui/ScrollConsumer;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/app/ui/IScroll;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/app/ui/ScrollConsumer$InitialState;,
        Lcom/transsion/camera/app/ui/ScrollConsumer$State;,
        Lcom/transsion/camera/app/ui/ScrollConsumer$PreparingState;,
        Lcom/transsion/camera/app/ui/ScrollConsumer$PullingState;,
        Lcom/transsion/camera/app/ui/ScrollConsumer$SpreadingAnimationState;,
        Lcom/transsion/camera/app/ui/ScrollConsumer$SpreadingBackAnimationState;,
        Lcom/transsion/camera/app/ui/ScrollConsumer$SpreadState;,
        Lcom/transsion/camera/app/ui/ScrollConsumer$PushingState;,
        Lcom/transsion/camera/app/ui/ScrollConsumer$ShrinkingAnimationState;,
        Lcom/transsion/camera/app/ui/ScrollConsumer$ShrinkingBackAnimationState;
    }
.end annotation


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private mCurrentState:Lcom/transsion/camera/app/ui/ScrollConsumer$State;

.field private mGoBackToInitInAnimator:Z

.field private mInScrolling:Z

.field private final mInitial:Lcom/transsion/camera/app/ui/ScrollConsumer$State;

.field private mMode:Lcom/transsion/camera/app/ui/scroll/ScrollMode;

.field private final mModeProvider:Lcom/transsion/camera/app/ui/scroll/ScrollModeProvider;

.field private mNeedShowGuide:Z

.field private mOrientation:I

.field private mPreOrientation:I

.field private mPreScreenFormType:I

.field private final mPreparing:Lcom/transsion/camera/app/ui/ScrollConsumer$State;

.field private final mPulling:Lcom/transsion/camera/app/ui/ScrollConsumer$State;

.field private final mPushing:Lcom/transsion/camera/app/ui/ScrollConsumer$State;

.field private mScreenFormType:I

.field private mScrollDisable:Z

.field private mScrollDistanceX:F

.field private mScrollDistanceY:F

.field private final mShrinking:Lcom/transsion/camera/app/ui/ScrollConsumer$State;

.field private final mShrinkingBack:Lcom/transsion/camera/app/ui/ScrollConsumer$State;

.field private final mSpread:Lcom/transsion/camera/app/ui/ScrollConsumer$State;

.field private mSpreadModeAfterShrinking:Z

.field private final mSpreading:Lcom/transsion/camera/app/ui/ScrollConsumer$State;

.field private final mSpreadingBack:Lcom/transsion/camera/app/ui/ScrollConsumer$State;

.field private final mSupportColumnOrBoth:Z

.field private mSupportQC:Z


# direct methods
.method static bridge synthetic -$$Nest$fgetmGoBackToInitInAnimator(Lcom/transsion/camera/app/ui/ScrollConsumer;)Z
    .registers 1

    .line 0
    iget-boolean p0, p0, Lcom/transsion/camera/app/ui/ScrollConsumer;->mGoBackToInitInAnimator:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmInitial(Lcom/transsion/camera/app/ui/ScrollConsumer;)Lcom/transsion/camera/app/ui/ScrollConsumer$State;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/app/ui/ScrollConsumer;->mInitial:Lcom/transsion/camera/app/ui/ScrollConsumer$State;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmMode(Lcom/transsion/camera/app/ui/ScrollConsumer;)Lcom/transsion/camera/app/ui/scroll/ScrollMode;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/app/ui/ScrollConsumer;->mMode:Lcom/transsion/camera/app/ui/scroll/ScrollMode;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmModeProvider(Lcom/transsion/camera/app/ui/ScrollConsumer;)Lcom/transsion/camera/app/ui/scroll/ScrollModeProvider;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/app/ui/ScrollConsumer;->mModeProvider:Lcom/transsion/camera/app/ui/scroll/ScrollModeProvider;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmNeedShowGuide(Lcom/transsion/camera/app/ui/ScrollConsumer;)Z
    .registers 1

    .line 0
    iget-boolean p0, p0, Lcom/transsion/camera/app/ui/ScrollConsumer;->mNeedShowGuide:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmOrientation(Lcom/transsion/camera/app/ui/ScrollConsumer;)I
    .registers 1

    .line 0
    iget p0, p0, Lcom/transsion/camera/app/ui/ScrollConsumer;->mOrientation:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmPreOrientation(Lcom/transsion/camera/app/ui/ScrollConsumer;)I
    .registers 1

    .line 0
    iget p0, p0, Lcom/transsion/camera/app/ui/ScrollConsumer;->mPreOrientation:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmPreScreenFormType(Lcom/transsion/camera/app/ui/ScrollConsumer;)I
    .registers 1

    .line 0
    iget p0, p0, Lcom/transsion/camera/app/ui/ScrollConsumer;->mPreScreenFormType:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmPreparing(Lcom/transsion/camera/app/ui/ScrollConsumer;)Lcom/transsion/camera/app/ui/ScrollConsumer$State;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/app/ui/ScrollConsumer;->mPreparing:Lcom/transsion/camera/app/ui/ScrollConsumer$State;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmPulling(Lcom/transsion/camera/app/ui/ScrollConsumer;)Lcom/transsion/camera/app/ui/ScrollConsumer$State;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/app/ui/ScrollConsumer;->mPulling:Lcom/transsion/camera/app/ui/ScrollConsumer$State;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmPushing(Lcom/transsion/camera/app/ui/ScrollConsumer;)Lcom/transsion/camera/app/ui/ScrollConsumer$State;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/app/ui/ScrollConsumer;->mPushing:Lcom/transsion/camera/app/ui/ScrollConsumer$State;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmScreenFormType(Lcom/transsion/camera/app/ui/ScrollConsumer;)I
    .registers 1

    .line 0
    iget p0, p0, Lcom/transsion/camera/app/ui/ScrollConsumer;->mScreenFormType:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmScrollDistanceX(Lcom/transsion/camera/app/ui/ScrollConsumer;)F
    .registers 1

    .line 0
    iget p0, p0, Lcom/transsion/camera/app/ui/ScrollConsumer;->mScrollDistanceX:F

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmScrollDistanceY(Lcom/transsion/camera/app/ui/ScrollConsumer;)F
    .registers 1

    .line 0
    iget p0, p0, Lcom/transsion/camera/app/ui/ScrollConsumer;->mScrollDistanceY:F

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmShrinking(Lcom/transsion/camera/app/ui/ScrollConsumer;)Lcom/transsion/camera/app/ui/ScrollConsumer$State;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/app/ui/ScrollConsumer;->mShrinking:Lcom/transsion/camera/app/ui/ScrollConsumer$State;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmShrinkingBack(Lcom/transsion/camera/app/ui/ScrollConsumer;)Lcom/transsion/camera/app/ui/ScrollConsumer$State;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/app/ui/ScrollConsumer;->mShrinkingBack:Lcom/transsion/camera/app/ui/ScrollConsumer$State;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmSpread(Lcom/transsion/camera/app/ui/ScrollConsumer;)Lcom/transsion/camera/app/ui/ScrollConsumer$State;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/app/ui/ScrollConsumer;->mSpread:Lcom/transsion/camera/app/ui/ScrollConsumer$State;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmSpreadModeAfterShrinking(Lcom/transsion/camera/app/ui/ScrollConsumer;)Z
    .registers 1

    .line 0
    iget-boolean p0, p0, Lcom/transsion/camera/app/ui/ScrollConsumer;->mSpreadModeAfterShrinking:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmSpreading(Lcom/transsion/camera/app/ui/ScrollConsumer;)Lcom/transsion/camera/app/ui/ScrollConsumer$State;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/app/ui/ScrollConsumer;->mSpreading:Lcom/transsion/camera/app/ui/ScrollConsumer$State;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmSpreadingBack(Lcom/transsion/camera/app/ui/ScrollConsumer;)Lcom/transsion/camera/app/ui/ScrollConsumer$State;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/app/ui/ScrollConsumer;->mSpreadingBack:Lcom/transsion/camera/app/ui/ScrollConsumer$State;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmSupportColumnOrBoth(Lcom/transsion/camera/app/ui/ScrollConsumer;)Z
    .registers 1

    .line 0
    iget-boolean p0, p0, Lcom/transsion/camera/app/ui/ScrollConsumer;->mSupportColumnOrBoth:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fputmCurrentState(Lcom/transsion/camera/app/ui/ScrollConsumer;Lcom/transsion/camera/app/ui/ScrollConsumer$State;)V
    .registers 2

    .line 0
    iput-object p1, p0, Lcom/transsion/camera/app/ui/ScrollConsumer;->mCurrentState:Lcom/transsion/camera/app/ui/ScrollConsumer$State;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmGoBackToInitInAnimator(Lcom/transsion/camera/app/ui/ScrollConsumer;Z)V
    .registers 2

    .line 0
    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/ScrollConsumer;->mGoBackToInitInAnimator:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmMode(Lcom/transsion/camera/app/ui/ScrollConsumer;Lcom/transsion/camera/app/ui/scroll/ScrollMode;)V
    .registers 2

    .line 0
    iput-object p1, p0, Lcom/transsion/camera/app/ui/ScrollConsumer;->mMode:Lcom/transsion/camera/app/ui/scroll/ScrollMode;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmSpreadModeAfterShrinking(Lcom/transsion/camera/app/ui/ScrollConsumer;Z)V
    .registers 2

    .line 0
    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/ScrollConsumer;->mSpreadModeAfterShrinking:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$msyncOrientationAndScrForm(Lcom/transsion/camera/app/ui/ScrollConsumer;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/ScrollConsumer;->syncOrientationAndScrForm()V

    return-void
.end method

.method static bridge synthetic -$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;
    .registers 1

    .line 0
    sget-object v0, Lcom/transsion/camera/app/ui/ScrollConsumer;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 15
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "ScrollConsumer"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/app/ui/ScrollConsumer;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .registers 4

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    new-instance p1, Lcom/transsion/camera/app/ui/scroll/ScrollModeProvider;

    invoke-direct {p1}, Lcom/transsion/camera/app/ui/scroll/ScrollModeProvider;-><init>()V

    iput-object p1, p0, Lcom/transsion/camera/app/ui/ScrollConsumer;->mModeProvider:Lcom/transsion/camera/app/ui/scroll/ScrollModeProvider;

    .line 21
    new-instance p1, Lcom/transsion/camera/app/ui/ScrollConsumer$InitialState;

    const-string v0, "InitialState"

    invoke-direct {p1, p0, v0}, Lcom/transsion/camera/app/ui/ScrollConsumer$InitialState;-><init>(Lcom/transsion/camera/app/ui/ScrollConsumer;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/transsion/camera/app/ui/ScrollConsumer;->mInitial:Lcom/transsion/camera/app/ui/ScrollConsumer$State;

    .line 22
    new-instance v0, Lcom/transsion/camera/app/ui/ScrollConsumer$PreparingState;

    const-string v1, "PreparingState"

    invoke-direct {v0, p0, v1}, Lcom/transsion/camera/app/ui/ScrollConsumer$PreparingState;-><init>(Lcom/transsion/camera/app/ui/ScrollConsumer;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/transsion/camera/app/ui/ScrollConsumer;->mPreparing:Lcom/transsion/camera/app/ui/ScrollConsumer$State;

    .line 23
    new-instance v0, Lcom/transsion/camera/app/ui/ScrollConsumer$PullingState;

    const-string v1, "ScrollingState"

    invoke-direct {v0, p0, v1}, Lcom/transsion/camera/app/ui/ScrollConsumer$PullingState;-><init>(Lcom/transsion/camera/app/ui/ScrollConsumer;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/transsion/camera/app/ui/ScrollConsumer;->mPulling:Lcom/transsion/camera/app/ui/ScrollConsumer$State;

    .line 24
    new-instance v0, Lcom/transsion/camera/app/ui/ScrollConsumer$SpreadingAnimationState;

    const-string v1, "SpreadingAnimationState"

    invoke-direct {v0, p0, v1}, Lcom/transsion/camera/app/ui/ScrollConsumer$SpreadingAnimationState;-><init>(Lcom/transsion/camera/app/ui/ScrollConsumer;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/transsion/camera/app/ui/ScrollConsumer;->mSpreading:Lcom/transsion/camera/app/ui/ScrollConsumer$State;

    .line 25
    new-instance v0, Lcom/transsion/camera/app/ui/ScrollConsumer$SpreadingBackAnimationState;

    const-string v1, "SpreadingBackAnimationState"

    invoke-direct {v0, p0, v1}, Lcom/transsion/camera/app/ui/ScrollConsumer$SpreadingBackAnimationState;-><init>(Lcom/transsion/camera/app/ui/ScrollConsumer;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/transsion/camera/app/ui/ScrollConsumer;->mSpreadingBack:Lcom/transsion/camera/app/ui/ScrollConsumer$State;

    .line 26
    new-instance v0, Lcom/transsion/camera/app/ui/ScrollConsumer$SpreadState;

    const-string v1, "SpreadState"

    invoke-direct {v0, p0, v1}, Lcom/transsion/camera/app/ui/ScrollConsumer$SpreadState;-><init>(Lcom/transsion/camera/app/ui/ScrollConsumer;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/transsion/camera/app/ui/ScrollConsumer;->mSpread:Lcom/transsion/camera/app/ui/ScrollConsumer$State;

    .line 27
    new-instance v0, Lcom/transsion/camera/app/ui/ScrollConsumer$PushingState;

    const-string v1, "PushingState"

    invoke-direct {v0, p0, v1}, Lcom/transsion/camera/app/ui/ScrollConsumer$PushingState;-><init>(Lcom/transsion/camera/app/ui/ScrollConsumer;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/transsion/camera/app/ui/ScrollConsumer;->mPushing:Lcom/transsion/camera/app/ui/ScrollConsumer$State;

    .line 28
    new-instance v0, Lcom/transsion/camera/app/ui/ScrollConsumer$ShrinkingAnimationState;

    const-string v1, "ShrinkingAnimationState"

    invoke-direct {v0, p0, v1}, Lcom/transsion/camera/app/ui/ScrollConsumer$ShrinkingAnimationState;-><init>(Lcom/transsion/camera/app/ui/ScrollConsumer;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/transsion/camera/app/ui/ScrollConsumer;->mShrinking:Lcom/transsion/camera/app/ui/ScrollConsumer$State;

    .line 29
    new-instance v0, Lcom/transsion/camera/app/ui/ScrollConsumer$ShrinkingBackAnimationState;

    const-string v1, "ShrinkingBackAnimationState"

    invoke-direct {v0, p0, v1}, Lcom/transsion/camera/app/ui/ScrollConsumer$ShrinkingBackAnimationState;-><init>(Lcom/transsion/camera/app/ui/ScrollConsumer;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/transsion/camera/app/ui/ScrollConsumer;->mShrinkingBack:Lcom/transsion/camera/app/ui/ScrollConsumer$State;

    const/4 v0, 0x0

    .line 32
    iput v0, p0, Lcom/transsion/camera/app/ui/ScrollConsumer;->mScreenFormType:I

    const/4 v1, -0x1

    .line 33
    iput v1, p0, Lcom/transsion/camera/app/ui/ScrollConsumer;->mOrientation:I

    .line 34
    iput v0, p0, Lcom/transsion/camera/app/ui/ScrollConsumer;->mPreScreenFormType:I

    .line 35
    iput v1, p0, Lcom/transsion/camera/app/ui/ScrollConsumer;->mPreOrientation:I

    .line 39
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/ScrollConsumer;->mNeedShowGuide:Z

    .line 40
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/ScrollConsumer;->mSupportQC:Z

    .line 89
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/ScrollConsumer;->mScrollDisable:Z

    .line 90
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/ScrollConsumer;->mInScrolling:Z

    .line 43
    invoke-virtual {p1, p1}, Lcom/transsion/camera/app/ui/ScrollConsumer$State;->enter(Lcom/transsion/camera/app/ui/ScrollConsumer$State;)V

    .line 44
    invoke-static {}, Lcom/transsion/camera/utils/FeatureSupport;->isSupportColumnOrBoth()Z

    move-result p1

    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/ScrollConsumer;->mSupportColumnOrBoth:Z

    return-void
.end method

.method private cancelScroll()V
    .registers 1

    .line 101
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/ScrollConsumer;->stopScrollImmediate()V

    return-void
.end method

.method private scrollImmediate(FF)V
    .registers 6

    .line 142
    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/ScrollConsumer;->mInScrolling:Z

    if-nez v0, :cond_5

    return-void

    .line 145
    :cond_5
    iget v0, p0, Lcom/transsion/camera/app/ui/ScrollConsumer;->mScrollDistanceX:F

    add-float/2addr v0, p1

    iput v0, p0, Lcom/transsion/camera/app/ui/ScrollConsumer;->mScrollDistanceX:F

    .line 146
    iget v0, p0, Lcom/transsion/camera/app/ui/ScrollConsumer;->mScrollDistanceY:F

    add-float/2addr v0, p2

    iput v0, p0, Lcom/transsion/camera/app/ui/ScrollConsumer;->mScrollDistanceY:F

    .line 147
    sget-object v0, Lcom/transsion/camera/app/ui/ScrollConsumer;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "scrollImmediate() called with: mCurrentState = ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/app/ui/ScrollConsumer;->mCurrentState:Lcom/transsion/camera/app/ui/ScrollConsumer$State;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "], mScrollDistanceX = ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/transsion/camera/app/ui/ScrollConsumer;->mScrollDistanceX:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, "], mScrollDistanceY = ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/transsion/camera/app/ui/ScrollConsumer;->mScrollDistanceY:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 148
    iget-object p0, p0, Lcom/transsion/camera/app/ui/ScrollConsumer;->mCurrentState:Lcom/transsion/camera/app/ui/ScrollConsumer$State;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/camera/app/ui/ScrollConsumer$State;->scroll(FF)V

    return-void
.end method

.method private startScrollImmediate()V
    .registers 2

    const/4 v0, 0x1

    .line 126
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/ScrollConsumer;->mInScrolling:Z

    const/4 v0, 0x0

    .line 127
    iput v0, p0, Lcom/transsion/camera/app/ui/ScrollConsumer;->mScrollDistanceX:F

    .line 128
    iput v0, p0, Lcom/transsion/camera/app/ui/ScrollConsumer;->mScrollDistanceY:F

    .line 129
    iget-object p0, p0, Lcom/transsion/camera/app/ui/ScrollConsumer;->mCurrentState:Lcom/transsion/camera/app/ui/ScrollConsumer$State;

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/ScrollConsumer$State;->startScroll()V

    return-void
.end method

.method private stopScrollImmediate()V
    .registers 3

    .line 160
    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/ScrollConsumer;->mInScrolling:Z

    if-nez v0, :cond_5

    return-void

    .line 163
    :cond_5
    sget-object v0, Lcom/transsion/camera/app/ui/ScrollConsumer;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "stopScroll"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 164
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/ScrollConsumer;->mInScrolling:Z

    const/4 v0, 0x0

    .line 165
    iput v0, p0, Lcom/transsion/camera/app/ui/ScrollConsumer;->mScrollDistanceX:F

    .line 166
    iput v0, p0, Lcom/transsion/camera/app/ui/ScrollConsumer;->mScrollDistanceY:F

    .line 167
    iget-object p0, p0, Lcom/transsion/camera/app/ui/ScrollConsumer;->mCurrentState:Lcom/transsion/camera/app/ui/ScrollConsumer$State;

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/ScrollConsumer$State;->stopScroll()V

    return-void
.end method

.method private syncOrientationAndScrForm()V
    .registers 2

    .line 77
    iget v0, p0, Lcom/transsion/camera/app/ui/ScrollConsumer;->mScreenFormType:I

    iput v0, p0, Lcom/transsion/camera/app/ui/ScrollConsumer;->mPreScreenFormType:I

    .line 78
    iget v0, p0, Lcom/transsion/camera/app/ui/ScrollConsumer;->mOrientation:I

    iput v0, p0, Lcom/transsion/camera/app/ui/ScrollConsumer;->mPreOrientation:I

    return-void
.end method


# virtual methods
.method public down(FF)V
    .registers 4

    .line 110
    iget-object v0, p0, Lcom/transsion/camera/app/ui/ScrollConsumer;->mModeProvider:Lcom/transsion/camera/app/ui/scroll/ScrollModeProvider;

    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/scroll/ScrollModeProvider;->getLeftRightMode()Lcom/transsion/camera/app/ui/scroll/ScrollMode;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/transsion/camera/app/ui/scroll/ScrollMode;->down(FF)V

    .line 111
    iget-object v0, p0, Lcom/transsion/camera/app/ui/ScrollConsumer;->mModeProvider:Lcom/transsion/camera/app/ui/scroll/ScrollModeProvider;

    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/scroll/ScrollModeProvider;->getTopDown()Lcom/transsion/camera/app/ui/scroll/ScrollMode;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/transsion/camera/app/ui/scroll/ScrollMode;->down(FF)V

    .line 112
    iget-object v0, p0, Lcom/transsion/camera/app/ui/ScrollConsumer;->mModeProvider:Lcom/transsion/camera/app/ui/scroll/ScrollModeProvider;

    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/scroll/ScrollModeProvider;->getBottomUpMode()Lcom/transsion/camera/app/ui/scroll/ScrollMode;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/transsion/camera/app/ui/scroll/ScrollMode;->down(FF)V

    .line 113
    iget-object v0, p0, Lcom/transsion/camera/app/ui/ScrollConsumer;->mModeProvider:Lcom/transsion/camera/app/ui/scroll/ScrollModeProvider;

    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/scroll/ScrollModeProvider;->getTopDownMode()Lcom/transsion/camera/app/ui/scroll/ScrollMode;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/transsion/camera/app/ui/scroll/ScrollMode;->down(FF)V

    .line 114
    iget-object p0, p0, Lcom/transsion/camera/app/ui/ScrollConsumer;->mModeProvider:Lcom/transsion/camera/app/ui/scroll/ScrollModeProvider;

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/scroll/ScrollModeProvider;->getRightLeftMode()Lcom/transsion/camera/app/ui/scroll/ScrollMode;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/transsion/camera/app/ui/scroll/ScrollMode;->down(FF)V

    return-void
.end method

.method public hideModePanel()V
    .registers 1

    .line 64
    iget-object p0, p0, Lcom/transsion/camera/app/ui/ScrollConsumer;->mCurrentState:Lcom/transsion/camera/app/ui/ScrollConsumer$State;

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/ScrollConsumer$State;->reset()Z

    return-void
.end method

.method public isEnable()Z
    .registers 4

    .line 172
    sget-object v0, Lcom/transsion/camera/app/ui/ScrollConsumer;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isEnable() called, mScrollDisable = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/transsion/camera/app/ui/ScrollConsumer;->mScrollDisable:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " , mSupportQC:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/transsion/camera/app/ui/ScrollConsumer;->mSupportQC:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->v(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 173
    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/ScrollConsumer;->mScrollDisable:Z

    if-eqz v0, :cond_2d

    iget-boolean p0, p0, Lcom/transsion/camera/app/ui/ScrollConsumer;->mSupportQC:Z

    if-eqz p0, :cond_2b

    goto :goto_2d

    :cond_2b
    const/4 p0, 0x0

    return p0

    :cond_2d
    :goto_2d
    const/4 p0, 0x1

    return p0
.end method

.method modePicked()V
    .registers 1

    .line 52
    iget-object p0, p0, Lcom/transsion/camera/app/ui/ScrollConsumer;->mCurrentState:Lcom/transsion/camera/app/ui/ScrollConsumer$State;

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/ScrollConsumer$State;->reset()Z

    return-void
.end method

.method onBackPressed()Z
    .registers 1

    .line 48
    iget-object p0, p0, Lcom/transsion/camera/app/ui/ScrollConsumer;->mCurrentState:Lcom/transsion/camera/app/ui/ScrollConsumer$State;

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/ScrollConsumer$State;->reset()Z

    move-result p0

    return p0
.end method

.method public onScreenFormChanged(IZ)V
    .registers 3

    .line 178
    iput p1, p0, Lcom/transsion/camera/app/ui/ScrollConsumer;->mScreenFormType:I

    return-void
.end method

.method public registerScroll(Lcom/transsion/camera/app/ui/scroll/IScrollModeProvider$ScrollType;Lcom/transsion/camera/app/ui/scroll/IScrollOperation;)V
    .registers 3

    .line 82
    iget-object p0, p0, Lcom/transsion/camera/app/ui/ScrollConsumer;->mModeProvider:Lcom/transsion/camera/app/ui/scroll/ScrollModeProvider;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/camera/app/ui/scroll/ScrollModeProvider;->registerScroll(Lcom/transsion/camera/app/ui/scroll/IScrollModeProvider$ScrollType;Lcom/transsion/camera/app/ui/scroll/IScrollOperation;)V

    return-void
.end method

.method public scroll(FF)V
    .registers 4

    .line 134
    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/ScrollConsumer;->mScrollDisable:Z

    if-eqz v0, :cond_5

    return-void

    :cond_5
    const/4 v0, 0x0

    .line 137
    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/ui/ScrollConsumer;->setModePanelGuideEnable(Z)V

    .line 138
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/app/ui/ScrollConsumer;->scrollImmediate(FF)V

    return-void
.end method

.method setModePanelGuideEnable(Z)V
    .registers 2

    .line 73
    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/ScrollConsumer;->mNeedShowGuide:Z

    return-void
.end method

.method public setScrollEnable(Z)V
    .registers 5

    .line 93
    sget-object v0, Lcom/transsion/camera/app/ui/ScrollConsumer;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setScrollEnable() called with: enable = ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/Throwable;

    invoke-direct {v2}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v0, v1, v2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;Ljava/lang/Throwable;)V

    if-nez p1, :cond_25

    .line 95
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/ScrollConsumer;->cancelScroll()V

    :cond_25
    xor-int/lit8 p1, p1, 0x1

    .line 97
    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/ScrollConsumer;->mScrollDisable:Z

    return-void
.end method

.method public setSupportQC(Z)V
    .registers 2

    .line 105
    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/ScrollConsumer;->mSupportQC:Z

    return-void
.end method

.method settingPicked()V
    .registers 1

    .line 56
    iget-object p0, p0, Lcom/transsion/camera/app/ui/ScrollConsumer;->mCurrentState:Lcom/transsion/camera/app/ui/ScrollConsumer$State;

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/ScrollConsumer$State;->reset()Z

    return-void
.end method

.method shrinkTopBar()V
    .registers 1

    .line 60
    iget-object p0, p0, Lcom/transsion/camera/app/ui/ScrollConsumer;->mCurrentState:Lcom/transsion/camera/app/ui/ScrollConsumer$State;

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/ScrollConsumer$State;->reset()Z

    return-void
.end method

.method public spreadModePanel()V
    .registers 1

    .line 68
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/ScrollConsumer;->syncOrientationAndScrForm()V

    .line 69
    iget-object p0, p0, Lcom/transsion/camera/app/ui/ScrollConsumer;->mCurrentState:Lcom/transsion/camera/app/ui/ScrollConsumer$State;

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/ScrollConsumer$State;->spreadMode()V

    return-void
.end method

.method public startScroll()V
    .registers 2

    .line 119
    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/ScrollConsumer;->mScrollDisable:Z

    if-eqz v0, :cond_5

    return-void

    .line 122
    :cond_5
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/ScrollConsumer;->startScrollImmediate()V

    return-void
.end method

.method public stopScroll()V
    .registers 2

    .line 153
    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/ScrollConsumer;->mScrollDisable:Z

    if-eqz v0, :cond_5

    return-void

    .line 156
    :cond_5
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/ScrollConsumer;->stopScrollImmediate()V

    return-void
.end method

.method public unregisterScroll(Lcom/transsion/camera/app/ui/scroll/IScrollModeProvider$ScrollType;)V
    .registers 2

    .line 86
    iget-object p0, p0, Lcom/transsion/camera/app/ui/ScrollConsumer;->mModeProvider:Lcom/transsion/camera/app/ui/scroll/ScrollModeProvider;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/scroll/ScrollModeProvider;->unregisterScroll(Lcom/transsion/camera/app/ui/scroll/IScrollModeProvider$ScrollType;)V

    return-void
.end method
