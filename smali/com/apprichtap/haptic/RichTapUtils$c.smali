.class Lcom/apprichtap/haptic/RichTapUtils$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/apprichtap/haptic/RichTapUtils;->playHaptic(Ljava/lang/String;IIIIILcom/apprichtap/haptic/sync/SyncCallback;Landroid/os/VibrationAttributes;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:I

.field final synthetic c:I

.field final synthetic d:I

.field final synthetic e:I

.field final synthetic f:I

.field final synthetic h:Landroid/os/VibrationAttributes;

.field final synthetic i:Lcom/apprichtap/haptic/RichTapUtils;


# direct methods
.method constructor <init>(Lcom/apprichtap/haptic/RichTapUtils;Ljava/lang/String;IIIIILcom/apprichtap/haptic/sync/SyncCallback;Landroid/os/VibrationAttributes;)V
    .registers 10

    iput-object p1, p0, Lcom/apprichtap/haptic/RichTapUtils$c;->i:Lcom/apprichtap/haptic/RichTapUtils;

    iput-object p2, p0, Lcom/apprichtap/haptic/RichTapUtils$c;->a:Ljava/lang/String;

    iput p3, p0, Lcom/apprichtap/haptic/RichTapUtils$c;->b:I

    iput p4, p0, Lcom/apprichtap/haptic/RichTapUtils$c;->c:I

    iput p5, p0, Lcom/apprichtap/haptic/RichTapUtils$c;->d:I

    iput p6, p0, Lcom/apprichtap/haptic/RichTapUtils$c;->e:I

    iput p7, p0, Lcom/apprichtap/haptic/RichTapUtils$c;->f:I

    iput-object p9, p0, Lcom/apprichtap/haptic/RichTapUtils$c;->h:Landroid/os/VibrationAttributes;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 11

    :try_start_0
    iget-object v0, p0, Lcom/apprichtap/haptic/RichTapUtils$c;->i:Lcom/apprichtap/haptic/RichTapUtils;

    # getter for: Lcom/apprichtap/haptic/RichTapUtils;->mRichTapCoreMajorVersion:I
    invoke-static {v0}, Lcom/apprichtap/haptic/RichTapUtils;->access$000(Lcom/apprichtap/haptic/RichTapUtils;)I

    move-result v0

    const/16 v1, 0x20

    if-gt v1, v0, :cond_2c

    iget-object v0, p0, Lcom/apprichtap/haptic/RichTapUtils$c;->i:Lcom/apprichtap/haptic/RichTapUtils;

    # getter for: Lcom/apprichtap/haptic/RichTapUtils;->mPlayerType:I
    invoke-static {v0}, Lcom/apprichtap/haptic/RichTapUtils;->access$100(Lcom/apprichtap/haptic/RichTapUtils;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v1, v0, :cond_2c

    iget-object v0, p0, Lcom/apprichtap/haptic/RichTapUtils$c;->i:Lcom/apprichtap/haptic/RichTapUtils;

    # getter for: Lcom/apprichtap/haptic/RichTapUtils;->mPlayerObjectPool:Lcom/apprichtap/haptic/player/c;
    invoke-static {v0}, Lcom/apprichtap/haptic/RichTapUtils;->access$200(Lcom/apprichtap/haptic/RichTapUtils;)Lcom/apprichtap/haptic/player/c;

    move-result-object v1

    iget-object v2, p0, Lcom/apprichtap/haptic/RichTapUtils$c;->a:Ljava/lang/String;

    iget v3, p0, Lcom/apprichtap/haptic/RichTapUtils$c;->b:I

    iget v4, p0, Lcom/apprichtap/haptic/RichTapUtils$c;->c:I

    iget v5, p0, Lcom/apprichtap/haptic/RichTapUtils$c;->d:I

    iget v6, p0, Lcom/apprichtap/haptic/RichTapUtils$c;->e:I

    iget v7, p0, Lcom/apprichtap/haptic/RichTapUtils$c;->f:I

    iget-object v9, p0, Lcom/apprichtap/haptic/RichTapUtils$c;->h:Landroid/os/VibrationAttributes;

    const/4 v8, 0x0

    invoke-virtual/range {v1 .. v9}, Lcom/apprichtap/haptic/player/c;->a(Ljava/lang/String;IIIIILcom/apprichtap/haptic/sync/SyncCallback;Landroid/os/VibrationAttributes;)I

    return-void

    :cond_2c
    iget-object v0, p0, Lcom/apprichtap/haptic/RichTapUtils$c;->i:Lcom/apprichtap/haptic/RichTapUtils;

    # getter for: Lcom/apprichtap/haptic/RichTapUtils;->mPlayer:Lcom/apprichtap/haptic/RichTapPlayer;
    invoke-static {v0}, Lcom/apprichtap/haptic/RichTapUtils;->access$300(Lcom/apprichtap/haptic/RichTapUtils;)Lcom/apprichtap/haptic/RichTapPlayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/apprichtap/haptic/RichTapPlayer;->reset()V

    iget-object v0, p0, Lcom/apprichtap/haptic/RichTapUtils$c;->i:Lcom/apprichtap/haptic/RichTapUtils;

    # getter for: Lcom/apprichtap/haptic/RichTapUtils;->mPlayer:Lcom/apprichtap/haptic/RichTapPlayer;
    invoke-static {v0}, Lcom/apprichtap/haptic/RichTapUtils;->access$300(Lcom/apprichtap/haptic/RichTapUtils;)Lcom/apprichtap/haptic/RichTapPlayer;

    move-result-object v0

    iget-object v1, p0, Lcom/apprichtap/haptic/RichTapUtils$c;->h:Landroid/os/VibrationAttributes;

    invoke-virtual {v0, v1}, Lcom/apprichtap/haptic/RichTapPlayer;->setVibrationAttributes(Landroid/os/VibrationAttributes;)V

    iget-object v0, p0, Lcom/apprichtap/haptic/RichTapUtils$c;->i:Lcom/apprichtap/haptic/RichTapUtils;

    # getter for: Lcom/apprichtap/haptic/RichTapUtils;->mPlayer:Lcom/apprichtap/haptic/RichTapPlayer;
    invoke-static {v0}, Lcom/apprichtap/haptic/RichTapUtils;->access$300(Lcom/apprichtap/haptic/RichTapUtils;)Lcom/apprichtap/haptic/RichTapPlayer;

    move-result-object v1

    iget-object v2, p0, Lcom/apprichtap/haptic/RichTapUtils$c;->a:Ljava/lang/String;

    iget v3, p0, Lcom/apprichtap/haptic/RichTapUtils$c;->d:I

    iget v4, p0, Lcom/apprichtap/haptic/RichTapUtils$c;->e:I

    iget v5, p0, Lcom/apprichtap/haptic/RichTapUtils$c;->b:I

    iget v6, p0, Lcom/apprichtap/haptic/RichTapUtils$c;->c:I

    const/4 v7, 0x0

    invoke-virtual/range {v1 .. v7}, Lcom/apprichtap/haptic/RichTapPlayer;->setDataSource(Ljava/lang/String;IIIILcom/apprichtap/haptic/sync/SyncCallback;)V

    iget-object v0, p0, Lcom/apprichtap/haptic/RichTapUtils$c;->i:Lcom/apprichtap/haptic/RichTapUtils;

    # getter for: Lcom/apprichtap/haptic/RichTapUtils;->mPlayer:Lcom/apprichtap/haptic/RichTapPlayer;
    invoke-static {v0}, Lcom/apprichtap/haptic/RichTapUtils;->access$300(Lcom/apprichtap/haptic/RichTapUtils;)Lcom/apprichtap/haptic/RichTapPlayer;

    move-result-object v0

    iget v1, p0, Lcom/apprichtap/haptic/RichTapUtils$c;->f:I

    invoke-virtual {v0, v1}, Lcom/apprichtap/haptic/RichTapPlayer;->setStartOffsetMillis(I)V

    iget-object v0, p0, Lcom/apprichtap/haptic/RichTapUtils$c;->i:Lcom/apprichtap/haptic/RichTapUtils;

    # getter for: Lcom/apprichtap/haptic/RichTapUtils;->mPlayer:Lcom/apprichtap/haptic/RichTapPlayer;
    invoke-static {v0}, Lcom/apprichtap/haptic/RichTapUtils;->access$300(Lcom/apprichtap/haptic/RichTapUtils;)Lcom/apprichtap/haptic/RichTapPlayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/apprichtap/haptic/RichTapPlayer;->prepare()V

    iget-object p0, p0, Lcom/apprichtap/haptic/RichTapUtils$c;->i:Lcom/apprichtap/haptic/RichTapUtils;

    # getter for: Lcom/apprichtap/haptic/RichTapUtils;->mPlayer:Lcom/apprichtap/haptic/RichTapPlayer;
    invoke-static {p0}, Lcom/apprichtap/haptic/RichTapUtils;->access$300(Lcom/apprichtap/haptic/RichTapUtils;)Lcom/apprichtap/haptic/RichTapPlayer;

    move-result-object p0

    invoke-virtual {p0}, Lcom/apprichtap/haptic/RichTapPlayer;->start()V
    :try_end_71
    .catchall {:try_start_0 .. :try_end_71} :catchall_72

    return-void

    :catchall_72
    move-exception v0

    move-object p0, v0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method
