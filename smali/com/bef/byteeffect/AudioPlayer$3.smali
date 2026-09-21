.class Lcom/bef/byteeffect/AudioPlayer$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/media/MediaPlayer$OnPreparedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bef/byteeffect/AudioPlayer;->init()I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/bef/byteeffect/AudioPlayer;


# direct methods
.method constructor <init>(Lcom/bef/byteeffect/AudioPlayer;)V
    .registers 2

    .line 63
    iput-object p1, p0, Lcom/bef/byteeffect/AudioPlayer$3;->this$0:Lcom/bef/byteeffect/AudioPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPrepared(Landroid/media/MediaPlayer;)V
    .registers 4

    .line 66
    sget-object p1, Lcom/bef/byteeffect/AudioPlayer;->TAG:Ljava/lang/String;

    const-string v0, "MediaPlayer onPrepared..."

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    iget-object p1, p0, Lcom/bef/byteeffect/AudioPlayer$3;->this$0:Lcom/bef/byteeffect/AudioPlayer;

    const/4 v0, 0x1

    # setter for: Lcom/bef/byteeffect/AudioPlayer;->mIsPrepared:Z
    invoke-static {p1, v0}, Lcom/bef/byteeffect/AudioPlayer;->access$402(Lcom/bef/byteeffect/AudioPlayer;Z)Z

    .line 69
    iget-object p0, p0, Lcom/bef/byteeffect/AudioPlayer$3;->this$0:Lcom/bef/byteeffect/AudioPlayer;

    # getter for: Lcom/bef/byteeffect/AudioPlayer;->mNativePtr:J
    invoke-static {p0}, Lcom/bef/byteeffect/AudioPlayer;->access$000(Lcom/bef/byteeffect/AudioPlayer;)J

    move-result-wide v0

    # invokes: Lcom/bef/byteeffect/AudioPlayer;->nativeOnPrepared(J)V
    invoke-static {p0, v0, v1}, Lcom/bef/byteeffect/AudioPlayer;->access$500(Lcom/bef/byteeffect/AudioPlayer;J)V

    return-void
.end method
