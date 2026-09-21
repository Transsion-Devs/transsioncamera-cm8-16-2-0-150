.class Lcom/transsion/camera/feature/mode/vlog/ui/adapter/SegmentAdapter$SegmentViewHolder$1;
.super Landroid/view/ViewOutlineProvider;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/camera/feature/mode/vlog/ui/adapter/SegmentAdapter$SegmentViewHolder;-><init>(Lcom/transsion/camera/feature/mode/vlog/ui/adapter/SegmentAdapter;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/transsion/camera/feature/mode/vlog/ui/adapter/SegmentAdapter$SegmentViewHolder;

.field final synthetic val$this$0:Lcom/transsion/camera/feature/mode/vlog/ui/adapter/SegmentAdapter;


# direct methods
.method constructor <init>(Lcom/transsion/camera/feature/mode/vlog/ui/adapter/SegmentAdapter$SegmentViewHolder;Lcom/transsion/camera/feature/mode/vlog/ui/adapter/SegmentAdapter;)V
    .registers 3

    .line 295
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/adapter/SegmentAdapter$SegmentViewHolder$1;->this$1:Lcom/transsion/camera/feature/mode/vlog/ui/adapter/SegmentAdapter$SegmentViewHolder;

    iput-object p2, p0, Lcom/transsion/camera/feature/mode/vlog/ui/adapter/SegmentAdapter$SegmentViewHolder$1;->val$this$0:Lcom/transsion/camera/feature/mode/vlog/ui/adapter/SegmentAdapter;

    invoke-direct {p0}, Landroid/view/ViewOutlineProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public getOutline(Landroid/view/View;Landroid/graphics/Outline;)V
    .registers 9

    .line 298
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v3

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v4

    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/adapter/SegmentAdapter$SegmentViewHolder$1;->this$1:Lcom/transsion/camera/feature/mode/vlog/ui/adapter/SegmentAdapter$SegmentViewHolder;

    invoke-static {p0}, Lcom/transsion/camera/feature/mode/vlog/ui/adapter/SegmentAdapter$SegmentViewHolder;->-$$Nest$fgetitemRoot(Lcom/transsion/camera/feature/mode/vlog/ui/adapter/SegmentAdapter$SegmentViewHolder;)Landroid/widget/FrameLayout;

    move-result-object p0

    .line 299
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget p1, Lcom/transsion/camera/feature/vlog/R$dimen;->vlog_template_background_radius:I

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    int-to-float v5, p0

    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v0, p2

    .line 298
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Outline;->setRoundRect(IIIIF)V

    return-void
.end method
