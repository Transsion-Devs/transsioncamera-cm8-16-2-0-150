.class Lcom/transsion/camera/app/ui/widget/VerticalModeRecyclerView$1;
.super Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/camera/app/ui/widget/VerticalModeRecyclerView;->init(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/app/ui/widget/VerticalModeRecyclerView;

.field final synthetic val$snapHelper:Landroidx/recyclerview/widget/SnapHelper;


# direct methods
.method public static synthetic $r8$lambda$Wml_CsvtEy54lgshn5CG6GEryGo(Lcom/transsion/camera/app/ui/widget/VerticalModeRecyclerView$1;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/widget/VerticalModeRecyclerView$1;->lambda$onScrolled$0()V

    return-void
.end method

.method constructor <init>(Lcom/transsion/camera/app/ui/widget/VerticalModeRecyclerView;Landroidx/recyclerview/widget/SnapHelper;)V
    .registers 3

    .line 102
    iput-object p1, p0, Lcom/transsion/camera/app/ui/widget/VerticalModeRecyclerView$1;->this$0:Lcom/transsion/camera/app/ui/widget/VerticalModeRecyclerView;

    iput-object p2, p0, Lcom/transsion/camera/app/ui/widget/VerticalModeRecyclerView$1;->val$snapHelper:Landroidx/recyclerview/widget/SnapHelper;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;-><init>()V

    return-void
.end method

.method private synthetic lambda$onScrolled$0()V
    .registers 2

    .line 145
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/VerticalModeRecyclerView$1;->this$0:Lcom/transsion/camera/app/ui/widget/VerticalModeRecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 146
    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/VerticalModeRecyclerView$1;->this$0:Lcom/transsion/camera/app/ui/widget/VerticalModeRecyclerView;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    :cond_11
    return-void
.end method


# virtual methods
.method public onScrollStateChanged(Landroidx/recyclerview/widget/RecyclerView;I)V
    .registers 7

    .line 105
    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;->onScrollStateChanged(Landroidx/recyclerview/widget/RecyclerView;I)V

    .line 107
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object p1

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_25

    .line 109
    iget-object v2, p0, Lcom/transsion/camera/app/ui/widget/VerticalModeRecyclerView$1;->val$snapHelper:Landroidx/recyclerview/widget/SnapHelper;

    invoke-virtual {v2, p1}, Landroidx/recyclerview/widget/SnapHelper;->findSnapView(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_25

    .line 111
    iget-object v3, p0, Lcom/transsion/camera/app/ui/widget/VerticalModeRecyclerView$1;->val$snapHelper:Landroidx/recyclerview/widget/SnapHelper;

    invoke-virtual {v3, p1, v2}, Landroidx/recyclerview/widget/SnapHelper;->calculateDistanceToFinalSnap(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;Landroid/view/View;)[I

    move-result-object p1

    if-eqz p1, :cond_24

    .line 112
    aget v2, p1, v1

    if-nez v2, :cond_25

    aget p1, p1, v0

    if-eqz p1, :cond_24

    goto :goto_25

    :cond_24
    move v1, v0

    .line 119
    :cond_25
    :goto_25
    invoke-static {}, Lcom/transsion/camera/app/ui/widget/VerticalModeRecyclerView;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onScrollStateChanged: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", isFinallyDistance: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", mIsDraggingDone: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/transsion/camera/app/ui/widget/VerticalModeRecyclerView$1;->this$0:Lcom/transsion/camera/app/ui/widget/VerticalModeRecyclerView;

    invoke-static {v3}, Lcom/transsion/camera/app/ui/widget/VerticalModeRecyclerView;->-$$Nest$fgetmIsDraggingDone(Lcom/transsion/camera/app/ui/widget/VerticalModeRecyclerView;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    if-nez p2, :cond_73

    if-eqz v1, :cond_73

    .line 122
    iget-object p1, p0, Lcom/transsion/camera/app/ui/widget/VerticalModeRecyclerView$1;->this$0:Lcom/transsion/camera/app/ui/widget/VerticalModeRecyclerView;

    invoke-static {p1}, Lcom/transsion/camera/app/ui/widget/VerticalModeRecyclerView;->-$$Nest$fgetmAdapter(Lcom/transsion/camera/app/ui/widget/VerticalModeRecyclerView;)Lcom/transsion/camera/app/ui/widget/VerticalModeRecyclerView$RecycleAdapter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/camera/app/ui/widget/VerticalModeRecyclerView$RecycleAdapter;->getCurSelectIndex()I

    move-result p1

    .line 124
    iget-object p2, p0, Lcom/transsion/camera/app/ui/widget/VerticalModeRecyclerView$1;->this$0:Lcom/transsion/camera/app/ui/widget/VerticalModeRecyclerView;

    invoke-static {p2}, Lcom/transsion/camera/app/ui/widget/VerticalModeRecyclerView;->-$$Nest$fgetmIsDraggingDone(Lcom/transsion/camera/app/ui/widget/VerticalModeRecyclerView;)Z

    move-result p2

    if-nez p2, :cond_6e

    .line 125
    iget-object p2, p0, Lcom/transsion/camera/app/ui/widget/VerticalModeRecyclerView$1;->this$0:Lcom/transsion/camera/app/ui/widget/VerticalModeRecyclerView;

    invoke-static {p2, p1}, Lcom/transsion/camera/app/ui/widget/VerticalModeRecyclerView;->-$$Nest$mnotifyChange(Lcom/transsion/camera/app/ui/widget/VerticalModeRecyclerView;I)V

    .line 127
    :cond_6e
    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/VerticalModeRecyclerView$1;->this$0:Lcom/transsion/camera/app/ui/widget/VerticalModeRecyclerView;

    invoke-static {p0, v0}, Lcom/transsion/camera/app/ui/widget/VerticalModeRecyclerView;->-$$Nest$fputmIsDraggingDone(Lcom/transsion/camera/app/ui/widget/VerticalModeRecyclerView;Z)V

    :cond_73
    return-void
.end method

.method public onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V
    .registers 5

    .line 133
    invoke-super {p0, p1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;->onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V

    .line 134
    iget-object p2, p0, Lcom/transsion/camera/app/ui/widget/VerticalModeRecyclerView$1;->this$0:Lcom/transsion/camera/app/ui/widget/VerticalModeRecyclerView;

    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView;->getScrollState()I

    move-result p2

    const/4 p3, 0x1

    if-ne p2, p3, :cond_49

    .line 135
    iget-object p2, p0, Lcom/transsion/camera/app/ui/widget/VerticalModeRecyclerView$1;->this$0:Lcom/transsion/camera/app/ui/widget/VerticalModeRecyclerView;

    const/4 v0, 0x0

    invoke-static {p2, v0}, Lcom/transsion/camera/app/ui/widget/VerticalModeRecyclerView;->-$$Nest$fputmIsDraggingDone(Lcom/transsion/camera/app/ui/widget/VerticalModeRecyclerView;Z)V

    .line 136
    iget-object p2, p0, Lcom/transsion/camera/app/ui/widget/VerticalModeRecyclerView$1;->val$snapHelper:Landroidx/recyclerview/widget/SnapHelper;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroidx/recyclerview/widget/SnapHelper;->findSnapView(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_49

    .line 138
    iget-object p2, p0, Lcom/transsion/camera/app/ui/widget/VerticalModeRecyclerView$1;->this$0:Lcom/transsion/camera/app/ui/widget/VerticalModeRecyclerView;

    invoke-static {p2}, Lcom/transsion/camera/app/ui/widget/VerticalModeRecyclerView;->-$$Nest$fgetmAdapter(Lcom/transsion/camera/app/ui/widget/VerticalModeRecyclerView;)Lcom/transsion/camera/app/ui/widget/VerticalModeRecyclerView$RecycleAdapter;

    move-result-object p2

    invoke-virtual {p2}, Lcom/transsion/camera/app/ui/widget/VerticalModeRecyclerView$RecycleAdapter;->getCurSelectIndex()I

    move-result p2

    .line 140
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/VerticalModeRecyclerView$1;->this$0:Lcom/transsion/camera/app/ui/widget/VerticalModeRecyclerView;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result p1

    sub-int/2addr p1, p3

    if-eq p2, p1, :cond_49

    .line 142
    iget-object p2, p0, Lcom/transsion/camera/app/ui/widget/VerticalModeRecyclerView$1;->this$0:Lcom/transsion/camera/app/ui/widget/VerticalModeRecyclerView;

    invoke-static {p2}, Lcom/transsion/camera/app/ui/widget/VerticalModeRecyclerView;->-$$Nest$fgetmAdapter(Lcom/transsion/camera/app/ui/widget/VerticalModeRecyclerView;)Lcom/transsion/camera/app/ui/widget/VerticalModeRecyclerView$RecycleAdapter;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/transsion/camera/app/ui/widget/VerticalModeRecyclerView$RecycleAdapter;->setSelectedIndex(I)V

    .line 143
    iget-object p1, p0, Lcom/transsion/camera/app/ui/widget/VerticalModeRecyclerView$1;->this$0:Lcom/transsion/camera/app/ui/widget/VerticalModeRecyclerView;

    invoke-static {p1}, Lcom/transsion/camera/app/ui/widget/VerticalModeRecyclerView;->-$$Nest$mstartVibrator(Lcom/transsion/camera/app/ui/widget/VerticalModeRecyclerView;)V

    .line 144
    iget-object p1, p0, Lcom/transsion/camera/app/ui/widget/VerticalModeRecyclerView$1;->this$0:Lcom/transsion/camera/app/ui/widget/VerticalModeRecyclerView;

    new-instance p2, Lcom/transsion/camera/app/ui/widget/VerticalModeRecyclerView$1$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0}, Lcom/transsion/camera/app/ui/widget/VerticalModeRecyclerView$1$$ExternalSyntheticLambda0;-><init>(Lcom/transsion/camera/app/ui/widget/VerticalModeRecyclerView$1;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_49
    return-void
.end method
