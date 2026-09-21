.class Lcom/transsion/camera/feature/mode/pmaster/ui/SlimbodyRoot$7;
.super Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/mode/pmaster/ui/SlimbodyRoot;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/feature/mode/pmaster/ui/SlimbodyRoot;


# direct methods
.method constructor <init>(Lcom/transsion/camera/feature/mode/pmaster/ui/SlimbodyRoot;)V
    .registers 2

    .line 1084
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/SlimbodyRoot$7;->this$0:Lcom/transsion/camera/feature/mode/pmaster/ui/SlimbodyRoot;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;-><init>()V

    return-void
.end method


# virtual methods
.method public getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V
    .registers 9

    .line 1087
    invoke-super {p0, p1, p2, p3, p4}, Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;->getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V

    .line 1089
    invoke-virtual {p3, p2}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result p2

    .line 1091
    invoke-virtual {p3}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p3

    const/4 p4, 0x0

    if-eqz p3, :cond_13

    .line 1093
    invoke-virtual {p3}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    move-result p3

    goto :goto_14

    :cond_13
    move p3, p4

    .line 1095
    :goto_14
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/SlimbodyRoot$7;->this$0:Lcom/transsion/camera/feature/mode/pmaster/ui/SlimbodyRoot;

    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/transsion/camera/feature/pmaster/R$dimen;->pmu_recycler_view_first_item_padding_flip:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 1096
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/SlimbodyRoot$7;->this$0:Lcom/transsion/camera/feature/mode/pmaster/ui/SlimbodyRoot;

    invoke-virtual {v1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/transsion/camera/feature/pmaster/R$dimen;->pmu_recycler_view_last_item_padding_flip:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 1097
    iget-object v2, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/SlimbodyRoot$7;->this$0:Lcom/transsion/camera/feature/mode/pmaster/ui/SlimbodyRoot;

    invoke-virtual {v2}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/transsion/camera/feature/pmaster/R$dimen;->pmu_recycler_view_item_padding_flip:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 1098
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/SlimbodyRoot$7;->this$0:Lcom/transsion/camera/feature/mode/pmaster/ui/SlimbodyRoot;

    # getter for: Lcom/transsion/camera/feature/mode/pmaster/ui/interactive/AbstractRoot;->mOrientation:I
    invoke-static {p0}, Lcom/transsion/camera/feature/mode/pmaster/ui/SlimbodyRoot;->access$2000(Lcom/transsion/camera/feature/mode/pmaster/ui/SlimbodyRoot;)I

    move-result p0

    const/16 v3, 0x5a

    if-eq p0, v3, :cond_5c

    const/16 v3, 0xb4

    if-eq p0, v3, :cond_5c

    const/16 v3, 0x10e

    if-eq p0, v3, :cond_5c

    if-nez p2, :cond_50

    .line 1113
    invoke-virtual {p1, v0, p4, v2, p4}, Landroid/graphics/Rect;->set(IIII)V

    return-void

    :cond_50
    add-int/lit8 p3, p3, -0x1

    if-ne p2, p3, :cond_58

    .line 1115
    invoke-virtual {p1, v2, p4, v0, p4}, Landroid/graphics/Rect;->set(IIII)V

    return-void

    .line 1117
    :cond_58
    invoke-virtual {p1, v2, p4, v2, p4}, Landroid/graphics/Rect;->set(IIII)V

    return-void

    :cond_5c
    if-nez p2, :cond_62

    .line 1103
    invoke-virtual {p1, v0, p4, v2, p4}, Landroid/graphics/Rect;->set(IIII)V

    return-void

    :cond_62
    add-int/lit8 p3, p3, -0x1

    if-ne p2, p3, :cond_6a

    .line 1105
    invoke-virtual {p1, v2, p4, v1, p4}, Landroid/graphics/Rect;->set(IIII)V

    return-void

    .line 1107
    :cond_6a
    invoke-virtual {p1, v2, p4, v2, p4}, Landroid/graphics/Rect;->set(IIII)V

    return-void
.end method
