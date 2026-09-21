.class public final Lcom/gallery20/sdk/ai_art/guide/ViewPagerIndicator;
.super Landroid/widget/LinearLayout;
.source "SourceFile"


# instance fields
.field private adapter:Lcom/gallery20/sdk/ai_art/guide/AIArtGuideAdapter;

.field private final onPageChangeCallback:Lcom/gallery20/sdk/ai_art/guide/ViewPagerIndicator$onPageChangeCallback$1;

.field private viewPager2:Landroidx/viewpager2/widget/ViewPager2;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 9

    .line 0
    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v5, 0x6

    const/4 v6, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v1 .. v6}, Lcom/gallery20/sdk/ai_art/guide/ViewPagerIndicator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 10

    .line 0
    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v5, 0x4

    const/4 v6, 0x0

    const/4 v4, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v1 .. v6}, Lcom/gallery20/sdk/ai_art/guide/ViewPagerIndicator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    .line 18
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/4 p1, 0x1

    .line 19
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 25
    new-instance p1, Lcom/gallery20/sdk/ai_art/guide/ViewPagerIndicator$onPageChangeCallback$1;

    invoke-direct {p1, p0}, Lcom/gallery20/sdk/ai_art/guide/ViewPagerIndicator$onPageChangeCallback$1;-><init>(Lcom/gallery20/sdk/ai_art/guide/ViewPagerIndicator;)V

    iput-object p1, p0, Lcom/gallery20/sdk/ai_art/guide/ViewPagerIndicator;->onPageChangeCallback:Lcom/gallery20/sdk/ai_art/guide/ViewPagerIndicator$onPageChangeCallback$1;

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 6

    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_5

    const/4 p2, 0x0

    :cond_5
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_a

    const/4 p3, 0x0

    .line 15
    :cond_a
    invoke-direct {p0, p1, p2, p3}, Lcom/gallery20/sdk/ai_art/guide/ViewPagerIndicator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public static final synthetic access$updateSelect(Lcom/gallery20/sdk/ai_art/guide/ViewPagerIndicator;)V
    .registers 1

    .line 15
    invoke-direct {p0}, Lcom/gallery20/sdk/ai_art/guide/ViewPagerIndicator;->updateSelect()V

    return-void
.end method

.method private final updateSelect()V
    .registers 8

    .line 51
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_5
    if-ge v1, v0, :cond_3b

    .line 52
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 53
    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    iget-object v4, p0, Lcom/gallery20/sdk/ai_art/guide/ViewPagerIndicator;->adapter:Lcom/gallery20/sdk/ai_art/guide/AIArtGuideAdapter;

    const/4 v5, 0x0

    if-nez v4, :cond_1a

    const-string v4, "adapter"

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v4, v5

    :cond_1a
    iget-object v6, p0, Lcom/gallery20/sdk/ai_art/guide/ViewPagerIndicator;->viewPager2:Landroidx/viewpager2/widget/ViewPager2;

    if-nez v6, :cond_24

    const-string v6, "viewPager2"

    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_25

    :cond_24
    move-object v5, v6

    :goto_25
    invoke-virtual {v5}, Landroidx/viewpager2/widget/ViewPager2;->getCurrentItem()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/gallery20/sdk/ai_art/guide/AIArtGuideAdapter;->calculateActualDataPosition(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setSelected(Z)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_3b
    return-void
.end method


# virtual methods
.method public final bind(Landroidx/viewpager2/widget/ViewPager2;)V
    .registers 7

    const-string v0, "viewPager2"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    iput-object p1, p0, Lcom/gallery20/sdk/ai_art/guide/ViewPagerIndicator;->viewPager2:Landroidx/viewpager2/widget/ViewPager2;

    .line 34
    iget-object v0, p0, Lcom/gallery20/sdk/ai_art/guide/ViewPagerIndicator;->onPageChangeCallback:Lcom/gallery20/sdk/ai_art/guide/ViewPagerIndicator$onPageChangeCallback$1;

    invoke-virtual {p1, v0}, Landroidx/viewpager2/widget/ViewPager2;->registerOnPageChangeCallback(Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;)V

    .line 35
    invoke-virtual {p1}, Landroidx/viewpager2/widget/ViewPager2;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p1

    const-string v0, "null cannot be cast to non-null type com.gallery20.sdk.ai_art.guide.AIArtGuideAdapter"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/gallery20/sdk/ai_art/guide/AIArtGuideAdapter;

    iput-object p1, p0, Lcom/gallery20/sdk/ai_art/guide/ViewPagerIndicator;->adapter:Lcom/gallery20/sdk/ai_art/guide/AIArtGuideAdapter;

    if-nez p1, :cond_21

    .line 36
    const-string p1, "adapter"

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p1, 0x0

    :cond_21
    invoke-virtual {p1}, Lcom/gallery20/sdk/ai_art/guide/AIArtGuideAdapter;->getRealItemCount()I

    move-result p1

    const/4 v0, 0x0

    :goto_26
    if-ge v0, p1, :cond_63

    .line 37
    new-instance v1, Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 38
    sget v2, Lcom/gallery20/sdk/ai_art/R$drawable;->ic_ai_art_guide_indicator:I

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 39
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 40
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, 0x6

    invoke-static {v3}, Lcom/gallery20/base/base_ui/UIExtKt;->getDp(I)I

    move-result v4

    invoke-static {v3}, Lcom/gallery20/base/base_ui/UIExtKt;->getDp(I)I

    move-result v3

    invoke-direct {v2, v4, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/4 v3, 0x4

    .line 41
    invoke-static {v3}, Lcom/gallery20/base/base_ui/UIExtKt;->getDp(I)I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 42
    invoke-static {v3}, Lcom/gallery20/base/base_ui/UIExtKt;->getDp(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 40
    invoke-virtual {v1, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 45
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_26

    .line 47
    :cond_63
    invoke-direct {p0}, Lcom/gallery20/sdk/ai_art/guide/ViewPagerIndicator;->updateSelect()V

    return-void
.end method
