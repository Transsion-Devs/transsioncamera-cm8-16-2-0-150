.class Lcom/transsion/camera/app/common/mode/CommonVideoMode$VideoScannerConnectionClinet;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/media/MediaScannerConnection$MediaScannerConnectionClient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/app/common/mode/CommonVideoMode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "VideoScannerConnectionClinet"
.end annotation


# instance fields
.field mModeRefence:Ljava/lang/ref/WeakReference;


# direct methods
.method public constructor <init>(Lcom/transsion/camera/app/common/mode/CommonVideoMode;)V
    .registers 3

    .line 2047
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2048
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode$VideoScannerConnectionClinet;->mModeRefence:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public onMediaScannerConnected()V
    .registers 3

    .line 2053
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode$VideoScannerConnectionClinet;->mModeRefence:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;

    if-eqz p0, :cond_19

    .line 2055
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mCurrentFile:Ljava/lang/String;

    .line 2056
    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mVideoFileInfo:Lcom/transsion/camera/app/common/recorder/data/VideoFileInfo;

    if-eqz v0, :cond_19

    .line 2058
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mVideoScannerConnection:Landroid/media/MediaScannerConnection;

    invoke-virtual {v1}, Lcom/transsion/camera/app/common/recorder/data/VideoFileInfo;->getMimeType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/media/MediaScannerConnection;->scanFile(Ljava/lang/String;Ljava/lang/String;)V

    :cond_19
    return-void
.end method

.method public onScanCompleted(Ljava/lang/String;Landroid/net/Uri;)V
    .registers 3

    .line 2065
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode$VideoScannerConnectionClinet;->mModeRefence:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;

    if-eqz p0, :cond_f

    .line 2067
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mVideoScannerConnection:Landroid/media/MediaScannerConnection;

    invoke-virtual {p0}, Landroid/media/MediaScannerConnection;->disconnect()V

    :cond_f
    return-void
.end method
