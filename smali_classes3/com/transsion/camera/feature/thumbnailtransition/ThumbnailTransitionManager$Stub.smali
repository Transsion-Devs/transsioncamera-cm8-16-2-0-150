.class Lcom/transsion/camera/feature/thumbnailtransition/ThumbnailTransitionManager$Stub;
.super Lcom/transsion/camera/feature/thumbnailtransition/IRemoteGetBitmap$Stub;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/thumbnailtransition/ThumbnailTransitionManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Stub"
.end annotation


# instance fields
.field private final mContext:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/transsion/camera/feature/thumbnailtransition/ThumbnailTransitionManager;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/transsion/camera/feature/thumbnailtransition/ThumbnailTransitionManager;)V
    .registers 3

    .line 78
    invoke-direct {p0}, Lcom/transsion/camera/feature/thumbnailtransition/IRemoteGetBitmap$Stub;-><init>()V

    .line 79
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/thumbnailtransition/ThumbnailTransitionManager$Stub;->mContext:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method private getContext()Lcom/transsion/camera/feature/thumbnailtransition/ThumbnailTransitionManager;
    .registers 1

    .line 105
    iget-object p0, p0, Lcom/transsion/camera/feature/thumbnailtransition/ThumbnailTransitionManager$Stub;->mContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/camera/feature/thumbnailtransition/ThumbnailTransitionManager;

    return-object p0
.end method


# virtual methods
.method public getBitMap()Landroid/graphics/Bitmap;
    .registers 4

    .line 84
    invoke-direct {p0}, Lcom/transsion/camera/feature/thumbnailtransition/ThumbnailTransitionManager$Stub;->getContext()Lcom/transsion/camera/feature/thumbnailtransition/ThumbnailTransitionManager;

    move-result-object p0

    if-eqz p0, :cond_37

    .line 86
    invoke-static {}, Lcom/transsion/camera/feature/thumbnailtransition/ThumbnailTransitionManager;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mIRemoteGetBitmap getBitMap = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lcom/transsion/camera/feature/thumbnailtransition/ThumbnailTransitionManager;->-$$Nest$fgetmTransitionBitmap(Lcom/transsion/camera/feature/thumbnailtransition/ThumbnailTransitionManager;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " mHasBitmapUpdate = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lcom/transsion/camera/feature/thumbnailtransition/ThumbnailTransitionManager;->-$$Nest$fgetmHasBitmapUpdate(Lcom/transsion/camera/feature/thumbnailtransition/ThumbnailTransitionManager;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 88
    invoke-static {p0, v0}, Lcom/transsion/camera/feature/thumbnailtransition/ThumbnailTransitionManager;->-$$Nest$fputmHasBitmapUpdate(Lcom/transsion/camera/feature/thumbnailtransition/ThumbnailTransitionManager;Z)V

    .line 89
    invoke-static {p0}, Lcom/transsion/camera/feature/thumbnailtransition/ThumbnailTransitionManager;->-$$Nest$fgetmTransitionBitmap(Lcom/transsion/camera/feature/thumbnailtransition/ThumbnailTransitionManager;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0

    :cond_37
    const/4 p0, 0x0

    return-object p0
.end method

.method public hasNewBitmap()Z
    .registers 4

    .line 96
    invoke-direct {p0}, Lcom/transsion/camera/feature/thumbnailtransition/ThumbnailTransitionManager$Stub;->getContext()Lcom/transsion/camera/feature/thumbnailtransition/ThumbnailTransitionManager;

    move-result-object p0

    if-eqz p0, :cond_27

    .line 98
    invoke-static {}, Lcom/transsion/camera/feature/thumbnailtransition/ThumbnailTransitionManager;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mIRemoteGetBitmap hasNewBitmap = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lcom/transsion/camera/feature/thumbnailtransition/ThumbnailTransitionManager;->-$$Nest$fgetmHasBitmapUpdate(Lcom/transsion/camera/feature/thumbnailtransition/ThumbnailTransitionManager;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 99
    invoke-static {p0}, Lcom/transsion/camera/feature/thumbnailtransition/ThumbnailTransitionManager;->-$$Nest$fgetmHasBitmapUpdate(Lcom/transsion/camera/feature/thumbnailtransition/ThumbnailTransitionManager;)Z

    move-result p0

    return p0

    :cond_27
    const/4 p0, 0x0

    return p0
.end method
