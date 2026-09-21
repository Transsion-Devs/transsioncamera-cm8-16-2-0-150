.class Lcom/transsion/camera/ui/setting/streetphotostyle/StreetPhotoStyleItemAdapter$ItemViewHolder$1;
.super Landroid/view/ViewOutlineProvider;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/camera/ui/setting/streetphotostyle/StreetPhotoStyleItemAdapter$ItemViewHolder;-><init>(Lcom/transsion/camera/ui/setting/streetphotostyle/StreetPhotoStyleItemAdapter;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/transsion/camera/ui/setting/streetphotostyle/StreetPhotoStyleItemAdapter$ItemViewHolder;

.field final synthetic val$this$0:Lcom/transsion/camera/ui/setting/streetphotostyle/StreetPhotoStyleItemAdapter;


# direct methods
.method constructor <init>(Lcom/transsion/camera/ui/setting/streetphotostyle/StreetPhotoStyleItemAdapter$ItemViewHolder;Lcom/transsion/camera/ui/setting/streetphotostyle/StreetPhotoStyleItemAdapter;)V
    .registers 3

    .line 47
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/streetphotostyle/StreetPhotoStyleItemAdapter$ItemViewHolder$1;->this$1:Lcom/transsion/camera/ui/setting/streetphotostyle/StreetPhotoStyleItemAdapter$ItemViewHolder;

    iput-object p2, p0, Lcom/transsion/camera/ui/setting/streetphotostyle/StreetPhotoStyleItemAdapter$ItemViewHolder$1;->val$this$0:Lcom/transsion/camera/ui/setting/streetphotostyle/StreetPhotoStyleItemAdapter;

    invoke-direct {p0}, Landroid/view/ViewOutlineProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public getOutline(Landroid/view/View;Landroid/graphics/Outline;)V
    .registers 9

    .line 50
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v3

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v4

    iget-object p0, p0, Lcom/transsion/camera/ui/setting/streetphotostyle/StreetPhotoStyleItemAdapter$ItemViewHolder$1;->this$1:Lcom/transsion/camera/ui/setting/streetphotostyle/StreetPhotoStyleItemAdapter$ItemViewHolder;

    iget-object p0, p0, Lcom/transsion/camera/ui/setting/streetphotostyle/StreetPhotoStyleItemAdapter$ItemViewHolder;->ivItem:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    .line 51
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget p1, Lcom/transsion/camera/R$dimen;->street_photo_style_item_background_ridus:I

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    int-to-float v5, p0

    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v0, p2

    .line 50
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Outline;->setRoundRect(IIIIF)V

    return-void
.end method
