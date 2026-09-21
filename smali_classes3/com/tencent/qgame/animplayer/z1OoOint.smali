.class public final Lcom/tencent/qgame/animplayer/z1OoOint;
.super Ljava/lang/Object;


# static fields
.field public static final z1OoOdo:Lcom/tencent/qgame/animplayer/z1OoOint;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/tencent/qgame/animplayer/z1OoOint;

    invoke-direct {v0}, Lcom/tencent/qgame/animplayer/z1OoOint;-><init>()V

    sput-object v0, Lcom/tencent/qgame/animplayer/z1OoOint;->z1OoOdo:Lcom/tencent/qgame/animplayer/z1OoOint;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic z1OoOdo(I)Ljava/lang/String;
    .registers 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    packed-switch p0, :pswitch_data_2a

    const-string/jumbo p0, "unknown"

    goto :goto_1d

    :pswitch_c
    const-string p0, "0x6 vapx fail"

    goto :goto_1d

    :pswitch_f
    const-string p0, "0x5 parse config fail"

    goto :goto_1d

    :pswitch_12
    const-string p0, "0x4 render create fail"

    goto :goto_1d

    :pswitch_15
    const-string p0, "0x3 thread create fail"

    goto :goto_1d

    :pswitch_18
    const-string p0, "0x2 MediaCodec exception"

    goto :goto_1d

    :pswitch_1b
    const-string p0, "0x1 MediaExtractor exception"

    :goto_1d
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p0, 0x20

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_data_2a
    .packed-switch 0x2711
        :pswitch_1b
        :pswitch_18
        :pswitch_15
        :pswitch_12
        :pswitch_f
        :pswitch_c
    .end packed-switch
.end method
