.class public final Lcom/gallery20/sdk/ai_art/guide/AIArtGuideAdapter$ViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gallery20/sdk/ai_art/guide/AIArtGuideAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ViewHolder"
.end annotation


# instance fields
.field private final binding:Lcom/gallery20/sdk/ai_art/databinding/ItemAiArtGuideBinding;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .registers 3

    const-string v0, "itemView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 19
    invoke-static {p1}, Lcom/gallery20/sdk/ai_art/databinding/ItemAiArtGuideBinding;->bind(Landroid/view/View;)Lcom/gallery20/sdk/ai_art/databinding/ItemAiArtGuideBinding;

    move-result-object p1

    const-string v0, "bind(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/gallery20/sdk/ai_art/guide/AIArtGuideAdapter$ViewHolder;->binding:Lcom/gallery20/sdk/ai_art/databinding/ItemAiArtGuideBinding;

    return-void
.end method


# virtual methods
.method public final getBinding()Lcom/gallery20/sdk/ai_art/databinding/ItemAiArtGuideBinding;
    .registers 1

    .line 19
    iget-object p0, p0, Lcom/gallery20/sdk/ai_art/guide/AIArtGuideAdapter$ViewHolder;->binding:Lcom/gallery20/sdk/ai_art/databinding/ItemAiArtGuideBinding;

    return-object p0
.end method
