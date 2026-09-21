.class public final Lcom/transsion/camera/feature/mode/vlog/ui/adapter/TemplateDetailAdapter$ContentViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/mode/vlog/ui/adapter/TemplateDetailAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ContentViewHolder"
.end annotation


# instance fields
.field public templateBackgroundImg:Landroid/widget/ImageView;

.field public templateImg:Landroid/widget/ImageView;

.field public templateItemCover:Landroid/widget/ImageView;

.field public templateName:Landroid/widget/TextView;

.field public templateRvContainer:Landroid/widget/FrameLayout;

.field public templateRvRoot:Landroid/widget/FrameLayout;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .registers 4

    .line 144
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 145
    sget v0, Lcom/transsion/camera/feature/vlog/R$id;->template_item_root:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/adapter/TemplateDetailAdapter$ContentViewHolder;->templateRvRoot:Landroid/widget/FrameLayout;

    .line 146
    sget v0, Lcom/transsion/camera/feature/vlog/R$id;->template_item_cover_img:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/adapter/TemplateDetailAdapter$ContentViewHolder;->templateImg:Landroid/widget/ImageView;

    .line 147
    sget v0, Lcom/transsion/camera/feature/vlog/R$id;->template_background_img:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/adapter/TemplateDetailAdapter$ContentViewHolder;->templateBackgroundImg:Landroid/widget/ImageView;

    .line 148
    sget v0, Lcom/transsion/camera/feature/vlog/R$id;->template_item_title:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/adapter/TemplateDetailAdapter$ContentViewHolder;->templateName:Landroid/widget/TextView;

    .line 149
    sget v0, Lcom/transsion/camera/feature/vlog/R$id;->vlog_item_selected:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/adapter/TemplateDetailAdapter$ContentViewHolder;->templateItemCover:Landroid/widget/ImageView;

    .line 151
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/adapter/TemplateDetailAdapter$ContentViewHolder;->templateImg:Landroid/widget/ImageView;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/View;->setClipToOutline(Z)V

    .line 152
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/adapter/TemplateDetailAdapter$ContentViewHolder;->templateImg:Landroid/widget/ImageView;

    new-instance v1, Lcom/transsion/camera/feature/mode/vlog/ui/adapter/TemplateDetailAdapter$ContentViewHolder$1;

    invoke-direct {v1, p0}, Lcom/transsion/camera/feature/mode/vlog/ui/adapter/TemplateDetailAdapter$ContentViewHolder$1;-><init>(Lcom/transsion/camera/feature/mode/vlog/ui/adapter/TemplateDetailAdapter$ContentViewHolder;)V

    invoke-virtual {p1, v1}, Landroid/view/View;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    .line 160
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/adapter/TemplateDetailAdapter$ContentViewHolder;->templateBackgroundImg:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/view/View;->setClipToOutline(Z)V

    .line 161
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/adapter/TemplateDetailAdapter$ContentViewHolder;->templateBackgroundImg:Landroid/widget/ImageView;

    new-instance v0, Lcom/transsion/camera/feature/mode/vlog/ui/adapter/TemplateDetailAdapter$ContentViewHolder$2;

    invoke-direct {v0, p0}, Lcom/transsion/camera/feature/mode/vlog/ui/adapter/TemplateDetailAdapter$ContentViewHolder$2;-><init>(Lcom/transsion/camera/feature/mode/vlog/ui/adapter/TemplateDetailAdapter$ContentViewHolder;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    return-void
.end method
