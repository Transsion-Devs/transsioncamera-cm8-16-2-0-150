.class public abstract Lcom/gallery20/base/base_ui/ItemDecoration;
.super Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/gallery20/base/base_ui/ItemDecoration$Data;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 9
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;-><init>()V

    return-void
.end method


# virtual methods
.method public final getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V
    .registers 9

    const-string v0, "outRect"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "view"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "parent"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "state"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    invoke-virtual {p3}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p4

    const/4 v0, 0x0

    if-eqz p4, :cond_20

    invoke-virtual {p4}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    move-result p4

    goto :goto_21

    :cond_20
    move p4, v0

    .line 20
    :goto_21
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    const-string v1, "null cannot be cast to non-null type androidx.recyclerview.widget.RecyclerView.LayoutParams"

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;->getViewLayoutPosition()I

    move-result p2

    const/4 v1, 0x1

    if-nez p2, :cond_35

    move v2, v1

    goto :goto_36

    :cond_35
    move v2, v0

    :goto_36
    add-int/lit8 v3, p4, -0x1

    if-ne p2, v3, :cond_3b

    move v0, v1

    .line 23
    :cond_3b
    new-instance v3, Lcom/gallery20/base/base_ui/ItemDecoration$Data;

    invoke-direct {v3, p4, p2, v2, v0}, Lcom/gallery20/base/base_ui/ItemDecoration$Data;-><init>(IIZZ)V

    invoke-virtual {p0, p1, v3}, Lcom/gallery20/base/base_ui/ItemDecoration;->getItemOffsets(Landroid/graphics/Rect;Lcom/gallery20/base/base_ui/ItemDecoration$Data;)V

    .line 24
    invoke-static {p3}, Landroidx/core/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result p0

    if-ne p0, v1, :cond_4c

    .line 26
    # invokes: Lcom/gallery20/base/base_ui/ItemDecorationExtKt;->swapLeftAndRight(Landroid/graphics/Rect;)V
    invoke-static {p1}, Lcom/gallery20/base/base_ui/ItemDecorationExtKt;->access$swapLeftAndRight(Landroid/graphics/Rect;)V

    :cond_4c
    return-void
.end method

.method public abstract getItemOffsets(Landroid/graphics/Rect;Lcom/gallery20/base/base_ui/ItemDecoration$Data;)V
.end method
