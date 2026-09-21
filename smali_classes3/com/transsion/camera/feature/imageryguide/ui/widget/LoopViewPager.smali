.class public Lcom/transsion/camera/feature/imageryguide/ui/widget/LoopViewPager;
.super Landroidx/viewpager/widget/ViewPager;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/feature/imageryguide/ui/widget/LoopViewPager$OnPageChangeListenerWrapper;
    }
.end annotation


# static fields
.field private static final LOOP_INTERVAL:I = 0xbb8

.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private final mHandler:Landroid/os/Handler;

.field private mInterval:I

.field private mLooping:Z

.field private final mObserver:Landroid/database/DataSetObserver;

.field private final mRunnable:Ljava/lang/Runnable;


# direct methods
.method public static synthetic $r8$lambda$CHG_ZQLWHyq1DwmU5tN4i7j-QJo(Lcom/transsion/camera/feature/imageryguide/ui/widget/LoopViewPager;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/feature/imageryguide/ui/widget/LoopViewPager;->lambda$new$0()V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetmLooping(Lcom/transsion/camera/feature/imageryguide/ui/widget/LoopViewPager;)Z
    .registers 1

    .line 0
    iget-boolean p0, p0, Lcom/transsion/camera/feature/imageryguide/ui/widget/LoopViewPager;->mLooping:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$mstartTiming(Lcom/transsion/camera/feature/imageryguide/ui/widget/LoopViewPager;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/feature/imageryguide/ui/widget/LoopViewPager;->startTiming()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mstopTiming(Lcom/transsion/camera/feature/imageryguide/ui/widget/LoopViewPager;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/feature/imageryguide/ui/widget/LoopViewPager;->stopTiming()V

    return-void
.end method

.method static bridge synthetic -$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;
    .registers 1

    .line 0
    sget-object v0, Lcom/transsion/camera/feature/imageryguide/ui/widget/LoopViewPager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 18
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "Guide_LoopViewPager"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/feature/imageryguide/ui/widget/LoopViewPager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .line 81
    invoke-direct {p0, p1}, Landroidx/viewpager/widget/ViewPager;-><init>(Landroid/content/Context;)V

    const/16 p1, 0xbb8

    .line 22
    iput p1, p0, Lcom/transsion/camera/feature/imageryguide/ui/widget/LoopViewPager;->mInterval:I

    const/4 p1, 0x1

    .line 24
    iput-boolean p1, p0, Lcom/transsion/camera/feature/imageryguide/ui/widget/LoopViewPager;->mLooping:Z

    .line 26
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/transsion/camera/feature/imageryguide/ui/widget/LoopViewPager;->mHandler:Landroid/os/Handler;

    .line 28
    new-instance p1, Lcom/transsion/camera/feature/imageryguide/ui/widget/LoopViewPager$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lcom/transsion/camera/feature/imageryguide/ui/widget/LoopViewPager$$ExternalSyntheticLambda0;-><init>(Lcom/transsion/camera/feature/imageryguide/ui/widget/LoopViewPager;)V

    iput-object p1, p0, Lcom/transsion/camera/feature/imageryguide/ui/widget/LoopViewPager;->mRunnable:Ljava/lang/Runnable;

    .line 56
    new-instance p1, Lcom/transsion/camera/feature/imageryguide/ui/widget/LoopViewPager$1;

    invoke-direct {p1, p0}, Lcom/transsion/camera/feature/imageryguide/ui/widget/LoopViewPager$1;-><init>(Lcom/transsion/camera/feature/imageryguide/ui/widget/LoopViewPager;)V

    iput-object p1, p0, Lcom/transsion/camera/feature/imageryguide/ui/widget/LoopViewPager;->mObserver:Landroid/database/DataSetObserver;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    .line 85
    invoke-direct {p0, p1, p2}, Landroidx/viewpager/widget/ViewPager;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/16 p1, 0xbb8

    .line 22
    iput p1, p0, Lcom/transsion/camera/feature/imageryguide/ui/widget/LoopViewPager;->mInterval:I

    const/4 p1, 0x1

    .line 24
    iput-boolean p1, p0, Lcom/transsion/camera/feature/imageryguide/ui/widget/LoopViewPager;->mLooping:Z

    .line 26
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/transsion/camera/feature/imageryguide/ui/widget/LoopViewPager;->mHandler:Landroid/os/Handler;

    .line 28
    new-instance p1, Lcom/transsion/camera/feature/imageryguide/ui/widget/LoopViewPager$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lcom/transsion/camera/feature/imageryguide/ui/widget/LoopViewPager$$ExternalSyntheticLambda0;-><init>(Lcom/transsion/camera/feature/imageryguide/ui/widget/LoopViewPager;)V

    iput-object p1, p0, Lcom/transsion/camera/feature/imageryguide/ui/widget/LoopViewPager;->mRunnable:Ljava/lang/Runnable;

    .line 56
    new-instance p1, Lcom/transsion/camera/feature/imageryguide/ui/widget/LoopViewPager$1;

    invoke-direct {p1, p0}, Lcom/transsion/camera/feature/imageryguide/ui/widget/LoopViewPager$1;-><init>(Lcom/transsion/camera/feature/imageryguide/ui/widget/LoopViewPager;)V

    iput-object p1, p0, Lcom/transsion/camera/feature/imageryguide/ui/widget/LoopViewPager;->mObserver:Landroid/database/DataSetObserver;

    return-void
.end method

.method private checkTiming()Z
    .registers 5

    .line 152
    iget-boolean v0, p0, Lcom/transsion/camera/feature/imageryguide/ui/widget/LoopViewPager;->mLooping:Z

    const/4 v1, 0x0

    if-nez v0, :cond_d

    .line 153
    sget-object p0, Lcom/transsion/camera/feature/imageryguide/ui/widget/LoopViewPager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "checkTiming mLooping false"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return v1

    .line 157
    :cond_d
    invoke-virtual {p0}, Landroidx/viewpager/widget/ViewPager;->getAdapter()Landroidx/viewpager/widget/PagerAdapter;

    move-result-object p0

    if-nez p0, :cond_1b

    .line 159
    sget-object p0, Lcom/transsion/camera/feature/imageryguide/ui/widget/LoopViewPager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "checkTiming adapter is null"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return v1

    .line 163
    :cond_1b
    invoke-virtual {p0}, Landroidx/viewpager/widget/PagerAdapter;->getCount()I

    move-result p0

    const/4 v0, 0x1

    if-gt p0, v0, :cond_39

    .line 165
    sget-object v0, Lcom/transsion/camera/feature/imageryguide/ui/widget/LoopViewPager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "checkTiming count: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return v1

    :cond_39
    return v0
.end method

.method private synthetic lambda$new$0()V
    .registers 4

    .line 29
    sget-object v0, Lcom/transsion/camera/feature/imageryguide/ui/widget/LoopViewPager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "perform run"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 31
    iget-boolean v1, p0, Lcom/transsion/camera/feature/imageryguide/ui/widget/LoopViewPager;->mLooping:Z

    if-nez v1, :cond_11

    .line 32
    const-string p0, "exit loop!"

    invoke-static {v0, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 36
    :cond_11
    invoke-virtual {p0}, Landroidx/viewpager/widget/ViewPager;->getAdapter()Landroidx/viewpager/widget/PagerAdapter;

    move-result-object v1

    if-nez v1, :cond_1d

    .line 38
    const-string p0, "adapter is null"

    invoke-static {v0, p0}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 42
    :cond_1d
    invoke-virtual {v1}, Landroidx/viewpager/widget/PagerAdapter;->getCount()I

    move-result v1

    const/4 v2, 0x1

    if-gt v1, v2, :cond_2a

    .line 44
    const-string p0, "no need to loop"

    invoke-static {v0, p0}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 48
    :cond_2a
    invoke-direct {p0}, Lcom/transsion/camera/feature/imageryguide/ui/widget/LoopViewPager;->startTiming()V

    .line 50
    invoke-virtual {p0}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result v0

    add-int/2addr v0, v2

    .line 51
    rem-int/2addr v0, v1

    .line 53
    invoke-virtual {p0, v0, v2}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(IZ)V

    return-void
.end method

.method private startTiming()V
    .registers 5

    .line 103
    sget-object v0, Lcom/transsion/camera/feature/imageryguide/ui/widget/LoopViewPager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "startTiming"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 104
    iget-object v0, p0, Lcom/transsion/camera/feature/imageryguide/ui/widget/LoopViewPager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/transsion/camera/feature/imageryguide/ui/widget/LoopViewPager;->mRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 105
    iget-object v0, p0, Lcom/transsion/camera/feature/imageryguide/ui/widget/LoopViewPager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/transsion/camera/feature/imageryguide/ui/widget/LoopViewPager;->mRunnable:Ljava/lang/Runnable;

    iget p0, p0, Lcom/transsion/camera/feature/imageryguide/ui/widget/LoopViewPager;->mInterval:I

    int-to-long v2, p0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private stopTiming()V
    .registers 3

    .line 115
    sget-object v0, Lcom/transsion/camera/feature/imageryguide/ui/widget/LoopViewPager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "stopTiming"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 116
    iget-object v0, p0, Lcom/transsion/camera/feature/imageryguide/ui/widget/LoopViewPager;->mHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/transsion/camera/feature/imageryguide/ui/widget/LoopViewPager;->mRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public addOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V
    .registers 3

    .line 197
    new-instance v0, Lcom/transsion/camera/feature/imageryguide/ui/widget/LoopViewPager$OnPageChangeListenerWrapper;

    invoke-direct {v0, p0, p1}, Lcom/transsion/camera/feature/imageryguide/ui/widget/LoopViewPager$OnPageChangeListenerWrapper;-><init>(Lcom/transsion/camera/feature/imageryguide/ui/widget/LoopViewPager;Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V

    invoke-super {p0, v0}, Landroidx/viewpager/widget/ViewPager;->addOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V

    return-void
.end method

.method protected onAttachedToWindow()V
    .registers 3

    .line 137
    invoke-super {p0}, Landroidx/viewpager/widget/ViewPager;->onAttachedToWindow()V

    .line 139
    sget-object v0, Lcom/transsion/camera/feature/imageryguide/ui/widget/LoopViewPager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "onAttachedToWindow"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 141
    invoke-virtual {p0}, Landroidx/viewpager/widget/ViewPager;->getAdapter()Landroidx/viewpager/widget/PagerAdapter;

    move-result-object v0

    if-eqz v0, :cond_15

    .line 143
    iget-object v1, p0, Lcom/transsion/camera/feature/imageryguide/ui/widget/LoopViewPager;->mObserver:Landroid/database/DataSetObserver;

    invoke-virtual {v0, v1}, Landroidx/viewpager/widget/PagerAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 146
    :cond_15
    invoke-direct {p0}, Lcom/transsion/camera/feature/imageryguide/ui/widget/LoopViewPager;->checkTiming()Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 147
    invoke-direct {p0}, Lcom/transsion/camera/feature/imageryguide/ui/widget/LoopViewPager;->startTiming()V

    :cond_1e
    return-void
.end method

.method protected onDetachedFromWindow()V
    .registers 3

    .line 174
    invoke-super {p0}, Landroidx/viewpager/widget/ViewPager;->onDetachedFromWindow()V

    .line 176
    sget-object v0, Lcom/transsion/camera/feature/imageryguide/ui/widget/LoopViewPager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "onDetachedFromWindow"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 178
    invoke-direct {p0}, Lcom/transsion/camera/feature/imageryguide/ui/widget/LoopViewPager;->stopTiming()V

    .line 180
    invoke-virtual {p0}, Landroidx/viewpager/widget/ViewPager;->getAdapter()Landroidx/viewpager/widget/PagerAdapter;

    move-result-object v0

    if-eqz v0, :cond_18

    .line 182
    iget-object p0, p0, Lcom/transsion/camera/feature/imageryguide/ui/widget/LoopViewPager;->mObserver:Landroid/database/DataSetObserver;

    invoke-virtual {v0, p0}, Landroidx/viewpager/widget/PagerAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    :cond_18
    return-void
.end method

.method public setAdapter(Landroidx/viewpager/widget/PagerAdapter;)V
    .registers 5

    .line 121
    sget-object v0, Lcom/transsion/camera/feature/imageryguide/ui/widget/LoopViewPager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setAdapter adapter: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 123
    invoke-virtual {p0}, Landroidx/viewpager/widget/ViewPager;->getAdapter()Landroidx/viewpager/widget/PagerAdapter;

    move-result-object v0

    if-eqz v0, :cond_21

    .line 125
    iget-object v1, p0, Lcom/transsion/camera/feature/imageryguide/ui/widget/LoopViewPager;->mObserver:Landroid/database/DataSetObserver;

    invoke-virtual {v0, v1}, Landroidx/viewpager/widget/PagerAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    :cond_21
    if-nez p1, :cond_26

    .line 129
    invoke-direct {p0}, Lcom/transsion/camera/feature/imageryguide/ui/widget/LoopViewPager;->stopTiming()V

    .line 132
    :cond_26
    invoke-super {p0, p1}, Landroidx/viewpager/widget/ViewPager;->setAdapter(Landroidx/viewpager/widget/PagerAdapter;)V

    return-void
.end method

.method public setLoopInterval(I)V
    .registers 2

    .line 89
    iput p1, p0, Lcom/transsion/camera/feature/imageryguide/ui/widget/LoopViewPager;->mInterval:I

    return-void
.end method

.method public setOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V
    .registers 3

    if-nez p1, :cond_7

    const/4 p1, 0x0

    .line 189
    invoke-super {p0, p1}, Landroidx/viewpager/widget/ViewPager;->setOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V

    return-void

    .line 191
    :cond_7
    new-instance v0, Lcom/transsion/camera/feature/imageryguide/ui/widget/LoopViewPager$OnPageChangeListenerWrapper;

    invoke-direct {v0, p0, p1}, Lcom/transsion/camera/feature/imageryguide/ui/widget/LoopViewPager$OnPageChangeListenerWrapper;-><init>(Lcom/transsion/camera/feature/imageryguide/ui/widget/LoopViewPager;Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V

    invoke-super {p0, v0}, Landroidx/viewpager/widget/ViewPager;->setOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V

    return-void
.end method

.method public startLoop()V
    .registers 3

    .line 93
    sget-object v0, Lcom/transsion/camera/feature/imageryguide/ui/widget/LoopViewPager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "startLoop"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 95
    iput-boolean v0, p0, Lcom/transsion/camera/feature/imageryguide/ui/widget/LoopViewPager;->mLooping:Z

    .line 97
    invoke-direct {p0}, Lcom/transsion/camera/feature/imageryguide/ui/widget/LoopViewPager;->checkTiming()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 98
    invoke-direct {p0}, Lcom/transsion/camera/feature/imageryguide/ui/widget/LoopViewPager;->startTiming()V

    :cond_13
    return-void
.end method

.method public stopLoop()V
    .registers 3

    .line 109
    sget-object v0, Lcom/transsion/camera/feature/imageryguide/ui/widget/LoopViewPager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "stopLoop"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 110
    iput-boolean v0, p0, Lcom/transsion/camera/feature/imageryguide/ui/widget/LoopViewPager;->mLooping:Z

    .line 111
    invoke-direct {p0}, Lcom/transsion/camera/feature/imageryguide/ui/widget/LoopViewPager;->stopTiming()V

    return-void
.end method
