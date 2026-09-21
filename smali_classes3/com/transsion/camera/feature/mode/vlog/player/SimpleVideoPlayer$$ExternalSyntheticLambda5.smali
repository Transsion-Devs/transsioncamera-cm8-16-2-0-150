.class public final synthetic Lcom/transsion/camera/feature/mode/vlog/player/SimpleVideoPlayer$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/media/MediaPlayer$OnErrorListener;


# instance fields
.field public final synthetic f$0:Lcom/transsion/camera/feature/mode/vlog/player/SimpleVideoPlayer;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/camera/feature/mode/vlog/player/SimpleVideoPlayer;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/camera/feature/mode/vlog/player/SimpleVideoPlayer$$ExternalSyntheticLambda5;->f$0:Lcom/transsion/camera/feature/mode/vlog/player/SimpleVideoPlayer;

    return-void
.end method


# virtual methods
.method public final onError(Landroid/media/MediaPlayer;II)Z
    .registers 4

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/player/SimpleVideoPlayer$$ExternalSyntheticLambda5;->f$0:Lcom/transsion/camera/feature/mode/vlog/player/SimpleVideoPlayer;

    invoke-static {p0, p1, p2, p3}, Lcom/transsion/camera/feature/mode/vlog/player/SimpleVideoPlayer;->$r8$lambda$3swtm3oIpyWEpr98SGexyUdIx6Q(Lcom/transsion/camera/feature/mode/vlog/player/SimpleVideoPlayer;Landroid/media/MediaPlayer;II)Z

    move-result p0

    return p0
.end method
