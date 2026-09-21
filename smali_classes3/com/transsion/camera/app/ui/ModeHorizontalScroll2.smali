.class public Lcom/transsion/camera/app/ui/ModeHorizontalScroll2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/app/ui/scroll/IScrollOperation;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/app/ui/ModeHorizontalScroll2$IModeScrollCallback;
    }
.end annotation


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private mModePickerScrollBottonY:I

.field private mModeScroll:Lcom/transsion/camera/app/ui/ModeHorizontalScroll2$IModeScrollCallback;

.field private mMultiTouch:Z

.field private mPreviewBottomY:I

.field private mPreviewTopY:I

.field private final mScreenManager:Lcom/transsion/camera/app/ui/ScreenManager;

.field private mStartPull:Z

.field private mStartY:F

.field private final mTriggerScrollDistance:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 20
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "ModeHorizontalScroll2"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/app/ui/ModeHorizontalScroll2;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Lcom/transsion/camera/app/ui/ScreenManager;Lcom/transsion/camera/app/mode/ModePickerConfig;)V
    .registers 5

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p2, 0x0

    .line 23
    iput p2, p0, Lcom/transsion/camera/app/ui/ModeHorizontalScroll2;->mStartY:F

    const/4 p2, 0x0

    .line 25
    iput-boolean p2, p0, Lcom/transsion/camera/app/ui/ModeHorizontalScroll2;->mStartPull:Z

    .line 33
    iput-object p1, p0, Lcom/transsion/camera/app/ui/ModeHorizontalScroll2;->mScreenManager:Lcom/transsion/camera/app/ui/ScreenManager;

    .line 34
    invoke-virtual {p1}, Lcom/transsion/camera/app/ui/ScreenManager;->getScreenWidth()I

    move-result p2

    div-int/lit8 p2, p2, 0xa

    iput p2, p0, Lcom/transsion/camera/app/ui/ModeHorizontalScroll2;->mTriggerScrollDistance:I

    .line 35
    invoke-virtual {p1}, Lcom/transsion/camera/app/ui/ScreenManager;->getScreenHeight()I

    move-result p2

    invoke-virtual {p1}, Lcom/transsion/camera/app/ui/ScreenManager;->getModePlusBottomBarHeight()I

    move-result v0

    sub-int/2addr p2, v0

    iput p2, p0, Lcom/transsion/camera/app/ui/ModeHorizontalScroll2;->mPreviewBottomY:I

    .line 36
    invoke-virtual {p1}, Lcom/transsion/camera/app/ui/ScreenManager;->getModePickerMainLayoutHeight()I

    move-result v0

    add-int/2addr p2, v0

    .line 37
    invoke-virtual {p1}, Lcom/transsion/camera/app/ui/ScreenManager;->getModePlusBottomBarHeight()I

    move-result v0

    invoke-virtual {p1}, Lcom/transsion/camera/app/ui/ScreenManager;->getNavigationHeight()I

    move-result v1

    sub-int/2addr v0, v1

    .line 38
    invoke-virtual {p1}, Lcom/transsion/camera/app/ui/ScreenManager;->getShutterButtonHeight()I

    move-result v1

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    invoke-virtual {p1}, Lcom/transsion/camera/app/ui/ScreenManager;->getModePickerScollExtra()I

    move-result p1

    sub-int/2addr v0, p1

    add-int/2addr p2, v0

    iput p2, p0, Lcom/transsion/camera/app/ui/ModeHorizontalScroll2;->mModePickerScrollBottonY:I

    return-void
.end method

.method private canScrollToNext()Z
    .registers 3

    .line 101
    iget-object p0, p0, Lcom/transsion/camera/app/ui/ModeHorizontalScroll2;->mModeScroll:Lcom/transsion/camera/app/ui/ModeHorizontalScroll2$IModeScrollCallback;

    invoke-interface {p0}, Lcom/transsion/camera/app/ui/ModeHorizontalScroll2$IModeScrollCallback;->canScrollToNext()Z

    move-result p0

    if-nez p0, :cond_f

    .line 103
    sget-object v0, Lcom/transsion/camera/app/ui/ModeHorizontalScroll2;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "can not ScrollToNext mModeScroll or  mModeIcon in scrolling"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    :cond_f
    return p0
.end method

.method private canScrollToPrevious()Z
    .registers 3

    .line 109
    iget-object p0, p0, Lcom/transsion/camera/app/ui/ModeHorizontalScroll2;->mModeScroll:Lcom/transsion/camera/app/ui/ModeHorizontalScroll2$IModeScrollCallback;

    invoke-interface {p0}, Lcom/transsion/camera/app/ui/ModeHorizontalScroll2$IModeScrollCallback;->canScrollToPrevious()Z

    move-result p0

    if-nez p0, :cond_f

    .line 111
    sget-object v0, Lcom/transsion/camera/app/ui/ModeHorizontalScroll2;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "can not ScrollToPrevious mModeScroll or  mModeIcon in scrolling"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    :cond_f
    return p0
.end method

.method private canScrolling()Z
    .registers 3

    .line 89
    iget-object p0, p0, Lcom/transsion/camera/app/ui/ModeHorizontalScroll2;->mModeScroll:Lcom/transsion/camera/app/ui/ModeHorizontalScroll2$IModeScrollCallback;

    if-nez p0, :cond_d

    .line 90
    sget-object p0, Lcom/transsion/camera/app/ui/ModeHorizontalScroll2;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "mModeScroll is null"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0

    .line 93
    :cond_d
    invoke-interface {p0}, Lcom/transsion/camera/app/ui/ModeHorizontalScroll2$IModeScrollCallback;->canScrolling()Z

    move-result p0

    if-nez p0, :cond_1a

    .line 95
    sget-object v0, Lcom/transsion/camera/app/ui/ModeHorizontalScroll2;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "can not Scrolling"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    :cond_1a
    return p0
.end method


# virtual methods
.method public down(FF)V
    .registers 3

    .line 53
    iget-boolean p1, p0, Lcom/transsion/camera/app/ui/ModeHorizontalScroll2;->mMultiTouch:Z

    if-eqz p1, :cond_5

    return-void

    :cond_5
    const/4 p1, 0x0

    .line 56
    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/ModeHorizontalScroll2;->mStartPull:Z

    .line 57
    iput p2, p0, Lcom/transsion/camera/app/ui/ModeHorizontalScroll2;->mStartY:F

    return-void
.end method

.method public onPreviewSizeChanged(II)V
    .registers 3

    .line 128
    iget-object p1, p0, Lcom/transsion/camera/app/ui/ModeHorizontalScroll2;->mScreenManager:Lcom/transsion/camera/app/ui/ScreenManager;

    invoke-virtual {p1}, Lcom/transsion/camera/app/ui/ScreenManager;->getTopBarHeight()I

    move-result p1

    iput p1, p0, Lcom/transsion/camera/app/ui/ModeHorizontalScroll2;->mPreviewTopY:I

    return-void
.end method

.method public pulling(FF)Z
    .registers 7

    .line 62
    iget v0, p0, Lcom/transsion/camera/app/ui/ModeHorizontalScroll2;->mStartY:F

    iget v1, p0, Lcom/transsion/camera/app/ui/ModeHorizontalScroll2;->mPreviewTopY:I

    int-to-float v1, v1

    cmpg-float v1, v0, v1

    const/4 v2, 0x0

    if-ltz v1, :cond_8d

    iget v1, p0, Lcom/transsion/camera/app/ui/ModeHorizontalScroll2;->mModePickerScrollBottonY:I

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_13

    goto/16 :goto_8d

    .line 67
    :cond_13
    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/ModeHorizontalScroll2;->mStartPull:Z

    if-nez v0, :cond_42

    invoke-direct {p0}, Lcom/transsion/camera/app/ui/ModeHorizontalScroll2;->canScrolling()Z

    move-result v0

    if-nez v0, :cond_42

    .line 68
    sget-object p1, Lcom/transsion/camera/app/ui/ModeHorizontalScroll2;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "return pulling mStartPull = "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/ModeHorizontalScroll2;->mStartPull:Z

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, " canScrolling = "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/transsion/camera/app/ui/ModeHorizontalScroll2;->canScrolling()Z

    move-result p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return v2

    .line 72
    :cond_42
    iget v0, p0, Lcom/transsion/camera/app/ui/ModeHorizontalScroll2;->mPreviewTopY:I

    int-to-float v0, v0

    iget v1, p0, Lcom/transsion/camera/app/ui/ModeHorizontalScroll2;->mStartY:F

    cmpg-float v0, v0, v1

    const/4 v3, 0x1

    if-gtz v0, :cond_85

    iget v0, p0, Lcom/transsion/camera/app/ui/ModeHorizontalScroll2;->mPreviewBottomY:I

    int-to-float v0, v0

    cmpg-float v0, v1, v0

    if-gtz v0, :cond_85

    invoke-static {}, Lcom/transsion/camera/utils/MultiTouchManager;->isButtonDown()Z

    move-result v0

    if-nez v0, :cond_85

    float-to-int p1, p1

    .line 73
    iget p2, p0, Lcom/transsion/camera/app/ui/ModeHorizontalScroll2;->mTriggerScrollDistance:I

    div-int/2addr p1, p2

    if-lez p1, :cond_71

    .line 74
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/ModeHorizontalScroll2;->canScrollToNext()Z

    move-result p2

    if-eqz p2, :cond_71

    iget-boolean p2, p0, Lcom/transsion/camera/app/ui/ModeHorizontalScroll2;->mStartPull:Z

    if-nez p2, :cond_71

    .line 75
    iget-object p1, p0, Lcom/transsion/camera/app/ui/ModeHorizontalScroll2;->mModeScroll:Lcom/transsion/camera/app/ui/ModeHorizontalScroll2$IModeScrollCallback;

    invoke-interface {p1}, Lcom/transsion/camera/app/ui/ModeHorizontalScroll2$IModeScrollCallback;->scrollToNext()V

    .line 76
    iput-boolean v3, p0, Lcom/transsion/camera/app/ui/ModeHorizontalScroll2;->mStartPull:Z

    goto :goto_84

    :cond_71
    if-gez p1, :cond_84

    .line 77
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/ModeHorizontalScroll2;->canScrollToPrevious()Z

    move-result p1

    if-eqz p1, :cond_84

    iget-boolean p1, p0, Lcom/transsion/camera/app/ui/ModeHorizontalScroll2;->mStartPull:Z

    if-nez p1, :cond_84

    .line 78
    iget-object p1, p0, Lcom/transsion/camera/app/ui/ModeHorizontalScroll2;->mModeScroll:Lcom/transsion/camera/app/ui/ModeHorizontalScroll2$IModeScrollCallback;

    invoke-interface {p1}, Lcom/transsion/camera/app/ui/ModeHorizontalScroll2$IModeScrollCallback;->scrollToPrevious()V

    .line 79
    iput-boolean v3, p0, Lcom/transsion/camera/app/ui/ModeHorizontalScroll2;->mStartPull:Z

    :cond_84
    :goto_84
    return v2

    .line 83
    :cond_85
    iput-boolean v3, p0, Lcom/transsion/camera/app/ui/ModeHorizontalScroll2;->mStartPull:Z

    .line 84
    iget-object p0, p0, Lcom/transsion/camera/app/ui/ModeHorizontalScroll2;->mModeScroll:Lcom/transsion/camera/app/ui/ModeHorizontalScroll2$IModeScrollCallback;

    invoke-interface {p0, p1, p2}, Lcom/transsion/camera/app/ui/ModeHorizontalScroll2$IModeScrollCallback;->scrolling(FF)V

    return v2

    .line 63
    :cond_8d
    :goto_8d
    sget-object p1, Lcom/transsion/camera/app/ui/ModeHorizontalScroll2;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "return pulling mStartY = "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/transsion/camera/app/ui/ModeHorizontalScroll2;->mStartY:F

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, " previewTopY ="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/transsion/camera/app/ui/ModeHorizontalScroll2;->mPreviewTopY:I

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return v2
.end method

.method public setModeScroll(Lcom/transsion/camera/app/ui/ModeHorizontalScroll2$IModeScrollCallback;)V
    .registers 2

    .line 43
    iput-object p1, p0, Lcom/transsion/camera/app/ui/ModeHorizontalScroll2;->mModeScroll:Lcom/transsion/camera/app/ui/ModeHorizontalScroll2$IModeScrollCallback;

    return-void
.end method

.method public startPulling()V
    .registers 2

    const/4 v0, 0x1

    .line 48
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/ModeHorizontalScroll2;->mMultiTouch:Z

    return-void
.end method

.method public stopPulling()Z
    .registers 3

    .line 118
    sget-object v0, Lcom/transsion/camera/app/ui/ModeHorizontalScroll2;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "stopPulling"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 119
    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/ModeHorizontalScroll2;->mStartPull:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_13

    .line 120
    iget-object v0, p0, Lcom/transsion/camera/app/ui/ModeHorizontalScroll2;->mModeScroll:Lcom/transsion/camera/app/ui/ModeHorizontalScroll2$IModeScrollCallback;

    invoke-interface {v0}, Lcom/transsion/camera/app/ui/ModeHorizontalScroll2$IModeScrollCallback;->stopScroll()V

    .line 121
    iput-boolean v1, p0, Lcom/transsion/camera/app/ui/ModeHorizontalScroll2;->mStartPull:Z

    .line 123
    :cond_13
    iput-boolean v1, p0, Lcom/transsion/camera/app/ui/ModeHorizontalScroll2;->mMultiTouch:Z

    return v1
.end method
