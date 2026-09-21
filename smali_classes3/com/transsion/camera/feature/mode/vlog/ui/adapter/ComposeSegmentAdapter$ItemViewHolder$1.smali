.class Lcom/transsion/camera/feature/mode/vlog/ui/adapter/ComposeSegmentAdapter$ItemViewHolder$1;
.super Landroid/view/ViewOutlineProvider;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/camera/feature/mode/vlog/ui/adapter/ComposeSegmentAdapter$ItemViewHolder;-><init>(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/feature/mode/vlog/ui/adapter/ComposeSegmentAdapter$ItemViewHolder;


# direct methods
.method constructor <init>(Lcom/transsion/camera/feature/mode/vlog/ui/adapter/ComposeSegmentAdapter$ItemViewHolder;)V
    .registers 2

    .line 59
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/adapter/ComposeSegmentAdapter$ItemViewHolder$1;->this$0:Lcom/transsion/camera/feature/mode/vlog/ui/adapter/ComposeSegmentAdapter$ItemViewHolder;

    invoke-direct {p0}, Landroid/view/ViewOutlineProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public getOutline(Landroid/view/View;Landroid/graphics/Outline;)V
    .registers 10

    .line 62
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/adapter/ComposeSegmentAdapter$ItemViewHolder$1;->this$0:Lcom/transsion/camera/feature/mode/vlog/ui/adapter/ComposeSegmentAdapter$ItemViewHolder;

    iget-object v0, v0, Lcom/transsion/camera/feature/mode/vlog/ui/adapter/ComposeSegmentAdapter$ItemViewHolder;->ivCoverItem:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v4

    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/adapter/ComposeSegmentAdapter$ItemViewHolder$1;->this$0:Lcom/transsion/camera/feature/mode/vlog/ui/adapter/ComposeSegmentAdapter$ItemViewHolder;

    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/adapter/ComposeSegmentAdapter$ItemViewHolder;->ivCoverItem:Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v5

    .line 63
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget p1, Lcom/transsion/camera/feature/vlog/R$dimen;->vlog_template_background_radius:I

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    int-to-float v6, p0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v1, p2

    .line 62
    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Outline;->setRoundRect(IIIIF)V

    return-void
.end method
