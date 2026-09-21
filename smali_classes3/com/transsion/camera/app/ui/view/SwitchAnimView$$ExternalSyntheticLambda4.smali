.class public final synthetic Lcom/transsion/camera/app/ui/view/SwitchAnimView$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Landroid/graphics/Bitmap;


# direct methods
.method public synthetic constructor <init>(Landroid/graphics/Bitmap;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/camera/app/ui/view/SwitchAnimView$$ExternalSyntheticLambda4;->f$0:Landroid/graphics/Bitmap;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 2

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/app/ui/view/SwitchAnimView$$ExternalSyntheticLambda4;->f$0:Landroid/graphics/Bitmap;

    check-cast p1, Landroid/os/Handler;

    invoke-static {p0, p1}, Lcom/transsion/camera/app/ui/view/SwitchAnimView;->$r8$lambda$Fr8UpeAdmX4Yw8duWdNP2PIMMBQ(Landroid/graphics/Bitmap;Landroid/os/Handler;)V

    return-void
.end method
