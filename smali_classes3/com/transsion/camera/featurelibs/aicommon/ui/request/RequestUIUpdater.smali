.class public Lcom/transsion/camera/featurelibs/aicommon/ui/request/RequestUIUpdater;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/featurelibs/aicommon/ui/request/IItemListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/featurelibs/aicommon/ui/request/RequestUIUpdater$DiffCallback;
    }
.end annotation


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private final mAdapter:Lcom/transsion/camera/featurelibs/aicommon/ui/request/RequestAdapter;

.field private final mEmptyView:Landroid/view/View;

.field private final mRequestList:Landroid/view/View;


# direct methods
.method public static synthetic $r8$lambda$8ppXe3N6J8uuPxlRUERAHX936tk(Lcom/transsion/camera/featurelibs/aicommon/ui/request/RequestUIUpdater;Ljava/util/List;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/featurelibs/aicommon/ui/request/RequestUIUpdater;->lambda$onItemStatusChanged$0(Ljava/util/List;)V

    return-void
.end method

.method public static synthetic $r8$lambda$qCUzw_ZzLn0M-gTH8kil73u_eWw(Lcom/transsion/camera/featurelibs/aicommon/ui/request/RequestUIUpdater;Lcom/transsion/camera/featurelibs/aicommon/ui/request/item/RequestItem;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/featurelibs/aicommon/ui/request/RequestUIUpdater;->lambda$onItemProgressChanged$1(Lcom/transsion/camera/featurelibs/aicommon/ui/request/item/RequestItem;)V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 30
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "RequestUIUpdater"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/featurelibs/aicommon/ui/request/RequestUIUpdater;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Lcom/transsion/camera/featurelibs/aicommon/ui/request/RequestAdapter;Landroid/view/View;Landroid/view/View;)V
    .registers 4

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Lcom/transsion/camera/featurelibs/aicommon/ui/request/RequestUIUpdater;->mAdapter:Lcom/transsion/camera/featurelibs/aicommon/ui/request/RequestAdapter;

    .line 40
    iput-object p2, p0, Lcom/transsion/camera/featurelibs/aicommon/ui/request/RequestUIUpdater;->mRequestList:Landroid/view/View;

    .line 41
    iput-object p3, p0, Lcom/transsion/camera/featurelibs/aicommon/ui/request/RequestUIUpdater;->mEmptyView:Landroid/view/View;

    return-void
.end method

.method private synthetic lambda$onItemProgressChanged$1(Lcom/transsion/camera/featurelibs/aicommon/ui/request/item/RequestItem;)V
    .registers 4

    .line 74
    iget-object v0, p0, Lcom/transsion/camera/featurelibs/aicommon/ui/request/RequestUIUpdater;->mAdapter:Lcom/transsion/camera/featurelibs/aicommon/ui/request/RequestAdapter;

    invoke-virtual {v0}, Lcom/transsion/camera/featurelibs/aicommon/ui/request/RequestAdapter;->items()Ljava/util/List;

    move-result-object v0

    .line 76
    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    if-gez v0, :cond_23

    .line 78
    sget-object p0, Lcom/transsion/camera/featurelibs/aicommon/ui/request/RequestUIUpdater;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onProgressChanged invalid index: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 82
    :cond_23
    iget-object p0, p0, Lcom/transsion/camera/featurelibs/aicommon/ui/request/RequestUIUpdater;->mAdapter:Lcom/transsion/camera/featurelibs/aicommon/ui/request/RequestAdapter;

    invoke-virtual {p1}, Lcom/transsion/camera/featurelibs/aicommon/ui/request/item/RequestItem;->request()Lcom/transsion/camera/app/common/ai/AIRequest;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/ai/AIRequest;->getProgress()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(ILjava/lang/Object;)V

    return-void
.end method

.method private synthetic lambda$onItemStatusChanged$0(Ljava/util/List;)V
    .registers 6

    .line 48
    iget-object v0, p0, Lcom/transsion/camera/featurelibs/aicommon/ui/request/RequestUIUpdater;->mAdapter:Lcom/transsion/camera/featurelibs/aicommon/ui/request/RequestAdapter;

    invoke-virtual {v0}, Lcom/transsion/camera/featurelibs/aicommon/ui/request/RequestAdapter;->items()Ljava/util/List;

    move-result-object v0

    .line 50
    sget-object v1, Lcom/transsion/camera/featurelibs/aicommon/ui/request/RequestUIUpdater;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onItemStatusChangedExecuted adapterItems: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", itemList: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 52
    new-instance v1, Lcom/transsion/camera/featurelibs/aicommon/ui/request/RequestUIUpdater$DiffCallback;

    const/4 v2, 0x0

    invoke-direct {v1, v0, p1, v2}, Lcom/transsion/camera/featurelibs/aicommon/ui/request/RequestUIUpdater$DiffCallback;-><init>(Ljava/util/List;Ljava/util/List;Lcom/transsion/camera/featurelibs/aicommon/ui/request/RequestUIUpdater-IA;)V

    invoke-static {v1}, Landroidx/recyclerview/widget/DiffUtil;->calculateDiff(Landroidx/recyclerview/widget/DiffUtil$Callback;)Landroidx/recyclerview/widget/DiffUtil$DiffResult;

    move-result-object v1

    .line 53
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 54
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 55
    iget-object v0, p0, Lcom/transsion/camera/featurelibs/aicommon/ui/request/RequestUIUpdater;->mAdapter:Lcom/transsion/camera/featurelibs/aicommon/ui/request/RequestAdapter;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/DiffUtil$DiffResult;->dispatchUpdatesTo(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 57
    invoke-direct {p0, p1}, Lcom/transsion/camera/featurelibs/aicommon/ui/request/RequestUIUpdater;->updateVisibility(Ljava/util/List;)V

    return-void
.end method

.method private updateVisibility(Ljava/util/List;)V
    .registers 4

    .line 62
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    const/16 v0, 0x8

    const/4 v1, 0x0

    if-nez p1, :cond_14

    .line 63
    iget-object p1, p0, Lcom/transsion/camera/featurelibs/aicommon/ui/request/RequestUIUpdater;->mRequestList:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 64
    iget-object p0, p0, Lcom/transsion/camera/featurelibs/aicommon/ui/request/RequestUIUpdater;->mEmptyView:Landroid/view/View;

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    return-void

    .line 66
    :cond_14
    iget-object p1, p0, Lcom/transsion/camera/featurelibs/aicommon/ui/request/RequestUIUpdater;->mRequestList:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 67
    iget-object p0, p0, Lcom/transsion/camera/featurelibs/aicommon/ui/request/RequestUIUpdater;->mEmptyView:Landroid/view/View;

    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method


# virtual methods
.method public onItemProgressChanged(Lcom/transsion/camera/featurelibs/aicommon/ui/request/item/RequestItem;)V
    .registers 3

    .line 73
    new-instance v0, Lcom/transsion/camera/featurelibs/aicommon/ui/request/RequestUIUpdater$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0, p1}, Lcom/transsion/camera/featurelibs/aicommon/ui/request/RequestUIUpdater$$ExternalSyntheticLambda1;-><init>(Lcom/transsion/camera/featurelibs/aicommon/ui/request/RequestUIUpdater;Lcom/transsion/camera/featurelibs/aicommon/ui/request/item/RequestItem;)V

    invoke-static {v0}, Lcom/transsion/camera/utils/UIUtils;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onItemStatusChanged(Ljava/util/List;)V
    .registers 4

    .line 46
    sget-object v0, Lcom/transsion/camera/featurelibs/aicommon/ui/request/RequestUIUpdater;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "onItemStatusChanged"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 47
    new-instance v0, Lcom/transsion/camera/featurelibs/aicommon/ui/request/RequestUIUpdater$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1}, Lcom/transsion/camera/featurelibs/aicommon/ui/request/RequestUIUpdater$$ExternalSyntheticLambda0;-><init>(Lcom/transsion/camera/featurelibs/aicommon/ui/request/RequestUIUpdater;Ljava/util/List;)V

    invoke-static {v0}, Lcom/transsion/camera/utils/UIUtils;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method
