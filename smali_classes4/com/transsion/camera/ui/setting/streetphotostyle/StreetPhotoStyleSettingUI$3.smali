.class Lcom/transsion/camera/ui/setting/streetphotostyle/StreetPhotoStyleSettingUI$3;
.super Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/ui/setting/streetphotostyle/StreetPhotoStyleSettingUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/ui/setting/streetphotostyle/StreetPhotoStyleSettingUI;


# direct methods
.method constructor <init>(Lcom/transsion/camera/ui/setting/streetphotostyle/StreetPhotoStyleSettingUI;)V
    .registers 2

    .line 211
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/streetphotostyle/StreetPhotoStyleSettingUI$3;->this$0:Lcom/transsion/camera/ui/setting/streetphotostyle/StreetPhotoStyleSettingUI;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;-><init>()V

    return-void
.end method


# virtual methods
.method public getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V
    .registers 6

    .line 214
    invoke-super {p0, p1, p2, p3, p4}, Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;->getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V

    .line 215
    invoke-virtual {p3, p2}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result p2

    .line 216
    invoke-virtual {p3}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p3

    const/4 p4, 0x0

    if-eqz p3, :cond_13

    .line 217
    invoke-virtual {p3}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    move-result p3

    goto :goto_14

    :cond_13
    move p3, p4

    .line 218
    :goto_14
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/streetphotostyle/StreetPhotoStyleSettingUI$3;->this$0:Lcom/transsion/camera/ui/setting/streetphotostyle/StreetPhotoStyleSettingUI;

    invoke-static {p0}, Lcom/transsion/camera/ui/setting/streetphotostyle/StreetPhotoStyleSettingUI;->-$$Nest$fgetmResources(Lcom/transsion/camera/ui/setting/streetphotostyle/StreetPhotoStyleSettingUI;)Landroid/content/res/Resources;

    move-result-object p0

    sget v0, Lcom/transsion/camera/R$dimen;->street_photo_style_recycler_view_item_padding:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p0

    if-nez p2, :cond_26

    .line 220
    invoke-virtual {p1, p4, p4, p0, p4}, Landroid/graphics/Rect;->set(IIII)V

    return-void

    :cond_26
    add-int/lit8 p3, p3, -0x1

    if-ne p2, p3, :cond_2e

    .line 222
    invoke-virtual {p1, p0, p4, p4, p4}, Landroid/graphics/Rect;->set(IIII)V

    return-void

    .line 224
    :cond_2e
    invoke-virtual {p1, p0, p4, p0, p4}, Landroid/graphics/Rect;->set(IIII)V

    return-void
.end method
