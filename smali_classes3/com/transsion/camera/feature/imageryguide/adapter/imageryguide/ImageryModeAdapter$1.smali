.class Lcom/transsion/camera/feature/imageryguide/adapter/imageryguide/ImageryModeAdapter$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/camera/feature/imageryguide/adapter/imageryguide/ImageryModeAdapter;->onBindRecyclerViewData(Lcom/transsion/camera/feature/imageryguide/adapter/imageryguide/ImageryModeAdapter$ModePagerHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$recyclerView:Landroidx/recyclerview/widget/RecyclerView;


# direct methods
.method constructor <init>(Lcom/transsion/camera/feature/imageryguide/adapter/imageryguide/ImageryModeAdapter;Landroidx/recyclerview/widget/RecyclerView;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 89
    iput-object p2, p0, Lcom/transsion/camera/feature/imageryguide/adapter/imageryguide/ImageryModeAdapter$1;->val$recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .registers 2

    .line 92
    iget-object v0, p0, Lcom/transsion/camera/feature/imageryguide/adapter/imageryguide/ImageryModeAdapter$1;->val$recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 93
    iget-object v0, p0, Lcom/transsion/camera/feature/imageryguide/adapter/imageryguide/ImageryModeAdapter$1;->val$recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 94
    iget-object p0, p0, Lcom/transsion/camera/feature/imageryguide/adapter/imageryguide/ImageryModeAdapter$1;->val$recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->invalidateItemDecorations()V

    return-void
.end method
