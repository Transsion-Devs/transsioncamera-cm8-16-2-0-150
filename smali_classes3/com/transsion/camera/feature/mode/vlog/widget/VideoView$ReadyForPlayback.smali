.class final Lcom/transsion/camera/feature/mode/vlog/widget/VideoView$ReadyForPlayback;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/mode/vlog/widget/VideoView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ReadyForPlayback"
.end annotation


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private mFailedToPrepareUiForPlayback:Z

.field private mHeight:I

.field private mSurfaceTextureAvailable:Z

.field private mWidth:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 680
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-class v1, Lcom/transsion/camera/feature/mode/vlog/widget/VideoView$ReadyForPlayback;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/feature/mode/vlog/widget/VideoView$ReadyForPlayback;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 678
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/transsion/camera/feature/mode/vlog/widget/VideoView-IA;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/vlog/widget/VideoView$ReadyForPlayback;-><init>()V

    return-void
.end method


# virtual methods
.method isFailedToPrepareUiForPlayback()Z
    .registers 1

    .line 721
    iget-boolean p0, p0, Lcom/transsion/camera/feature/mode/vlog/widget/VideoView$ReadyForPlayback;->mFailedToPrepareUiForPlayback:Z

    return p0
.end method

.method isReadyForPlayback()Z
    .registers 4

    .line 715
    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/vlog/widget/VideoView$ReadyForPlayback;->isVideoSizeAvailable()Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/vlog/widget/VideoView$ReadyForPlayback;->isSurfaceTextureAvailable()Z

    move-result p0

    if-eqz p0, :cond_e

    const/4 p0, 0x1

    goto :goto_f

    :cond_e
    const/4 p0, 0x0

    .line 716
    :goto_f
    sget-object v0, Lcom/transsion/camera/feature/mode/vlog/widget/VideoView$ReadyForPlayback;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isReadyForPlayback "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->v(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return p0
.end method

.method isSurfaceTextureAvailable()Z
    .registers 4

    .line 708
    sget-object v0, Lcom/transsion/camera/feature/mode/vlog/widget/VideoView$ReadyForPlayback;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isSurfaceTextureAvailable "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/transsion/camera/feature/mode/vlog/widget/VideoView$ReadyForPlayback;->mSurfaceTextureAvailable:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->v(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 710
    iget-boolean p0, p0, Lcom/transsion/camera/feature/mode/vlog/widget/VideoView$ReadyForPlayback;->mSurfaceTextureAvailable:Z

    return p0
.end method

.method isVideoSizeAvailable()Z
    .registers 4

    .line 701
    iget v0, p0, Lcom/transsion/camera/feature/mode/vlog/widget/VideoView$ReadyForPlayback;->mWidth:I

    if-lez v0, :cond_a

    iget p0, p0, Lcom/transsion/camera/feature/mode/vlog/widget/VideoView$ReadyForPlayback;->mHeight:I

    if-lez p0, :cond_a

    const/4 p0, 0x1

    goto :goto_b

    :cond_a
    const/4 p0, 0x0

    .line 703
    :goto_b
    sget-object v0, Lcom/transsion/camera/feature/mode/vlog/widget/VideoView$ReadyForPlayback;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "videoSizeAvailable "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->v(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return p0
.end method

.method setFailedToPrepareUiForPlayback(Z)V
    .registers 2

    .line 697
    iput-boolean p1, p0, Lcom/transsion/camera/feature/mode/vlog/widget/VideoView$ReadyForPlayback;->mFailedToPrepareUiForPlayback:Z

    return-void
.end method

.method setSurfaceTextureAvailable(Z)V
    .registers 2

    .line 688
    iput-boolean p1, p0, Lcom/transsion/camera/feature/mode/vlog/widget/VideoView$ReadyForPlayback;->mSurfaceTextureAvailable:Z

    return-void
.end method

.method setVideoSize(II)V
    .registers 3

    .line 692
    iput p1, p0, Lcom/transsion/camera/feature/mode/vlog/widget/VideoView$ReadyForPlayback;->mWidth:I

    .line 693
    iput p2, p0, Lcom/transsion/camera/feature/mode/vlog/widget/VideoView$ReadyForPlayback;->mHeight:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 726
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lcom/transsion/camera/feature/mode/vlog/widget/VideoView$ReadyForPlayback;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/vlog/widget/VideoView$ReadyForPlayback;->isReadyForPlayback()Z

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
