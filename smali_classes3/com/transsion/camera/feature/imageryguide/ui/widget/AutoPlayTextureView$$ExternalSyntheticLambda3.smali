.class public final synthetic Lcom/transsion/camera/feature/imageryguide/ui/widget/AutoPlayTextureView$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/transsion/camera/feature/imageryguide/ui/widget/AutoPlayTextureView;

.field public final synthetic f$1:Landroid/view/Surface;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/camera/feature/imageryguide/ui/widget/AutoPlayTextureView;Landroid/view/Surface;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/camera/feature/imageryguide/ui/widget/AutoPlayTextureView$$ExternalSyntheticLambda3;->f$0:Lcom/transsion/camera/feature/imageryguide/ui/widget/AutoPlayTextureView;

    iput-object p2, p0, Lcom/transsion/camera/feature/imageryguide/ui/widget/AutoPlayTextureView$$ExternalSyntheticLambda3;->f$1:Landroid/view/Surface;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    .line 0
    iget-object v0, p0, Lcom/transsion/camera/feature/imageryguide/ui/widget/AutoPlayTextureView$$ExternalSyntheticLambda3;->f$0:Lcom/transsion/camera/feature/imageryguide/ui/widget/AutoPlayTextureView;

    iget-object p0, p0, Lcom/transsion/camera/feature/imageryguide/ui/widget/AutoPlayTextureView$$ExternalSyntheticLambda3;->f$1:Landroid/view/Surface;

    invoke-static {v0, p0}, Lcom/transsion/camera/feature/imageryguide/ui/widget/AutoPlayTextureView;->$r8$lambda$hmRiI8S9n3mu4LPRb76pq3L7rNM(Lcom/transsion/camera/feature/imageryguide/ui/widget/AutoPlayTextureView;Landroid/view/Surface;)V

    return-void
.end method
