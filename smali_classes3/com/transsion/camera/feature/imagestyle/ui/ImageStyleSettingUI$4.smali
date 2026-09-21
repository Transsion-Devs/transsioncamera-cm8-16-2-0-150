.class Lcom/transsion/camera/feature/imagestyle/ui/ImageStyleSettingUI$4;
.super Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/imagestyle/ui/ImageStyleSettingUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/feature/imagestyle/ui/ImageStyleSettingUI;


# direct methods
.method constructor <init>(Lcom/transsion/camera/feature/imagestyle/ui/ImageStyleSettingUI;)V
    .registers 2

    .line 314
    iput-object p1, p0, Lcom/transsion/camera/feature/imagestyle/ui/ImageStyleSettingUI$4;->this$0:Lcom/transsion/camera/feature/imagestyle/ui/ImageStyleSettingUI;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;-><init>()V

    return-void
.end method


# virtual methods
.method public getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V
    .registers 6

    .line 317
    invoke-super {p0, p1, p2, p3, p4}, Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;->getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V

    .line 319
    invoke-virtual {p3, p2}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result p2

    .line 320
    invoke-virtual {p3}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p3

    const/4 p4, 0x0

    if-eqz p3, :cond_13

    .line 321
    invoke-virtual {p3}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    move-result p3

    goto :goto_14

    :cond_13
    move p3, p4

    .line 322
    :goto_14
    iget-object p0, p0, Lcom/transsion/camera/feature/imagestyle/ui/ImageStyleSettingUI$4;->this$0:Lcom/transsion/camera/feature/imagestyle/ui/ImageStyleSettingUI;

    iget-object p0, p0, Lcom/transsion/camera/feature/imagestyle/ui/BaseImageStyleSettingUI;->mResources:Landroid/content/res/Resources;

    sget v0, Lcom/transsion/camera/feature/imagestyle/R$dimen;->image_style_recycler_view_item_padding:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p0

    if-nez p2, :cond_24

    .line 324
    invoke-virtual {p1, p4, p0, p4, p4}, Landroid/graphics/Rect;->set(IIII)V

    return-void

    :cond_24
    add-int/lit8 p3, p3, -0x1

    if-ne p2, p3, :cond_2c

    .line 326
    invoke-virtual {p1, p4, p4, p4, p0}, Landroid/graphics/Rect;->set(IIII)V

    return-void

    .line 328
    :cond_2c
    invoke-virtual {p1, p4, p0, p4, p0}, Landroid/graphics/Rect;->set(IIII)V

    return-void
.end method
