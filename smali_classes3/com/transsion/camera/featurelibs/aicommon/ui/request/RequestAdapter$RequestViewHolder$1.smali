.class Lcom/transsion/camera/featurelibs/aicommon/ui/request/RequestAdapter$RequestViewHolder$1;
.super Landroid/view/ViewOutlineProvider;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/camera/featurelibs/aicommon/ui/request/RequestAdapter$RequestViewHolder;-><init>(Lcom/transsion/camera/featurelibs/aicommon/ui/request/RequestAdapter;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$this$0:Lcom/transsion/camera/featurelibs/aicommon/ui/request/RequestAdapter;


# direct methods
.method constructor <init>(Lcom/transsion/camera/featurelibs/aicommon/ui/request/RequestAdapter$RequestViewHolder;Lcom/transsion/camera/featurelibs/aicommon/ui/request/RequestAdapter;)V
    .registers 3

    .line 279
    iput-object p2, p0, Lcom/transsion/camera/featurelibs/aicommon/ui/request/RequestAdapter$RequestViewHolder$1;->val$this$0:Lcom/transsion/camera/featurelibs/aicommon/ui/request/RequestAdapter;

    invoke-direct {p0}, Landroid/view/ViewOutlineProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public getOutline(Landroid/view/View;Landroid/graphics/Outline;)V
    .registers 9

    .line 282
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v3

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v4

    .line 283
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget p1, Lcom/transsion/camera/featurelibs/aicommon/R$dimen;->ai_fragment_list_item_thumbnail_radius_size:I

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    int-to-float v5, p0

    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v0, p2

    .line 282
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Outline;->setRoundRect(IIIIF)V

    return-void
.end method
