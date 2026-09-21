.class Lcom/transsion/camera/feature/imageryguide/ui/ImageryGuideUI$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/imageryguide/ui/ImageryGuideUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/feature/imageryguide/ui/ImageryGuideUI;


# direct methods
.method constructor <init>(Lcom/transsion/camera/feature/imageryguide/ui/ImageryGuideUI;)V
    .registers 2

    .line 136
    iput-object p1, p0, Lcom/transsion/camera/feature/imageryguide/ui/ImageryGuideUI$1;->this$0:Lcom/transsion/camera/feature/imageryguide/ui/ImageryGuideUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .registers 3

    .line 140
    iget-object v0, p0, Lcom/transsion/camera/feature/imageryguide/ui/ImageryGuideUI$1;->this$0:Lcom/transsion/camera/feature/imageryguide/ui/ImageryGuideUI;

    invoke-static {v0}, Lcom/transsion/camera/feature/imageryguide/ui/ImageryGuideUI;->-$$Nest$fgetmImageryGuideRecyclerView(Lcom/transsion/camera/feature/imageryguide/ui/ImageryGuideUI;)Lcom/transsion/widgetslib/view/damping/OSRefreshRecyclerView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/widgetslib/view/damping/OSRefreshRecyclerView;->getHeaderHelper()Lcom/transsion/widgetslib/view/damping/HeaderHelper;

    move-result-object v0

    .line 141
    invoke-virtual {v0}, Lcom/transsion/widgetslib/view/damping/HeaderHelper;->getTextRefreshing()Landroid/widget/TextView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 142
    iget-object v0, p0, Lcom/transsion/camera/feature/imageryguide/ui/ImageryGuideUI$1;->this$0:Lcom/transsion/camera/feature/imageryguide/ui/ImageryGuideUI;

    invoke-static {v0}, Lcom/transsion/camera/feature/imageryguide/ui/ImageryGuideUI;->-$$Nest$fgetmImageryGuideRecyclerView(Lcom/transsion/camera/feature/imageryguide/ui/ImageryGuideUI;)Lcom/transsion/widgetslib/view/damping/OSRefreshRecyclerView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_24

    .line 143
    iget-object v0, p0, Lcom/transsion/camera/feature/imageryguide/ui/ImageryGuideUI$1;->this$0:Lcom/transsion/camera/feature/imageryguide/ui/ImageryGuideUI;

    invoke-static {v0}, Lcom/transsion/camera/feature/imageryguide/ui/ImageryGuideUI;->-$$Nest$mstartEnterAnimation(Lcom/transsion/camera/feature/imageryguide/ui/ImageryGuideUI;)V

    .line 145
    :cond_24
    iget-object v0, p0, Lcom/transsion/camera/feature/imageryguide/ui/ImageryGuideUI$1;->this$0:Lcom/transsion/camera/feature/imageryguide/ui/ImageryGuideUI;

    invoke-static {v0}, Lcom/transsion/camera/feature/imageryguide/ui/ImageryGuideUI;->-$$Nest$fgetmImageryGuideRecyclerView(Lcom/transsion/camera/feature/imageryguide/ui/ImageryGuideUI;)Lcom/transsion/widgetslib/view/damping/OSRefreshRecyclerView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return-void
.end method
