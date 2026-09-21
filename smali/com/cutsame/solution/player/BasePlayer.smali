.class public abstract Lcom/cutsame/solution/player/BasePlayer;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cutsame/solution/player/BasePlayer$PlayState;,
        Lcom/cutsame/solution/player/BasePlayer$WhenMappings;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getPlayState$CutSameIF_release(Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayer$State;)Lcom/cutsame/solution/player/BasePlayer$PlayState;
    .registers 2

    const-string p0, "state"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    sget-object p0, Lcom/cutsame/solution/player/BasePlayer$WhenMappings;->$EnumSwitchMapping$1:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p0, p0, p1

    const/4 p1, 0x1

    if-eq p0, p1, :cond_2b

    const/4 p1, 0x2

    if-eq p0, p1, :cond_28

    const/4 p1, 0x3

    if-eq p0, p1, :cond_25

    const/4 p1, 0x4

    if-eq p0, p1, :cond_22

    const/4 p1, 0x5

    if-eq p0, p1, :cond_1f

    .line 19
    sget-object p0, Lcom/cutsame/solution/player/BasePlayer$PlayState;->UNKNOWN:Lcom/cutsame/solution/player/BasePlayer$PlayState;

    return-object p0

    .line 20
    :cond_1f
    sget-object p0, Lcom/cutsame/solution/player/BasePlayer$PlayState;->PAUSED:Lcom/cutsame/solution/player/BasePlayer$PlayState;

    return-object p0

    .line 21
    :cond_22
    sget-object p0, Lcom/cutsame/solution/player/BasePlayer$PlayState;->PLAYING:Lcom/cutsame/solution/player/BasePlayer$PlayState;

    return-object p0

    .line 22
    :cond_25
    sget-object p0, Lcom/cutsame/solution/player/BasePlayer$PlayState;->ERROR:Lcom/cutsame/solution/player/BasePlayer$PlayState;

    return-object p0

    .line 23
    :cond_28
    sget-object p0, Lcom/cutsame/solution/player/BasePlayer$PlayState;->IDLE:Lcom/cutsame/solution/player/BasePlayer$PlayState;

    return-object p0

    .line 24
    :cond_2b
    sget-object p0, Lcom/cutsame/solution/player/BasePlayer$PlayState;->UNKNOWN:Lcom/cutsame/solution/player/BasePlayer$PlayState;

    return-object p0
.end method
