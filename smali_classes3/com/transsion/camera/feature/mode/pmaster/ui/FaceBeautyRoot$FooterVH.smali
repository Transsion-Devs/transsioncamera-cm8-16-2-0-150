.class Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot$FooterVH;
.super Lcom/transsion/camera/feature/mode/pmaster/adapter/ItemVH;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FooterVH"
.end annotation


# direct methods
.method public constructor <init>(Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;Landroid/view/View;)V
    .registers 3

    .line 1426
    invoke-direct {p0, p2}, Lcom/transsion/camera/feature/mode/pmaster/adapter/ItemVH;-><init>(Landroid/view/View;)V

    .line 1427
    sget p1, Lcom/transsion/camera/feature/pmaster/R$id;->mu_item_icon:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/transsion/camera/feature/mode/pmaster/adapter/ItemVH;->mIconView:Landroid/widget/ImageView;

    return-void
.end method


# virtual methods
.method public bindHolder(Ljava/lang/Object;Z)V
    .registers 3

    return-void
.end method

.method public getType()I
    .registers 1

    const p0, 0xfa04

    return p0
.end method
