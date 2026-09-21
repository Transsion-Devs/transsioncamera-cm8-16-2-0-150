.class public final synthetic Lcom/transsion/camera/feature/imageryguide/ui/widget/AutoPlayTextureView$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/media/MediaPlayer$OnPreparedListener;


# instance fields
.field public final synthetic f$0:Lcom/transsion/camera/feature/imageryguide/ui/widget/AutoPlayTextureView;

.field public final synthetic f$1:Landroid/view/Surface;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/camera/feature/imageryguide/ui/widget/AutoPlayTextureView;Landroid/view/Surface;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/camera/feature/imageryguide/ui/widget/AutoPlayTextureView$$ExternalSyntheticLambda0;->f$0:Lcom/transsion/camera/feature/imageryguide/ui/widget/AutoPlayTextureView;

    iput-object p2, p0, Lcom/transsion/camera/feature/imageryguide/ui/widget/AutoPlayTextureView$$ExternalSyntheticLambda0;->f$1:Landroid/view/Surface;

    return-void
.end method


# virtual methods
.method public final onPrepared(Landroid/media/MediaPlayer;)V
    .registers 3

    .line 0
    iget-object v0, p0, Lcom/transsion/camera/feature/imageryguide/ui/widget/AutoPlayTextureView$$ExternalSyntheticLambda0;->f$0:Lcom/transsion/camera/feature/imageryguide/ui/widget/AutoPlayTextureView;

    iget-object p0, p0, Lcom/transsion/camera/feature/imageryguide/ui/widget/AutoPlayTextureView$$ExternalSyntheticLambda0;->f$1:Landroid/view/Surface;

    invoke-static {v0, p0, p1}, Lcom/transsion/camera/feature/imageryguide/ui/widget/AutoPlayTextureView;->$r8$lambda$fQ5Hq_e93HluknSpUYXIh3tgl5A(Lcom/transsion/camera/feature/imageryguide/ui/widget/AutoPlayTextureView;Landroid/view/Surface;Landroid/media/MediaPlayer;)V

    return-void
.end method
