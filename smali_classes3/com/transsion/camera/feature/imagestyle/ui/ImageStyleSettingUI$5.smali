.class Lcom/transsion/camera/feature/imagestyle/ui/ImageStyleSettingUI$5;
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

    .line 333
    iput-object p1, p0, Lcom/transsion/camera/feature/imagestyle/ui/ImageStyleSettingUI$5;->this$0:Lcom/transsion/camera/feature/imagestyle/ui/ImageStyleSettingUI;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;-><init>()V

    return-void
.end method


# virtual methods
.method public getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V
    .registers 7

    .line 336
    invoke-super {p0, p1, p2, p3, p4}, Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;->getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V

    .line 338
    invoke-virtual {p3, p2}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result p2

    .line 340
    invoke-virtual {p3}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p3

    const/4 p4, 0x0

    if-eqz p3, :cond_13

    .line 342
    invoke-virtual {p3}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    move-result p3

    goto :goto_14

    :cond_13
    move p3, p4

    .line 344
    :goto_14
    iget-object v0, p0, Lcom/transsion/camera/feature/imagestyle/ui/ImageStyleSettingUI$5;->this$0:Lcom/transsion/camera/feature/imagestyle/ui/ImageStyleSettingUI;

    iget-object v0, v0, Lcom/transsion/camera/feature/imagestyle/ui/BaseImageStyleSettingUI;->mResources:Landroid/content/res/Resources;

    sget v1, Lcom/transsion/camera/feature/imagestyle/R$dimen;->image_style_recycler_view_item_padding_expand:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    .line 345
    iget-object p0, p0, Lcom/transsion/camera/feature/imagestyle/ui/ImageStyleSettingUI$5;->this$0:Lcom/transsion/camera/feature/imagestyle/ui/ImageStyleSettingUI;

    # getter for: Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mOrientation:I
    invoke-static {p0}, Lcom/transsion/camera/feature/imagestyle/ui/ImageStyleSettingUI;->access$000(Lcom/transsion/camera/feature/imagestyle/ui/ImageStyleSettingUI;)I

    move-result p0

    const/16 v1, 0x5a

    if-eq p0, v1, :cond_66

    const/16 v1, 0xb4

    if-eq p0, v1, :cond_54

    const/16 v1, 0x10e

    if-eq p0, v1, :cond_42

    if-nez p2, :cond_36

    .line 376
    invoke-virtual {p1, p4, p4, p4, v0}, Landroid/graphics/Rect;->set(IIII)V

    return-void

    :cond_36
    add-int/lit8 p3, p3, -0x1

    if-ne p2, p3, :cond_3e

    .line 378
    invoke-virtual {p1, p4, v0, p4, p4}, Landroid/graphics/Rect;->set(IIII)V

    return-void

    .line 380
    :cond_3e
    invoke-virtual {p1, p4, v0, p4, v0}, Landroid/graphics/Rect;->set(IIII)V

    return-void

    :cond_42
    if-nez p2, :cond_48

    .line 366
    invoke-virtual {p1, v0, p4, p4, p4}, Landroid/graphics/Rect;->set(IIII)V

    return-void

    :cond_48
    add-int/lit8 p3, p3, -0x1

    if-ne p2, p3, :cond_50

    .line 368
    invoke-virtual {p1, p4, p4, v0, p4}, Landroid/graphics/Rect;->set(IIII)V

    return-void

    .line 370
    :cond_50
    invoke-virtual {p1, v0, p4, v0, p4}, Landroid/graphics/Rect;->set(IIII)V

    return-void

    :cond_54
    if-nez p2, :cond_5a

    .line 357
    invoke-virtual {p1, p4, v0, p4, p4}, Landroid/graphics/Rect;->set(IIII)V

    return-void

    :cond_5a
    add-int/lit8 p3, p3, -0x1

    if-ne p2, p3, :cond_62

    .line 359
    invoke-virtual {p1, p4, p4, p4, v0}, Landroid/graphics/Rect;->set(IIII)V

    return-void

    .line 361
    :cond_62
    invoke-virtual {p1, p4, v0, p4, v0}, Landroid/graphics/Rect;->set(IIII)V

    return-void

    :cond_66
    if-nez p2, :cond_6c

    .line 348
    invoke-virtual {p1, p4, p4, v0, p4}, Landroid/graphics/Rect;->set(IIII)V

    return-void

    :cond_6c
    add-int/lit8 p3, p3, -0x1

    if-ne p2, p3, :cond_74

    .line 350
    invoke-virtual {p1, v0, p4, p4, p4}, Landroid/graphics/Rect;->set(IIII)V

    return-void

    .line 352
    :cond_74
    invoke-virtual {p1, v0, p4, v0, p4}, Landroid/graphics/Rect;->set(IIII)V

    return-void
.end method
