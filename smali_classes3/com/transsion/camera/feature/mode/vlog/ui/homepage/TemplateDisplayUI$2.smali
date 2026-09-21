.class Lcom/transsion/camera/feature/mode/vlog/ui/homepage/TemplateDisplayUI$2;
.super Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/mode/vlog/ui/homepage/TemplateDisplayUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/feature/mode/vlog/ui/homepage/TemplateDisplayUI;


# direct methods
.method constructor <init>(Lcom/transsion/camera/feature/mode/vlog/ui/homepage/TemplateDisplayUI;)V
    .registers 2

    .line 487
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/homepage/TemplateDisplayUI$2;->this$0:Lcom/transsion/camera/feature/mode/vlog/ui/homepage/TemplateDisplayUI;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrollStateChanged(Landroidx/recyclerview/widget/RecyclerView;I)V
    .registers 4

    .line 490
    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;->onScrollStateChanged(Landroidx/recyclerview/widget/RecyclerView;I)V

    .line 491
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/homepage/TemplateDisplayUI$2;->this$0:Lcom/transsion/camera/feature/mode/vlog/ui/homepage/TemplateDisplayUI;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/vlog/ui/homepage/TemplateDisplayUI;->-$$Nest$fgetmIsTempDetailMoving(Lcom/transsion/camera/feature/mode/vlog/ui/homepage/TemplateDisplayUI;)Z

    move-result v0

    if-eqz v0, :cond_13

    if-nez p2, :cond_13

    .line 492
    iget-object p2, p0, Lcom/transsion/camera/feature/mode/vlog/ui/homepage/TemplateDisplayUI$2;->this$0:Lcom/transsion/camera/feature/mode/vlog/ui/homepage/TemplateDisplayUI;

    const/4 v0, 0x0

    invoke-static {p2, v0}, Lcom/transsion/camera/feature/mode/vlog/ui/homepage/TemplateDisplayUI;->-$$Nest$fputmIsTempDetailMoving(Lcom/transsion/camera/feature/mode/vlog/ui/homepage/TemplateDisplayUI;Z)V

    .line 495
    :cond_13
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object p2

    if-eqz p2, :cond_22

    .line 496
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/homepage/TemplateDisplayUI$2;->this$0:Lcom/transsion/camera/feature/mode/vlog/ui/homepage/TemplateDisplayUI;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/transsion/camera/feature/mode/vlog/ui/homepage/TemplateDisplayUI;->-$$Nest$mupdatePositionAndOffset(Lcom/transsion/camera/feature/mode/vlog/ui/homepage/TemplateDisplayUI;Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    :cond_22
    return-void
.end method
