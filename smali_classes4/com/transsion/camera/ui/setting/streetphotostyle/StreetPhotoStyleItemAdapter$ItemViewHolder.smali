.class public Lcom/transsion/camera/ui/setting/streetphotostyle/StreetPhotoStyleItemAdapter$ItemViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/ui/setting/streetphotostyle/StreetPhotoStyleItemAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "ItemViewHolder"
.end annotation


# instance fields
.field public final itemLayout:Landroid/widget/FrameLayout;

.field public final ivItem:Lcom/transsion/camera/app/ui/widget/RotateImageView;

.field public final ivItemSign:Landroid/widget/ImageView;

.field public final rtLayout:Lcom/transsion/camera/app/ui/widget/RotateLayout;

.field public final tvItemLayout:Lcom/transsion/camera/app/ui/widget/RotateFrameLayout;

.field public final tvItemTitle:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Lcom/transsion/camera/ui/setting/streetphotostyle/StreetPhotoStyleItemAdapter;Landroid/view/View;)V
    .registers 5

    .line 39
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 40
    sget v0, Lcom/transsion/camera/R$id;->sp_item_rtlayout:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/transsion/camera/app/ui/widget/RotateLayout;

    iput-object v0, p0, Lcom/transsion/camera/ui/setting/streetphotostyle/StreetPhotoStyleItemAdapter$ItemViewHolder;->rtLayout:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    .line 41
    sget v0, Lcom/transsion/camera/R$id;->sp_item_layout:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/transsion/camera/ui/setting/streetphotostyle/StreetPhotoStyleItemAdapter$ItemViewHolder;->itemLayout:Landroid/widget/FrameLayout;

    .line 42
    sget v0, Lcom/transsion/camera/R$id;->sp_tv_layout:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/transsion/camera/app/ui/widget/RotateFrameLayout;

    iput-object v0, p0, Lcom/transsion/camera/ui/setting/streetphotostyle/StreetPhotoStyleItemAdapter$ItemViewHolder;->tvItemLayout:Lcom/transsion/camera/app/ui/widget/RotateFrameLayout;

    .line 43
    sget v0, Lcom/transsion/camera/R$id;->sp_item:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/transsion/camera/app/ui/widget/RotateImageView;

    iput-object v0, p0, Lcom/transsion/camera/ui/setting/streetphotostyle/StreetPhotoStyleItemAdapter$ItemViewHolder;->ivItem:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    .line 44
    sget v1, Lcom/transsion/camera/R$id;->sp_item_chosen_sign:I

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/transsion/camera/ui/setting/streetphotostyle/StreetPhotoStyleItemAdapter$ItemViewHolder;->ivItemSign:Landroid/widget/ImageView;

    .line 45
    sget v1, Lcom/transsion/camera/R$id;->sp_tv_title:I

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/transsion/camera/ui/setting/streetphotostyle/StreetPhotoStyleItemAdapter$ItemViewHolder;->tvItemTitle:Landroid/widget/TextView;

    const/4 p2, 0x1

    .line 46
    invoke-virtual {v0, p2}, Landroid/view/View;->setClipToOutline(Z)V

    .line 47
    new-instance p2, Lcom/transsion/camera/ui/setting/streetphotostyle/StreetPhotoStyleItemAdapter$ItemViewHolder$1;

    invoke-direct {p2, p0, p1}, Lcom/transsion/camera/ui/setting/streetphotostyle/StreetPhotoStyleItemAdapter$ItemViewHolder$1;-><init>(Lcom/transsion/camera/ui/setting/streetphotostyle/StreetPhotoStyleItemAdapter$ItemViewHolder;Lcom/transsion/camera/ui/setting/streetphotostyle/StreetPhotoStyleItemAdapter;)V

    invoke-virtual {v0, p2}, Landroid/view/View;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    const p0, 0x3f6b851f    # 0.92f

    const/4 p1, 0x0

    .line 54
    invoke-static {v0, p0, p1}, Lcom/transsion/camera/utils/MultiTouchManager;->pressSealAnimation(Landroid/view/View;FLandroid/animation/AnimatorListenerAdapter;)V

    return-void
.end method


# virtual methods
.method updateSizeAndOrientation(III)V
    .registers 5

    if-lez p1, :cond_13

    if-lez p2, :cond_13

    .line 58
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/streetphotostyle/StreetPhotoStyleItemAdapter$ItemViewHolder;->rtLayout:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 59
    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 60
    iput p2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 61
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/streetphotostyle/StreetPhotoStyleItemAdapter$ItemViewHolder;->rtLayout:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 63
    :cond_13
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/streetphotostyle/StreetPhotoStyleItemAdapter$ItemViewHolder;->rtLayout:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    const/4 p1, 0x0

    invoke-virtual {p0, p3, p1}, Lcom/transsion/camera/app/ui/widget/RotateLayout;->setOrientation(IZ)V

    return-void
.end method
