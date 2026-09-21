.class Lcom/transsion/camera/feature/thumbnailtransition/ThumbnailTransitionManager$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/camera/feature/thumbnailtransition/ThumbnailTransitionManager;->gotoGallery(Landroid/view/View;IZ)Landroid/graphics/Bitmap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/feature/thumbnailtransition/ThumbnailTransitionManager;


# direct methods
.method constructor <init>(Lcom/transsion/camera/feature/thumbnailtransition/ThumbnailTransitionManager;)V
    .registers 2

    .line 187
    iput-object p1, p0, Lcom/transsion/camera/feature/thumbnailtransition/ThumbnailTransitionManager$2;->this$0:Lcom/transsion/camera/feature/thumbnailtransition/ThumbnailTransitionManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .line 190
    iget-object p0, p0, Lcom/transsion/camera/feature/thumbnailtransition/ThumbnailTransitionManager$2;->this$0:Lcom/transsion/camera/feature/thumbnailtransition/ThumbnailTransitionManager;

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/transsion/camera/feature/thumbnailtransition/ThumbnailTransitionManager;->-$$Nest$fputmIsCaptureUpdate(Lcom/transsion/camera/feature/thumbnailtransition/ThumbnailTransitionManager;Z)V

    return-void
.end method
