.class Lcom/transsion/camera/feature/thumbnailtransition/ThumbnailTransitionManager$1;
.super Lcom/transsion/camera/feature/thumbnailtransition/IRemoteGetBitmap$Stub;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/thumbnailtransition/ThumbnailTransitionManager;
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

    .line 51
    iput-object p1, p0, Lcom/transsion/camera/feature/thumbnailtransition/ThumbnailTransitionManager$1;->this$0:Lcom/transsion/camera/feature/thumbnailtransition/ThumbnailTransitionManager;

    invoke-direct {p0}, Lcom/transsion/camera/feature/thumbnailtransition/IRemoteGetBitmap$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public getBitMap()Landroid/graphics/Bitmap;
    .registers 4

    .line 53
    invoke-static {}, Lcom/transsion/camera/feature/thumbnailtransition/ThumbnailTransitionManager;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mIRemoteGetBitmap getBitMap = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/feature/thumbnailtransition/ThumbnailTransitionManager$1;->this$0:Lcom/transsion/camera/feature/thumbnailtransition/ThumbnailTransitionManager;

    invoke-static {v2}, Lcom/transsion/camera/feature/thumbnailtransition/ThumbnailTransitionManager;->-$$Nest$fgetmTransitionBitmap(Lcom/transsion/camera/feature/thumbnailtransition/ThumbnailTransitionManager;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " mHasBitmapUpdate = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/feature/thumbnailtransition/ThumbnailTransitionManager$1;->this$0:Lcom/transsion/camera/feature/thumbnailtransition/ThumbnailTransitionManager;

    invoke-static {v2}, Lcom/transsion/camera/feature/thumbnailtransition/ThumbnailTransitionManager;->-$$Nest$fgetmHasBitmapUpdate(Lcom/transsion/camera/feature/thumbnailtransition/ThumbnailTransitionManager;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 54
    iget-object v0, p0, Lcom/transsion/camera/feature/thumbnailtransition/ThumbnailTransitionManager$1;->this$0:Lcom/transsion/camera/feature/thumbnailtransition/ThumbnailTransitionManager;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/transsion/camera/feature/thumbnailtransition/ThumbnailTransitionManager;->-$$Nest$fputmHasBitmapUpdate(Lcom/transsion/camera/feature/thumbnailtransition/ThumbnailTransitionManager;Z)V

    .line 55
    iget-object p0, p0, Lcom/transsion/camera/feature/thumbnailtransition/ThumbnailTransitionManager$1;->this$0:Lcom/transsion/camera/feature/thumbnailtransition/ThumbnailTransitionManager;

    invoke-static {p0}, Lcom/transsion/camera/feature/thumbnailtransition/ThumbnailTransitionManager;->-$$Nest$fgetmTransitionBitmap(Lcom/transsion/camera/feature/thumbnailtransition/ThumbnailTransitionManager;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public hasNewBitmap()Z
    .registers 4

    .line 59
    invoke-static {}, Lcom/transsion/camera/feature/thumbnailtransition/ThumbnailTransitionManager;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mIRemoteGetBitmap hasNewBitmap = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/feature/thumbnailtransition/ThumbnailTransitionManager$1;->this$0:Lcom/transsion/camera/feature/thumbnailtransition/ThumbnailTransitionManager;

    invoke-static {v2}, Lcom/transsion/camera/feature/thumbnailtransition/ThumbnailTransitionManager;->-$$Nest$fgetmHasBitmapUpdate(Lcom/transsion/camera/feature/thumbnailtransition/ThumbnailTransitionManager;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 60
    iget-object p0, p0, Lcom/transsion/camera/feature/thumbnailtransition/ThumbnailTransitionManager$1;->this$0:Lcom/transsion/camera/feature/thumbnailtransition/ThumbnailTransitionManager;

    invoke-static {p0}, Lcom/transsion/camera/feature/thumbnailtransition/ThumbnailTransitionManager;->-$$Nest$fgetmHasBitmapUpdate(Lcom/transsion/camera/feature/thumbnailtransition/ThumbnailTransitionManager;)Z

    move-result p0

    return p0
.end method
