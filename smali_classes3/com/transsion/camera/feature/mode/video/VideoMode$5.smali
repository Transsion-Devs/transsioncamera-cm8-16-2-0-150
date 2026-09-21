.class Lcom/transsion/camera/feature/mode/video/VideoMode$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/app/common/storage/MediaSaver$MediaSaverListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/camera/feature/mode/video/VideoMode;->saveJpegToFile([BLandroid/graphics/Bitmap;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/feature/mode/video/VideoMode;


# direct methods
.method constructor <init>(Lcom/transsion/camera/feature/mode/video/VideoMode;)V
    .registers 2

    .line 1395
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/video/VideoMode$5;->this$0:Lcom/transsion/camera/feature/mode/video/VideoMode;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFileSaved(Landroid/net/Uri;)V
    .registers 4

    .line 1398
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/video/VideoMode$5;->this$0:Lcom/transsion/camera/feature/mode/video/VideoMode;

    const/4 v1, 0x0

    # setter for: Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mInTakingPicture:Z
    invoke-static {v0, v1}, Lcom/transsion/camera/feature/mode/video/VideoMode;->access$802(Lcom/transsion/camera/feature/mode/video/VideoMode;Z)Z

    .line 1399
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/video/VideoMode$5;->this$0:Lcom/transsion/camera/feature/mode/video/VideoMode;

    invoke-virtual {p0, p1, v1, v1}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->doOnFileSaved(Landroid/net/Uri;ZZ)V

    return-void
.end method
