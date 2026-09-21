.class Lcom/transsion/camera/app/common/mode/CommonVideoMode$MediaSaverListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/app/common/storage/MediaSaver$MediaSaverListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/app/common/mode/CommonVideoMode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MediaSaverListener"
.end annotation


# instance fields
.field private final mFile:Ljava/lang/Object;

.field private final mReason:I

.field final synthetic this$0:Lcom/transsion/camera/app/common/mode/CommonVideoMode;


# direct methods
.method constructor <init>(Lcom/transsion/camera/app/common/mode/CommonVideoMode;Ljava/lang/Object;I)V
    .registers 4

    .line 2067
    iput-object p1, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode$MediaSaverListener;->this$0:Lcom/transsion/camera/app/common/mode/CommonVideoMode;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2068
    iput-object p2, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode$MediaSaverListener;->mFile:Ljava/lang/Object;

    .line 2069
    iput p3, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode$MediaSaverListener;->mReason:I

    return-void
.end method


# virtual methods
.method public onFileSaved(Landroid/net/Uri;)V
    .registers 5

    .line 2074
    const-string v0, "[TranMemoryFlow] available memory when save video:"

    invoke-static {v0}, Lcom/transsion/camera/utils/MemoryUtils;->logAvailMemoryAsync(Ljava/lang/String;)V

    .line 2075
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode$MediaSaverListener;->this$0:Lcom/transsion/camera/app/common/mode/CommonVideoMode;

    iget-object v0, v0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[onFileSaved] + uri:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " mVideoScannerConnection:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode$MediaSaverListener;->this$0:Lcom/transsion/camera/app/common/mode/CommonVideoMode;

    iget-object v2, v2, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mVideoScannerConnection:Landroid/media/MediaScannerConnection;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 2076
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode$MediaSaverListener;->this$0:Lcom/transsion/camera/app/common/mode/CommonVideoMode;

    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode$MediaSaverListener;->mFile:Ljava/lang/Object;

    iget v2, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode$MediaSaverListener;->mReason:I

    invoke-virtual {v0, p1, v1, v2}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->processFileSaved(Landroid/net/Uri;Ljava/lang/Object;I)V

    .line 2077
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode$MediaSaverListener;->this$0:Lcom/transsion/camera/app/common/mode/CommonVideoMode;

    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "[onFileSaved] -"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method
