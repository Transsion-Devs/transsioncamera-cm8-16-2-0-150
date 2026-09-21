.class Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterSettingUI$6;
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

    .line 839
    iput-object p1, p0, Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterSettingUI$6;->this$0:Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterSettingUI;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;-><init>()V

    return-void
.end method


# virtual methods
.method public getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V
    .registers 8

    .line 842
    invoke-super {p0, p1, p2, p3, p4}, Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;->getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V

    .line 844
    invoke-virtual {p3, p2}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result p2

    .line 846
    invoke-virtual {p3}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p3

    const/4 p4, 0x0

    if-eqz p3, :cond_13

    .line 848
    invoke-virtual {p3}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    move-result p3

    goto :goto_14

    :cond_13
    move p3, p4

    .line 850
    :goto_14
    iget-object v0, p0, Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterSettingUI$6;->this$0:Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterSettingUI;

    iget-object v0, v0, Lcom/transsion/camera/feature/arcfilter/setting/ui/BaseArcFilterSettingUI;->mResources:Landroid/content/res/Resources;

    sget v1, Lcom/transsion/camera/feature/arcfilter/R$dimen;->arc_filter_recycler_view_item_padding_expand:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    .line 851
    iget-object v1, p0, Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterSettingUI$6;->this$0:Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterSettingUI;

    # getter for: Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mScreenFormType:I
    invoke-static {v1}, Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterSettingUI;->access$000(Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterSettingUI;)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_7d

    .line 852
    iget-object p0, p0, Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterSettingUI$6;->this$0:Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterSettingUI;

    # getter for: Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mOrientation:I
    invoke-static {p0}, Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterSettingUI;->access$100(Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterSettingUI;)I

    move-result p0

    const/16 v1, 0x5a

    if-eq p0, v1, :cond_6c

    const/16 v1, 0xb4

    if-eq p0, v1, :cond_5b

    const/16 v1, 0x10e

    if-eq p0, v1, :cond_4a

    if-nez p2, :cond_3f

    .line 883
    invoke-virtual {p1, p4, p4, p4, v0}, Landroid/graphics/Rect;->set(IIII)V

    return-void

    :cond_3f
    sub-int/2addr p3, v2

    if-ne p2, p3, :cond_46

    .line 885
    invoke-virtual {p1, p4, v0, p4, p4}, Landroid/graphics/Rect;->set(IIII)V

    return-void

    .line 887
    :cond_46
    invoke-virtual {p1, p4, v0, p4, v0}, Landroid/graphics/Rect;->set(IIII)V

    return-void

    :cond_4a
    if-nez p2, :cond_50

    .line 873
    invoke-virtual {p1, v0, p4, p4, p4}, Landroid/graphics/Rect;->set(IIII)V

    return-void

    :cond_50
    sub-int/2addr p3, v2

    if-ne p2, p3, :cond_57

    .line 875
    invoke-virtual {p1, p4, p4, v0, p4}, Landroid/graphics/Rect;->set(IIII)V

    return-void

    .line 877
    :cond_57
    invoke-virtual {p1, v0, p4, v0, p4}, Landroid/graphics/Rect;->set(IIII)V

    return-void

    :cond_5b
    if-nez p2, :cond_61

    .line 864
    invoke-virtual {p1, p4, v0, p4, p4}, Landroid/graphics/Rect;->set(IIII)V

    return-void

    :cond_61
    sub-int/2addr p3, v2

    if-ne p2, p3, :cond_68

    .line 866
    invoke-virtual {p1, p4, p4, p4, v0}, Landroid/graphics/Rect;->set(IIII)V

    return-void

    .line 868
    :cond_68
    invoke-virtual {p1, p4, v0, p4, v0}, Landroid/graphics/Rect;->set(IIII)V

    return-void

    :cond_6c
    if-nez p2, :cond_72

    .line 855
    invoke-virtual {p1, p4, p4, v0, p4}, Landroid/graphics/Rect;->set(IIII)V

    return-void

    :cond_72
    sub-int/2addr p3, v2

    if-ne p2, p3, :cond_79

    .line 857
    invoke-virtual {p1, v0, p4, p4, p4}, Landroid/graphics/Rect;->set(IIII)V

    return-void

    .line 859
    :cond_79
    invoke-virtual {p1, v0, p4, v0, p4}, Landroid/graphics/Rect;->set(IIII)V

    return-void

    :cond_7d
    if-nez p2, :cond_83

    .line 893
    invoke-virtual {p1, p4, p4, p4, p4}, Landroid/graphics/Rect;->set(IIII)V

    return-void

    :cond_83
    sub-int/2addr p3, v2

    if-ne p2, p3, :cond_8a

    .line 895
    invoke-virtual {p1, p4, v0, p4, p4}, Landroid/graphics/Rect;->set(IIII)V

    return-void

    .line 897
    :cond_8a
    invoke-virtual {p1, p4, v0, p4, p4}, Landroid/graphics/Rect;->set(IIII)V

    return-void
.end method
