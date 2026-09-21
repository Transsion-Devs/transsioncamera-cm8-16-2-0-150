.class Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterSettingUI$7;
.super Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterSettingUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterSettingUI;


# direct methods
.method constructor <init>(Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterSettingUI;)V
    .registers 2

    .line 903
    iput-object p1, p0, Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterSettingUI$7;->this$0:Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterSettingUI;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;-><init>()V

    return-void
.end method


# virtual methods
.method public getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V
    .registers 9

    .line 906
    invoke-super {p0, p1, p2, p3, p4}, Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;->getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V

    .line 908
    invoke-virtual {p3, p2}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result p2

    .line 909
    invoke-virtual {p3}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p3

    if-nez p3, :cond_e

    goto :goto_14

    .line 913
    :cond_e
    invoke-virtual {p3}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    move-result p3

    if-gtz p3, :cond_15

    :goto_14
    return-void

    .line 917
    :cond_15
    iget-object p4, p0, Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterSettingUI$7;->this$0:Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterSettingUI;

    iget-object p4, p4, Lcom/transsion/camera/feature/arcfilter/setting/ui/BaseArcFilterSettingUI;->mResources:Landroid/content/res/Resources;

    sget v0, Lcom/transsion/camera/feature/arcfilter/R$dimen;->arc_filter_recycler_view_first_item_padding_flip:I

    invoke-virtual {p4, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p4

    .line 918
    iget-object v0, p0, Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterSettingUI$7;->this$0:Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterSettingUI;

    iget-object v0, v0, Lcom/transsion/camera/feature/arcfilter/setting/ui/BaseArcFilterSettingUI;->mResources:Landroid/content/res/Resources;

    sget v1, Lcom/transsion/camera/feature/arcfilter/R$dimen;->arc_filter_recycler_view_last_item_padding_flip:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 919
    iget-object v1, p0, Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterSettingUI$7;->this$0:Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterSettingUI;

    iget-object v1, v1, Lcom/transsion/camera/feature/arcfilter/setting/ui/BaseArcFilterSettingUI;->mResources:Landroid/content/res/Resources;

    sget v2, Lcom/transsion/camera/feature/arcfilter/R$dimen;->arc_filter_recycler_view_item_padding_flip:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 920
    iget-object p0, p0, Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterSettingUI$7;->this$0:Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterSettingUI;

    # getter for: Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mOrientation:I
    invoke-static {p0}, Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterSettingUI;->access$200(Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterSettingUI;)I

    move-result p0

    const/16 v2, 0x5a

    const/4 v3, 0x0

    if-eq p0, v2, :cond_58

    const/16 v2, 0xb4

    if-eq p0, v2, :cond_58

    const/16 v2, 0x10e

    if-eq p0, v2, :cond_58

    if-nez p2, :cond_4c

    .line 935
    invoke-virtual {p1, p4, v3, v1, v3}, Landroid/graphics/Rect;->set(IIII)V

    return-void

    :cond_4c
    add-int/lit8 p3, p3, -0x1

    if-ne p2, p3, :cond_54

    .line 937
    invoke-virtual {p1, v1, v3, p4, v3}, Landroid/graphics/Rect;->set(IIII)V

    return-void

    .line 939
    :cond_54
    invoke-virtual {p1, v1, v3, v1, v3}, Landroid/graphics/Rect;->set(IIII)V

    return-void

    :cond_58
    if-nez p2, :cond_5e

    .line 925
    invoke-virtual {p1, v1, v3, p4, v3}, Landroid/graphics/Rect;->set(IIII)V

    return-void

    :cond_5e
    add-int/lit8 p3, p3, -0x1

    if-ne p2, p3, :cond_66

    .line 927
    invoke-virtual {p1, v0, v3, v1, v3}, Landroid/graphics/Rect;->set(IIII)V

    return-void

    .line 929
    :cond_66
    invoke-virtual {p1, v1, v3, v1, v3}, Landroid/graphics/Rect;->set(IIII)V

    return-void
.end method
