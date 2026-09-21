.class Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot$12;
.super Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;


# direct methods
.method constructor <init>(Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;)V
    .registers 2

    .line 2451
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot$12;->this$0:Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;-><init>()V

    return-void
.end method


# virtual methods
.method public getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V
    .registers 10

    .line 2454
    invoke-super {p0, p1, p2, p3, p4}, Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;->getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V

    .line 2456
    invoke-virtual {p3, p2}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result p2

    .line 2457
    invoke-virtual {p3}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p3

    if-nez p3, :cond_e

    goto :goto_14

    .line 2461
    :cond_e
    invoke-virtual {p3}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    move-result p3

    if-gtz p3, :cond_15

    :goto_14
    return-void

    .line 2465
    :cond_15
    iget-object p4, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot$12;->this$0:Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;

    invoke-virtual {p4}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p4

    sget v0, Lcom/transsion/camera/feature/pmaster/R$dimen;->pmu_recycler_view_facebeauty_first_item_padding_flip:I

    invoke-virtual {p4, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p4

    .line 2466
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot$12;->this$0:Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;

    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/transsion/camera/feature/pmaster/R$dimen;->pmu_recycler_view_last_item_padding_flip:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 2467
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot$12;->this$0:Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;

    invoke-virtual {v1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/transsion/camera/feature/pmaster/R$dimen;->pmu_recycler_view_item_padding_flip:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 2468
    iget-object v2, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot$12;->this$0:Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;

    invoke-virtual {v2}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/transsion/camera/feature/pmaster/R$dimen;->pmu_recycler_view_item_top_padding_flip:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 2469
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot$12;->this$0:Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;

    # getter for: Lcom/transsion/camera/feature/mode/pmaster/ui/interactive/AbstractRoot;->mOrientation:I
    invoke-static {p0}, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;->access$5900(Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;)I

    move-result p0

    const/16 v3, 0x5a

    const/4 v4, 0x0

    if-eq p0, v3, :cond_6a

    const/16 v3, 0xb4

    if-eq p0, v3, :cond_6a

    const/16 v3, 0x10e

    if-eq p0, v3, :cond_6a

    if-nez p2, :cond_5e

    .line 2484
    invoke-virtual {p1, p4, v2, v1, v4}, Landroid/graphics/Rect;->set(IIII)V

    return-void

    :cond_5e
    add-int/lit8 p3, p3, -0x1

    if-ne p2, p3, :cond_66

    .line 2486
    invoke-virtual {p1, v1, v2, p4, v4}, Landroid/graphics/Rect;->set(IIII)V

    return-void

    .line 2488
    :cond_66
    invoke-virtual {p1, v1, v2, v1, v4}, Landroid/graphics/Rect;->set(IIII)V

    return-void

    :cond_6a
    if-nez p2, :cond_70

    .line 2474
    invoke-virtual {p1, p4, v2, v1, v4}, Landroid/graphics/Rect;->set(IIII)V

    return-void

    :cond_70
    add-int/lit8 p3, p3, -0x1

    if-ne p2, p3, :cond_78

    .line 2476
    invoke-virtual {p1, v1, v2, v0, v4}, Landroid/graphics/Rect;->set(IIII)V

    return-void

    .line 2478
    :cond_78
    invoke-virtual {p1, v1, v2, v1, v4}, Landroid/graphics/Rect;->set(IIII)V

    return-void
.end method
