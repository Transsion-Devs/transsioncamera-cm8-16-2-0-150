.class public Lcom/transsion/camera/app/ui/ModeSwitchScroller;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/app/ui/scroll/IScrollOperation;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/app/ui/ModeSwitchScroller$IModeScrollCallback;
    }
.end annotation


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mIsModeSwitchEnable:Z

.field private mModeIcon:Lcom/transsion/camera/app/ui/ModeSwitchScroller$IModeScrollCallback;

.field private mModeScroll:Lcom/transsion/camera/app/ui/ModeSwitchScroller$IModeScrollCallback;

.field private mMultiTouch:Z

.field private mOrientation:I

.field private final mScreenManager:Lcom/transsion/camera/app/ui/ScreenManager;

.field private mScrollHotArea:[F

.field private mScrollTriggerDistance:I

.field private mStartPull:Z

.field private mStartX:F

.field private mStartY:F


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 20
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "ModeSwitchScroller"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/app/ui/ModeSwitchScroller;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/transsion/camera/app/ui/ScreenManager;Lcom/transsion/camera/app/mode/ModePickerConfig;)V
    .registers 4

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p3, 0x1

    .line 21
    iput-boolean p3, p0, Lcom/transsion/camera/app/ui/ModeSwitchScroller;->mIsModeSwitchEnable:Z

    const/4 p3, 0x0

    .line 22
    iput-boolean p3, p0, Lcom/transsion/camera/app/ui/ModeSwitchScroller;->mStartPull:Z

    const/4 p3, 0x0

    .line 25
    iput p3, p0, Lcom/transsion/camera/app/ui/ModeSwitchScroller;->mStartX:F

    .line 26
    iput p3, p0, Lcom/transsion/camera/app/ui/ModeSwitchScroller;->mStartY:F

    const/4 p3, 0x4

    .line 27
    new-array p3, p3, [F

    iput-object p3, p0, Lcom/transsion/camera/app/ui/ModeSwitchScroller;->mScrollHotArea:[F

    const/4 p3, -0x1

    .line 32
    iput p3, p0, Lcom/transsion/camera/app/ui/ModeSwitchScroller;->mOrientation:I

    .line 55
    iput-object p1, p0, Lcom/transsion/camera/app/ui/ModeSwitchScroller;->mContext:Landroid/content/Context;

    .line 56
    iput-object p2, p0, Lcom/transsion/camera/app/ui/ModeSwitchScroller;->mScreenManager:Lcom/transsion/camera/app/ui/ScreenManager;

    .line 57
    invoke-virtual {p2}, Lcom/transsion/camera/app/ui/ScreenManager;->getScreenWidth()I

    move-result p1

    div-int/lit8 p1, p1, 0xa

    iput p1, p0, Lcom/transsion/camera/app/ui/ModeSwitchScroller;->mScrollTriggerDistance:I

    return-void
.end method

.method private canScrollToNext()Z
    .registers 3

    .line 373
    iget-object v0, p0, Lcom/transsion/camera/app/ui/ModeSwitchScroller;->mModeScroll:Lcom/transsion/camera/app/ui/ModeSwitchScroller$IModeScrollCallback;

    invoke-interface {v0}, Lcom/transsion/camera/app/ui/ModeSwitchScroller$IModeScrollCallback;->canScrollToNext()Z

    move-result v0

    if-eqz v0, :cond_12

    iget-object p0, p0, Lcom/transsion/camera/app/ui/ModeSwitchScroller;->mModeIcon:Lcom/transsion/camera/app/ui/ModeSwitchScroller$IModeScrollCallback;

    invoke-interface {p0}, Lcom/transsion/camera/app/ui/ModeSwitchScroller$IModeScrollCallback;->canScrollToNext()Z

    move-result p0

    if-eqz p0, :cond_12

    const/4 p0, 0x1

    goto :goto_13

    :cond_12
    const/4 p0, 0x0

    :goto_13
    if-nez p0, :cond_1c

    .line 375
    sget-object v0, Lcom/transsion/camera/app/ui/ModeSwitchScroller;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "can not ScrollToNext mModeScroll or  mModeIcon in scrolling"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    :cond_1c
    return p0
.end method

.method private canScrollToPrevious()Z
    .registers 3

    .line 381
    iget-object v0, p0, Lcom/transsion/camera/app/ui/ModeSwitchScroller;->mModeScroll:Lcom/transsion/camera/app/ui/ModeSwitchScroller$IModeScrollCallback;

    invoke-interface {v0}, Lcom/transsion/camera/app/ui/ModeSwitchScroller$IModeScrollCallback;->canScrollToPrevious()Z

    move-result v0

    if-eqz v0, :cond_12

    iget-object p0, p0, Lcom/transsion/camera/app/ui/ModeSwitchScroller;->mModeIcon:Lcom/transsion/camera/app/ui/ModeSwitchScroller$IModeScrollCallback;

    invoke-interface {p0}, Lcom/transsion/camera/app/ui/ModeSwitchScroller$IModeScrollCallback;->canScrollToPrevious()Z

    move-result p0

    if-eqz p0, :cond_12

    const/4 p0, 0x1

    goto :goto_13

    :cond_12
    const/4 p0, 0x0

    :goto_13
    if-nez p0, :cond_1c

    .line 383
    sget-object v0, Lcom/transsion/camera/app/ui/ModeSwitchScroller;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "can not ScrollToPrevious mModeScroll or mModeIcon in scrolling"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    :cond_1c
    return p0
.end method

.method private canScrolling()Z
    .registers 3

    .line 365
    iget-object v0, p0, Lcom/transsion/camera/app/ui/ModeSwitchScroller;->mModeScroll:Lcom/transsion/camera/app/ui/ModeSwitchScroller$IModeScrollCallback;

    invoke-interface {v0}, Lcom/transsion/camera/app/ui/ModeSwitchScroller$IModeScrollCallback;->canScrolling()Z

    move-result v0

    if-eqz v0, :cond_12

    iget-object p0, p0, Lcom/transsion/camera/app/ui/ModeSwitchScroller;->mModeIcon:Lcom/transsion/camera/app/ui/ModeSwitchScroller$IModeScrollCallback;

    invoke-interface {p0}, Lcom/transsion/camera/app/ui/ModeSwitchScroller$IModeScrollCallback;->canScrolling()Z

    move-result p0

    if-eqz p0, :cond_12

    const/4 p0, 0x1

    goto :goto_13

    :cond_12
    const/4 p0, 0x0

    :goto_13
    if-nez p0, :cond_1c

    .line 367
    sget-object v0, Lcom/transsion/camera/app/ui/ModeSwitchScroller;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "can not Scrolling"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    :cond_1c
    return p0
.end method

.method private updateScrollHotArea()V
    .registers 9

    .line 313
    iget-object v0, p0, Lcom/transsion/camera/app/ui/ModeSwitchScroller;->mScreenManager:Lcom/transsion/camera/app/ui/ScreenManager;

    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/ScreenManager;->getScreenFormType()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-ne v0, v5, :cond_9e

    .line 314
    iget v0, p0, Lcom/transsion/camera/app/ui/ModeSwitchScroller;->mOrientation:I

    const/16 v6, 0x5a

    if-eq v0, v6, :cond_55

    const/16 v6, 0x10e

    if-eq v0, v6, :cond_55

    .line 325
    iget-object v0, p0, Lcom/transsion/camera/app/ui/ModeSwitchScroller;->mScrollHotArea:[F

    iget-object v6, p0, Lcom/transsion/camera/app/ui/ModeSwitchScroller;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v7, Lcom/transsion/camera/R$dimen;->mode_switch_scroll_hot_area_margin:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    int-to-float v6, v6

    aput v6, v0, v2

    .line 326
    iget-object v0, p0, Lcom/transsion/camera/app/ui/ModeSwitchScroller;->mScrollHotArea:[F

    iget-object v2, p0, Lcom/transsion/camera/app/ui/ModeSwitchScroller;->mScreenManager:Lcom/transsion/camera/app/ui/ScreenManager;

    invoke-virtual {v2}, Lcom/transsion/camera/app/ui/ScreenManager;->getScreenWidth()I

    move-result v2

    iget-object v6, p0, Lcom/transsion/camera/app/ui/ModeSwitchScroller;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v7, Lcom/transsion/camera/R$dimen;->mode_switch_scroll_hot_area_margin:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    sub-int/2addr v2, v6

    int-to-float v2, v2

    aput v2, v0, v4

    .line 327
    iget-object v0, p0, Lcom/transsion/camera/app/ui/ModeSwitchScroller;->mScrollHotArea:[F

    aput v1, v0, v5

    .line 328
    iget-object v1, p0, Lcom/transsion/camera/app/ui/ModeSwitchScroller;->mScreenManager:Lcom/transsion/camera/app/ui/ScreenManager;

    invoke-virtual {v1}, Lcom/transsion/camera/app/ui/ScreenManager;->getScreenHeight()I

    move-result v1

    iget-object v2, p0, Lcom/transsion/camera/app/ui/ModeSwitchScroller;->mScreenManager:Lcom/transsion/camera/app/ui/ScreenManager;

    invoke-virtual {v2}, Lcom/transsion/camera/app/ui/ScreenManager;->getNavigationHeight()I

    move-result v2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    aput v1, v0, v3

    goto :goto_92

    .line 317
    :cond_55
    iget-object v0, p0, Lcom/transsion/camera/app/ui/ModeSwitchScroller;->mScrollHotArea:[F

    aput v1, v0, v2

    .line 318
    iget-object v1, p0, Lcom/transsion/camera/app/ui/ModeSwitchScroller;->mScreenManager:Lcom/transsion/camera/app/ui/ScreenManager;

    invoke-virtual {v1}, Lcom/transsion/camera/app/ui/ScreenManager;->getScreenWidth()I

    move-result v1

    iget-object v2, p0, Lcom/transsion/camera/app/ui/ModeSwitchScroller;->mScreenManager:Lcom/transsion/camera/app/ui/ScreenManager;

    invoke-virtual {v2}, Lcom/transsion/camera/app/ui/ScreenManager;->getNavigationHeight()I

    move-result v2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    aput v1, v0, v4

    .line 319
    iget-object v0, p0, Lcom/transsion/camera/app/ui/ModeSwitchScroller;->mScrollHotArea:[F

    iget-object v1, p0, Lcom/transsion/camera/app/ui/ModeSwitchScroller;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/transsion/camera/R$dimen;->mode_switch_scroll_hot_area_margin:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    aput v1, v0, v5

    .line 320
    iget-object v0, p0, Lcom/transsion/camera/app/ui/ModeSwitchScroller;->mScrollHotArea:[F

    iget-object v1, p0, Lcom/transsion/camera/app/ui/ModeSwitchScroller;->mScreenManager:Lcom/transsion/camera/app/ui/ScreenManager;

    invoke-virtual {v1}, Lcom/transsion/camera/app/ui/ScreenManager;->getScreenHeight()I

    move-result v1

    iget-object v2, p0, Lcom/transsion/camera/app/ui/ModeSwitchScroller;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v4, Lcom/transsion/camera/R$dimen;->mode_switch_scroll_hot_area_margin:I

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    aput v1, v0, v3

    .line 331
    :goto_92
    iget-object v0, p0, Lcom/transsion/camera/app/ui/ModeSwitchScroller;->mScreenManager:Lcom/transsion/camera/app/ui/ScreenManager;

    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/ScreenManager;->getScreenWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x14

    iput v0, p0, Lcom/transsion/camera/app/ui/ModeSwitchScroller;->mScrollTriggerDistance:I

    goto/16 :goto_1ed

    .line 332
    :cond_9e
    iget-object v0, p0, Lcom/transsion/camera/app/ui/ModeSwitchScroller;->mScreenManager:Lcom/transsion/camera/app/ui/ScreenManager;

    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/ScreenManager;->getScreenFormType()I

    move-result v0

    const/4 v6, 0x7

    if-ne v0, v6, :cond_ca

    .line 333
    iget-object v0, p0, Lcom/transsion/camera/app/ui/ModeSwitchScroller;->mScrollHotArea:[F

    aput v1, v0, v2

    .line 334
    iget-object v2, p0, Lcom/transsion/camera/app/ui/ModeSwitchScroller;->mScreenManager:Lcom/transsion/camera/app/ui/ScreenManager;

    invoke-virtual {v2}, Lcom/transsion/camera/app/ui/ScreenManager;->getScreenWidth()I

    move-result v2

    int-to-float v2, v2

    aput v2, v0, v4

    .line 335
    iget-object v0, p0, Lcom/transsion/camera/app/ui/ModeSwitchScroller;->mScrollHotArea:[F

    aput v1, v0, v5

    .line 336
    iget-object v1, p0, Lcom/transsion/camera/app/ui/ModeSwitchScroller;->mScreenManager:Lcom/transsion/camera/app/ui/ScreenManager;

    invoke-virtual {v1}, Lcom/transsion/camera/app/ui/ScreenManager;->getScreenHeight()I

    move-result v1

    iget-object v2, p0, Lcom/transsion/camera/app/ui/ModeSwitchScroller;->mScreenManager:Lcom/transsion/camera/app/ui/ScreenManager;

    invoke-virtual {v2}, Lcom/transsion/camera/app/ui/ScreenManager;->getNavigationHeight()I

    move-result v2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    aput v1, v0, v3

    goto/16 :goto_1ed

    .line 337
    :cond_ca
    iget-object v0, p0, Lcom/transsion/camera/app/ui/ModeSwitchScroller;->mScreenManager:Lcom/transsion/camera/app/ui/ScreenManager;

    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/ScreenManager;->getScreenFormType()I

    move-result v0

    if-ne v0, v4, :cond_118

    .line 338
    iget-object v0, p0, Lcom/transsion/camera/app/ui/ModeSwitchScroller;->mScrollHotArea:[F

    iget-object v1, p0, Lcom/transsion/camera/app/ui/ModeSwitchScroller;->mScreenManager:Lcom/transsion/camera/app/ui/ScreenManager;

    invoke-virtual {v1}, Lcom/transsion/camera/app/ui/ScreenManager;->getColumnPreviewStartMargin()I

    move-result v1

    int-to-float v1, v1

    aput v1, v0, v2

    .line 339
    iget-object v0, p0, Lcom/transsion/camera/app/ui/ModeSwitchScroller;->mScrollHotArea:[F

    iget-object v1, p0, Lcom/transsion/camera/app/ui/ModeSwitchScroller;->mScreenManager:Lcom/transsion/camera/app/ui/ScreenManager;

    invoke-virtual {v1}, Lcom/transsion/camera/app/ui/ScreenManager;->getColumnPreviewStartMargin()I

    move-result v1

    iget-object v2, p0, Lcom/transsion/camera/app/ui/ModeSwitchScroller;->mScreenManager:Lcom/transsion/camera/app/ui/ScreenManager;

    invoke-virtual {v2}, Lcom/transsion/camera/app/ui/ScreenManager;->getScreenWidth()I

    move-result v2

    add-int/2addr v1, v2

    int-to-float v1, v1

    aput v1, v0, v4

    .line 340
    iget-object v0, p0, Lcom/transsion/camera/app/ui/ModeSwitchScroller;->mScrollHotArea:[F

    iget-object v1, p0, Lcom/transsion/camera/app/ui/ModeSwitchScroller;->mScreenManager:Lcom/transsion/camera/app/ui/ScreenManager;

    invoke-virtual {v1}, Lcom/transsion/camera/app/ui/ScreenManager;->getTopBarHeight()I

    move-result v1

    int-to-float v1, v1

    aput v1, v0, v5

    .line 341
    iget-object v0, p0, Lcom/transsion/camera/app/ui/ModeSwitchScroller;->mScrollHotArea:[F

    iget-object v1, p0, Lcom/transsion/camera/app/ui/ModeSwitchScroller;->mScreenManager:Lcom/transsion/camera/app/ui/ScreenManager;

    invoke-virtual {v1}, Lcom/transsion/camera/app/ui/ScreenManager;->getScreenHeight()I

    move-result v1

    iget-object v2, p0, Lcom/transsion/camera/app/ui/ModeSwitchScroller;->mScreenManager:Lcom/transsion/camera/app/ui/ScreenManager;

    invoke-virtual {v2}, Lcom/transsion/camera/app/ui/ScreenManager;->getModePlusBottomBarHeight()I

    move-result v2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    aput v1, v0, v3

    .line 342
    iget-object v0, p0, Lcom/transsion/camera/app/ui/ModeSwitchScroller;->mScreenManager:Lcom/transsion/camera/app/ui/ScreenManager;

    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/ScreenManager;->getScreenWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0xa

    iput v0, p0, Lcom/transsion/camera/app/ui/ModeSwitchScroller;->mScrollTriggerDistance:I

    goto/16 :goto_1ed

    .line 343
    :cond_118
    iget-object v0, p0, Lcom/transsion/camera/app/ui/ModeSwitchScroller;->mScreenManager:Lcom/transsion/camera/app/ui/ScreenManager;

    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/ScreenManager;->getScreenFormType()I

    move-result v0

    if-eqz v0, :cond_1b9

    iget-object v0, p0, Lcom/transsion/camera/app/ui/ModeSwitchScroller;->mScreenManager:Lcom/transsion/camera/app/ui/ScreenManager;

    .line 344
    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/ScreenManager;->getScreenFormType()I

    move-result v0

    if-ne v0, v3, :cond_12a

    goto/16 :goto_1b9

    .line 350
    :cond_12a
    iget-object v0, p0, Lcom/transsion/camera/app/ui/ModeSwitchScroller;->mScreenManager:Lcom/transsion/camera/app/ui/ScreenManager;

    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/ScreenManager;->getScreenFormType()I

    move-result v0

    const/4 v6, 0x4

    if-ne v0, v6, :cond_172

    .line 351
    iget-object v0, p0, Lcom/transsion/camera/app/ui/ModeSwitchScroller;->mScrollHotArea:[F

    iget-object v6, p0, Lcom/transsion/camera/app/ui/ModeSwitchScroller;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v7, Lcom/transsion/camera/R$dimen;->mode_switch_scroll_hot_area_margin:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    int-to-float v6, v6

    aput v6, v0, v2

    .line 352
    iget-object v0, p0, Lcom/transsion/camera/app/ui/ModeSwitchScroller;->mScrollHotArea:[F

    iget-object v2, p0, Lcom/transsion/camera/app/ui/ModeSwitchScroller;->mScreenManager:Lcom/transsion/camera/app/ui/ScreenManager;

    invoke-virtual {v2}, Lcom/transsion/camera/app/ui/ScreenManager;->getScreenWidth()I

    move-result v2

    iget-object v6, p0, Lcom/transsion/camera/app/ui/ModeSwitchScroller;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v7, Lcom/transsion/camera/R$dimen;->mode_switch_scroll_hot_area_margin:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    sub-int/2addr v2, v6

    int-to-float v2, v2

    aput v2, v0, v4

    .line 353
    iget-object v0, p0, Lcom/transsion/camera/app/ui/ModeSwitchScroller;->mScrollHotArea:[F

    aput v1, v0, v5

    .line 354
    iget-object v1, p0, Lcom/transsion/camera/app/ui/ModeSwitchScroller;->mScreenManager:Lcom/transsion/camera/app/ui/ScreenManager;

    invoke-virtual {v1}, Lcom/transsion/camera/app/ui/ScreenManager;->getScreenHeight()I

    move-result v1

    iget-object v2, p0, Lcom/transsion/camera/app/ui/ModeSwitchScroller;->mScreenManager:Lcom/transsion/camera/app/ui/ScreenManager;

    invoke-virtual {v2}, Lcom/transsion/camera/app/ui/ScreenManager;->getNavigationHeight()I

    move-result v2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    aput v1, v0, v3

    goto/16 :goto_1ed

    .line 355
    :cond_172
    iget-object v0, p0, Lcom/transsion/camera/app/ui/ModeSwitchScroller;->mScreenManager:Lcom/transsion/camera/app/ui/ScreenManager;

    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/ScreenManager;->getScreenFormType()I

    move-result v0

    const/4 v6, 0x5

    if-ne v0, v6, :cond_1ed

    .line 356
    iget-object v0, p0, Lcom/transsion/camera/app/ui/ModeSwitchScroller;->mScrollHotArea:[F

    iget-object v6, p0, Lcom/transsion/camera/app/ui/ModeSwitchScroller;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v7, Lcom/transsion/camera/R$dimen;->mode_switch_scroll_hot_area_margin:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    int-to-float v6, v6

    aput v6, v0, v2

    .line 357
    iget-object v0, p0, Lcom/transsion/camera/app/ui/ModeSwitchScroller;->mScrollHotArea:[F

    iget-object v2, p0, Lcom/transsion/camera/app/ui/ModeSwitchScroller;->mScreenManager:Lcom/transsion/camera/app/ui/ScreenManager;

    invoke-virtual {v2}, Lcom/transsion/camera/app/ui/ScreenManager;->getScreenWidth()I

    move-result v2

    iget-object v6, p0, Lcom/transsion/camera/app/ui/ModeSwitchScroller;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v7, Lcom/transsion/camera/R$dimen;->mode_switch_scroll_hot_area_margin:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    sub-int/2addr v2, v6

    int-to-float v2, v2

    aput v2, v0, v4

    .line 358
    iget-object v0, p0, Lcom/transsion/camera/app/ui/ModeSwitchScroller;->mScrollHotArea:[F

    aput v1, v0, v5

    .line 359
    iget-object v1, p0, Lcom/transsion/camera/app/ui/ModeSwitchScroller;->mScreenManager:Lcom/transsion/camera/app/ui/ScreenManager;

    invoke-virtual {v1}, Lcom/transsion/camera/app/ui/ScreenManager;->getScreenHeight()I

    move-result v1

    iget-object v2, p0, Lcom/transsion/camera/app/ui/ModeSwitchScroller;->mScreenManager:Lcom/transsion/camera/app/ui/ScreenManager;

    invoke-virtual {v2}, Lcom/transsion/camera/app/ui/ScreenManager;->getNavigationHeight()I

    move-result v2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    aput v1, v0, v3

    goto :goto_1ed

    .line 345
    :cond_1b9
    :goto_1b9
    iget-object v0, p0, Lcom/transsion/camera/app/ui/ModeSwitchScroller;->mScrollHotArea:[F

    aput v1, v0, v2

    .line 346
    iget-object v1, p0, Lcom/transsion/camera/app/ui/ModeSwitchScroller;->mScreenManager:Lcom/transsion/camera/app/ui/ScreenManager;

    invoke-virtual {v1}, Lcom/transsion/camera/app/ui/ScreenManager;->getScreenWidth()I

    move-result v1

    int-to-float v1, v1

    aput v1, v0, v4

    .line 347
    iget-object v0, p0, Lcom/transsion/camera/app/ui/ModeSwitchScroller;->mScrollHotArea:[F

    iget-object v1, p0, Lcom/transsion/camera/app/ui/ModeSwitchScroller;->mScreenManager:Lcom/transsion/camera/app/ui/ScreenManager;

    invoke-virtual {v1}, Lcom/transsion/camera/app/ui/ScreenManager;->getTopBarHeight()I

    move-result v1

    int-to-float v1, v1

    aput v1, v0, v5

    .line 348
    iget-object v0, p0, Lcom/transsion/camera/app/ui/ModeSwitchScroller;->mScrollHotArea:[F

    iget-object v1, p0, Lcom/transsion/camera/app/ui/ModeSwitchScroller;->mScreenManager:Lcom/transsion/camera/app/ui/ScreenManager;

    invoke-virtual {v1}, Lcom/transsion/camera/app/ui/ScreenManager;->getScreenHeight()I

    move-result v1

    iget-object v2, p0, Lcom/transsion/camera/app/ui/ModeSwitchScroller;->mScreenManager:Lcom/transsion/camera/app/ui/ScreenManager;

    invoke-virtual {v2}, Lcom/transsion/camera/app/ui/ScreenManager;->getModePlusBottomBarHeight()I

    move-result v2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    aput v1, v0, v3

    .line 349
    iget-object v0, p0, Lcom/transsion/camera/app/ui/ModeSwitchScroller;->mScreenManager:Lcom/transsion/camera/app/ui/ScreenManager;

    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/ScreenManager;->getScreenWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0xa

    iput v0, p0, Lcom/transsion/camera/app/ui/ModeSwitchScroller;->mScrollTriggerDistance:I

    .line 361
    :cond_1ed
    :goto_1ed
    sget-object v0, Lcom/transsion/camera/app/ui/ModeSwitchScroller;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[updateScrollHotArea] current hot area is: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/app/ui/ModeSwitchScroller;->mScrollHotArea:[F

    invoke-static {v2}, Ljava/util/Arrays;->toString([F)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", getColumnPreviewStartMargin = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/transsion/camera/app/ui/ModeSwitchScroller;->mScreenManager:Lcom/transsion/camera/app/ui/ScreenManager;

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/ScreenManager;->getColumnPreviewStartMargin()I

    move-result p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public down(FF)V
    .registers 6

    .line 79
    sget-object v0, Lcom/transsion/camera/app/ui/ModeSwitchScroller;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[down] rowX = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, ", rowY = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 80
    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/ModeSwitchScroller;->mMultiTouch:Z

    if-eqz v0, :cond_23

    goto :goto_31

    .line 83
    :cond_23
    iput p1, p0, Lcom/transsion/camera/app/ui/ModeSwitchScroller;->mStartX:F

    .line 84
    iput p2, p0, Lcom/transsion/camera/app/ui/ModeSwitchScroller;->mStartY:F

    const/4 v0, 0x0

    .line 85
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/ModeSwitchScroller;->mStartPull:Z

    .line 86
    iget-object p0, p0, Lcom/transsion/camera/app/ui/ModeSwitchScroller;->mModeScroll:Lcom/transsion/camera/app/ui/ModeSwitchScroller$IModeScrollCallback;

    if-eqz p0, :cond_31

    .line 87
    invoke-interface {p0, p1, p2}, Lcom/transsion/camera/app/ui/ModeSwitchScroller$IModeScrollCallback;->down(FF)V

    :cond_31
    :goto_31
    return-void
.end method

.method public onOrientationChanged(I)V
    .registers 2

    .line 68
    iput p1, p0, Lcom/transsion/camera/app/ui/ModeSwitchScroller;->mOrientation:I

    .line 69
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/ModeSwitchScroller;->updateScrollHotArea()V

    return-void
.end method

.method public onPreviewSizeChanged(II)V
    .registers 3

    .line 74
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/ModeSwitchScroller;->updateScrollHotArea()V

    return-void
.end method

.method public pulling(FF)Z
    .registers 12

    .line 99
    sget-object v0, Lcom/transsion/camera/app/ui/ModeSwitchScroller;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[pulling] xMoveDistance = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, ", yMoveDistance = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 100
    iget-boolean v1, p0, Lcom/transsion/camera/app/ui/ModeSwitchScroller;->mIsModeSwitchEnable:Z

    const/4 v2, 0x0

    if-nez v1, :cond_24

    return v2

    .line 103
    :cond_24
    iget v1, p0, Lcom/transsion/camera/app/ui/ModeSwitchScroller;->mStartX:F

    iget-object v3, p0, Lcom/transsion/camera/app/ui/ModeSwitchScroller;->mScrollHotArea:[F

    aget v4, v3, v2

    cmpg-float v4, v1, v4

    const/4 v5, 0x1

    if-ltz v4, :cond_3a5

    const/4 v4, 0x2

    aget v6, v3, v4

    cmpl-float v1, v1, v6

    if-lez v1, :cond_38

    goto/16 :goto_3a5

    .line 110
    :cond_38
    iget v1, p0, Lcom/transsion/camera/app/ui/ModeSwitchScroller;->mStartY:F

    aget v6, v3, v5

    cmpg-float v6, v1, v6

    if-ltz v6, :cond_382

    const/4 v6, 0x3

    aget v3, v3, v6

    cmpl-float v1, v1, v3

    if-lez v1, :cond_49

    goto/16 :goto_382

    .line 117
    :cond_49
    iget-boolean v1, p0, Lcom/transsion/camera/app/ui/ModeSwitchScroller;->mStartPull:Z

    if-nez v1, :cond_76

    invoke-direct {p0}, Lcom/transsion/camera/app/ui/ModeSwitchScroller;->canScrolling()Z

    move-result v1

    if-nez v1, :cond_76

    .line 118
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "return pulling mStartPull = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p2, p0, Lcom/transsion/camera/app/ui/ModeSwitchScroller;->mStartPull:Z

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p2, " canScrolling = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/transsion/camera/app/ui/ModeSwitchScroller;->canScrolling()Z

    move-result p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return v2

    .line 121
    :cond_76
    iget-object v0, p0, Lcom/transsion/camera/app/ui/ModeSwitchScroller;->mScreenManager:Lcom/transsion/camera/app/ui/ScreenManager;

    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/ScreenManager;->getScreenFormType()I

    move-result v0

    const/16 v1, 0x10e

    const/16 v3, 0xb4

    const/16 v7, 0x5a

    if-ne v0, v5, :cond_1bc

    .line 122
    iget v0, p0, Lcom/transsion/camera/app/ui/ModeSwitchScroller;->mOrientation:I

    if-eq v0, v7, :cond_170

    if-eq v0, v3, :cond_124

    if-eq v0, v1, :cond_d8

    .line 170
    iget-object v0, p0, Lcom/transsion/camera/app/ui/ModeSwitchScroller;->mScrollHotArea:[F

    aget v1, v0, v5

    iget v3, p0, Lcom/transsion/camera/app/ui/ModeSwitchScroller;->mStartY:F

    cmpg-float v1, v1, v3

    if-gtz v1, :cond_375

    aget v0, v0, v6

    cmpg-float v0, v3, v0

    if-gtz v0, :cond_375

    invoke-static {}, Lcom/transsion/camera/utils/MultiTouchManager;->isButtonDown()Z

    move-result v0

    if-nez v0, :cond_375

    float-to-int p1, p2

    .line 171
    iget p2, p0, Lcom/transsion/camera/app/ui/ModeSwitchScroller;->mScrollTriggerDistance:I

    div-int/2addr p1, p2

    if-lez p1, :cond_bf

    .line 172
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/ModeSwitchScroller;->canScrollToPrevious()Z

    move-result p2

    if-eqz p2, :cond_bf

    iget-boolean p2, p0, Lcom/transsion/camera/app/ui/ModeSwitchScroller;->mStartPull:Z

    if-nez p2, :cond_bf

    .line 173
    iget-object p1, p0, Lcom/transsion/camera/app/ui/ModeSwitchScroller;->mModeScroll:Lcom/transsion/camera/app/ui/ModeSwitchScroller$IModeScrollCallback;

    invoke-interface {p1}, Lcom/transsion/camera/app/ui/ModeSwitchScroller$IModeScrollCallback;->scrollToPrevious()V

    .line 174
    iget-object p1, p0, Lcom/transsion/camera/app/ui/ModeSwitchScroller;->mModeIcon:Lcom/transsion/camera/app/ui/ModeSwitchScroller$IModeScrollCallback;

    invoke-interface {p1}, Lcom/transsion/camera/app/ui/ModeSwitchScroller$IModeScrollCallback;->scrollToPrevious()V

    .line 175
    iput-boolean v5, p0, Lcom/transsion/camera/app/ui/ModeSwitchScroller;->mStartPull:Z

    goto :goto_d7

    :cond_bf
    if-gez p1, :cond_d7

    .line 176
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/ModeSwitchScroller;->canScrollToNext()Z

    move-result p1

    if-eqz p1, :cond_d7

    iget-boolean p1, p0, Lcom/transsion/camera/app/ui/ModeSwitchScroller;->mStartPull:Z

    if-nez p1, :cond_d7

    .line 177
    iget-object p1, p0, Lcom/transsion/camera/app/ui/ModeSwitchScroller;->mModeScroll:Lcom/transsion/camera/app/ui/ModeSwitchScroller$IModeScrollCallback;

    invoke-interface {p1}, Lcom/transsion/camera/app/ui/ModeSwitchScroller$IModeScrollCallback;->scrollToNext()V

    .line 178
    iget-object p1, p0, Lcom/transsion/camera/app/ui/ModeSwitchScroller;->mModeIcon:Lcom/transsion/camera/app/ui/ModeSwitchScroller$IModeScrollCallback;

    invoke-interface {p1}, Lcom/transsion/camera/app/ui/ModeSwitchScroller$IModeScrollCallback;->scrollToNext()V

    .line 179
    iput-boolean v5, p0, Lcom/transsion/camera/app/ui/ModeSwitchScroller;->mStartPull:Z

    :cond_d7
    :goto_d7
    return v2

    .line 154
    :cond_d8
    iget-object v0, p0, Lcom/transsion/camera/app/ui/ModeSwitchScroller;->mScrollHotArea:[F

    aget v1, v0, v2

    iget v3, p0, Lcom/transsion/camera/app/ui/ModeSwitchScroller;->mStartX:F

    cmpg-float v1, v1, v3

    if-gtz v1, :cond_375

    aget v0, v0, v4

    cmpg-float v0, v3, v0

    if-gtz v0, :cond_375

    invoke-static {}, Lcom/transsion/camera/utils/MultiTouchManager;->isButtonDown()Z

    move-result v0

    if-nez v0, :cond_375

    float-to-int p1, p1

    .line 155
    iget p2, p0, Lcom/transsion/camera/app/ui/ModeSwitchScroller;->mScrollTriggerDistance:I

    div-int/2addr p1, p2

    if-lez p1, :cond_10b

    .line 156
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/ModeSwitchScroller;->canScrollToNext()Z

    move-result p2

    if-eqz p2, :cond_10b

    iget-boolean p2, p0, Lcom/transsion/camera/app/ui/ModeSwitchScroller;->mStartPull:Z

    if-nez p2, :cond_10b

    .line 157
    iget-object p1, p0, Lcom/transsion/camera/app/ui/ModeSwitchScroller;->mModeScroll:Lcom/transsion/camera/app/ui/ModeSwitchScroller$IModeScrollCallback;

    invoke-interface {p1}, Lcom/transsion/camera/app/ui/ModeSwitchScroller$IModeScrollCallback;->scrollToNext()V

    .line 158
    iget-object p1, p0, Lcom/transsion/camera/app/ui/ModeSwitchScroller;->mModeIcon:Lcom/transsion/camera/app/ui/ModeSwitchScroller$IModeScrollCallback;

    invoke-interface {p1}, Lcom/transsion/camera/app/ui/ModeSwitchScroller$IModeScrollCallback;->scrollToNext()V

    .line 159
    iput-boolean v5, p0, Lcom/transsion/camera/app/ui/ModeSwitchScroller;->mStartPull:Z

    goto :goto_123

    :cond_10b
    if-gez p1, :cond_123

    .line 160
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/ModeSwitchScroller;->canScrollToPrevious()Z

    move-result p1

    if-eqz p1, :cond_123

    iget-boolean p1, p0, Lcom/transsion/camera/app/ui/ModeSwitchScroller;->mStartPull:Z

    if-nez p1, :cond_123

    .line 161
    iget-object p1, p0, Lcom/transsion/camera/app/ui/ModeSwitchScroller;->mModeScroll:Lcom/transsion/camera/app/ui/ModeSwitchScroller$IModeScrollCallback;

    invoke-interface {p1}, Lcom/transsion/camera/app/ui/ModeSwitchScroller$IModeScrollCallback;->scrollToPrevious()V

    .line 162
    iget-object p1, p0, Lcom/transsion/camera/app/ui/ModeSwitchScroller;->mModeIcon:Lcom/transsion/camera/app/ui/ModeSwitchScroller$IModeScrollCallback;

    invoke-interface {p1}, Lcom/transsion/camera/app/ui/ModeSwitchScroller$IModeScrollCallback;->scrollToPrevious()V

    .line 163
    iput-boolean v5, p0, Lcom/transsion/camera/app/ui/ModeSwitchScroller;->mStartPull:Z

    :cond_123
    :goto_123
    return v2

    .line 139
    :cond_124
    iget-object v0, p0, Lcom/transsion/camera/app/ui/ModeSwitchScroller;->mScrollHotArea:[F

    aget v1, v0, v5

    iget v3, p0, Lcom/transsion/camera/app/ui/ModeSwitchScroller;->mStartY:F

    cmpg-float v1, v1, v3

    if-gtz v1, :cond_375

    aget v0, v0, v6

    cmpg-float v0, v3, v0

    if-gtz v0, :cond_375

    invoke-static {}, Lcom/transsion/camera/utils/MultiTouchManager;->isButtonDown()Z

    move-result v0

    if-nez v0, :cond_375

    float-to-int p1, p2

    .line 140
    iget p2, p0, Lcom/transsion/camera/app/ui/ModeSwitchScroller;->mScrollTriggerDistance:I

    div-int/2addr p1, p2

    if-lez p1, :cond_157

    .line 141
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/ModeSwitchScroller;->canScrollToNext()Z

    move-result p2

    if-eqz p2, :cond_157

    iget-boolean p2, p0, Lcom/transsion/camera/app/ui/ModeSwitchScroller;->mStartPull:Z

    if-nez p2, :cond_157

    .line 142
    iget-object p1, p0, Lcom/transsion/camera/app/ui/ModeSwitchScroller;->mModeScroll:Lcom/transsion/camera/app/ui/ModeSwitchScroller$IModeScrollCallback;

    invoke-interface {p1}, Lcom/transsion/camera/app/ui/ModeSwitchScroller$IModeScrollCallback;->scrollToNext()V

    .line 143
    iget-object p1, p0, Lcom/transsion/camera/app/ui/ModeSwitchScroller;->mModeIcon:Lcom/transsion/camera/app/ui/ModeSwitchScroller$IModeScrollCallback;

    invoke-interface {p1}, Lcom/transsion/camera/app/ui/ModeSwitchScroller$IModeScrollCallback;->scrollToNext()V

    .line 144
    iput-boolean v5, p0, Lcom/transsion/camera/app/ui/ModeSwitchScroller;->mStartPull:Z

    goto :goto_16f

    :cond_157
    if-gez p1, :cond_16f

    .line 145
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/ModeSwitchScroller;->canScrollToPrevious()Z

    move-result p1

    if-eqz p1, :cond_16f

    iget-boolean p1, p0, Lcom/transsion/camera/app/ui/ModeSwitchScroller;->mStartPull:Z

    if-nez p1, :cond_16f

    .line 146
    iget-object p1, p0, Lcom/transsion/camera/app/ui/ModeSwitchScroller;->mModeScroll:Lcom/transsion/camera/app/ui/ModeSwitchScroller$IModeScrollCallback;

    invoke-interface {p1}, Lcom/transsion/camera/app/ui/ModeSwitchScroller$IModeScrollCallback;->scrollToPrevious()V

    .line 147
    iget-object p1, p0, Lcom/transsion/camera/app/ui/ModeSwitchScroller;->mModeIcon:Lcom/transsion/camera/app/ui/ModeSwitchScroller$IModeScrollCallback;

    invoke-interface {p1}, Lcom/transsion/camera/app/ui/ModeSwitchScroller$IModeScrollCallback;->scrollToPrevious()V

    .line 148
    iput-boolean v5, p0, Lcom/transsion/camera/app/ui/ModeSwitchScroller;->mStartPull:Z

    :cond_16f
    :goto_16f
    return v2

    .line 124
    :cond_170
    iget-object v0, p0, Lcom/transsion/camera/app/ui/ModeSwitchScroller;->mScrollHotArea:[F

    aget v1, v0, v2

    iget v3, p0, Lcom/transsion/camera/app/ui/ModeSwitchScroller;->mStartX:F

    cmpg-float v1, v1, v3

    if-gtz v1, :cond_375

    aget v0, v0, v4

    cmpg-float v0, v3, v0

    if-gtz v0, :cond_375

    invoke-static {}, Lcom/transsion/camera/utils/MultiTouchManager;->isButtonDown()Z

    move-result v0

    if-nez v0, :cond_375

    float-to-int p1, p1

    .line 125
    iget p2, p0, Lcom/transsion/camera/app/ui/ModeSwitchScroller;->mScrollTriggerDistance:I

    div-int/2addr p1, p2

    if-lez p1, :cond_1a3

    .line 126
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/ModeSwitchScroller;->canScrollToPrevious()Z

    move-result p2

    if-eqz p2, :cond_1a3

    iget-boolean p2, p0, Lcom/transsion/camera/app/ui/ModeSwitchScroller;->mStartPull:Z

    if-nez p2, :cond_1a3

    .line 127
    iget-object p1, p0, Lcom/transsion/camera/app/ui/ModeSwitchScroller;->mModeScroll:Lcom/transsion/camera/app/ui/ModeSwitchScroller$IModeScrollCallback;

    invoke-interface {p1}, Lcom/transsion/camera/app/ui/ModeSwitchScroller$IModeScrollCallback;->scrollToPrevious()V

    .line 128
    iget-object p1, p0, Lcom/transsion/camera/app/ui/ModeSwitchScroller;->mModeIcon:Lcom/transsion/camera/app/ui/ModeSwitchScroller$IModeScrollCallback;

    invoke-interface {p1}, Lcom/transsion/camera/app/ui/ModeSwitchScroller$IModeScrollCallback;->scrollToPrevious()V

    .line 129
    iput-boolean v5, p0, Lcom/transsion/camera/app/ui/ModeSwitchScroller;->mStartPull:Z

    goto :goto_1bb

    :cond_1a3
    if-gez p1, :cond_1bb

    .line 130
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/ModeSwitchScroller;->canScrollToNext()Z

    move-result p1

    if-eqz p1, :cond_1bb

    iget-boolean p1, p0, Lcom/transsion/camera/app/ui/ModeSwitchScroller;->mStartPull:Z

    if-nez p1, :cond_1bb

    .line 131
    iget-object p1, p0, Lcom/transsion/camera/app/ui/ModeSwitchScroller;->mModeScroll:Lcom/transsion/camera/app/ui/ModeSwitchScroller$IModeScrollCallback;

    invoke-interface {p1}, Lcom/transsion/camera/app/ui/ModeSwitchScroller$IModeScrollCallback;->scrollToNext()V

    .line 132
    iget-object p1, p0, Lcom/transsion/camera/app/ui/ModeSwitchScroller;->mModeIcon:Lcom/transsion/camera/app/ui/ModeSwitchScroller$IModeScrollCallback;

    invoke-interface {p1}, Lcom/transsion/camera/app/ui/ModeSwitchScroller$IModeScrollCallback;->scrollToNext()V

    .line 133
    iput-boolean v5, p0, Lcom/transsion/camera/app/ui/ModeSwitchScroller;->mStartPull:Z

    :cond_1bb
    :goto_1bb
    return v2

    .line 185
    :cond_1bc
    iget-object v0, p0, Lcom/transsion/camera/app/ui/ModeSwitchScroller;->mScreenManager:Lcom/transsion/camera/app/ui/ScreenManager;

    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/ScreenManager;->getScreenFormType()I

    move-result v0

    const/4 v8, 0x7

    if-ne v0, v8, :cond_265

    .line 186
    iget v0, p0, Lcom/transsion/camera/app/ui/ModeSwitchScroller;->mOrientation:I

    if-eq v0, v7, :cond_219

    if-eq v0, v3, :cond_219

    if-eq v0, v1, :cond_219

    .line 206
    iget-object v0, p0, Lcom/transsion/camera/app/ui/ModeSwitchScroller;->mScrollHotArea:[F

    aget v1, v0, v5

    iget v3, p0, Lcom/transsion/camera/app/ui/ModeSwitchScroller;->mStartY:F

    cmpg-float v1, v1, v3

    if-gtz v1, :cond_375

    aget v0, v0, v6

    cmpg-float v0, v3, v0

    if-gtz v0, :cond_375

    invoke-static {}, Lcom/transsion/camera/utils/MultiTouchManager;->isButtonDown()Z

    move-result v0

    if-nez v0, :cond_375

    float-to-int p1, p2

    .line 207
    iget p2, p0, Lcom/transsion/camera/app/ui/ModeSwitchScroller;->mScrollTriggerDistance:I

    div-int/2addr p1, p2

    if-lez p1, :cond_200

    .line 208
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/ModeSwitchScroller;->canScrollToPrevious()Z

    move-result p2

    if-eqz p2, :cond_200

    iget-boolean p2, p0, Lcom/transsion/camera/app/ui/ModeSwitchScroller;->mStartPull:Z

    if-nez p2, :cond_200

    .line 209
    iget-object p1, p0, Lcom/transsion/camera/app/ui/ModeSwitchScroller;->mModeScroll:Lcom/transsion/camera/app/ui/ModeSwitchScroller$IModeScrollCallback;

    invoke-interface {p1}, Lcom/transsion/camera/app/ui/ModeSwitchScroller$IModeScrollCallback;->scrollToPrevious()V

    .line 210
    iget-object p1, p0, Lcom/transsion/camera/app/ui/ModeSwitchScroller;->mModeIcon:Lcom/transsion/camera/app/ui/ModeSwitchScroller$IModeScrollCallback;

    invoke-interface {p1}, Lcom/transsion/camera/app/ui/ModeSwitchScroller$IModeScrollCallback;->scrollToPrevious()V

    .line 211
    iput-boolean v5, p0, Lcom/transsion/camera/app/ui/ModeSwitchScroller;->mStartPull:Z

    goto :goto_218

    :cond_200
    if-gez p1, :cond_218

    .line 212
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/ModeSwitchScroller;->canScrollToNext()Z

    move-result p1

    if-eqz p1, :cond_218

    iget-boolean p1, p0, Lcom/transsion/camera/app/ui/ModeSwitchScroller;->mStartPull:Z

    if-nez p1, :cond_218

    .line 213
    iget-object p1, p0, Lcom/transsion/camera/app/ui/ModeSwitchScroller;->mModeScroll:Lcom/transsion/camera/app/ui/ModeSwitchScroller$IModeScrollCallback;

    invoke-interface {p1}, Lcom/transsion/camera/app/ui/ModeSwitchScroller$IModeScrollCallback;->scrollToNext()V

    .line 214
    iget-object p1, p0, Lcom/transsion/camera/app/ui/ModeSwitchScroller;->mModeIcon:Lcom/transsion/camera/app/ui/ModeSwitchScroller$IModeScrollCallback;

    invoke-interface {p1}, Lcom/transsion/camera/app/ui/ModeSwitchScroller$IModeScrollCallback;->scrollToNext()V

    .line 215
    iput-boolean v5, p0, Lcom/transsion/camera/app/ui/ModeSwitchScroller;->mStartPull:Z

    :cond_218
    :goto_218
    return v2

    .line 190
    :cond_219
    iget-object v0, p0, Lcom/transsion/camera/app/ui/ModeSwitchScroller;->mScrollHotArea:[F

    aget v1, v0, v5

    iget v3, p0, Lcom/transsion/camera/app/ui/ModeSwitchScroller;->mStartY:F

    cmpg-float v1, v1, v3

    if-gtz v1, :cond_375

    aget v0, v0, v6

    cmpg-float v0, v3, v0

    if-gtz v0, :cond_375

    invoke-static {}, Lcom/transsion/camera/utils/MultiTouchManager;->isButtonDown()Z

    move-result v0

    if-nez v0, :cond_375

    float-to-int p1, p2

    .line 191
    iget p2, p0, Lcom/transsion/camera/app/ui/ModeSwitchScroller;->mScrollTriggerDistance:I

    div-int/2addr p1, p2

    if-lez p1, :cond_24c

    .line 192
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/ModeSwitchScroller;->canScrollToNext()Z

    move-result p2

    if-eqz p2, :cond_24c

    iget-boolean p2, p0, Lcom/transsion/camera/app/ui/ModeSwitchScroller;->mStartPull:Z

    if-nez p2, :cond_24c

    .line 193
    iget-object p1, p0, Lcom/transsion/camera/app/ui/ModeSwitchScroller;->mModeScroll:Lcom/transsion/camera/app/ui/ModeSwitchScroller$IModeScrollCallback;

    invoke-interface {p1}, Lcom/transsion/camera/app/ui/ModeSwitchScroller$IModeScrollCallback;->scrollToNext()V

    .line 194
    iget-object p1, p0, Lcom/transsion/camera/app/ui/ModeSwitchScroller;->mModeIcon:Lcom/transsion/camera/app/ui/ModeSwitchScroller$IModeScrollCallback;

    invoke-interface {p1}, Lcom/transsion/camera/app/ui/ModeSwitchScroller$IModeScrollCallback;->scrollToNext()V

    .line 195
    iput-boolean v5, p0, Lcom/transsion/camera/app/ui/ModeSwitchScroller;->mStartPull:Z

    goto :goto_264

    :cond_24c
    if-gez p1, :cond_264

    .line 196
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/ModeSwitchScroller;->canScrollToPrevious()Z

    move-result p1

    if-eqz p1, :cond_264

    iget-boolean p1, p0, Lcom/transsion/camera/app/ui/ModeSwitchScroller;->mStartPull:Z

    if-nez p1, :cond_264

    .line 197
    iget-object p1, p0, Lcom/transsion/camera/app/ui/ModeSwitchScroller;->mModeScroll:Lcom/transsion/camera/app/ui/ModeSwitchScroller$IModeScrollCallback;

    invoke-interface {p1}, Lcom/transsion/camera/app/ui/ModeSwitchScroller$IModeScrollCallback;->scrollToPrevious()V

    .line 198
    iget-object p1, p0, Lcom/transsion/camera/app/ui/ModeSwitchScroller;->mModeIcon:Lcom/transsion/camera/app/ui/ModeSwitchScroller$IModeScrollCallback;

    invoke-interface {p1}, Lcom/transsion/camera/app/ui/ModeSwitchScroller$IModeScrollCallback;->scrollToPrevious()V

    .line 199
    iput-boolean v5, p0, Lcom/transsion/camera/app/ui/ModeSwitchScroller;->mStartPull:Z

    :cond_264
    :goto_264
    return v2

    .line 221
    :cond_265
    iget-object v0, p0, Lcom/transsion/camera/app/ui/ModeSwitchScroller;->mScreenManager:Lcom/transsion/camera/app/ui/ScreenManager;

    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/ScreenManager;->getScreenFormType()I

    move-result v0

    if-eqz v0, :cond_329

    iget-object v0, p0, Lcom/transsion/camera/app/ui/ModeSwitchScroller;->mScreenManager:Lcom/transsion/camera/app/ui/ScreenManager;

    .line 222
    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/ScreenManager;->getScreenFormType()I

    move-result v0

    if-eq v0, v4, :cond_329

    iget-object v0, p0, Lcom/transsion/camera/app/ui/ModeSwitchScroller;->mScreenManager:Lcom/transsion/camera/app/ui/ScreenManager;

    .line 223
    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/ScreenManager;->getScreenFormType()I

    move-result v0

    if-ne v0, v6, :cond_27f

    goto/16 :goto_329

    .line 237
    :cond_27f
    iget-object v0, p0, Lcom/transsion/camera/app/ui/ModeSwitchScroller;->mScreenManager:Lcom/transsion/camera/app/ui/ScreenManager;

    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/ScreenManager;->getScreenFormType()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_2d4

    .line 238
    iget-object v0, p0, Lcom/transsion/camera/app/ui/ModeSwitchScroller;->mScrollHotArea:[F

    aget v1, v0, v5

    iget v3, p0, Lcom/transsion/camera/app/ui/ModeSwitchScroller;->mStartY:F

    cmpg-float v1, v1, v3

    if-gtz v1, :cond_375

    aget v0, v0, v6

    cmpg-float v0, v3, v0

    if-gtz v0, :cond_375

    invoke-static {}, Lcom/transsion/camera/utils/MultiTouchManager;->isButtonDown()Z

    move-result v0

    if-nez v0, :cond_375

    float-to-int p1, p2

    .line 239
    iget p2, p0, Lcom/transsion/camera/app/ui/ModeSwitchScroller;->mScrollTriggerDistance:I

    div-int/2addr p1, p2

    if-lez p1, :cond_2bb

    .line 240
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/ModeSwitchScroller;->canScrollToPrevious()Z

    move-result p2

    if-eqz p2, :cond_2bb

    iget-boolean p2, p0, Lcom/transsion/camera/app/ui/ModeSwitchScroller;->mStartPull:Z

    if-nez p2, :cond_2bb

    .line 241
    iget-object p1, p0, Lcom/transsion/camera/app/ui/ModeSwitchScroller;->mModeScroll:Lcom/transsion/camera/app/ui/ModeSwitchScroller$IModeScrollCallback;

    invoke-interface {p1}, Lcom/transsion/camera/app/ui/ModeSwitchScroller$IModeScrollCallback;->scrollToPrevious()V

    .line 242
    iget-object p1, p0, Lcom/transsion/camera/app/ui/ModeSwitchScroller;->mModeIcon:Lcom/transsion/camera/app/ui/ModeSwitchScroller$IModeScrollCallback;

    invoke-interface {p1}, Lcom/transsion/camera/app/ui/ModeSwitchScroller$IModeScrollCallback;->scrollToPrevious()V

    .line 243
    iput-boolean v5, p0, Lcom/transsion/camera/app/ui/ModeSwitchScroller;->mStartPull:Z

    goto :goto_2d3

    :cond_2bb
    if-gez p1, :cond_2d3

    .line 244
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/ModeSwitchScroller;->canScrollToNext()Z

    move-result p1

    if-eqz p1, :cond_2d3

    iget-boolean p1, p0, Lcom/transsion/camera/app/ui/ModeSwitchScroller;->mStartPull:Z

    if-nez p1, :cond_2d3

    .line 245
    iget-object p1, p0, Lcom/transsion/camera/app/ui/ModeSwitchScroller;->mModeScroll:Lcom/transsion/camera/app/ui/ModeSwitchScroller$IModeScrollCallback;

    invoke-interface {p1}, Lcom/transsion/camera/app/ui/ModeSwitchScroller$IModeScrollCallback;->scrollToNext()V

    .line 246
    iget-object p1, p0, Lcom/transsion/camera/app/ui/ModeSwitchScroller;->mModeIcon:Lcom/transsion/camera/app/ui/ModeSwitchScroller$IModeScrollCallback;

    invoke-interface {p1}, Lcom/transsion/camera/app/ui/ModeSwitchScroller$IModeScrollCallback;->scrollToNext()V

    .line 247
    iput-boolean v5, p0, Lcom/transsion/camera/app/ui/ModeSwitchScroller;->mStartPull:Z

    :cond_2d3
    :goto_2d3
    return v2

    .line 251
    :cond_2d4
    iget-object v0, p0, Lcom/transsion/camera/app/ui/ModeSwitchScroller;->mScreenManager:Lcom/transsion/camera/app/ui/ScreenManager;

    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/ScreenManager;->getScreenFormType()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_375

    .line 252
    iget-object v0, p0, Lcom/transsion/camera/app/ui/ModeSwitchScroller;->mScrollHotArea:[F

    aget v1, v0, v5

    iget v3, p0, Lcom/transsion/camera/app/ui/ModeSwitchScroller;->mStartY:F

    cmpg-float v1, v1, v3

    if-gtz v1, :cond_375

    aget v0, v0, v6

    cmpg-float v0, v3, v0

    if-gtz v0, :cond_375

    invoke-static {}, Lcom/transsion/camera/utils/MultiTouchManager;->isButtonDown()Z

    move-result v0

    if-nez v0, :cond_375

    float-to-int p1, p2

    .line 253
    iget p2, p0, Lcom/transsion/camera/app/ui/ModeSwitchScroller;->mScrollTriggerDistance:I

    div-int/2addr p1, p2

    if-lez p1, :cond_310

    .line 254
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/ModeSwitchScroller;->canScrollToNext()Z

    move-result p2

    if-eqz p2, :cond_310

    iget-boolean p2, p0, Lcom/transsion/camera/app/ui/ModeSwitchScroller;->mStartPull:Z

    if-nez p2, :cond_310

    .line 255
    iget-object p1, p0, Lcom/transsion/camera/app/ui/ModeSwitchScroller;->mModeScroll:Lcom/transsion/camera/app/ui/ModeSwitchScroller$IModeScrollCallback;

    invoke-interface {p1}, Lcom/transsion/camera/app/ui/ModeSwitchScroller$IModeScrollCallback;->scrollToNext()V

    .line 256
    iget-object p1, p0, Lcom/transsion/camera/app/ui/ModeSwitchScroller;->mModeIcon:Lcom/transsion/camera/app/ui/ModeSwitchScroller$IModeScrollCallback;

    invoke-interface {p1}, Lcom/transsion/camera/app/ui/ModeSwitchScroller$IModeScrollCallback;->scrollToNext()V

    .line 257
    iput-boolean v5, p0, Lcom/transsion/camera/app/ui/ModeSwitchScroller;->mStartPull:Z

    goto :goto_328

    :cond_310
    if-gez p1, :cond_328

    .line 258
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/ModeSwitchScroller;->canScrollToPrevious()Z

    move-result p1

    if-eqz p1, :cond_328

    iget-boolean p1, p0, Lcom/transsion/camera/app/ui/ModeSwitchScroller;->mStartPull:Z

    if-nez p1, :cond_328

    .line 259
    iget-object p1, p0, Lcom/transsion/camera/app/ui/ModeSwitchScroller;->mModeScroll:Lcom/transsion/camera/app/ui/ModeSwitchScroller$IModeScrollCallback;

    invoke-interface {p1}, Lcom/transsion/camera/app/ui/ModeSwitchScroller$IModeScrollCallback;->scrollToPrevious()V

    .line 260
    iget-object p1, p0, Lcom/transsion/camera/app/ui/ModeSwitchScroller;->mModeIcon:Lcom/transsion/camera/app/ui/ModeSwitchScroller$IModeScrollCallback;

    invoke-interface {p1}, Lcom/transsion/camera/app/ui/ModeSwitchScroller$IModeScrollCallback;->scrollToPrevious()V

    .line 261
    iput-boolean v5, p0, Lcom/transsion/camera/app/ui/ModeSwitchScroller;->mStartPull:Z

    :cond_328
    :goto_328
    return v2

    .line 224
    :cond_329
    :goto_329
    iget-object v0, p0, Lcom/transsion/camera/app/ui/ModeSwitchScroller;->mScrollHotArea:[F

    aget v1, v0, v2

    iget v3, p0, Lcom/transsion/camera/app/ui/ModeSwitchScroller;->mStartX:F

    cmpg-float v1, v1, v3

    if-gtz v1, :cond_375

    aget v0, v0, v4

    cmpg-float v0, v3, v0

    if-gtz v0, :cond_375

    invoke-static {}, Lcom/transsion/camera/utils/MultiTouchManager;->isButtonDown()Z

    move-result v0

    if-nez v0, :cond_375

    float-to-int p1, p1

    .line 225
    iget p2, p0, Lcom/transsion/camera/app/ui/ModeSwitchScroller;->mScrollTriggerDistance:I

    div-int/2addr p1, p2

    if-lez p1, :cond_35c

    .line 226
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/ModeSwitchScroller;->canScrollToNext()Z

    move-result p2

    if-eqz p2, :cond_35c

    iget-boolean p2, p0, Lcom/transsion/camera/app/ui/ModeSwitchScroller;->mStartPull:Z

    if-nez p2, :cond_35c

    .line 227
    iget-object p1, p0, Lcom/transsion/camera/app/ui/ModeSwitchScroller;->mModeScroll:Lcom/transsion/camera/app/ui/ModeSwitchScroller$IModeScrollCallback;

    invoke-interface {p1}, Lcom/transsion/camera/app/ui/ModeSwitchScroller$IModeScrollCallback;->scrollToNext()V

    .line 228
    iget-object p1, p0, Lcom/transsion/camera/app/ui/ModeSwitchScroller;->mModeIcon:Lcom/transsion/camera/app/ui/ModeSwitchScroller$IModeScrollCallback;

    invoke-interface {p1}, Lcom/transsion/camera/app/ui/ModeSwitchScroller$IModeScrollCallback;->scrollToNext()V

    .line 229
    iput-boolean v5, p0, Lcom/transsion/camera/app/ui/ModeSwitchScroller;->mStartPull:Z

    goto :goto_374

    :cond_35c
    if-gez p1, :cond_374

    .line 230
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/ModeSwitchScroller;->canScrollToPrevious()Z

    move-result p1

    if-eqz p1, :cond_374

    iget-boolean p1, p0, Lcom/transsion/camera/app/ui/ModeSwitchScroller;->mStartPull:Z

    if-nez p1, :cond_374

    .line 231
    iget-object p1, p0, Lcom/transsion/camera/app/ui/ModeSwitchScroller;->mModeScroll:Lcom/transsion/camera/app/ui/ModeSwitchScroller$IModeScrollCallback;

    invoke-interface {p1}, Lcom/transsion/camera/app/ui/ModeSwitchScroller$IModeScrollCallback;->scrollToPrevious()V

    .line 232
    iget-object p1, p0, Lcom/transsion/camera/app/ui/ModeSwitchScroller;->mModeIcon:Lcom/transsion/camera/app/ui/ModeSwitchScroller$IModeScrollCallback;

    invoke-interface {p1}, Lcom/transsion/camera/app/ui/ModeSwitchScroller$IModeScrollCallback;->scrollToPrevious()V

    .line 233
    iput-boolean v5, p0, Lcom/transsion/camera/app/ui/ModeSwitchScroller;->mStartPull:Z

    :cond_374
    :goto_374
    return v2

    .line 266
    :cond_375
    iput-boolean v5, p0, Lcom/transsion/camera/app/ui/ModeSwitchScroller;->mStartPull:Z

    .line 267
    iget-object v0, p0, Lcom/transsion/camera/app/ui/ModeSwitchScroller;->mModeScroll:Lcom/transsion/camera/app/ui/ModeSwitchScroller$IModeScrollCallback;

    invoke-interface {v0, p1, p2}, Lcom/transsion/camera/app/ui/ModeSwitchScroller$IModeScrollCallback;->scrolling(FF)V

    .line 268
    iget-object p0, p0, Lcom/transsion/camera/app/ui/ModeSwitchScroller;->mModeIcon:Lcom/transsion/camera/app/ui/ModeSwitchScroller$IModeScrollCallback;

    invoke-interface {p0, p1, p2}, Lcom/transsion/camera/app/ui/ModeSwitchScroller$IModeScrollCallback;->scrolling(FF)V

    return v2

    .line 111
    :cond_382
    :goto_382
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "The starting point exceeds hot area: mStartY = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/transsion/camera/app/ui/ModeSwitchScroller;->mStartY:F

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 112
    iput-boolean v5, p0, Lcom/transsion/camera/app/ui/ModeSwitchScroller;->mStartPull:Z

    .line 113
    iget-object v0, p0, Lcom/transsion/camera/app/ui/ModeSwitchScroller;->mModeScroll:Lcom/transsion/camera/app/ui/ModeSwitchScroller$IModeScrollCallback;

    invoke-interface {v0, p1, p2}, Lcom/transsion/camera/app/ui/ModeSwitchScroller$IModeScrollCallback;->scrolling(FF)V

    .line 114
    iget-object p0, p0, Lcom/transsion/camera/app/ui/ModeSwitchScroller;->mModeIcon:Lcom/transsion/camera/app/ui/ModeSwitchScroller$IModeScrollCallback;

    invoke-interface {p0, p1, p2}, Lcom/transsion/camera/app/ui/ModeSwitchScroller$IModeScrollCallback;->scrolling(FF)V

    return v2

    .line 104
    :cond_3a5
    :goto_3a5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "The starting point exceeds hot area: mStartX = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/transsion/camera/app/ui/ModeSwitchScroller;->mStartX:F

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 105
    iput-boolean v5, p0, Lcom/transsion/camera/app/ui/ModeSwitchScroller;->mStartPull:Z

    .line 106
    iget-object v0, p0, Lcom/transsion/camera/app/ui/ModeSwitchScroller;->mModeScroll:Lcom/transsion/camera/app/ui/ModeSwitchScroller$IModeScrollCallback;

    invoke-interface {v0, p1, p2}, Lcom/transsion/camera/app/ui/ModeSwitchScroller$IModeScrollCallback;->scrolling(FF)V

    .line 107
    iget-object p0, p0, Lcom/transsion/camera/app/ui/ModeSwitchScroller;->mModeIcon:Lcom/transsion/camera/app/ui/ModeSwitchScroller$IModeScrollCallback;

    invoke-interface {p0, p1, p2}, Lcom/transsion/camera/app/ui/ModeSwitchScroller$IModeScrollCallback;->scrolling(FF)V

    return v2
.end method

.method public pushing(FF)Z
    .registers 6

    .line 291
    sget-object v0, Lcom/transsion/camera/app/ui/ModeSwitchScroller;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[pushing] xMoveDistance = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, ", yMoveDistance = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 292
    invoke-super {p0, p1, p2}, Lcom/transsion/camera/app/ui/scroll/IScrollOperation;->pushing(FF)Z

    move-result p0

    return p0
.end method

.method public setEnable(Z)V
    .registers 2

    .line 301
    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/ModeSwitchScroller;->mIsModeSwitchEnable:Z

    return-void
.end method

.method public setModeIconLayout(Lcom/transsion/camera/app/ui/ModeSwitchScroller$IModeScrollCallback;)V
    .registers 2

    .line 309
    iput-object p1, p0, Lcom/transsion/camera/app/ui/ModeSwitchScroller;->mModeIcon:Lcom/transsion/camera/app/ui/ModeSwitchScroller$IModeScrollCallback;

    return-void
.end method

.method public setModeScroll(Lcom/transsion/camera/app/ui/ModeSwitchScroller$IModeScrollCallback;)V
    .registers 2

    .line 305
    iput-object p1, p0, Lcom/transsion/camera/app/ui/ModeSwitchScroller;->mModeScroll:Lcom/transsion/camera/app/ui/ModeSwitchScroller$IModeScrollCallback;

    return-void
.end method

.method public startPulling()V
    .registers 2

    const/4 v0, 0x1

    .line 93
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/ModeSwitchScroller;->mMultiTouch:Z

    .line 94
    invoke-super {p0}, Lcom/transsion/camera/app/ui/scroll/IScrollOperation;->startPulling()V

    return-void
.end method

.method public startPushing()V
    .registers 1

    .line 286
    invoke-super {p0}, Lcom/transsion/camera/app/ui/scroll/IScrollOperation;->startPushing()V

    return-void
.end method

.method public stopPulling()Z
    .registers 3

    .line 274
    sget-object v0, Lcom/transsion/camera/app/ui/ModeSwitchScroller;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "stopPulling"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 275
    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/ModeSwitchScroller;->mStartPull:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_18

    .line 276
    iget-object v0, p0, Lcom/transsion/camera/app/ui/ModeSwitchScroller;->mModeScroll:Lcom/transsion/camera/app/ui/ModeSwitchScroller$IModeScrollCallback;

    invoke-interface {v0}, Lcom/transsion/camera/app/ui/ModeSwitchScroller$IModeScrollCallback;->stopScroll()V

    .line 277
    iget-object v0, p0, Lcom/transsion/camera/app/ui/ModeSwitchScroller;->mModeIcon:Lcom/transsion/camera/app/ui/ModeSwitchScroller$IModeScrollCallback;

    invoke-interface {v0}, Lcom/transsion/camera/app/ui/ModeSwitchScroller$IModeScrollCallback;->stopScroll()V

    .line 278
    iput-boolean v1, p0, Lcom/transsion/camera/app/ui/ModeSwitchScroller;->mStartPull:Z

    .line 280
    :cond_18
    iput-boolean v1, p0, Lcom/transsion/camera/app/ui/ModeSwitchScroller;->mMultiTouch:Z

    return v1
.end method

.method public stopPushing()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method
