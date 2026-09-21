.class Lcom/transsion/camera/feature/imageryguide/ui/DetailGuideUI$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/imageryguide/ui/DetailGuideUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/feature/imageryguide/ui/DetailGuideUI;


# direct methods
.method public static synthetic $r8$lambda$pRkzKreu6XDXogXDJZMRpl4Lc64(Lcom/transsion/camera/feature/imageryguide/ui/DetailGuideUI$1;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/feature/imageryguide/ui/DetailGuideUI$1;->lambda$onGlobalLayout$0()V

    return-void
.end method

.method constructor <init>(Lcom/transsion/camera/feature/imageryguide/ui/DetailGuideUI;)V
    .registers 2

    .line 267
    iput-object p1, p0, Lcom/transsion/camera/feature/imageryguide/ui/DetailGuideUI$1;->this$0:Lcom/transsion/camera/feature/imageryguide/ui/DetailGuideUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private synthetic lambda$onGlobalLayout$0()V
    .registers 1

    .line 273
    iget-object p0, p0, Lcom/transsion/camera/feature/imageryguide/ui/DetailGuideUI$1;->this$0:Lcom/transsion/camera/feature/imageryguide/ui/DetailGuideUI;

    invoke-static {p0}, Lcom/transsion/camera/feature/imageryguide/ui/DetailGuideUI;->-$$Nest$mstartEnterAnimation(Lcom/transsion/camera/feature/imageryguide/ui/DetailGuideUI;)V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .registers 3

    .line 270
    iget-object v0, p0, Lcom/transsion/camera/feature/imageryguide/ui/DetailGuideUI$1;->this$0:Lcom/transsion/camera/feature/imageryguide/ui/DetailGuideUI;

    invoke-static {v0}, Lcom/transsion/camera/feature/imageryguide/ui/DetailGuideUI;->-$$Nest$fgetmRecyclerView(Lcom/transsion/camera/feature/imageryguide/ui/DetailGuideUI;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_2b

    .line 271
    iget-object v0, p0, Lcom/transsion/camera/feature/imageryguide/ui/DetailGuideUI$1;->this$0:Lcom/transsion/camera/feature/imageryguide/ui/DetailGuideUI;

    invoke-static {v0}, Lcom/transsion/camera/feature/imageryguide/ui/DetailGuideUI;->-$$Nest$mmoveToPosition(Lcom/transsion/camera/feature/imageryguide/ui/DetailGuideUI;)V

    .line 272
    iget-object v0, p0, Lcom/transsion/camera/feature/imageryguide/ui/DetailGuideUI$1;->this$0:Lcom/transsion/camera/feature/imageryguide/ui/DetailGuideUI;

    invoke-static {v0}, Lcom/transsion/camera/feature/imageryguide/ui/DetailGuideUI;->-$$Nest$fgetmTopMaskView(Lcom/transsion/camera/feature/imageryguide/ui/DetailGuideUI;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_2b

    .line 273
    iget-object v0, p0, Lcom/transsion/camera/feature/imageryguide/ui/DetailGuideUI$1;->this$0:Lcom/transsion/camera/feature/imageryguide/ui/DetailGuideUI;

    invoke-static {v0}, Lcom/transsion/camera/feature/imageryguide/ui/DetailGuideUI;->-$$Nest$fgetmRecyclerView(Lcom/transsion/camera/feature/imageryguide/ui/DetailGuideUI;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    new-instance v1, Lcom/transsion/camera/feature/imageryguide/ui/DetailGuideUI$1$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/transsion/camera/feature/imageryguide/ui/DetailGuideUI$1$$ExternalSyntheticLambda0;-><init>(Lcom/transsion/camera/feature/imageryguide/ui/DetailGuideUI$1;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 277
    :cond_2b
    iget-object v0, p0, Lcom/transsion/camera/feature/imageryguide/ui/DetailGuideUI$1;->this$0:Lcom/transsion/camera/feature/imageryguide/ui/DetailGuideUI;

    invoke-static {v0}, Lcom/transsion/camera/feature/imageryguide/ui/DetailGuideUI;->-$$Nest$fgetmRecyclerView(Lcom/transsion/camera/feature/imageryguide/ui/DetailGuideUI;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 278
    iget-object v0, p0, Lcom/transsion/camera/feature/imageryguide/ui/DetailGuideUI$1;->this$0:Lcom/transsion/camera/feature/imageryguide/ui/DetailGuideUI;

    invoke-static {v0}, Lcom/transsion/camera/feature/imageryguide/ui/DetailGuideUI;->-$$Nest$fgetmRecyclerView(Lcom/transsion/camera/feature/imageryguide/ui/DetailGuideUI;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    iget-object p0, p0, Lcom/transsion/camera/feature/imageryguide/ui/DetailGuideUI$1;->this$0:Lcom/transsion/camera/feature/imageryguide/ui/DetailGuideUI;

    invoke-static {p0}, Lcom/transsion/camera/feature/imageryguide/ui/DetailGuideUI;->-$$Nest$fgetmDetailGuideScrollListener(Lcom/transsion/camera/feature/imageryguide/ui/DetailGuideUI;)Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    return-void
.end method
