.class public Lcom/gallery20/sdk/ai_art/guide/AIArtGuiderHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final activity:Landroid/app/Activity;

.field private final banners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/gallery20/sdk/ai_art/guide/Banner;",
            ">;"
        }
    .end annotation
.end field

.field private dialog:Landroid/app/Dialog;

.field private showListener:Landroid/content/DialogInterface$OnShowListener;

.field private final sp:Landroid/content/SharedPreferences;

.field private touchListener:Landroid/view/View$OnTouchListener;


# direct methods
.method public static synthetic $r8$lambda$NO_PiLfNCvZFd1ag5nKYtTh8Brw(Lkotlin/jvm/internal/Ref$ObjectRef;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 3

    .line 0
    invoke-static {p0, p1, p2}, Lcom/gallery20/sdk/ai_art/guide/AIArtGuiderHelper;->create$lambda$1(Lkotlin/jvm/internal/Ref$ObjectRef;Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$WPkHXbq9_ZPWFFF35GC46u_YYQU(Lkotlin/jvm/internal/Ref$ObjectRef;Landroid/content/DialogInterface;)V
    .registers 2

    .line 0
    invoke-static {p0, p1}, Lcom/gallery20/sdk/ai_art/guide/AIArtGuiderHelper;->create$lambda$3(Lkotlin/jvm/internal/Ref$ObjectRef;Landroid/content/DialogInterface;)V

    return-void
.end method

.method public static synthetic $r8$lambda$zkvvNs97QZrlnkGQ8kAouJim_8U(Landroid/content/DialogInterface;I)V
    .registers 2

    .line 0
    invoke-static {p0, p1}, Lcom/gallery20/sdk/ai_art/guide/AIArtGuiderHelper;->create$lambda$2(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Landroid/content/SharedPreferences;Ljava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Landroid/content/SharedPreferences;",
            "Ljava/util/List<",
            "Lcom/gallery20/sdk/ai_art/guide/Banner;",
            ">;)V"
        }
    .end annotation

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "sp"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "banners"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/gallery20/sdk/ai_art/guide/AIArtGuiderHelper;->activity:Landroid/app/Activity;

    iput-object p2, p0, Lcom/gallery20/sdk/ai_art/guide/AIArtGuiderHelper;->sp:Landroid/content/SharedPreferences;

    iput-object p3, p0, Lcom/gallery20/sdk/ai_art/guide/AIArtGuiderHelper;->banners:Ljava/util/List;

    return-void
.end method

.method private final create()Landroid/app/Dialog;
    .registers 7
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility"
        }
    .end annotation

    .line 59
    iget-object v0, p0, Lcom/gallery20/sdk/ai_art/guide/AIArtGuiderHelper;->sp:Landroid/content/SharedPreferences;

    .line 43
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 44
    const-string v1, "editor"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 59
    const-string v1, "has_show_ai_art_guide"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 48
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 60
    iget-object v0, p0, Lcom/gallery20/sdk/ai_art/guide/AIArtGuiderHelper;->activity:Landroid/app/Activity;

    sget v1, Lcom/gallery20/sdk/ai_art/R$layout;->dialog_ai_art_guide:I

    invoke-static {v0, v1}, Lcom/gallery20/base/CommonExtKt;->inflate(Landroid/content/Context;I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lcom/gallery20/sdk/ai_art/databinding/DialogAiArtGuideBinding;->bind(Landroid/view/View;)Lcom/gallery20/sdk/ai_art/databinding/DialogAiArtGuideBinding;

    move-result-object v0

    const-string v1, "bind(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 61
    new-instance v1, Lcom/gallery20/sdk/ai_art/guide/AIArtGuideAdapter;

    iget-object v3, p0, Lcom/gallery20/sdk/ai_art/guide/AIArtGuiderHelper;->banners:Ljava/util/List;

    invoke-direct {v1, v3}, Lcom/gallery20/sdk/ai_art/guide/AIArtGuideAdapter;-><init>(Ljava/util/List;)V

    .line 62
    iget-object v3, v0, Lcom/gallery20/sdk/ai_art/databinding/DialogAiArtGuideBinding;->viewPager:Landroidx/viewpager2/widget/ViewPager2;

    invoke-virtual {v1}, Lcom/gallery20/sdk/ai_art/guide/AIArtGuideAdapter;->getItemCount()I

    move-result v4

    invoke-virtual {v3, v4}, Landroidx/viewpager2/widget/ViewPager2;->setOffscreenPageLimit(I)V

    .line 63
    iget-object v3, v0, Lcom/gallery20/sdk/ai_art/databinding/DialogAiArtGuideBinding;->viewPager:Landroidx/viewpager2/widget/ViewPager2;

    invoke-virtual {v3, v1}, Landroidx/viewpager2/widget/ViewPager2;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 64
    new-instance v3, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v3}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    .line 65
    iget-object v4, p0, Lcom/gallery20/sdk/ai_art/guide/AIArtGuiderHelper;->banners:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-gt v4, v2, :cond_52

    .line 66
    iget-object v1, v0, Lcom/gallery20/sdk/ai_art/databinding/DialogAiArtGuideBinding;->indicator:Lcom/gallery20/sdk/ai_art/guide/ViewPagerIndicator;

    const-string v4, "indicator"

    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1}, Lcom/gallery20/base/CommonExtKt;->gone(Landroid/view/View;)V

    goto :goto_8c

    .line 68
    :cond_52
    iget-object v4, v0, Lcom/gallery20/sdk/ai_art/databinding/DialogAiArtGuideBinding;->viewPager:Landroidx/viewpager2/widget/ViewPager2;

    invoke-virtual {v1}, Lcom/gallery20/sdk/ai_art/guide/AIArtGuideAdapter;->getStartPosition()I

    move-result v1

    const/4 v5, 0x0

    invoke-virtual {v4, v1, v5}, Landroidx/viewpager2/widget/ViewPager2;->setCurrentItem(IZ)V

    .line 69
    iget-object v1, v0, Lcom/gallery20/sdk/ai_art/databinding/DialogAiArtGuideBinding;->indicator:Lcom/gallery20/sdk/ai_art/guide/ViewPagerIndicator;

    iget-object v4, v0, Lcom/gallery20/sdk/ai_art/databinding/DialogAiArtGuideBinding;->viewPager:Landroidx/viewpager2/widget/ViewPager2;

    const-string v5, "viewPager"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Lcom/gallery20/sdk/ai_art/guide/ViewPagerIndicator;->bind(Landroidx/viewpager2/widget/ViewPager2;)V

    .line 70
    invoke-virtual {v0}, Lcom/gallery20/sdk/ai_art/databinding/DialogAiArtGuideBinding;->getRoot()Lcom/gallery20/sdk/ai_art/guide/TouchListenerConstraintLayout;

    move-result-object v1

    iget-object v4, p0, Lcom/gallery20/sdk/ai_art/guide/AIArtGuiderHelper;->touchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v1, v4}, Lcom/gallery20/sdk/ai_art/guide/TouchListenerConstraintLayout;->addGlobalTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 71
    new-instance v1, Lcom/gallery20/sdk/ai_art/guide/ViewPagerAutoScrollHelper;

    iget-object v4, v0, Lcom/gallery20/sdk/ai_art/databinding/DialogAiArtGuideBinding;->viewPager:Landroidx/viewpager2/widget/ViewPager2;

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v1, v4}, Lcom/gallery20/sdk/ai_art/guide/ViewPagerAutoScrollHelper;-><init>(Landroidx/viewpager2/widget/ViewPager2;)V

    iput-object v1, v3, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 72
    invoke-virtual {v1}, Lcom/gallery20/sdk/ai_art/guide/ViewPagerAutoScrollHelper;->init()V

    .line 74
    invoke-virtual {v0}, Lcom/gallery20/sdk/ai_art/databinding/DialogAiArtGuideBinding;->getRoot()Lcom/gallery20/sdk/ai_art/guide/TouchListenerConstraintLayout;

    move-result-object v1

    new-instance v4, Lcom/gallery20/sdk/ai_art/guide/AIArtGuiderHelper$$ExternalSyntheticLambda0;

    invoke-direct {v4, v3}, Lcom/gallery20/sdk/ai_art/guide/AIArtGuiderHelper$$ExternalSyntheticLambda0;-><init>(Lkotlin/jvm/internal/Ref$ObjectRef;)V

    invoke-virtual {v1, v4}, Lcom/gallery20/sdk/ai_art/guide/TouchListenerConstraintLayout;->addGlobalTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 83
    :goto_8c
    new-instance v1, Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;

    iget-object v4, p0, Lcom/gallery20/sdk/ai_art/guide/AIArtGuiderHelper;->activity:Landroid/app/Activity;

    invoke-direct {v1, v4}, Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 84
    sget v4, Lcom/gallery20/sdk/ai_art/R$string;->i_know:I

    new-instance v5, Lcom/gallery20/sdk/ai_art/guide/AIArtGuiderHelper$$ExternalSyntheticLambda1;

    invoke-direct {v5}, Lcom/gallery20/sdk/ai_art/guide/AIArtGuiderHelper$$ExternalSyntheticLambda1;-><init>()V

    invoke-virtual {v1, v4, v5}, Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;

    move-result-object v1

    .line 85
    new-instance v4, Lcom/gallery20/sdk/ai_art/guide/AIArtGuiderHelper$$ExternalSyntheticLambda2;

    invoke-direct {v4, v3}, Lcom/gallery20/sdk/ai_art/guide/AIArtGuiderHelper$$ExternalSyntheticLambda2;-><init>(Lkotlin/jvm/internal/Ref$ObjectRef;)V

    invoke-virtual {v1, v4}, Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;

    move-result-object v1

    .line 86
    invoke-virtual {v1, v2}, Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;->setCanceledOnTouchOutside(Z)Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;

    move-result-object v1

    .line 87
    invoke-virtual {v0}, Lcom/gallery20/sdk/ai_art/databinding/DialogAiArtGuideBinding;->getRoot()Lcom/gallery20/sdk/ai_art/guide/TouchListenerConstraintLayout;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;->setView(Landroid/view/View;)Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;

    move-result-object v0

    .line 88
    invoke-virtual {v0}, Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;->create()Lcom/transsion/widgetslib/dialog/PromptDialog;

    move-result-object v0

    .line 89
    iget-object v1, p0, Lcom/gallery20/sdk/ai_art/guide/AIArtGuiderHelper;->showListener:Landroid/content/DialogInterface$OnShowListener;

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    .line 90
    iput-object v0, p0, Lcom/gallery20/sdk/ai_art/guide/AIArtGuiderHelper;->dialog:Landroid/app/Dialog;

    .line 91
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    return-object v0
.end method

.method private static final create$lambda$1(Lkotlin/jvm/internal/Ref$ObjectRef;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 3

    const-string p1, "$scrollHelper"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 75
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    if-eqz p1, :cond_1a

    const/4 p2, 0x1

    if-eq p1, p2, :cond_12

    const/4 p2, 0x3

    if-eq p1, p2, :cond_12

    goto :goto_21

    .line 77
    :cond_12
    iget-object p0, p0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast p0, Lcom/gallery20/sdk/ai_art/guide/ViewPagerAutoScrollHelper;

    invoke-virtual {p0}, Lcom/gallery20/sdk/ai_art/guide/ViewPagerAutoScrollHelper;->notifyTouchEnd()V

    goto :goto_21

    .line 76
    :cond_1a
    iget-object p0, p0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast p0, Lcom/gallery20/sdk/ai_art/guide/ViewPagerAutoScrollHelper;

    invoke-virtual {p0}, Lcom/gallery20/sdk/ai_art/guide/ViewPagerAutoScrollHelper;->notifyTouchStart()V

    :goto_21
    const/4 p0, 0x0

    return p0
.end method

.method private static final create$lambda$2(Landroid/content/DialogInterface;I)V
    .registers 2

    .line 84
    invoke-interface {p0}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method

.method private static final create$lambda$3(Lkotlin/jvm/internal/Ref$ObjectRef;Landroid/content/DialogInterface;)V
    .registers 2

    const-string p1, "$scrollHelper"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 85
    iget-object p0, p0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast p0, Lcom/gallery20/sdk/ai_art/guide/ViewPagerAutoScrollHelper;

    if-eqz p0, :cond_e

    invoke-virtual {p0}, Lcom/gallery20/sdk/ai_art/guide/ViewPagerAutoScrollHelper;->unInit()V

    :cond_e
    return-void
.end method


# virtual methods
.method public final getNeedShow()Z
    .registers 3

    .line 52
    iget-object p0, p0, Lcom/gallery20/sdk/ai_art/guide/AIArtGuiderHelper;->sp:Landroid/content/SharedPreferences;

    const-string v0, "has_show_ai_art_guide"

    const/4 v1, 0x0

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public final getShowListener()Landroid/content/DialogInterface$OnShowListener;
    .registers 1

    .line 55
    iget-object p0, p0, Lcom/gallery20/sdk/ai_art/guide/AIArtGuiderHelper;->showListener:Landroid/content/DialogInterface$OnShowListener;

    return-object p0
.end method

.method public final getTouchListener()Landroid/view/View$OnTouchListener;
    .registers 1

    .line 54
    iget-object p0, p0, Lcom/gallery20/sdk/ai_art/guide/AIArtGuiderHelper;->touchListener:Landroid/view/View$OnTouchListener;

    return-object p0
.end method

.method public final hide()V
    .registers 2

    .line 102
    iget-object v0, p0, Lcom/gallery20/sdk/ai_art/guide/AIArtGuiderHelper;->dialog:Landroid/app/Dialog;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    :cond_7
    const/4 v0, 0x0

    .line 103
    iput-object v0, p0, Lcom/gallery20/sdk/ai_art/guide/AIArtGuiderHelper;->dialog:Landroid/app/Dialog;

    return-void
.end method

.method public final setShowListener(Landroid/content/DialogInterface$OnShowListener;)V
    .registers 2

    .line 55
    iput-object p1, p0, Lcom/gallery20/sdk/ai_art/guide/AIArtGuiderHelper;->showListener:Landroid/content/DialogInterface$OnShowListener;

    return-void
.end method

.method public final setTouchListener(Landroid/view/View$OnTouchListener;)V
    .registers 2

    .line 54
    iput-object p1, p0, Lcom/gallery20/sdk/ai_art/guide/AIArtGuiderHelper;->touchListener:Landroid/view/View$OnTouchListener;

    return-void
.end method

.method public final show()V
    .registers 2

    .line 95
    iget-object v0, p0, Lcom/gallery20/sdk/ai_art/guide/AIArtGuiderHelper;->dialog:Landroid/app/Dialog;

    if-nez v0, :cond_7

    .line 96
    invoke-direct {p0}, Lcom/gallery20/sdk/ai_art/guide/AIArtGuiderHelper;->create()Landroid/app/Dialog;

    .line 98
    :cond_7
    iget-object p0, p0, Lcom/gallery20/sdk/ai_art/guide/AIArtGuiderHelper;->dialog:Landroid/app/Dialog;

    if-eqz p0, :cond_e

    invoke-virtual {p0}, Landroid/app/Dialog;->show()V

    :cond_e
    return-void
.end method
