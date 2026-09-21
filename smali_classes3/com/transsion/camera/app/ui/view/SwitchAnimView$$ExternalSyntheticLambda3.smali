.class public final synthetic Lcom/transsion/camera/app/ui/view/SwitchAnimView$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/transsion/camera/app/ui/view/SwitchAnimView;

.field public final synthetic f$1:Landroid/graphics/Bitmap;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/camera/app/ui/view/SwitchAnimView;Landroid/graphics/Bitmap;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/camera/app/ui/view/SwitchAnimView$$ExternalSyntheticLambda3;->f$0:Lcom/transsion/camera/app/ui/view/SwitchAnimView;

    iput-object p2, p0, Lcom/transsion/camera/app/ui/view/SwitchAnimView$$ExternalSyntheticLambda3;->f$1:Landroid/graphics/Bitmap;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 3

    .line 0
    iget-object v0, p0, Lcom/transsion/camera/app/ui/view/SwitchAnimView$$ExternalSyntheticLambda3;->f$0:Lcom/transsion/camera/app/ui/view/SwitchAnimView;

    iget-object p0, p0, Lcom/transsion/camera/app/ui/view/SwitchAnimView$$ExternalSyntheticLambda3;->f$1:Landroid/graphics/Bitmap;

    check-cast p1, Landroid/widget/ImageView;

    invoke-static {v0, p0, p1}, Lcom/transsion/camera/app/ui/view/SwitchAnimView;->$r8$lambda$jEVSYEOM0U6T65ab0rVH0ewnTUQ(Lcom/transsion/camera/app/ui/view/SwitchAnimView;Landroid/graphics/Bitmap;Landroid/widget/ImageView;)V

    return-void
.end method
