.class public final Lcom/transsion/widgetslib/flipper/FlipperLayoutHelperKt;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static synthetic $r8$lambda$DiTUff1bAD_hrpCRPLATNPikpLM(Lcom/transsion/widgetslib/flipper/FlipperLayout;ILandroid/view/View;)V
    .registers 3

    .line 0
    invoke-static {p0, p1, p2}, Lcom/transsion/widgetslib/flipper/FlipperLayoutHelperKt;->inflateLayoutDot$lambda$4$lambda$3$lambda$1$lambda$0(Lcom/transsion/widgetslib/flipper/FlipperLayout;ILandroid/view/View;)V

    return-void
.end method

.method public static final inflateLayoutDot(Lcom/transsion/widgetslib/flipper/FlipperLayout;)Landroid/view/ViewGroup;
    .registers 10

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/transsion/widgetslib/R$attr;->os_comp_color_page_focus:I

    sget v2, Lcom/transsion/widgetslib/R$color;->os_comp_color_page_focus_hios:I

    .line 26
    invoke-static {v0, v1, v2}, Lcom/transsion/widgetslib/util/Utils;->getAttrColor(Landroid/content/Context;II)I

    move-result v0

    const/high16 v1, -0x1000000

    or-int/2addr v0, v1

    .line 33
    sget v1, Lcom/transsion/widgetslib/R$id;->stubDots:I

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewStub;

    invoke-virtual {v1}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v1

    const-string v2, "null cannot be cast to non-null type android.view.ViewGroup"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Landroid/view/ViewGroup;

    .line 34
    invoke-virtual {p0}, Lcom/transsion/widgetslib/flipper/FlipperLayout;->getViewPager()Landroidx/viewpager2/widget/ViewPager2;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/viewpager2/widget/ViewPager2;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v2

    if-eqz v2, :cond_9b

    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v2

    .line 36
    invoke-virtual {v1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/transsion/widgetslib/R$dimen;->os_spring_page_marker_radius:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v3

    mul-int/lit8 v3, v3, 0x2

    .line 38
    invoke-virtual {v1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/transsion/widgetslib/R$dimen;->os_flipper_layout_circle_indicator_margin_lr:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v4

    const/4 v5, 0x0

    :goto_4c
    if-ge v5, v2, :cond_9b

    .line 41
    new-instance v6, Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-direct {v6, v7}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 42
    new-instance v7, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v7, v0}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v6, v7}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 43
    new-instance v7, Lcom/transsion/widgetslib/flipper/FlipperLayoutHelperKt$$ExternalSyntheticLambda0;

    invoke-direct {v7, p0, v5}, Lcom/transsion/widgetslib/flipper/FlipperLayoutHelperKt$$ExternalSyntheticLambda0;-><init>(Lcom/transsion/widgetslib/flipper/FlipperLayout;I)V

    invoke-virtual {v6, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 47
    invoke-virtual {p0}, Lcom/transsion/widgetslib/flipper/FlipperLayout;->isCyclic$widgetsLib_release()Z

    move-result v7

    if-eqz v7, :cond_78

    if-eqz v5, :cond_73

    add-int/lit8 v7, v2, -0x1

    if-ne v5, v7, :cond_78

    :cond_73
    const/16 v7, 0x8

    .line 48
    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_78
    const/4 v7, 0x1

    .line 50
    invoke-virtual {v6, v7}, Landroid/view/View;->setClipToOutline(Z)V

    .line 51
    new-instance v7, Lcom/transsion/widgetslib/flipper/FlipperLayoutHelperKt$inflateLayoutDot$1$1$1$2;

    invoke-direct {v7}, Lcom/transsion/widgetslib/flipper/FlipperLayoutHelperKt$inflateLayoutDot$1$1$1$2;-><init>()V

    invoke-virtual {v6, v7}, Landroid/view/View;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    .line 69
    new-instance v7, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-direct {v7, v3, v3}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    .line 70
    invoke-virtual {v7, v4}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 71
    invoke-virtual {v7}, Landroid/view/ViewGroup$MarginLayoutParams;->getMarginStart()I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 72
    sget-object v8, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 40
    invoke-virtual {v1, v6, v5, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_4c

    :cond_9b
    return-object v1
.end method

.method private static final inflateLayoutDot$lambda$4$lambda$3$lambda$1$lambda$0(Lcom/transsion/widgetslib/flipper/FlipperLayout;ILandroid/view/View;)V
    .registers 5

    const-string p2, "$this_inflateLayoutDot"

    invoke-static {p0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 45
    invoke-virtual {p0}, Lcom/transsion/widgetslib/flipper/FlipperLayout;->getViewPager()Landroidx/viewpager2/widget/ViewPager2;

    move-result-object p0

    const/4 p2, 0x2

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, p1, v1, p2, v0}, Lcom/transsion/widgetslib/flipper/FlipperLayoutHelperKt;->setCurrentItemSafety$default(Landroidx/viewpager2/widget/ViewPager2;IZILjava/lang/Object;)V

    return-void
.end method

.method public static final setCurrentItemSafety(Landroidx/viewpager2/widget/ViewPager2;IZ)V
    .registers 4

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    invoke-virtual {p0}, Landroidx/viewpager2/widget/ViewPager2;->isFakeDragging()Z

    move-result v0

    if-eqz v0, :cond_c

    return-void

    .line 22
    :cond_c
    invoke-virtual {p0, p1, p2}, Landroidx/viewpager2/widget/ViewPager2;->setCurrentItem(IZ)V

    return-void
.end method

.method public static synthetic setCurrentItemSafety$default(Landroidx/viewpager2/widget/ViewPager2;IZILjava/lang/Object;)V
    .registers 5

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_5

    const/4 p2, 0x1

    .line 18
    :cond_5
    invoke-static {p0, p1, p2}, Lcom/transsion/widgetslib/flipper/FlipperLayoutHelperKt;->setCurrentItemSafety(Landroidx/viewpager2/widget/ViewPager2;IZ)V

    return-void
.end method
