.class Lcom/transsion/camera/feature/supernightfilter/ui/SuperNightFilterSettingUI$8;
.super Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/supernightfilter/ui/SuperNightFilterSettingUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/feature/supernightfilter/ui/SuperNightFilterSettingUI;


# direct methods
.method constructor <init>(Lcom/transsion/camera/feature/supernightfilter/ui/SuperNightFilterSettingUI;)V
    .registers 2

    .line 992
    iput-object p1, p0, Lcom/transsion/camera/feature/supernightfilter/ui/SuperNightFilterSettingUI$8;->this$0:Lcom/transsion/camera/feature/supernightfilter/ui/SuperNightFilterSettingUI;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;-><init>()V

    return-void
.end method


# virtual methods
.method public getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V
    .registers 8

    .line 995
    invoke-super {p0, p1, p2, p3, p4}, Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;->getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V

    .line 997
    invoke-virtual {p3, p2}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result p2

    .line 999
    invoke-virtual {p3}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p3

    const/4 p4, 0x0

    if-eqz p3, :cond_13

    .line 1001
    invoke-virtual {p3}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    move-result p3

    goto :goto_14

    :cond_13
    move p3, p4

    .line 1003
    :goto_14
    iget-object v0, p0, Lcom/transsion/camera/feature/supernightfilter/ui/SuperNightFilterSettingUI$8;->this$0:Lcom/transsion/camera/feature/supernightfilter/ui/SuperNightFilterSettingUI;

    invoke-static {v0}, Lcom/transsion/camera/feature/supernightfilter/ui/SuperNightFilterSettingUI;->-$$Nest$fgetmResources(Lcom/transsion/camera/feature/supernightfilter/ui/SuperNightFilterSettingUI;)Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/transsion/camera/feature/supernightfilter/R$dimen;->supernight_filter_recycler_view_item_padding_expand:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    .line 1004
    iget-object v1, p0, Lcom/transsion/camera/feature/supernightfilter/ui/SuperNightFilterSettingUI$8;->this$0:Lcom/transsion/camera/feature/supernightfilter/ui/SuperNightFilterSettingUI;

    # getter for: Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mScreenFormType:I
    invoke-static {v1}, Lcom/transsion/camera/feature/supernightfilter/ui/SuperNightFilterSettingUI;->access$000(Lcom/transsion/camera/feature/supernightfilter/ui/SuperNightFilterSettingUI;)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_7f

    .line 1005
    iget-object p0, p0, Lcom/transsion/camera/feature/supernightfilter/ui/SuperNightFilterSettingUI$8;->this$0:Lcom/transsion/camera/feature/supernightfilter/ui/SuperNightFilterSettingUI;

    # getter for: Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mOrientation:I
    invoke-static {p0}, Lcom/transsion/camera/feature/supernightfilter/ui/SuperNightFilterSettingUI;->access$100(Lcom/transsion/camera/feature/supernightfilter/ui/SuperNightFilterSettingUI;)I

    move-result p0

    const/16 v1, 0x5a

    if-eq p0, v1, :cond_6e

    const/16 v1, 0xb4

    if-eq p0, v1, :cond_5d

    const/16 v1, 0x10e

    if-eq p0, v1, :cond_4c

    if-nez p2, :cond_41

    .line 1036
    invoke-virtual {p1, p4, p4, p4, v0}, Landroid/graphics/Rect;->set(IIII)V

    return-void

    :cond_41
    sub-int/2addr p3, v2

    if-ne p2, p3, :cond_48

    .line 1038
    invoke-virtual {p1, p4, v0, p4, p4}, Landroid/graphics/Rect;->set(IIII)V

    return-void

    .line 1040
    :cond_48
    invoke-virtual {p1, p4, v0, p4, v0}, Landroid/graphics/Rect;->set(IIII)V

    return-void

    :cond_4c
    if-nez p2, :cond_52

    .line 1026
    invoke-virtual {p1, v0, p4, p4, p4}, Landroid/graphics/Rect;->set(IIII)V

    return-void

    :cond_52
    sub-int/2addr p3, v2

    if-ne p2, p3, :cond_59

    .line 1028
    invoke-virtual {p1, p4, p4, v0, p4}, Landroid/graphics/Rect;->set(IIII)V

    return-void

    .line 1030
    :cond_59
    invoke-virtual {p1, v0, p4, v0, p4}, Landroid/graphics/Rect;->set(IIII)V

    return-void

    :cond_5d
    if-nez p2, :cond_63

    .line 1017
    invoke-virtual {p1, p4, v0, p4, p4}, Landroid/graphics/Rect;->set(IIII)V

    return-void

    :cond_63
    sub-int/2addr p3, v2

    if-ne p2, p3, :cond_6a

    .line 1019
    invoke-virtual {p1, p4, p4, p4, v0}, Landroid/graphics/Rect;->set(IIII)V

    return-void

    .line 1021
    :cond_6a
    invoke-virtual {p1, p4, v0, p4, v0}, Landroid/graphics/Rect;->set(IIII)V

    return-void

    :cond_6e
    if-nez p2, :cond_74

    .line 1008
    invoke-virtual {p1, p4, p4, v0, p4}, Landroid/graphics/Rect;->set(IIII)V

    return-void

    :cond_74
    sub-int/2addr p3, v2

    if-ne p2, p3, :cond_7b

    .line 1010
    invoke-virtual {p1, v0, p4, p4, p4}, Landroid/graphics/Rect;->set(IIII)V

    return-void

    .line 1012
    :cond_7b
    invoke-virtual {p1, v0, p4, v0, p4}, Landroid/graphics/Rect;->set(IIII)V

    return-void

    :cond_7f
    if-nez p2, :cond_85

    .line 1046
    invoke-virtual {p1, p4, p4, p4, p4}, Landroid/graphics/Rect;->set(IIII)V

    return-void

    :cond_85
    sub-int/2addr p3, v2

    if-ne p2, p3, :cond_8c

    .line 1048
    invoke-virtual {p1, p4, v0, p4, p4}, Landroid/graphics/Rect;->set(IIII)V

    return-void

    .line 1050
    :cond_8c
    invoke-virtual {p1, p4, v0, p4, p4}, Landroid/graphics/Rect;->set(IIII)V

    return-void
.end method
