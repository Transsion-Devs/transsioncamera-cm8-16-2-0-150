.class Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot$FooterVH;
.super Lcom/transsion/camera/feature/mode/makeup/adapter/ItemVH;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FooterVH"
.end annotation


# instance fields
.field private final mIconView:Landroid/widget/ImageView;


# direct methods
.method static bridge synthetic -$$Nest$fgetmIconView(Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot$FooterVH;)Landroid/widget/ImageView;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot$FooterVH;->mIconView:Landroid/widget/ImageView;

    return-object p0
.end method

.method public constructor <init>(Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;Landroid/view/View;)V
    .registers 3

    .line 1063
    invoke-direct {p0, p2}, Lcom/transsion/camera/feature/mode/makeup/adapter/ItemVH;-><init>(Landroid/view/View;)V

    .line 1064
    sget p1, Lcom/transsion/camera/feature/makeup/R$id;->mu_item_icon:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot$FooterVH;->mIconView:Landroid/widget/ImageView;

    return-void
.end method


# virtual methods
.method public bindHolder(Ljava/lang/Object;Z)V
    .registers 4

    .line 1074
    instance-of v0, p1, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot$Footer;

    if-eqz v0, :cond_19

    .line 1075
    check-cast p1, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot$Footer;

    .line 1076
    iget v0, p1, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot$Footer;->drawableId:I

    if-lez v0, :cond_19

    if-eqz p2, :cond_14

    .line 1078
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot$FooterVH;->mIconView:Landroid/widget/ImageView;

    iget p1, p1, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot$Footer;->blackDrawableId:I

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void

    .line 1080
    :cond_14
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot$FooterVH;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_19
    return-void
.end method

.method public getType()I
    .registers 1

    const p0, 0xfa05

    return p0
.end method
