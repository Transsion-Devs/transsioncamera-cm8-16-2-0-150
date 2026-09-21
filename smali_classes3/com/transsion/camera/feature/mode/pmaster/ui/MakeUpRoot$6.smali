.class Lcom/transsion/camera/feature/mode/pmaster/ui/MakeUpRoot$6;
.super Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/mode/pmaster/ui/MakeUpRoot;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/feature/mode/pmaster/ui/MakeUpRoot;


# direct methods
.method constructor <init>(Lcom/transsion/camera/feature/mode/pmaster/ui/MakeUpRoot;)V
    .registers 2

    .line 644
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/MakeUpRoot$6;->this$0:Lcom/transsion/camera/feature/mode/pmaster/ui/MakeUpRoot;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;-><init>()V

    return-void
.end method


# virtual methods
.method public getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V
    .registers 8

    .line 647
    invoke-super {p0, p1, p2, p3, p4}, Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;->getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V

    .line 649
    invoke-virtual {p3, p2}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result p2

    .line 650
    invoke-virtual {p3}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p3

    if-nez p3, :cond_e

    goto :goto_14

    .line 654
    :cond_e
    invoke-virtual {p3}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    move-result p3

    if-gtz p3, :cond_15

    :goto_14
    return-void

    .line 658
    :cond_15
    iget-object p4, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/MakeUpRoot$6;->this$0:Lcom/transsion/camera/feature/mode/pmaster/ui/MakeUpRoot;

    invoke-virtual {p4}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p4

    sget v0, Lcom/transsion/camera/feature/pmaster/R$dimen;->pmu_recycler_view_first_item_padding_flip:I

    invoke-virtual {p4, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p4

    .line 659
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/MakeUpRoot$6;->this$0:Lcom/transsion/camera/feature/mode/pmaster/ui/MakeUpRoot;

    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/transsion/camera/feature/pmaster/R$dimen;->pm_make_up_recycler_view_last_item_padding_flip:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 660
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/MakeUpRoot$6;->this$0:Lcom/transsion/camera/feature/mode/pmaster/ui/MakeUpRoot;

    # getter for: Lcom/transsion/camera/feature/mode/pmaster/ui/interactive/AbstractRoot;->mOrientation:I
    invoke-static {p0}, Lcom/transsion/camera/feature/mode/pmaster/ui/MakeUpRoot;->access$900(Lcom/transsion/camera/feature/mode/pmaster/ui/MakeUpRoot;)I

    move-result p0

    const/16 v1, 0x5a

    const/4 v2, 0x0

    if-eq p0, v1, :cond_52

    const/16 v1, 0xb4

    if-eq p0, v1, :cond_52

    const/16 v1, 0x10e

    if-eq p0, v1, :cond_52

    if-nez p2, :cond_46

    .line 675
    invoke-virtual {p1, p4, v2, v2, v2}, Landroid/graphics/Rect;->set(IIII)V

    return-void

    :cond_46
    add-int/lit8 p3, p3, -0x1

    if-ne p2, p3, :cond_4e

    .line 677
    invoke-virtual {p1, v2, v2, p4, v2}, Landroid/graphics/Rect;->set(IIII)V

    return-void

    .line 679
    :cond_4e
    invoke-virtual {p1, v2, v2, v2, v2}, Landroid/graphics/Rect;->set(IIII)V

    return-void

    :cond_52
    if-nez p2, :cond_58

    .line 665
    invoke-virtual {p1, p4, v2, v2, v2}, Landroid/graphics/Rect;->set(IIII)V

    return-void

    :cond_58
    add-int/lit8 p3, p3, -0x1

    if-ne p2, p3, :cond_60

    .line 667
    invoke-virtual {p1, v2, v2, v0, v2}, Landroid/graphics/Rect;->set(IIII)V

    return-void

    .line 669
    :cond_60
    invoke-virtual {p1, v2, v2, v2, v2}, Landroid/graphics/Rect;->set(IIII)V

    return-void
.end method
