.class Lcom/transsion/camera/ui/setting/celebrityscene/CelebritySceneSettingUI$6;
.super Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/ui/setting/celebrityscene/CelebritySceneSettingUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/ui/setting/celebrityscene/CelebritySceneSettingUI;


# direct methods
.method constructor <init>(Lcom/transsion/camera/ui/setting/celebrityscene/CelebritySceneSettingUI;)V
    .registers 2

    .line 775
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/celebrityscene/CelebritySceneSettingUI$6;->this$0:Lcom/transsion/camera/ui/setting/celebrityscene/CelebritySceneSettingUI;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;-><init>()V

    return-void
.end method


# virtual methods
.method public getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V
    .registers 8

    .line 778
    invoke-super {p0, p1, p2, p3, p4}, Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;->getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V

    .line 780
    invoke-virtual {p3, p2}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result p2

    .line 781
    invoke-virtual {p3}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p3

    const/4 p4, 0x0

    if-eqz p3, :cond_13

    .line 782
    invoke-virtual {p3}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    move-result p3

    goto :goto_14

    :cond_13
    move p3, p4

    .line 783
    :goto_14
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/celebrityscene/CelebritySceneSettingUI$6;->this$0:Lcom/transsion/camera/ui/setting/celebrityscene/CelebritySceneSettingUI;

    invoke-static {v0}, Lcom/transsion/camera/ui/setting/celebrityscene/CelebritySceneSettingUI;->-$$Nest$fgetmResources(Lcom/transsion/camera/ui/setting/celebrityscene/CelebritySceneSettingUI;)Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/transsion/camera/R$dimen;->celebrity_scene_recycler_view_header_footer_padding:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    .line 784
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/celebrityscene/CelebritySceneSettingUI$6;->this$0:Lcom/transsion/camera/ui/setting/celebrityscene/CelebritySceneSettingUI;

    invoke-static {v1}, Lcom/transsion/camera/ui/setting/celebrityscene/CelebritySceneSettingUI;->-$$Nest$fgetmResources(Lcom/transsion/camera/ui/setting/celebrityscene/CelebritySceneSettingUI;)Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/transsion/camera/R$dimen;->celebrity_scene_recycler_view_item_padding:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    if-nez p2, :cond_39

    .line 786
    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->isNewCamera4()Z

    move-result p0

    if-eqz p0, :cond_35

    move v0, p4

    :cond_35
    invoke-virtual {p1, v0, p4, v1, p4}, Landroid/graphics/Rect;->set(IIII)V

    return-void

    :cond_39
    add-int/lit8 p3, p3, -0x1

    if-ne p2, p3, :cond_53

    .line 788
    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->isNewCamera4()Z

    move-result p2

    if-eqz p2, :cond_4f

    .line 789
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/celebrityscene/CelebritySceneSettingUI$6;->this$0:Lcom/transsion/camera/ui/setting/celebrityscene/CelebritySceneSettingUI;

    invoke-static {p0}, Lcom/transsion/camera/ui/setting/celebrityscene/CelebritySceneSettingUI;->-$$Nest$fgetmResources(Lcom/transsion/camera/ui/setting/celebrityscene/CelebritySceneSettingUI;)Landroid/content/res/Resources;

    move-result-object p0

    sget p2, Lcom/transsion/camera/R$dimen;->celebrity_scene_recycler_end_footer_padding:I

    invoke-virtual {p0, p2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    .line 788
    :cond_4f
    invoke-virtual {p1, v1, p4, v0, p4}, Landroid/graphics/Rect;->set(IIII)V

    return-void

    .line 791
    :cond_53
    invoke-virtual {p1, v1, p4, v1, p4}, Landroid/graphics/Rect;->set(IIII)V

    return-void
.end method
