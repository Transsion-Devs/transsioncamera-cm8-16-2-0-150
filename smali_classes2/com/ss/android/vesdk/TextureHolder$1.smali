.class Lcom/ss/android/vesdk/TextureHolder$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ss/android/vesdk/TextureHolder;->onCreate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ss/android/vesdk/TextureHolder;


# direct methods
.method constructor <init>(Lcom/ss/android/vesdk/TextureHolder;)V
    .registers 2

    .line 37
    iput-object p1, p0, Lcom/ss/android/vesdk/TextureHolder$1;->this$0:Lcom/ss/android/vesdk/TextureHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFrameAvailable(Landroid/graphics/SurfaceTexture;)V
    .registers 3

    .line 41
    iget-object v0, p0, Lcom/ss/android/vesdk/TextureHolder$1;->this$0:Lcom/ss/android/vesdk/TextureHolder;

    # getter for: Lcom/ss/android/vesdk/TextureHolder;->onFrameAvailableListener:Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;
    invoke-static {v0}, Lcom/ss/android/vesdk/TextureHolder;->access$000(Lcom/ss/android/vesdk/TextureHolder;)Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 42
    iget-object p0, p0, Lcom/ss/android/vesdk/TextureHolder$1;->this$0:Lcom/ss/android/vesdk/TextureHolder;

    # getter for: Lcom/ss/android/vesdk/TextureHolder;->onFrameAvailableListener:Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;
    invoke-static {p0}, Lcom/ss/android/vesdk/TextureHolder;->access$000(Lcom/ss/android/vesdk/TextureHolder;)Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;

    move-result-object p0

    invoke-interface {p0, p1}, Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;->onFrameAvailable(Landroid/graphics/SurfaceTexture;)V

    :cond_11
    return-void
.end method
