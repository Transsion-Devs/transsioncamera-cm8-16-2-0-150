.class public final Lcom/gallery20/sdk/ai_art/databinding/DialogAiArtGuideBinding;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final indicator:Lcom/gallery20/sdk/ai_art/guide/ViewPagerIndicator;

.field private final rootView:Lcom/gallery20/sdk/ai_art/guide/TouchListenerConstraintLayout;

.field public final viewPager:Landroidx/viewpager2/widget/ViewPager2;


# direct methods
.method private constructor <init>(Lcom/gallery20/sdk/ai_art/guide/TouchListenerConstraintLayout;Lcom/gallery20/sdk/ai_art/guide/ViewPagerIndicator;Landroidx/viewpager2/widget/ViewPager2;)V
    .registers 4

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/gallery20/sdk/ai_art/databinding/DialogAiArtGuideBinding;->rootView:Lcom/gallery20/sdk/ai_art/guide/TouchListenerConstraintLayout;

    .line 32
    iput-object p2, p0, Lcom/gallery20/sdk/ai_art/databinding/DialogAiArtGuideBinding;->indicator:Lcom/gallery20/sdk/ai_art/guide/ViewPagerIndicator;

    .line 33
    iput-object p3, p0, Lcom/gallery20/sdk/ai_art/databinding/DialogAiArtGuideBinding;->viewPager:Landroidx/viewpager2/widget/ViewPager2;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/gallery20/sdk/ai_art/databinding/DialogAiArtGuideBinding;
    .registers 4

    .line 63
    sget v0, Lcom/gallery20/sdk/ai_art/R$id;->indicator:I

    .line 64
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/gallery20/sdk/ai_art/guide/ViewPagerIndicator;

    if-eqz v1, :cond_1c

    .line 69
    sget v0, Lcom/gallery20/sdk/ai_art/R$id;->view_pager:I

    .line 70
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroidx/viewpager2/widget/ViewPager2;

    if-eqz v2, :cond_1c

    .line 75
    new-instance v0, Lcom/gallery20/sdk/ai_art/databinding/DialogAiArtGuideBinding;

    check-cast p0, Lcom/gallery20/sdk/ai_art/guide/TouchListenerConstraintLayout;

    invoke-direct {v0, p0, v1, v2}, Lcom/gallery20/sdk/ai_art/databinding/DialogAiArtGuideBinding;-><init>(Lcom/gallery20/sdk/ai_art/guide/TouchListenerConstraintLayout;Lcom/gallery20/sdk/ai_art/guide/ViewPagerIndicator;Landroidx/viewpager2/widget/ViewPager2;)V

    return-object v0

    .line 78
    :cond_1c
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p0

    .line 79
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Missing required view with ID: "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/gallery20/sdk/ai_art/databinding/DialogAiArtGuideBinding;
    .registers 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 44
    invoke-static {p0, v0, v1}, Lcom/gallery20/sdk/ai_art/databinding/DialogAiArtGuideBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/gallery20/sdk/ai_art/databinding/DialogAiArtGuideBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/gallery20/sdk/ai_art/databinding/DialogAiArtGuideBinding;
    .registers 5

    .line 50
    sget v0, Lcom/gallery20/sdk/ai_art/R$layout;->dialog_ai_art_guide:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_c

    .line 52
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 54
    :cond_c
    invoke-static {p0}, Lcom/gallery20/sdk/ai_art/databinding/DialogAiArtGuideBinding;->bind(Landroid/view/View;)Lcom/gallery20/sdk/ai_art/databinding/DialogAiArtGuideBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .registers 1

    .line 19
    invoke-virtual {p0}, Lcom/gallery20/sdk/ai_art/databinding/DialogAiArtGuideBinding;->getRoot()Lcom/gallery20/sdk/ai_art/guide/TouchListenerConstraintLayout;

    move-result-object p0

    return-object p0
.end method

.method public getRoot()Lcom/gallery20/sdk/ai_art/guide/TouchListenerConstraintLayout;
    .registers 1

    .line 39
    iget-object p0, p0, Lcom/gallery20/sdk/ai_art/databinding/DialogAiArtGuideBinding;->rootView:Lcom/gallery20/sdk/ai_art/guide/TouchListenerConstraintLayout;

    return-object p0
.end method
