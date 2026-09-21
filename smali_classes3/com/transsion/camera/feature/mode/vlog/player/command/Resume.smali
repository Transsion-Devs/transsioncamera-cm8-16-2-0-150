.class public Lcom/transsion/camera/feature/mode/vlog/player/command/Resume;
.super Lcom/transsion/camera/feature/mode/vlog/player/command/BaseCommand;
.source "SourceFile"


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private mStartResult:Lcom/transsion/camera/feature/mode/vlog/player/PlayerState;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 20
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-class v1, Lcom/transsion/camera/feature/mode/vlog/player/command/Resume;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/feature/mode/vlog/player/command/Resume;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Lcom/transsion/camera/feature/mode/vlog/player/IVideoPlayerCommand;Lcom/transsion/camera/feature/mode/vlog/player/IPlayerManager$IPlayerManagerCallBack;)V
    .registers 3

    .line 26
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/feature/mode/vlog/player/command/BaseCommand;-><init>(Lcom/transsion/camera/feature/mode/vlog/player/IVideoPlayerCommand;Lcom/transsion/camera/feature/mode/vlog/player/IPlayerManager$IPlayerManagerCallBack;)V

    return-void
.end method


# virtual methods
.method protected performExecute(Lcom/transsion/camera/feature/mode/vlog/player/IVideoPlayerCommand;)V
    .registers 6

    .line 31
    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/vlog/player/command/BaseCommand;->getPlayerState()Lcom/transsion/camera/feature/mode/vlog/player/PlayerState;

    move-result-object v0

    .line 33
    sget-object v1, Lcom/transsion/camera/feature/mode/vlog/player/command/Resume;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "playerState "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 35
    sget-object v2, Lcom/transsion/camera/feature/mode/vlog/player/command/Resume$1;->$SwitchMap$com$transsion$camera$feature$mode$vlog$player$PlayerState:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_4a

    return-void

    .line 67
    :pswitch_26
    iput-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/player/command/Resume;->mStartResult:Lcom/transsion/camera/feature/mode/vlog/player/PlayerState;

    .line 68
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "stateBefore, unhandled current state "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 42
    :pswitch_3d
    sget-object p1, Lcom/transsion/camera/feature/mode/vlog/player/PlayerState;->ERROR:Lcom/transsion/camera/feature/mode/vlog/player/PlayerState;

    iput-object p1, p0, Lcom/transsion/camera/feature/mode/vlog/player/command/Resume;->mStartResult:Lcom/transsion/camera/feature/mode/vlog/player/PlayerState;

    return-void

    .line 37
    :pswitch_42
    invoke-interface {p1}, Lcom/transsion/camera/feature/mode/vlog/player/IVideoPlayerCommand;->start()V

    .line 38
    sget-object p1, Lcom/transsion/camera/feature/mode/vlog/player/PlayerState;->STARTED:Lcom/transsion/camera/feature/mode/vlog/player/PlayerState;

    iput-object p1, p0, Lcom/transsion/camera/feature/mode/vlog/player/command/Resume;->mStartResult:Lcom/transsion/camera/feature/mode/vlog/player/PlayerState;

    return-void

    :pswitch_data_4a
    .packed-switch 0x1
        :pswitch_42
        :pswitch_3d
        :pswitch_26
        :pswitch_26
        :pswitch_26
        :pswitch_26
        :pswitch_26
        :pswitch_26
        :pswitch_26
        :pswitch_26
        :pswitch_26
        :pswitch_26
        :pswitch_26
        :pswitch_26
        :pswitch_26
        :pswitch_26
        :pswitch_26
        :pswitch_26
        :pswitch_26
        :pswitch_26
        :pswitch_26
        :pswitch_26
        :pswitch_26
    .end packed-switch
.end method

.method protected stateAfter()Lcom/transsion/camera/feature/mode/vlog/player/PlayerState;
    .registers 1

    .line 128
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/player/command/Resume;->mStartResult:Lcom/transsion/camera/feature/mode/vlog/player/PlayerState;

    return-object p0
.end method

.method protected stateBefore()Lcom/transsion/camera/feature/mode/vlog/player/PlayerState;
    .registers 4

    .line 79
    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/vlog/player/command/BaseCommand;->getPlayerState()Lcom/transsion/camera/feature/mode/vlog/player/PlayerState;

    move-result-object p0

    .line 81
    sget-object v0, Lcom/transsion/camera/feature/mode/vlog/player/command/Resume;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "stateBefore, playerState "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 83
    sget-object v1, Lcom/transsion/camera/feature/mode/vlog/player/command/Resume$1;->$SwitchMap$com$transsion$camera$feature$mode$vlog$player$PlayerState:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_42

    :pswitch_25
    const/4 p0, 0x0

    return-object p0

    .line 87
    :pswitch_27
    sget-object p0, Lcom/transsion/camera/feature/mode/vlog/player/PlayerState;->STARTING:Lcom/transsion/camera/feature/mode/vlog/player/PlayerState;

    return-object p0

    .line 91
    :pswitch_2a
    sget-object p0, Lcom/transsion/camera/feature/mode/vlog/player/PlayerState;->ERROR:Lcom/transsion/camera/feature/mode/vlog/player/PlayerState;

    return-object p0

    .line 117
    :pswitch_2d
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "stateBefore, unhandled current state "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-object p0

    :pswitch_data_42
    .packed-switch 0x1
        :pswitch_2d
        :pswitch_2a
        :pswitch_2d
        :pswitch_2d
        :pswitch_2d
        :pswitch_2d
        :pswitch_25
        :pswitch_2d
        :pswitch_2d
        :pswitch_2d
        :pswitch_2d
        :pswitch_2d
        :pswitch_2d
        :pswitch_2d
        :pswitch_2d
        :pswitch_2d
        :pswitch_2d
        :pswitch_27
        :pswitch_2d
        :pswitch_27
        :pswitch_27
        :pswitch_2d
        :pswitch_2d
        :pswitch_2d
    .end packed-switch
.end method
