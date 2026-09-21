.class public final synthetic Lcom/transsion/camera/app/ui/view/SwitchAnimView$4$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/graphics/Bitmap;

.field public final synthetic f$1:Landroid/widget/ImageView;


# direct methods
.method public synthetic constructor <init>(Landroid/graphics/Bitmap;Landroid/widget/ImageView;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/camera/app/ui/view/SwitchAnimView$4$$ExternalSyntheticLambda1;->f$0:Landroid/graphics/Bitmap;

    iput-object p2, p0, Lcom/transsion/camera/app/ui/view/SwitchAnimView$4$$ExternalSyntheticLambda1;->f$1:Landroid/widget/ImageView;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    .line 0
    iget-object v0, p0, Lcom/transsion/camera/app/ui/view/SwitchAnimView$4$$ExternalSyntheticLambda1;->f$0:Landroid/graphics/Bitmap;

    iget-object p0, p0, Lcom/transsion/camera/app/ui/view/SwitchAnimView$4$$ExternalSyntheticLambda1;->f$1:Landroid/widget/ImageView;

    invoke-static {v0, p0}, Lcom/transsion/camera/app/ui/view/SwitchAnimView$4;->$r8$lambda$YtznBk0UPDmkyVVyZQsUo5c1Mh8(Landroid/graphics/Bitmap;Landroid/widget/ImageView;)V

    return-void
.end method
