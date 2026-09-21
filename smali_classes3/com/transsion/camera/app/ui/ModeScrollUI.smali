.class public Lcom/transsion/camera/app/ui/ModeScrollUI;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/app/ui/IModeScrollUI;
.implements Lcom/transsion/camera/app/ui/ModeHorizontalScroll2$IModeScrollCallback;
.implements Lcom/transsion/camera/app/ui/ModeSwitchScroller$IModeScrollCallback;


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private final MAX_TAB_MODE_COUNT:I

.field private mContext:Landroid/content/Context;

.field private mInScrolling:Z

.field private mListener:Lcom/transsion/camera/app/ui/IModeScrollUI$ModeScrollListener;

.field private final mModeOrderProvider:Lcom/transsion/camera/app/mode/ModeOrderProvider;

.field private final mModeSwitchScroller:Lcom/transsion/camera/app/ui/ModeSwitchScroller;

.field private mModeUIItems:Ljava/util/List;

.field private mScrollModeIndex:I

.field private mScrollUIVisible:Z

.field private mSelectedModeName:Ljava/lang/String;


# direct methods
.method public static synthetic $r8$lambda$l7TTefxgGrYW2t3G7zKK5_WuDRA(Lcom/transsion/camera/app/ui/ModeScrollUI;Lcom/transsion/camera/app/common/FeatureResource;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/ModeScrollUI;->lambda$setModeList$0(Lcom/transsion/camera/app/common/FeatureResource;)V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 22
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "ModeScrollUI"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/app/ui/ModeScrollUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Lcom/transsion/camera/app/ui/ModeSwitchScroller;Lcom/transsion/camera/app/ui/ModeHorizontalScroll2;Lcom/transsion/camera/app/ui/ScreenManager;Landroid/content/Context;Lcom/transsion/camera/app/mode/ModeOrderProvider;)V
    .registers 6

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/transsion/camera/app/ui/ModeScrollUI;->mModeUIItems:Ljava/util/List;

    const/4 p2, -0x1

    .line 28
    iput p2, p0, Lcom/transsion/camera/app/ui/ModeScrollUI;->mScrollModeIndex:I

    const/4 p2, 0x0

    .line 30
    iput-boolean p2, p0, Lcom/transsion/camera/app/ui/ModeScrollUI;->mInScrolling:Z

    .line 39
    iput-object p1, p0, Lcom/transsion/camera/app/ui/ModeScrollUI;->mModeSwitchScroller:Lcom/transsion/camera/app/ui/ModeSwitchScroller;

    .line 40
    iput-object p4, p0, Lcom/transsion/camera/app/ui/ModeScrollUI;->mContext:Landroid/content/Context;

    .line 41
    iput-object p5, p0, Lcom/transsion/camera/app/ui/ModeScrollUI;->mModeOrderProvider:Lcom/transsion/camera/app/mode/ModeOrderProvider;

    .line 42
    invoke-virtual {p5}, Lcom/transsion/camera/app/mode/ModeOrderProvider;->getConfig()Lcom/transsion/camera/app/mode/ModePickerConfig;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/camera/app/mode/ModePickerConfig;->defaultModeCountInTab()I

    move-result p1

    iput p1, p0, Lcom/transsion/camera/app/ui/ModeScrollUI;->MAX_TAB_MODE_COUNT:I

    return-void
.end method

.method private synthetic lambda$setModeList$0(Lcom/transsion/camera/app/common/FeatureResource;)V
    .registers 4

    .line 55
    iget-object p0, p0, Lcom/transsion/camera/app/ui/ModeScrollUI;->mModeUIItems:Ljava/util/List;

    new-instance v0, Lcom/transsion/camera/app/ui/mode/ModeUIItem;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/transsion/camera/app/ui/mode/ModeUIItem;-><init>(Lcom/transsion/camera/app/common/FeatureResource;Z)V

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private modeChanged(I)Z
    .registers 2

    .line 167
    iget p0, p0, Lcom/transsion/camera/app/ui/ModeScrollUI;->mScrollModeIndex:I

    if-eq p0, p1, :cond_6

    const/4 p0, 0x1

    return p0

    :cond_6
    const/4 p0, 0x0

    return p0
.end method

.method private modeIndex(Ljava/lang/String;)I
    .registers 4

    const/4 v0, 0x0

    .line 149
    :goto_1
    iget-object v1, p0, Lcom/transsion/camera/app/ui/ModeScrollUI;->mModeUIItems:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1f

    .line 150
    iget-object v1, p0, Lcom/transsion/camera/app/ui/ModeScrollUI;->mModeUIItems:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/camera/app/ui/mode/ModeUIItem;

    invoke-virtual {v1}, Lcom/transsion/camera/app/ui/mode/ModeUIItem;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1c

    return v0

    :cond_1c
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1f
    const/4 p0, -0x1

    return p0
.end method

.method private scrollStarted()V
    .registers 1

    .line 93
    iget-object p0, p0, Lcom/transsion/camera/app/ui/ModeScrollUI;->mListener:Lcom/transsion/camera/app/ui/IModeScrollUI$ModeScrollListener;

    if-eqz p0, :cond_7

    .line 94
    invoke-interface {p0}, Lcom/transsion/camera/app/ui/IModeScrollUI$ModeScrollListener;->scrollStarted()V

    :cond_7
    return-void
.end method

.method private scrollStopped(I)V
    .registers 2

    .line 105
    iget-object p0, p0, Lcom/transsion/camera/app/ui/ModeScrollUI;->mListener:Lcom/transsion/camera/app/ui/IModeScrollUI$ModeScrollListener;

    if-eqz p0, :cond_8

    .line 106
    invoke-interface {p0, p1}, Lcom/transsion/camera/app/ui/IModeScrollUI$ModeScrollListener;->scrollStopped(I)V

    return-void

    .line 108
    :cond_8
    sget-object p0, Lcom/transsion/camera/app/ui/ModeScrollUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "[scrollStopped] mListener = null, return"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method private scrollTo(I)V
    .registers 3

    .line 158
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/ModeScrollUI;->modeChanged(I)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 159
    iget v0, p0, Lcom/transsion/camera/app/ui/ModeScrollUI;->mScrollModeIndex:I

    invoke-direct {p0, v0, p1}, Lcom/transsion/camera/app/ui/ModeScrollUI;->slideMode(II)V

    .line 160
    iput p1, p0, Lcom/transsion/camera/app/ui/ModeScrollUI;->mScrollModeIndex:I

    .line 161
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/ModeScrollUI;->updateScrollIndex(I)V

    .line 162
    iget-object v0, p0, Lcom/transsion/camera/app/ui/ModeScrollUI;->mModeUIItems:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/transsion/camera/app/ui/mode/ModeUIItem;

    invoke-virtual {p1}, Lcom/transsion/camera/app/ui/mode/ModeUIItem;->getName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/app/ui/ModeScrollUI;->mSelectedModeName:Ljava/lang/String;

    :cond_1e
    return-void
.end method

.method private showMode(I)V
    .registers 3

    .line 127
    sget-object p1, Lcom/transsion/camera/app/ui/ModeScrollUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "scrollUIAnimator showMode"

    invoke-static {p1, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 128
    iget-boolean p1, p0, Lcom/transsion/camera/app/ui/ModeScrollUI;->mScrollUIVisible:Z

    if-nez p1, :cond_11

    const/4 p1, 0x1

    .line 129
    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/ModeScrollUI;->mScrollUIVisible:Z

    .line 130
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/ModeScrollUI;->scrollStarted()V

    :cond_11
    return-void
.end method

.method private slideMode(II)V
    .registers 3

    .line 135
    sget-object p1, Lcom/transsion/camera/app/ui/ModeScrollUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p2, "scrollUIAnimator slideMode start"

    invoke-static {p1, p2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 136
    iget-boolean p2, p0, Lcom/transsion/camera/app/ui/ModeScrollUI;->mScrollUIVisible:Z

    if-nez p2, :cond_11

    const/4 p2, 0x1

    .line 137
    iput-boolean p2, p0, Lcom/transsion/camera/app/ui/ModeScrollUI;->mScrollUIVisible:Z

    .line 138
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/ModeScrollUI;->scrollStarted()V

    .line 140
    :cond_11
    const-string p2, "slideMode, startVibrator"

    invoke-static {p1, p2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 141
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/ModeScrollUI;->startVibrator()V

    return-void
.end method

.method private startVibrator()V
    .registers 4

    .line 240
    invoke-static {}, Lcom/transsion/camera/app/common/vibrate/VibratorController;->getInstance()Lcom/transsion/camera/app/common/vibrate/VibratorController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/vibrate/VibratorController;->isSupport()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 241
    invoke-static {}, Lcom/transsion/camera/app/common/vibrate/VibratorController;->getInstance()Lcom/transsion/camera/app/common/vibrate/VibratorController;

    move-result-object p0

    const-string v0, "Cam_mode_sw.he"

    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/common/vibrate/VibratorController;->doVibrate(Ljava/lang/String;)V

    return-void

    .line 244
    :cond_14
    sget-object v0, Lcom/transsion/camera/app/ui/ModeScrollUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "startVibrator, use os vibrator"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 245
    iget-object p0, p0, Lcom/transsion/camera/app/ui/ModeScrollUI;->mContext:Landroid/content/Context;

    const-string/jumbo v0, "vibrator"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/Vibrator;

    const-wide/16 v0, 0x32

    const/4 v2, -0x1

    .line 246
    invoke-static {v0, v1, v2}, Landroid/os/VibrationEffect;->createOneShot(JI)Landroid/os/VibrationEffect;

    move-result-object v0

    if-eqz p0, :cond_32

    .line 248
    invoke-virtual {p0, v0}, Landroid/os/Vibrator;->vibrate(Landroid/os/VibrationEffect;)V

    :cond_32
    return-void
.end method

.method private updateScrollIndex(I)V
    .registers 2

    .line 99
    iget-object p0, p0, Lcom/transsion/camera/app/ui/ModeScrollUI;->mListener:Lcom/transsion/camera/app/ui/IModeScrollUI$ModeScrollListener;

    if-eqz p0, :cond_7

    .line 100
    invoke-interface {p0, p1}, Lcom/transsion/camera/app/ui/IModeScrollUI$ModeScrollListener;->updateScrollIndex(I)V

    :cond_7
    return-void
.end method

.method private validModeIndex(I)I
    .registers 2

    .line 171
    iget-object p0, p0, Lcom/transsion/camera/app/ui/ModeScrollUI;->mModeUIItems:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    invoke-static {p0, p1}, Ljava/lang/Math;->min(II)I

    move-result p0

    const/4 p1, 0x0

    invoke-static {p1, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    return p0
.end method

.method private validScrollModeIndex(I)I
    .registers 4

    .line 175
    iget v0, p0, Lcom/transsion/camera/app/ui/ModeScrollUI;->MAX_TAB_MODE_COUNT:I

    add-int/lit8 v0, v0, -0x1

    .line 176
    iget-object v1, p0, Lcom/transsion/camera/app/ui/ModeScrollUI;->mModeOrderProvider:Lcom/transsion/camera/app/mode/ModeOrderProvider;

    invoke-virtual {v1}, Lcom/transsion/camera/app/mode/ModeOrderProvider;->getConfig()Lcom/transsion/camera/app/mode/ModePickerConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/transsion/camera/app/mode/ModePickerConfig;->modePickerStyleMore()Z

    move-result v1

    if-eqz v1, :cond_1c

    .line 177
    iget-object v0, p0, Lcom/transsion/camera/app/ui/ModeScrollUI;->mModeOrderProvider:Lcom/transsion/camera/app/mode/ModeOrderProvider;

    invoke-virtual {v0}, Lcom/transsion/camera/app/mode/ModeOrderProvider;->getTabModeList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .line 179
    :cond_1c
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/ModeScrollUI;->validModeIndex(I)I

    move-result p0

    invoke-static {p0, v0}, Ljava/lang/Math;->min(II)I

    move-result p0

    return p0
.end method


# virtual methods
.method public canScrollToNext()Z
    .registers 4

    .line 184
    iget-object v0, p0, Lcom/transsion/camera/app/ui/ModeScrollUI;->mModeOrderProvider:Lcom/transsion/camera/app/mode/ModeOrderProvider;

    invoke-virtual {v0}, Lcom/transsion/camera/app/mode/ModeOrderProvider;->getConfig()Lcom/transsion/camera/app/mode/ModePickerConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/camera/app/mode/ModePickerConfig;->modePickerStyleMore()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_23

    .line 185
    iget-object v0, p0, Lcom/transsion/camera/app/ui/ModeScrollUI;->mSelectedModeName:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/transsion/camera/app/ui/ModeScrollUI;->modeIndex(Ljava/lang/String;)I

    move-result v0

    iget-object p0, p0, Lcom/transsion/camera/app/ui/ModeScrollUI;->mModeOrderProvider:Lcom/transsion/camera/app/mode/ModeOrderProvider;

    invoke-virtual {p0}, Lcom/transsion/camera/app/mode/ModeOrderProvider;->getTabModeList()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    sub-int/2addr p0, v2

    if-ge v0, p0, :cond_22

    return v2

    :cond_22
    return v1

    .line 187
    :cond_23
    iget-object v0, p0, Lcom/transsion/camera/app/ui/ModeScrollUI;->mSelectedModeName:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/transsion/camera/app/ui/ModeScrollUI;->modeIndex(Ljava/lang/String;)I

    move-result v0

    iget p0, p0, Lcom/transsion/camera/app/ui/ModeScrollUI;->MAX_TAB_MODE_COUNT:I

    sub-int/2addr p0, v2

    if-ge v0, p0, :cond_2f

    return v2

    :cond_2f
    return v1
.end method

.method public canScrollToPrevious()Z
    .registers 2

    .line 193
    iget-object v0, p0, Lcom/transsion/camera/app/ui/ModeScrollUI;->mSelectedModeName:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/transsion/camera/app/ui/ModeScrollUI;->modeIndex(Ljava/lang/String;)I

    move-result p0

    if-lez p0, :cond_a

    const/4 p0, 0x1

    return p0

    :cond_a
    const/4 p0, 0x0

    return p0
.end method

.method public canScrolling()Z
    .registers 1

    const/4 p0, 0x1

    return p0
.end method

.method public down(FF)V
    .registers 3

    return-void
.end method

.method public hide(Z)V
    .registers 2

    .line 67
    iget-boolean p1, p0, Lcom/transsion/camera/app/ui/ModeScrollUI;->mInScrolling:Z

    if-eqz p1, :cond_c

    .line 68
    sget-object p0, Lcom/transsion/camera/app/ui/ModeScrollUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "[hide] mInScrolling = true, return"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 71
    :cond_c
    iget-boolean p1, p0, Lcom/transsion/camera/app/ui/ModeScrollUI;->mScrollUIVisible:Z

    if-eqz p1, :cond_19

    const/4 p1, 0x0

    .line 72
    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/ModeScrollUI;->mScrollUIVisible:Z

    .line 73
    iget p1, p0, Lcom/transsion/camera/app/ui/ModeScrollUI;->mScrollModeIndex:I

    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/ModeScrollUI;->scrollStopped(I)V

    return-void

    .line 75
    :cond_19
    sget-object p0, Lcom/transsion/camera/app/ui/ModeScrollUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "[hide] mScrollUIVisible = false, return"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method public inflateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 3

    .line 47
    iget-object p1, p0, Lcom/transsion/camera/app/ui/ModeScrollUI;->mModeSwitchScroller:Lcom/transsion/camera/app/ui/ModeSwitchScroller;

    invoke-virtual {p1, p0}, Lcom/transsion/camera/app/ui/ModeSwitchScroller;->setModeIconLayout(Lcom/transsion/camera/app/ui/ModeSwitchScroller$IModeScrollCallback;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public onOrientationChanged(I)V
    .registers 2

    return-void
.end method

.method public scrollToNext()V
    .registers 2

    .line 209
    iget-object v0, p0, Lcom/transsion/camera/app/ui/ModeScrollUI;->mSelectedModeName:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/transsion/camera/app/ui/ModeScrollUI;->modeIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/app/ui/ModeScrollUI;->mScrollModeIndex:I

    .line 210
    iget-object v0, p0, Lcom/transsion/camera/app/ui/ModeScrollUI;->mSelectedModeName:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/transsion/camera/app/ui/ModeScrollUI;->modeIndex(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Lcom/transsion/camera/app/ui/ModeScrollUI;->validScrollModeIndex(I)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/transsion/camera/app/ui/ModeScrollUI;->scrollTo(I)V

    return-void
.end method

.method public scrollToPrevious()V
    .registers 2

    .line 203
    iget-object v0, p0, Lcom/transsion/camera/app/ui/ModeScrollUI;->mSelectedModeName:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/transsion/camera/app/ui/ModeScrollUI;->modeIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/app/ui/ModeScrollUI;->mScrollModeIndex:I

    .line 204
    iget-object v0, p0, Lcom/transsion/camera/app/ui/ModeScrollUI;->mSelectedModeName:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/transsion/camera/app/ui/ModeScrollUI;->modeIndex(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-direct {p0, v0}, Lcom/transsion/camera/app/ui/ModeScrollUI;->validScrollModeIndex(I)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/transsion/camera/app/ui/ModeScrollUI;->scrollTo(I)V

    return-void
.end method

.method public scrolling(FF)V
    .registers 3

    const/4 p1, 0x0

    .line 226
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/ModeScrollUI;->hide(Z)V

    .line 227
    iget-object p1, p0, Lcom/transsion/camera/app/ui/ModeScrollUI;->mSelectedModeName:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/ModeScrollUI;->modeIndex(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/transsion/camera/app/ui/ModeScrollUI;->mScrollModeIndex:I

    const/4 p1, 0x1

    .line 228
    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/ModeScrollUI;->mInScrolling:Z

    return-void
.end method

.method public setModeList(Ljava/util/List;)V
    .registers 3

    .line 53
    iget-object v0, p0, Lcom/transsion/camera/app/ui/ModeScrollUI;->mModeUIItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 55
    new-instance v0, Lcom/transsion/camera/app/ui/ModeScrollUI$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/transsion/camera/app/ui/ModeScrollUI$$ExternalSyntheticLambda0;-><init>(Lcom/transsion/camera/app/ui/ModeScrollUI;)V

    invoke-interface {p1, v0}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public setScrollListener(Lcom/transsion/camera/app/ui/IModeScrollUI$ModeScrollListener;)V
    .registers 2

    .line 83
    iput-object p1, p0, Lcom/transsion/camera/app/ui/ModeScrollUI;->mListener:Lcom/transsion/camera/app/ui/IModeScrollUI$ModeScrollListener;

    return-void
.end method

.method public showMode(Ljava/lang/String;)V
    .registers 4

    .line 118
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/ModeScrollUI;->modeIndex(Ljava/lang/String;)I

    move-result v0

    .line 119
    iget-object v1, p0, Lcom/transsion/camera/app/ui/ModeScrollUI;->mSelectedModeName:Ljava/lang/String;

    invoke-static {p1, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_f

    .line 120
    invoke-direct {p0, v0}, Lcom/transsion/camera/app/ui/ModeScrollUI;->showMode(I)V

    .line 122
    :cond_f
    iput v0, p0, Lcom/transsion/camera/app/ui/ModeScrollUI;->mScrollModeIndex:I

    .line 123
    invoke-direct {p0, v0}, Lcom/transsion/camera/app/ui/ModeScrollUI;->updateScrollIndex(I)V

    return-void
.end method

.method public stopScroll()V
    .registers 3

    const/4 v0, 0x0

    .line 233
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/ModeScrollUI;->mInScrolling:Z

    .line 234
    iget v0, p0, Lcom/transsion/camera/app/ui/ModeScrollUI;->mScrollModeIndex:I

    if-ltz v0, :cond_20

    iget-object v1, p0, Lcom/transsion/camera/app/ui/ModeScrollUI;->mModeUIItems:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_20

    .line 235
    iget-object v0, p0, Lcom/transsion/camera/app/ui/ModeScrollUI;->mModeUIItems:Ljava/util/List;

    iget v1, p0, Lcom/transsion/camera/app/ui/ModeScrollUI;->mScrollModeIndex:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/camera/app/ui/mode/ModeUIItem;

    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/mode/ModeUIItem;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/ui/ModeScrollUI;->updateSelectedMode(Ljava/lang/String;)V

    :cond_20
    return-void
.end method

.method public updateCurrentCamera(Ljava/lang/String;)V
    .registers 2

    return-void
.end method

.method public updateSelectedMode(Ljava/lang/String;)V
    .registers 2

    .line 62
    iput-object p1, p0, Lcom/transsion/camera/app/ui/ModeScrollUI;->mSelectedModeName:Ljava/lang/String;

    return-void
.end method
