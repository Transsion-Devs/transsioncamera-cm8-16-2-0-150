.class public final Lcom/gallery20/sdk/ai_art/databinding/ItemAiArtGuideBinding;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final description:Landroid/widget/TextView;

.field public final hintForAi:Landroid/widget/TextView;

.field public final image:Landroid/widget/ImageView;

.field private final rootView:Landroidx/constraintlayout/widget/ConstraintLayout;

.field public final scrollView:Landroid/widget/ScrollView;

.field public final title:Landroid/widget/TextView;


# direct methods
.method private constructor <init>(Landroidx/constraintlayout/widget/ConstraintLayout;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/ImageView;Landroid/widget/ScrollView;Landroid/widget/TextView;)V
    .registers 7

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p1, p0, Lcom/gallery20/sdk/ai_art/databinding/ItemAiArtGuideBinding;->rootView:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 43
    iput-object p2, p0, Lcom/gallery20/sdk/ai_art/databinding/ItemAiArtGuideBinding;->description:Landroid/widget/TextView;

    .line 44
    iput-object p3, p0, Lcom/gallery20/sdk/ai_art/databinding/ItemAiArtGuideBinding;->hintForAi:Landroid/widget/TextView;

    .line 45
    iput-object p4, p0, Lcom/gallery20/sdk/ai_art/databinding/ItemAiArtGuideBinding;->image:Landroid/widget/ImageView;

    .line 46
    iput-object p5, p0, Lcom/gallery20/sdk/ai_art/databinding/ItemAiArtGuideBinding;->scrollView:Landroid/widget/ScrollView;

    .line 47
    iput-object p6, p0, Lcom/gallery20/sdk/ai_art/databinding/ItemAiArtGuideBinding;->title:Landroid/widget/TextView;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/gallery20/sdk/ai_art/databinding/ItemAiArtGuideBinding;
    .registers 10

    .line 77
    sget v0, Lcom/gallery20/sdk/ai_art/R$id;->description:I

    .line 78
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Landroid/widget/TextView;

    if-eqz v4, :cond_40

    .line 83
    sget v0, Lcom/gallery20/sdk/ai_art/R$id;->hint_for_ai:I

    .line 84
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Landroid/widget/TextView;

    if-eqz v5, :cond_40

    .line 89
    sget v0, Lcom/gallery20/sdk/ai_art/R$id;->image:I

    .line 90
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Landroid/widget/ImageView;

    if-eqz v6, :cond_40

    .line 95
    sget v0, Lcom/gallery20/sdk/ai_art/R$id;->scroll_view:I

    .line 96
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Landroid/widget/ScrollView;

    if-eqz v7, :cond_40

    .line 101
    sget v0, Lcom/gallery20/sdk/ai_art/R$id;->title:I

    .line 102
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Landroid/widget/TextView;

    if-eqz v8, :cond_40

    .line 107
    new-instance v2, Lcom/gallery20/sdk/ai_art/databinding/ItemAiArtGuideBinding;

    move-object v3, p0

    check-cast v3, Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-direct/range {v2 .. v8}, Lcom/gallery20/sdk/ai_art/databinding/ItemAiArtGuideBinding;-><init>(Landroidx/constraintlayout/widget/ConstraintLayout;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/ImageView;Landroid/widget/ScrollView;Landroid/widget/TextView;)V

    return-object v2

    .line 110
    :cond_40
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p0

    .line 111
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Missing required view with ID: "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/gallery20/sdk/ai_art/databinding/ItemAiArtGuideBinding;
    .registers 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 58
    invoke-static {p0, v0, v1}, Lcom/gallery20/sdk/ai_art/databinding/ItemAiArtGuideBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/gallery20/sdk/ai_art/databinding/ItemAiArtGuideBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/gallery20/sdk/ai_art/databinding/ItemAiArtGuideBinding;
    .registers 5

    .line 64
    sget v0, Lcom/gallery20/sdk/ai_art/R$layout;->item_ai_art_guide:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_c

    .line 66
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 68
    :cond_c
    invoke-static {p0}, Lcom/gallery20/sdk/ai_art/databinding/ItemAiArtGuideBinding;->bind(Landroid/view/View;)Lcom/gallery20/sdk/ai_art/databinding/ItemAiArtGuideBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .registers 1

    .line 20
    invoke-virtual {p0}, Lcom/gallery20/sdk/ai_art/databinding/ItemAiArtGuideBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object p0

    return-object p0
.end method

.method public getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;
    .registers 1

    .line 53
    iget-object p0, p0, Lcom/gallery20/sdk/ai_art/databinding/ItemAiArtGuideBinding;->rootView:Landroidx/constraintlayout/widget/ConstraintLayout;

    return-object p0
.end method
