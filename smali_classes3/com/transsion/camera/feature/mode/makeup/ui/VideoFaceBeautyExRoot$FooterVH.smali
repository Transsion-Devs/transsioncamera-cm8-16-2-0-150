.class Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot$FooterVH;
.super Lcom/transsion/camera/feature/mode/makeup/adapter/ItemVH;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FooterVH"
.end annotation


# instance fields
.field private final mIconView:Lcom/transsion/camera/app/ui/widget/RotateImageView;

.field final synthetic this$0:Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;


# direct methods
.method static bridge synthetic -$$Nest$fgetmIconView(Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot$FooterVH;)Lcom/transsion/camera/app/ui/widget/RotateImageView;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot$FooterVH;->mIconView:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    return-object p0
.end method

.method public constructor <init>(Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;Landroid/view/View;)V
    .registers 5

    .line 1637
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot$FooterVH;->this$0:Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;

    .line 1638
    invoke-direct {p0, p2}, Lcom/transsion/camera/feature/mode/makeup/adapter/ItemVH;-><init>(Landroid/view/View;)V

    .line 1639
    sget v0, Lcom/transsion/camera/feature/makeup/R$id;->mu_item_icon:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/transsion/camera/app/ui/widget/RotateImageView;

    iput-object p2, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot$FooterVH;->mIconView:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    .line 1640
    invoke-static {p1}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;->-$$Nest$fgetmScreenFormType(Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;)I

    move-result p0

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eq p0, v0, :cond_2a

    invoke-static {p1}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;->-$$Nest$fgetmScreenFormType(Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;)I

    move-result p0

    const/4 v0, 0x4

    if-eq p0, v0, :cond_2a

    invoke-static {p1}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;->-$$Nest$fgetmScreenFormType(Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;)I

    move-result p0

    const/4 p1, 0x5

    if-ne p0, p1, :cond_26

    goto :goto_2a

    .line 1645
    :cond_26
    invoke-virtual {p2, v1, v1}, Lcom/transsion/camera/app/ui/widget/RotateImageView;->setOrientation(IZ)V

    return-void

    :cond_2a
    :goto_2a
    const/16 p0, 0x5a

    .line 1643
    invoke-virtual {p2, p0, v1}, Lcom/transsion/camera/app/ui/widget/RotateImageView;->setOrientation(IZ)V

    return-void
.end method


# virtual methods
.method public bindHolder(Ljava/lang/Object;Z)V
    .registers 6

    .line 1656
    instance-of v0, p1, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot$Footer;

    if-eqz v0, :cond_4b

    .line 1657
    check-cast p1, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot$Footer;

    .line 1658
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot$FooterVH;->this$0:Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;->-$$Nest$fgetmScreenFormType(Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;)I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_29

    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot$FooterVH;->this$0:Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;->-$$Nest$fgetmScreenFormType(Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;)I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_29

    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot$FooterVH;->this$0:Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;->-$$Nest$fgetmScreenFormType(Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;)I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_23

    goto :goto_29

    .line 1663
    :cond_23
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot$FooterVH;->mIconView:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    invoke-virtual {v0, v2, v2}, Lcom/transsion/camera/app/ui/widget/RotateImageView;->setOrientation(IZ)V

    goto :goto_30

    .line 1661
    :cond_29
    :goto_29
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot$FooterVH;->mIconView:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    const/16 v1, 0x5a

    invoke-virtual {v0, v1, v2}, Lcom/transsion/camera/app/ui/widget/RotateImageView;->setOrientation(IZ)V

    .line 1665
    :goto_30
    iget v0, p1, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot$Footer;->drawableId:I

    if-lez v0, :cond_4b

    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->isNewCamera4()Z

    move-result v0

    if-nez v0, :cond_4b

    if-eqz p2, :cond_44

    .line 1667
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot$FooterVH;->mIconView:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    iget p1, p1, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot$Footer;->blackDrawableId:I

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void

    .line 1669
    :cond_44
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot$FooterVH;->mIconView:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    iget p1, p1, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot$Footer;->drawableId:I

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_4b
    return-void
.end method

.method public getType()I
    .registers 1

    const p0, 0xfa05

    return p0
.end method
