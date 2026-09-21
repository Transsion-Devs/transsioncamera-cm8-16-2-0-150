.class Lcom/ss/android/vesdk/VEEditor$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/TextureView$SurfaceTextureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ss/android/vesdk/VEEditor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ss/android/vesdk/VEEditor;


# direct methods
.method constructor <init>(Lcom/ss/android/vesdk/VEEditor;)V
    .registers 2

    .line 936
    iput-object p1, p0, Lcom/ss/android/vesdk/VEEditor$3;->this$0:Lcom/ss/android/vesdk/VEEditor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V
    .registers 4

    .line 939
    iget-object p2, p0, Lcom/ss/android/vesdk/VEEditor$3;->this$0:Lcom/ss/android/vesdk/VEEditor;

    # getter for: Lcom/ss/android/vesdk/VEEditor;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;
    invoke-static {p2}, Lcom/ss/android/vesdk/VEEditor;->access$1500(Lcom/ss/android/vesdk/VEEditor;)Landroid/graphics/SurfaceTexture;

    move-result-object p2

    if-ne p2, p1, :cond_12

    .line 940
    iget-object p2, p0, Lcom/ss/android/vesdk/VEEditor$3;->this$0:Lcom/ss/android/vesdk/VEEditor;

    # getter for: Lcom/ss/android/vesdk/VEEditor;->mSurface:Landroid/view/Surface;
    invoke-static {p2}, Lcom/ss/android/vesdk/VEEditor;->access$1600(Lcom/ss/android/vesdk/VEEditor;)Landroid/view/Surface;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/ss/android/vesdk/VEEditor;->onSurfaceCreated(Landroid/view/Surface;)V

    goto :goto_25

    .line 942
    :cond_12
    iget-object p2, p0, Lcom/ss/android/vesdk/VEEditor$3;->this$0:Lcom/ss/android/vesdk/VEEditor;

    new-instance p3, Landroid/view/Surface;

    invoke-direct {p3, p1}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    # setter for: Lcom/ss/android/vesdk/VEEditor;->mSurface:Landroid/view/Surface;
    invoke-static {p2, p3}, Lcom/ss/android/vesdk/VEEditor;->access$1602(Lcom/ss/android/vesdk/VEEditor;Landroid/view/Surface;)Landroid/view/Surface;

    .line 943
    iget-object p2, p0, Lcom/ss/android/vesdk/VEEditor$3;->this$0:Lcom/ss/android/vesdk/VEEditor;

    # getter for: Lcom/ss/android/vesdk/VEEditor;->mSurface:Landroid/view/Surface;
    invoke-static {p2}, Lcom/ss/android/vesdk/VEEditor;->access$1600(Lcom/ss/android/vesdk/VEEditor;)Landroid/view/Surface;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/ss/android/vesdk/VEEditor;->onSurfaceCreated(Landroid/view/Surface;)V

    .line 945
    :goto_25
    iget-object p0, p0, Lcom/ss/android/vesdk/VEEditor$3;->this$0:Lcom/ss/android/vesdk/VEEditor;

    # setter for: Lcom/ss/android/vesdk/VEEditor;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;
    invoke-static {p0, p1}, Lcom/ss/android/vesdk/VEEditor;->access$1502(Lcom/ss/android/vesdk/VEEditor;Landroid/graphics/SurfaceTexture;)Landroid/graphics/SurfaceTexture;

    return-void
.end method

.method public onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z
    .registers 2

    .line 957
    iget-object p1, p0, Lcom/ss/android/vesdk/VEEditor$3;->this$0:Lcom/ss/android/vesdk/VEEditor;

    invoke-virtual {p1}, Lcom/ss/android/vesdk/VEEditor;->onSurfaceDestroyed()V

    .line 958
    iget-object p1, p0, Lcom/ss/android/vesdk/VEEditor$3;->this$0:Lcom/ss/android/vesdk/VEEditor;

    # getter for: Lcom/ss/android/vesdk/VEEditor;->mSurface:Landroid/view/Surface;
    invoke-static {p1}, Lcom/ss/android/vesdk/VEEditor;->access$1600(Lcom/ss/android/vesdk/VEEditor;)Landroid/view/Surface;

    move-result-object p1

    if-eqz p1, :cond_16

    .line 959
    iget-object p0, p0, Lcom/ss/android/vesdk/VEEditor$3;->this$0:Lcom/ss/android/vesdk/VEEditor;

    # getter for: Lcom/ss/android/vesdk/VEEditor;->mSurface:Landroid/view/Surface;
    invoke-static {p0}, Lcom/ss/android/vesdk/VEEditor;->access$1600(Lcom/ss/android/vesdk/VEEditor;)Landroid/view/Surface;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/Surface;->release()V

    :cond_16
    const/4 p0, 0x1

    return p0
.end method

.method public onSurfaceTextureSizeChanged(Landroid/graphics/SurfaceTexture;II)V
    .registers 4

    .line 950
    iget-object p1, p0, Lcom/ss/android/vesdk/VEEditor$3;->this$0:Lcom/ss/android/vesdk/VEEditor;

    # setter for: Lcom/ss/android/vesdk/VEEditor;->mSurfaceWidth:I
    invoke-static {p1, p2}, Lcom/ss/android/vesdk/VEEditor;->access$1702(Lcom/ss/android/vesdk/VEEditor;I)I

    .line 951
    iget-object p1, p0, Lcom/ss/android/vesdk/VEEditor$3;->this$0:Lcom/ss/android/vesdk/VEEditor;

    # setter for: Lcom/ss/android/vesdk/VEEditor;->mSurfaceHeight:I
    invoke-static {p1, p3}, Lcom/ss/android/vesdk/VEEditor;->access$1802(Lcom/ss/android/vesdk/VEEditor;I)I

    .line 952
    iget-object p0, p0, Lcom/ss/android/vesdk/VEEditor$3;->this$0:Lcom/ss/android/vesdk/VEEditor;

    invoke-virtual {p0}, Lcom/ss/android/vesdk/VEEditor;->updateInitDisplaySize()V

    return-void
.end method

.method public onSurfaceTextureUpdated(Landroid/graphics/SurfaceTexture;)V
    .registers 2

    return-void
.end method
