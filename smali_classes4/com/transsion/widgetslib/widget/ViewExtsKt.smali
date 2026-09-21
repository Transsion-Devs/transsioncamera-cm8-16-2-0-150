.class public final Lcom/transsion/widgetslib/widget/ViewExtsKt;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final ARROW_ANIM_DURATION:J = 0x12cL


# direct methods
.method public static synthetic $r8$lambda$VfGeXHat7zUU0s46lFIGsjBxq7A(Landroidx/appcompat/widget/Toolbar;Landroid/view/View;Landroid/view/View;)V
    .registers 3

    .line 0
    invoke-static {p0, p1, p2}, Lcom/transsion/widgetslib/widget/ViewExtsKt;->subtitleCollapsingLayout$lambda$39$lambda$38(Landroidx/appcompat/widget/Toolbar;Landroid/view/View;Landroid/view/View;)V

    return-void
.end method

.method public static final animSelected(Landroid/widget/TextView;)V
    .registers 9

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 41
    invoke-virtual {p0}, Landroid/widget/TextView;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [I

    const v3, -0x777778

    invoke-virtual {v0, v2, v3}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v0

    .line 43
    invoke-virtual {p0}, Landroid/widget/TextView;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object v2

    const v3, 0x10100a1

    filled-new-array {v3}, [I

    move-result-object v3

    const v4, -0xffff01

    invoke-virtual {v2, v3, v4}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v2

    .line 45
    sget v3, Lcom/transsion/widgetslib/R$id;->os_foot_opt_bar_item_text:I

    invoke-virtual {p0, v3}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_5f

    .line 46
    const-string v3, "textColor"

    filled-new-array {v1, v1}, [I

    move-result-object v1

    invoke-static {p0, v3, v1}, Landroid/animation/ObjectAnimator;->ofArgb(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 47
    new-instance v3, Landroid/view/animation/PathInterpolator;

    const v4, 0x3dcccccd    # 0.1f

    const/high16 v5, 0x3f800000    # 1.0f

    const v6, 0x3e4ccccd    # 0.2f

    const/4 v7, 0x0

    invoke-direct {v3, v6, v7, v4, v5}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual {v1, v3}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 49
    new-instance v3, Lcom/transsion/widgetslib/widget/FobAnimDelegate;

    const-string v4, "animator"

    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v3, v1}, Lcom/transsion/widgetslib/widget/FobAnimDelegate;-><init>(Landroid/animation/ValueAnimator;)V

    .line 50
    new-instance v4, Lcom/transsion/widgetslib/widget/ViewExtsKt$animSelected$1;

    invoke-direct {v4, p0, v3, v2, v0}, Lcom/transsion/widgetslib/widget/ViewExtsKt$animSelected$1;-><init>(Landroid/widget/TextView;Lcom/transsion/widgetslib/widget/FobAnimDelegate;II)V

    invoke-virtual {v1, v4}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 62
    sget v1, Lcom/transsion/widgetslib/R$id;->os_foot_opt_bar_item_text:I

    invoke-virtual {p0, v1, v3}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 65
    :cond_5f
    sget v1, Lcom/transsion/widgetslib/R$id;->os_foot_opt_bar_item_text:I

    invoke-virtual {p0, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    .line 66
    instance-of v3, v1, Lcom/transsion/widgetslib/widget/FobAnimDelegate;

    if-eqz v3, :cond_9a

    .line 67
    check-cast v1, Lcom/transsion/widgetslib/widget/FobAnimDelegate;

    invoke-virtual {v1}, Lcom/transsion/widgetslib/widget/FobAnimDelegate;->isRunning()Z

    move-result v3

    if-eqz v3, :cond_75

    .line 68
    invoke-virtual {v1}, Lcom/transsion/widgetslib/widget/FobAnimDelegate;->reverse()V

    return-void

    .line 70
    :cond_75
    invoke-virtual {p0}, Landroid/view/View;->isSelected()Z

    move-result p0

    if-eqz p0, :cond_87

    .line 71
    invoke-virtual {v1}, Lcom/transsion/widgetslib/widget/FobAnimDelegate;->getAnimator()Landroid/animation/ValueAnimator;

    move-result-object p0

    filled-new-array {v2, v0}, [I

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/animation/ValueAnimator;->setIntValues([I)V

    goto :goto_92

    .line 73
    :cond_87
    invoke-virtual {v1}, Lcom/transsion/widgetslib/widget/FobAnimDelegate;->getAnimator()Landroid/animation/ValueAnimator;

    move-result-object p0

    filled-new-array {v0, v2}, [I

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/animation/ValueAnimator;->setIntValues([I)V

    .line 75
    :goto_92
    invoke-virtual {v1}, Lcom/transsion/widgetslib/widget/FobAnimDelegate;->getAnimator()Landroid/animation/ValueAnimator;

    move-result-object p0

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    return-void

    .line 78
    :cond_9a
    invoke-virtual {p0}, Landroid/view/View;->isSelected()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setSelected(Z)V

    return-void
.end method

.method public static final arrowCollapseAnim(Landroidx/appcompat/widget/Toolbar;)V
    .registers 3

    .line 0
    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {p0, v0, v1, v0}, Lcom/transsion/widgetslib/widget/ViewExtsKt;->arrowCollapseAnim$default(Landroidx/appcompat/widget/Toolbar;Landroid/animation/Animator$AnimatorListener;ILjava/lang/Object;)V

    return-void
.end method

.method public static final arrowCollapseAnim(Landroidx/appcompat/widget/Toolbar;Landroid/animation/Animator$AnimatorListener;)V
    .registers 5

    const/4 v0, 0x1

    .line 335
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 0
    const-string v1, "<this>"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 334
    sget v1, Lcom/transsion/widgetslib/R$id;->os_big_title_iv_arrow_down:I

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_44

    .line 335
    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1d

    goto :goto_44

    .line 338
    :cond_1d
    invoke-virtual {v1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 339
    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0x12c

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->rotationX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-string v1, "ivArrow.animate().setDur\u2026M_DURATION).rotationX(0f)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 342
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    sget v1, Lcom/transsion/widgetslib/R$anim;->os_interpolator_liv_item_collapse:I

    .line 341
    invoke-static {p0, v1}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object p0

    .line 340
    invoke-virtual {v0, p0}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    .line 345
    invoke-virtual {v0, p1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    :cond_44
    :goto_44
    return-void
.end method

.method public static synthetic arrowCollapseAnim$default(Landroidx/appcompat/widget/Toolbar;Landroid/animation/Animator$AnimatorListener;ILjava/lang/Object;)V
    .registers 4

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_5

    const/4 p1, 0x0

    .line 333
    :cond_5
    invoke-static {p0, p1}, Lcom/transsion/widgetslib/widget/ViewExtsKt;->arrowCollapseAnim(Landroidx/appcompat/widget/Toolbar;Landroid/animation/Animator$AnimatorListener;)V

    return-void
.end method

.method public static final arrowExpandAnim(Landroidx/appcompat/widget/Toolbar;)V
    .registers 3

    .line 0
    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {p0, v0, v1, v0}, Lcom/transsion/widgetslib/widget/ViewExtsKt;->arrowExpandAnim$default(Landroidx/appcompat/widget/Toolbar;Landroid/animation/Animator$AnimatorListener;ILjava/lang/Object;)V

    return-void
.end method

.method public static final arrowExpandAnim(Landroidx/appcompat/widget/Toolbar;Landroid/animation/Animator$AnimatorListener;)V
    .registers 5

    const/4 v0, 0x0

    .line 318
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 0
    const-string v1, "<this>"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 317
    sget v1, Lcom/transsion/widgetslib/R$id;->os_big_title_iv_arrow_down:I

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_45

    .line 318
    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1d

    goto :goto_45

    .line 321
    :cond_1d
    invoke-virtual {v1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 322
    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0x12c

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v1, 0x43340000    # 180.0f

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->rotationX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-string v1, "ivArrow.animate().setDur\u2026DURATION).rotationX(180f)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 325
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    sget v1, Lcom/transsion/widgetslib/R$anim;->os_interpolator_liv_item_collapse:I

    .line 324
    invoke-static {p0, v1}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object p0

    .line 323
    invoke-virtual {v0, p0}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    .line 328
    invoke-virtual {v0, p1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    :cond_45
    :goto_45
    return-void
.end method

.method public static synthetic arrowExpandAnim$default(Landroidx/appcompat/widget/Toolbar;Landroid/animation/Animator$AnimatorListener;ILjava/lang/Object;)V
    .registers 4

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_5

    const/4 p1, 0x0

    .line 316
    :cond_5
    invoke-static {p0, p1}, Lcom/transsion/widgetslib/widget/ViewExtsKt;->arrowExpandAnim(Landroidx/appcompat/widget/Toolbar;Landroid/animation/Animator$AnimatorListener;)V

    return-void
.end method

.method public static final createActionItem(Landroid/content/Context;)Landroid/view/View;
    .registers 6

    const-string v0, "context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 129
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 130
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x1

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    invoke-direct {v1, v4, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/16 v1, 0x11

    .line 131
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    const/4 v1, 0x1

    .line 132
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 135
    invoke-static {p0}, Lcom/transsion/widgetslib/widget/ViewExtsKt;->fobLayout(Landroid/content/Context;)Landroid/view/View;

    move-result-object p0

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x2

    invoke-direct {v1, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 134
    invoke-virtual {v0, p0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method public static final createOptItem(Landroid/content/Context;)Landroid/view/View;
    .registers 8

    const-string v0, "context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 141
    new-instance v0, Landroid/widget/RelativeLayout;

    invoke-direct {v0, p0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 142
    sget v1, Lcom/transsion/widgetslib/R$id;->os_foot_opt_bar_item_root_layout:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setId(I)V

    .line 143
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    const/4 v4, -0x1

    invoke-direct {v1, v3, v4, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 145
    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 147
    new-instance v2, Landroid/widget/Space;

    invoke-direct {v2, p0}, Landroid/widget/Space;-><init>(Landroid/content/Context;)V

    .line 148
    sget v3, Lcom/transsion/widgetslib/R$id;->os_foot_opt_space:I

    invoke-virtual {v2, v3}, Landroid/view/View;->setId(I)V

    .line 149
    sget v3, Lcom/transsion/widgetslib/R$dimen;->os_foot_bar_item_icon_size:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v3

    .line 150
    new-instance v5, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v5, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v3, 0xd

    .line 151
    invoke-virtual {v5, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 147
    invoke-virtual {v0, v2, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 155
    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    .line 157
    new-instance v5, Landroid/view/View;

    invoke-direct {v5, p0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 158
    sget v6, Lcom/transsion/widgetslib/R$id;->os_foot_opt_press:I

    invoke-virtual {v5, v6}, Landroid/view/View;->setId(I)V

    const/4 v6, 0x0

    .line 159
    invoke-virtual {v5, v6}, Landroid/view/View;->setAlpha(F)V

    .line 160
    new-instance v6, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v6, v4, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 163
    sget v4, Lcom/transsion/widgetslib/R$dimen;->os_foot_bar_item_safe_inset:I

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {v6, v1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 164
    invoke-virtual {v6}, Landroid/view/ViewGroup$MarginLayoutParams;->getMarginStart()I

    move-result v1

    invoke-virtual {v6, v1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 165
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 156
    invoke-virtual {v0, v5, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 167
    invoke-static {p0}, Lcom/transsion/widgetslib/widget/ViewExtsKt;->fobLayout(Landroid/content/Context;)Landroid/view/View;

    move-result-object v1

    new-instance v4, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v5, -0x2

    invoke-direct {v4, v5, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 170
    invoke-virtual {v4, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 167
    invoke-virtual {v0, v1, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 174
    new-instance v1, Landroid/view/ViewStub;

    invoke-direct {v1, p0}, Landroid/view/ViewStub;-><init>(Landroid/content/Context;)V

    .line 175
    sget p0, Lcom/transsion/widgetslib/R$id;->os_stub_fpb_red_point:I

    invoke-virtual {v1, p0}, Landroid/view/View;->setId(I)V

    .line 176
    sget p0, Lcom/transsion/widgetslib/R$layout;->os_foot_opt_bar_item_red_point:I

    invoke-virtual {v1, p0}, Landroid/view/ViewStub;->setLayoutResource(I)V

    .line 177
    new-instance p0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {p0, v5, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/4 v3, 0x1

    const/high16 v4, -0x40000000    # -2.0f

    .line 180
    invoke-static {v3, v4, v2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {p0, v2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 181
    invoke-virtual {p0}, Landroid/view/ViewGroup$MarginLayoutParams;->getMarginStart()I

    move-result v2

    iput v2, p0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    const/4 v2, 0x6

    .line 182
    sget v3, Lcom/transsion/widgetslib/R$id;->os_foot_opt_space:I

    invoke-virtual {p0, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    const/16 v2, 0x11

    .line 183
    sget v3, Lcom/transsion/widgetslib/R$id;->os_foot_opt_space:I

    invoke-virtual {p0, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 173
    invoke-virtual {v0, v1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method public static final createSubtitleCollapsingLayout(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZLandroid/graphics/drawable/Drawable;)Landroid/view/ViewGroup;
    .registers 14

    const-string v0, "context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "title"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 193
    new-instance v0, Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-direct {v0, p0}, Landroidx/constraintlayout/widget/ConstraintLayout;-><init>(Landroid/content/Context;)V

    .line 194
    new-instance v1, Landroid/view/ViewGroup$MarginLayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-direct {v1, v2, v3}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 198
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_22

    move-object v1, v0

    goto :goto_23

    :cond_22
    move-object v1, v2

    :goto_23
    if-eqz v1, :cond_d0

    .line 199
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    .line 202
    new-instance v4, Landroid/widget/TextView;

    invoke-direct {v4, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 203
    sget v5, Lcom/transsion/widgetslib/R$id;->os_big_title_tv_title:I

    invoke-virtual {v4, v5}, Landroid/view/View;->setId(I)V

    const/4 v5, 0x1

    .line 204
    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 205
    sget-object v6, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 206
    sget v7, Lcom/transsion/widgetslib/R$style;->OSExpandedTitleTextAppearanceHios:I

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setTextAppearance(I)V

    .line 207
    invoke-virtual {v4, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 208
    new-instance p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    const/4 v7, 0x0

    if-eqz p3, :cond_4b

    move v8, v3

    goto :goto_4c

    :cond_4b
    move v8, v7

    :goto_4c
    invoke-direct {p1, v8, v3}, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;-><init>(II)V

    .line 212
    iput v7, p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->startToStart:I

    const/4 v8, 0x2

    if-eqz p3, :cond_60

    .line 214
    iput v8, p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->horizontalChainStyle:I

    .line 215
    iput-boolean v5, p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->constrainedWidth:Z

    const/4 v5, 0x0

    .line 216
    iput v5, p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->horizontalBias:F

    .line 217
    sget v5, Lcom/transsion/widgetslib/R$id;->os_big_title_iv_arrow_down:I

    iput v5, p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->endToStart:I

    goto :goto_62

    .line 219
    :cond_60
    iput v7, p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->endToEnd:I

    .line 221
    :goto_62
    iput v7, p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->topToTop:I

    if-eqz v1, :cond_69

    .line 223
    iput v7, p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->bottomToBottom:I

    goto :goto_6f

    .line 225
    :cond_69
    iput v8, p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->verticalChainStyle:I

    .line 226
    sget v5, Lcom/transsion/widgetslib/R$id;->os_big_title_tv_subtitle:I

    iput v5, p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->bottomToTop:I

    .line 228
    :goto_6f
    sget-object v5, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 201
    invoke-virtual {v0, v4, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    if-eqz p3, :cond_7f

    if-nez p4, :cond_80

    .line 231
    sget p1, Lcom/transsion/widgetslib/R$drawable;->os_big_title_arrow_down:I

    invoke-static {p0, p1}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p4

    goto :goto_80

    :cond_7f
    move-object p4, v2

    :cond_80
    :goto_80
    if-eqz p4, :cond_a1

    .line 234
    new-instance p1, Landroid/widget/ImageView;

    invoke-direct {p1, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 235
    sget p3, Lcom/transsion/widgetslib/R$id;->os_big_title_iv_arrow_down:I

    invoke-virtual {p1, p3}, Landroid/view/View;->setId(I)V

    .line 236
    invoke-virtual {p1, p4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 237
    new-instance p3, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    invoke-direct {p3, v3, v3}, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;-><init>(II)V

    .line 240
    sget p4, Lcom/transsion/widgetslib/R$id;->os_big_title_tv_title:I

    iput p4, p3, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->startToEnd:I

    .line 241
    iput v7, p3, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->endToEnd:I

    .line 242
    iput p4, p3, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->topToTop:I

    .line 243
    iput p4, p3, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->bottomToBottom:I

    .line 233
    invoke-virtual {v0, p1, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_a1
    if-nez v1, :cond_a4

    move-object v2, v0

    :cond_a4
    if-eqz v2, :cond_d0

    .line 248
    new-instance p1, Landroid/widget/TextView;

    invoke-direct {p1, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 249
    sget p0, Lcom/transsion/widgetslib/R$id;->os_big_title_tv_subtitle:I

    invoke-virtual {p1, p0}, Landroid/view/View;->setId(I)V

    .line 250
    invoke-virtual {p1, v8}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 251
    invoke-virtual {p1, v6}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 252
    sget p0, Lcom/transsion/widgetslib/R$style;->OsToolBarSecondaryTitleCompat:I

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setTextAppearance(I)V

    .line 254
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 255
    new-instance p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    invoke-direct {p0, v7, v3}, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;-><init>(II)V

    .line 258
    sget p2, Lcom/transsion/widgetslib/R$id;->os_big_title_tv_title:I

    iput p2, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->startToStart:I

    .line 259
    iput v7, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->endToEnd:I

    .line 260
    iput p2, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->topToBottom:I

    .line 261
    iput v7, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->bottomToBottom:I

    .line 247
    invoke-virtual {v2, p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_d0
    return-object v0
.end method

.method public static synthetic createSubtitleCollapsingLayout$default(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZLandroid/graphics/drawable/Drawable;ILjava/lang/Object;)Landroid/view/ViewGroup;
    .registers 7

    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_6

    .line 190
    const-string p2, ""

    :cond_6
    and-int/lit8 p6, p5, 0x8

    if-eqz p6, :cond_b

    const/4 p3, 0x0

    :cond_b
    and-int/lit8 p5, p5, 0x10

    if-eqz p5, :cond_10

    const/4 p4, 0x0

    .line 187
    :cond_10
    invoke-static {p0, p1, p2, p3, p4}, Lcom/transsion/widgetslib/widget/ViewExtsKt;->createSubtitleCollapsingLayout(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZLandroid/graphics/drawable/Drawable;)Landroid/view/ViewGroup;

    move-result-object p0

    return-object p0
.end method

.method private static final fobLayout(Landroid/content/Context;)Landroid/view/View;
    .registers 10

    .line 94
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 95
    sget v1, Lcom/transsion/widgetslib/R$id;->os_fob_layout:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setId(I)V

    const/16 v1, 0x11

    .line 96
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 97
    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/transsion/widgetslib/R$dimen;->os_foot_bar_item_text_start_end_padding:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    const/4 v2, 0x0

    .line 98
    invoke-virtual {v0, v1, v2, v1, v2}, Landroid/view/View;->setPadding(IIII)V

    .line 101
    new-instance v3, Lcom/transsion/widgetslib/widget/OSMaskImageView;

    const/4 v7, 0x6

    const/4 v8, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v4, p0

    invoke-direct/range {v3 .. v8}, Lcom/transsion/widgetslib/widget/OSMaskImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 102
    sget p0, Lcom/transsion/widgetslib/R$id;->os_foot_opt_bar_item_icon:I

    invoke-virtual {v3, p0}, Landroid/view/View;->setId(I)V

    .line 103
    invoke-virtual {v3}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v1, Lcom/transsion/widgetslib/R$dimen;->os_foot_bar_item_icon_size:I

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p0

    .line 104
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, p0, p0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 101
    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 108
    new-instance p0, Landroid/widget/TextView;

    invoke-direct {p0, v4}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 109
    sget v1, Lcom/transsion/widgetslib/R$id;->os_foot_opt_bar_item_text:I

    invoke-virtual {p0, v1}, Landroid/view/View;->setId(I)V

    .line 110
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x2

    invoke-direct {v1, v3, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 113
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v5, Lcom/transsion/widgetslib/R$dimen;->os_foot_bar_item_text_paddingTop:I

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v3

    .line 115
    invoke-virtual {v1, v3, v3, v3, v3}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 110
    invoke-virtual {p0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 118
    sget-object v1, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 119
    const-string v1, "sans-serif"

    invoke-static {v1, v2}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    const/4 v1, 0x1

    .line 120
    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 121
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v3, Lcom/transsion/widgetslib/R$dimen;->os_foot_bar_item_text_height:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setMinHeight(I)V

    .line 122
    sget v1, Lcom/transsion/widgetslib/R$color;->os_foot_action_bar_text_color:I

    invoke-static {v4, v1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 124
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v3, Lcom/transsion/widgetslib/R$dimen;->os_foot_bar_item_text_size:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    .line 123
    invoke-virtual {p0, v2, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 108
    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-object v0
.end method

.method public static final getArrowView(Landroidx/appcompat/widget/Toolbar;)Landroid/view/View;
    .registers 2

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 311
    sget v0, Lcom/transsion/widgetslib/R$id;->os_big_title_iv_arrow_down:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public static final getSubtitleView(Landroidx/appcompat/widget/Toolbar;)Landroid/widget/TextView;
    .registers 2

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 309
    sget v0, Lcom/transsion/widgetslib/R$id;->os_big_title_tv_subtitle:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    return-object p0
.end method

.method public static final getTitleView(Landroidx/appcompat/widget/Toolbar;)Landroid/widget/TextView;
    .registers 2

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 307
    sget v0, Lcom/transsion/widgetslib/R$id;->os_big_title_tv_title:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    return-object p0
.end method

.method public static final resetAnimTag(Landroid/widget/TextView;)V
    .registers 3

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 84
    sget v0, Lcom/transsion/widgetslib/R$id;->os_foot_opt_bar_item_text:I

    invoke-virtual {p0, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    .line 85
    instance-of v1, v0, Lcom/transsion/widgetslib/widget/FobAnimDelegate;

    if-eqz v1, :cond_20

    .line 86
    check-cast v0, Lcom/transsion/widgetslib/widget/FobAnimDelegate;

    invoke-virtual {v0}, Lcom/transsion/widgetslib/widget/FobAnimDelegate;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 87
    invoke-virtual {v0}, Lcom/transsion/widgetslib/widget/FobAnimDelegate;->cancel()V

    .line 89
    :cond_1a
    sget v0, Lcom/transsion/widgetslib/R$id;->os_foot_opt_bar_item_text:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    :cond_20
    return-void
.end method

.method public static final subtitleCollapsingLayout(Landroidx/appcompat/widget/Toolbar;Lcom/google/android/material/appbar/AppBarLayout;)Landroid/view/ViewGroup;
    .registers 10

    .line 0
    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "appBarLayout"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v6, 0xe

    const/4 v7, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p0

    move-object v2, p1

    invoke-static/range {v1 .. v7}, Lcom/transsion/widgetslib/widget/ViewExtsKt;->subtitleCollapsingLayout$default(Landroidx/appcompat/widget/Toolbar;Lcom/google/android/material/appbar/AppBarLayout;ZLandroid/graphics/drawable/Drawable;IILjava/lang/Object;)Landroid/view/ViewGroup;

    move-result-object p0

    return-object p0
.end method

.method public static final subtitleCollapsingLayout(Landroidx/appcompat/widget/Toolbar;Lcom/google/android/material/appbar/AppBarLayout;Z)Landroid/view/ViewGroup;
    .registers 11

    .line 0
    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "appBarLayout"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v6, 0xc

    const/4 v7, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    invoke-static/range {v1 .. v7}, Lcom/transsion/widgetslib/widget/ViewExtsKt;->subtitleCollapsingLayout$default(Landroidx/appcompat/widget/Toolbar;Lcom/google/android/material/appbar/AppBarLayout;ZLandroid/graphics/drawable/Drawable;IILjava/lang/Object;)Landroid/view/ViewGroup;

    move-result-object p0

    return-object p0
.end method

.method public static final subtitleCollapsingLayout(Landroidx/appcompat/widget/Toolbar;Lcom/google/android/material/appbar/AppBarLayout;ZLandroid/graphics/drawable/Drawable;)Landroid/view/ViewGroup;
    .registers 12

    .line 0
    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "appBarLayout"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v6, 0x8

    const/4 v7, 0x0

    const/4 v5, 0x0

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    invoke-static/range {v1 .. v7}, Lcom/transsion/widgetslib/widget/ViewExtsKt;->subtitleCollapsingLayout$default(Landroidx/appcompat/widget/Toolbar;Lcom/google/android/material/appbar/AppBarLayout;ZLandroid/graphics/drawable/Drawable;IILjava/lang/Object;)Landroid/view/ViewGroup;

    move-result-object p0

    return-object p0
.end method

.method public static final subtitleCollapsingLayout(Landroidx/appcompat/widget/Toolbar;Lcom/google/android/material/appbar/AppBarLayout;ZLandroid/graphics/drawable/Drawable;I)Landroid/view/ViewGroup;
    .registers 7

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "appBarLayout"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 275
    invoke-virtual {p0}, Landroidx/appcompat/widget/Toolbar;->getSubtitle()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_17

    if-nez p2, :cond_17

    return-object p0

    .line 276
    :cond_17
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroidx/appcompat/widget/Toolbar;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    const-string v1, "title"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroidx/appcompat/widget/Toolbar;->getSubtitle()Ljava/lang/CharSequence;

    move-result-object v1

    .line 275
    invoke-static {p1, v0, v1, p2, p3}, Lcom/transsion/widgetslib/widget/ViewExtsKt;->createSubtitleCollapsingLayout(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZLandroid/graphics/drawable/Drawable;)Landroid/view/ViewGroup;

    move-result-object p1

    .line 278
    invoke-virtual {p0, p1, p4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 279
    const-string p2, ""

    invoke-virtual {p0, p2}, Landroidx/appcompat/widget/Toolbar;->setTitle(Ljava/lang/CharSequence;)V

    .line 280
    invoke-virtual {p0, p2}, Landroidx/appcompat/widget/Toolbar;->setSubtitle(Ljava/lang/CharSequence;)V

    .line 282
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 295
    sget p2, Lcom/transsion/widgetslib/R$id;->os_big_title_tv_title:I

    invoke-virtual {p0, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    .line 296
    sget p3, Lcom/transsion/widgetslib/R$id;->os_big_title_tv_subtitle:I

    invoke-virtual {p0, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    if-eqz p2, :cond_57

    if-eqz p3, :cond_57

    .line 298
    new-instance p4, Lcom/transsion/widgetslib/widget/ViewExtsKt$$ExternalSyntheticLambda0;

    invoke-direct {p4, p0, p2, p3}, Lcom/transsion/widgetslib/widget/ViewExtsKt$$ExternalSyntheticLambda0;-><init>(Landroidx/appcompat/widget/Toolbar;Landroid/view/View;Landroid/view/View;)V

    invoke-virtual {p0, p4}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_57
    return-object p1
.end method

.method public static synthetic subtitleCollapsingLayout$default(Landroidx/appcompat/widget/Toolbar;Lcom/google/android/material/appbar/AppBarLayout;ZLandroid/graphics/drawable/Drawable;IILjava/lang/Object;)Landroid/view/ViewGroup;
    .registers 7

    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_5

    const/4 p2, 0x0

    :cond_5
    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_a

    const/4 p3, 0x0

    :cond_a
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_f

    const/4 p4, -0x1

    .line 269
    :cond_f
    invoke-static {p0, p1, p2, p3, p4}, Lcom/transsion/widgetslib/widget/ViewExtsKt;->subtitleCollapsingLayout(Landroidx/appcompat/widget/Toolbar;Lcom/google/android/material/appbar/AppBarLayout;ZLandroid/graphics/drawable/Drawable;I)Landroid/view/ViewGroup;

    move-result-object p0

    return-object p0
.end method

.method private static final subtitleCollapsingLayout$lambda$39$lambda$38(Landroidx/appcompat/widget/Toolbar;Landroid/view/View;Landroid/view/View;)V
    .registers 4

    const-string v0, "$this_subtitleCollapsingLayout"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 299
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    if-eqz v0, :cond_19

    .line 300
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result p2

    add-int/2addr p1, p2

    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 301
    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_19
    return-void
.end method

.method public static final subtitleCollapsingSettings(Lcom/google/android/material/appbar/AppBarLayout;Lcom/google/android/material/appbar/CollapsingToolbarLayout;Landroid/view/ViewGroup;)V
    .registers 4

    const-string v0, "appBarLayout"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "collapsingToolbarLayout"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "subtitleCollapsingLayout"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 354
    sget p0, Lcom/transsion/widgetslib/R$id;->os_big_title_tv_title:I

    invoke-virtual {p2, p0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    .line 355
    sget p0, Lcom/transsion/widgetslib/R$id;->os_big_title_tv_subtitle:I

    invoke-virtual {p2, p0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    .line 356
    invoke-virtual {p2}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    .line 357
    sget p1, Lcom/transsion/widgetslib/R$dimen;->os_actionbar_title:I

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    .line 358
    sget p1, Lcom/transsion/widgetslib/R$dimen;->os_expanded_title:I

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    .line 359
    sget p1, Lcom/transsion/widgetslib/R$dimen;->os_actionbar_title:I

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    const/4 p0, 0x0

    .line 363
    throw p0
.end method

.method private static final subtitleCollapsingSettings$lambda$42(IIFIILandroid/view/ViewGroup;Landroid/widget/TextView;Landroid/widget/TextView;Lcom/google/android/material/appbar/AppBarLayout;I)V
    .registers 10

    const-string p0, "$subtitleCollapsingLayout"

    invoke-static {p5, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "aBarLayout"

    invoke-static {p8, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p0, 0x0

    .line 366
    throw p0
.end method
