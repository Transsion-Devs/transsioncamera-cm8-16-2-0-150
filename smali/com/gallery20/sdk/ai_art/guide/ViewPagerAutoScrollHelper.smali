.class public final Lcom/gallery20/sdk/ai_art/guide/ViewPagerAutoScrollHelper;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/lifecycle/DefaultLifecycleObserver;


# instance fields
.field private final adapter:Lcom/gallery20/sdk/ai_art/guide/AIArtGuideAdapter;

.field private final handler:Lcom/gallery20/sdk/ai_art/guide/ViewPagerAutoScrollHelper$handler$1;

.field private final onPageChangeCallback:Lcom/gallery20/sdk/ai_art/guide/ViewPagerAutoScrollHelper$onPageChangeCallback$1;

.field private touching:Z

.field private final viewPager2:Landroidx/viewpager2/widget/ViewPager2;


# direct methods
.method public constructor <init>(Landroidx/viewpager2/widget/ViewPager2;)V
    .registers 3

    const-string v0, "viewPager2"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/gallery20/sdk/ai_art/guide/ViewPagerAutoScrollHelper;->viewPager2:Landroidx/viewpager2/widget/ViewPager2;

    .line 19
    invoke-virtual {p1}, Landroidx/viewpager2/widget/ViewPager2;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p1

    const-string v0, "null cannot be cast to non-null type com.gallery20.sdk.ai_art.guide.AIArtGuideAdapter"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/gallery20/sdk/ai_art/guide/AIArtGuideAdapter;

    iput-object p1, p0, Lcom/gallery20/sdk/ai_art/guide/ViewPagerAutoScrollHelper;->adapter:Lcom/gallery20/sdk/ai_art/guide/AIArtGuideAdapter;

    .line 21
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p1

    new-instance v0, Lcom/gallery20/sdk/ai_art/guide/ViewPagerAutoScrollHelper$handler$1;

    invoke-direct {v0, p0, p1}, Lcom/gallery20/sdk/ai_art/guide/ViewPagerAutoScrollHelper$handler$1;-><init>(Lcom/gallery20/sdk/ai_art/guide/ViewPagerAutoScrollHelper;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/gallery20/sdk/ai_art/guide/ViewPagerAutoScrollHelper;->handler:Lcom/gallery20/sdk/ai_art/guide/ViewPagerAutoScrollHelper$handler$1;

    .line 35
    new-instance p1, Lcom/gallery20/sdk/ai_art/guide/ViewPagerAutoScrollHelper$onPageChangeCallback$1;

    invoke-direct {p1, p0}, Lcom/gallery20/sdk/ai_art/guide/ViewPagerAutoScrollHelper$onPageChangeCallback$1;-><init>(Lcom/gallery20/sdk/ai_art/guide/ViewPagerAutoScrollHelper;)V

    iput-object p1, p0, Lcom/gallery20/sdk/ai_art/guide/ViewPagerAutoScrollHelper;->onPageChangeCallback:Lcom/gallery20/sdk/ai_art/guide/ViewPagerAutoScrollHelper$onPageChangeCallback$1;

    return-void
.end method

.method public static final synthetic access$checkNotifyNextAutoScroll(Lcom/gallery20/sdk/ai_art/guide/ViewPagerAutoScrollHelper;)V
    .registers 1

    .line 17
    invoke-direct {p0}, Lcom/gallery20/sdk/ai_art/guide/ViewPagerAutoScrollHelper;->checkNotifyNextAutoScroll()V

    return-void
.end method

.method public static final synthetic access$getAdapter$p(Lcom/gallery20/sdk/ai_art/guide/ViewPagerAutoScrollHelper;)Lcom/gallery20/sdk/ai_art/guide/AIArtGuideAdapter;
    .registers 1

    .line 17
    iget-object p0, p0, Lcom/gallery20/sdk/ai_art/guide/ViewPagerAutoScrollHelper;->adapter:Lcom/gallery20/sdk/ai_art/guide/AIArtGuideAdapter;

    return-object p0
.end method

.method public static final synthetic access$getHandler$p(Lcom/gallery20/sdk/ai_art/guide/ViewPagerAutoScrollHelper;)Lcom/gallery20/sdk/ai_art/guide/ViewPagerAutoScrollHelper$handler$1;
    .registers 1

    .line 17
    iget-object p0, p0, Lcom/gallery20/sdk/ai_art/guide/ViewPagerAutoScrollHelper;->handler:Lcom/gallery20/sdk/ai_art/guide/ViewPagerAutoScrollHelper$handler$1;

    return-object p0
.end method

.method public static final synthetic access$getViewPager2$p(Lcom/gallery20/sdk/ai_art/guide/ViewPagerAutoScrollHelper;)Landroidx/viewpager2/widget/ViewPager2;
    .registers 1

    .line 17
    iget-object p0, p0, Lcom/gallery20/sdk/ai_art/guide/ViewPagerAutoScrollHelper;->viewPager2:Landroidx/viewpager2/widget/ViewPager2;

    return-object p0
.end method

.method public static final synthetic access$notifyNextAutoScroll(Lcom/gallery20/sdk/ai_art/guide/ViewPagerAutoScrollHelper;)V
    .registers 1

    .line 17
    invoke-direct {p0}, Lcom/gallery20/sdk/ai_art/guide/ViewPagerAutoScrollHelper;->notifyNextAutoScroll()V

    return-void
.end method

.method private final checkNotifyNextAutoScroll()V
    .registers 5

    .line 50
    iget-object v0, p0, Lcom/gallery20/sdk/ai_art/guide/ViewPagerAutoScrollHelper;->handler:Lcom/gallery20/sdk/ai_art/guide/ViewPagerAutoScrollHelper$handler$1;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 51
    iget-boolean v0, p0, Lcom/gallery20/sdk/ai_art/guide/ViewPagerAutoScrollHelper;->touching:Z

    if-eqz v0, :cond_b

    goto :goto_13

    .line 52
    :cond_b
    iget-object v0, p0, Lcom/gallery20/sdk/ai_art/guide/ViewPagerAutoScrollHelper;->viewPager2:Landroidx/viewpager2/widget/ViewPager2;

    invoke-virtual {v0}, Landroidx/viewpager2/widget/ViewPager2;->getScrollState()I

    move-result v0

    if-eqz v0, :cond_14

    :goto_13
    return-void

    .line 53
    :cond_14
    iget-object v0, p0, Lcom/gallery20/sdk/ai_art/guide/ViewPagerAutoScrollHelper;->viewPager2:Landroidx/viewpager2/widget/ViewPager2;

    invoke-virtual {v0}, Landroidx/viewpager2/widget/ViewPager2;->getCurrentItem()I

    move-result v0

    iget-object v1, p0, Lcom/gallery20/sdk/ai_art/guide/ViewPagerAutoScrollHelper;->adapter:Lcom/gallery20/sdk/ai_art/guide/AIArtGuideAdapter;

    invoke-virtual {v1}, Lcom/gallery20/sdk/ai_art/guide/AIArtGuideAdapter;->getItemCount()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    const/4 v3, 0x0

    if-ne v0, v1, :cond_2b

    .line 54
    iget-object v0, p0, Lcom/gallery20/sdk/ai_art/guide/ViewPagerAutoScrollHelper;->viewPager2:Landroidx/viewpager2/widget/ViewPager2;

    invoke-virtual {v0, v2, v3}, Landroidx/viewpager2/widget/ViewPager2;->setCurrentItem(IZ)V

    goto :goto_40

    .line 55
    :cond_2b
    iget-object v0, p0, Lcom/gallery20/sdk/ai_art/guide/ViewPagerAutoScrollHelper;->viewPager2:Landroidx/viewpager2/widget/ViewPager2;

    invoke-virtual {v0}, Landroidx/viewpager2/widget/ViewPager2;->getCurrentItem()I

    move-result v0

    if-nez v0, :cond_40

    .line 56
    iget-object v0, p0, Lcom/gallery20/sdk/ai_art/guide/ViewPagerAutoScrollHelper;->viewPager2:Landroidx/viewpager2/widget/ViewPager2;

    iget-object v1, p0, Lcom/gallery20/sdk/ai_art/guide/ViewPagerAutoScrollHelper;->adapter:Lcom/gallery20/sdk/ai_art/guide/AIArtGuideAdapter;

    invoke-virtual {v1}, Lcom/gallery20/sdk/ai_art/guide/AIArtGuideAdapter;->getItemCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x2

    invoke-virtual {v0, v1, v3}, Landroidx/viewpager2/widget/ViewPager2;->setCurrentItem(IZ)V

    .line 58
    :cond_40
    :goto_40
    invoke-direct {p0}, Lcom/gallery20/sdk/ai_art/guide/ViewPagerAutoScrollHelper;->notifyNextAutoScroll()V

    return-void
.end method

.method private final notifyNextAutoScroll()V
    .registers 4

    .line 31
    iget-object v0, p0, Lcom/gallery20/sdk/ai_art/guide/ViewPagerAutoScrollHelper;->handler:Lcom/gallery20/sdk/ai_art/guide/ViewPagerAutoScrollHelper$handler$1;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 32
    iget-object p0, p0, Lcom/gallery20/sdk/ai_art/guide/ViewPagerAutoScrollHelper;->handler:Lcom/gallery20/sdk/ai_art/guide/ViewPagerAutoScrollHelper$handler$1;

    const/4 v0, 0x1

    const-wide/16 v1, 0xbb8

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method


# virtual methods
.method public final init()V
    .registers 3

    .line 62
    iget-object v0, p0, Lcom/gallery20/sdk/ai_art/guide/ViewPagerAutoScrollHelper;->handler:Lcom/gallery20/sdk/ai_art/guide/ViewPagerAutoScrollHelper$handler$1;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 63
    iget-object v0, p0, Lcom/gallery20/sdk/ai_art/guide/ViewPagerAutoScrollHelper;->viewPager2:Landroidx/viewpager2/widget/ViewPager2;

    iget-object v1, p0, Lcom/gallery20/sdk/ai_art/guide/ViewPagerAutoScrollHelper;->onPageChangeCallback:Lcom/gallery20/sdk/ai_art/guide/ViewPagerAutoScrollHelper$onPageChangeCallback$1;

    invoke-virtual {v0, v1}, Landroidx/viewpager2/widget/ViewPager2;->unregisterOnPageChangeCallback(Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;)V

    .line 64
    iget-object v0, p0, Lcom/gallery20/sdk/ai_art/guide/ViewPagerAutoScrollHelper;->viewPager2:Landroidx/viewpager2/widget/ViewPager2;

    iget-object v1, p0, Lcom/gallery20/sdk/ai_art/guide/ViewPagerAutoScrollHelper;->onPageChangeCallback:Lcom/gallery20/sdk/ai_art/guide/ViewPagerAutoScrollHelper$onPageChangeCallback$1;

    invoke-virtual {v0, v1}, Landroidx/viewpager2/widget/ViewPager2;->registerOnPageChangeCallback(Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;)V

    .line 65
    invoke-direct {p0}, Lcom/gallery20/sdk/ai_art/guide/ViewPagerAutoScrollHelper;->checkNotifyNextAutoScroll()V

    return-void
.end method

.method public final notifyTouchEnd()V
    .registers 3

    .line 85
    const-string v0, "ViewPagerAutoScrollHelp"

    const-string v1, "notifyTouchEnd() called"

    invoke-static {v0, v1}, Lcom/gallery20/base/LogExtKt;->ld(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 v0, 0x0

    .line 86
    iput-boolean v0, p0, Lcom/gallery20/sdk/ai_art/guide/ViewPagerAutoScrollHelper;->touching:Z

    .line 87
    iget-object v0, p0, Lcom/gallery20/sdk/ai_art/guide/ViewPagerAutoScrollHelper;->adapter:Lcom/gallery20/sdk/ai_art/guide/AIArtGuideAdapter;

    invoke-virtual {v0}, Lcom/gallery20/sdk/ai_art/guide/AIArtGuideAdapter;->saveScrollPosition()V

    .line 88
    invoke-direct {p0}, Lcom/gallery20/sdk/ai_art/guide/ViewPagerAutoScrollHelper;->checkNotifyNextAutoScroll()V

    return-void
.end method

.method public final notifyTouchStart()V
    .registers 3

    .line 79
    const-string v0, "ViewPagerAutoScrollHelp"

    const-string v1, "notifyTouchStart() called"

    invoke-static {v0, v1}, Lcom/gallery20/base/LogExtKt;->ld(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 v0, 0x1

    .line 80
    iput-boolean v0, p0, Lcom/gallery20/sdk/ai_art/guide/ViewPagerAutoScrollHelper;->touching:Z

    .line 81
    invoke-direct {p0}, Lcom/gallery20/sdk/ai_art/guide/ViewPagerAutoScrollHelper;->checkNotifyNextAutoScroll()V

    return-void
.end method

.method public bridge synthetic onCreate(Landroidx/lifecycle/LifecycleOwner;)V
    .registers 2

    .line 0
    invoke-super {p0, p1}, Landroidx/lifecycle/DefaultLifecycleObserver;->onCreate(Landroidx/lifecycle/LifecycleOwner;)V

    return-void
.end method

.method public bridge synthetic onDestroy(Landroidx/lifecycle/LifecycleOwner;)V
    .registers 2

    .line 0
    invoke-super {p0, p1}, Landroidx/lifecycle/DefaultLifecycleObserver;->onDestroy(Landroidx/lifecycle/LifecycleOwner;)V

    return-void
.end method

.method public onPause(Landroidx/lifecycle/LifecycleOwner;)V
    .registers 3

    const-string v0, "owner"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 73
    invoke-virtual {p0}, Lcom/gallery20/sdk/ai_art/guide/ViewPagerAutoScrollHelper;->unInit()V

    return-void
.end method

.method public onResume(Landroidx/lifecycle/LifecycleOwner;)V
    .registers 3

    const-string v0, "owner"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 69
    invoke-virtual {p0}, Lcom/gallery20/sdk/ai_art/guide/ViewPagerAutoScrollHelper;->init()V

    return-void
.end method

.method public bridge synthetic onStart(Landroidx/lifecycle/LifecycleOwner;)V
    .registers 2

    .line 0
    invoke-super {p0, p1}, Landroidx/lifecycle/DefaultLifecycleObserver;->onStart(Landroidx/lifecycle/LifecycleOwner;)V

    return-void
.end method

.method public bridge synthetic onStop(Landroidx/lifecycle/LifecycleOwner;)V
    .registers 2

    .line 0
    invoke-super {p0, p1}, Landroidx/lifecycle/DefaultLifecycleObserver;->onStop(Landroidx/lifecycle/LifecycleOwner;)V

    return-void
.end method

.method public final unInit()V
    .registers 3

    .line 92
    iget-object v0, p0, Lcom/gallery20/sdk/ai_art/guide/ViewPagerAutoScrollHelper;->viewPager2:Landroidx/viewpager2/widget/ViewPager2;

    iget-object v1, p0, Lcom/gallery20/sdk/ai_art/guide/ViewPagerAutoScrollHelper;->onPageChangeCallback:Lcom/gallery20/sdk/ai_art/guide/ViewPagerAutoScrollHelper$onPageChangeCallback$1;

    invoke-virtual {v0, v1}, Landroidx/viewpager2/widget/ViewPager2;->unregisterOnPageChangeCallback(Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;)V

    .line 93
    iget-object p0, p0, Lcom/gallery20/sdk/ai_art/guide/ViewPagerAutoScrollHelper;->handler:Lcom/gallery20/sdk/ai_art/guide/ViewPagerAutoScrollHelper$handler$1;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    return-void
.end method
