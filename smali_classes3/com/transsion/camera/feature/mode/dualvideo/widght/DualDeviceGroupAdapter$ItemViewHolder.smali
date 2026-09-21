.class public Lcom/transsion/camera/feature/mode/dualvideo/widght/DualDeviceGroupAdapter$ItemViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/mode/dualvideo/widght/DualDeviceGroupAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "ItemViewHolder"
.end annotation


# instance fields
.field public final itemLayout:Landroid/widget/FrameLayout;

.field public final ivItem:Lcom/transsion/camera/app/ui/widget/RotateImageView;


# direct methods
.method constructor <init>(Lcom/transsion/camera/feature/mode/dualvideo/widght/DualDeviceGroupAdapter;Landroid/view/View;)V
    .registers 4

    .line 37
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 38
    sget v0, Lcom/transsion/camera/feature/mode/dualvideo/R$id;->dual_item_layout:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/widght/DualDeviceGroupAdapter$ItemViewHolder;->itemLayout:Landroid/widget/FrameLayout;

    .line 39
    sget v0, Lcom/transsion/camera/feature/mode/dualvideo/R$id;->dual_device_item:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/transsion/camera/app/ui/widget/RotateImageView;

    iput-object p2, p0, Lcom/transsion/camera/feature/mode/dualvideo/widght/DualDeviceGroupAdapter$ItemViewHolder;->ivItem:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    .line 40
    invoke-static {p1}, Lcom/transsion/camera/feature/mode/dualvideo/widght/DualDeviceGroupAdapter;->-$$Nest$fgetmOrientation(Lcom/transsion/camera/feature/mode/dualvideo/widght/DualDeviceGroupAdapter;)I

    move-result p0

    const/4 p1, 0x0

    invoke-virtual {p2, p0, p1}, Lcom/transsion/camera/app/ui/widget/RotateImageView;->setOrientation(IZ)V

    return-void
.end method
