.class public final Lcom/tencent/qgame/animplayer/z1OoOdo;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/qgame/animplayer/z1OoOdo$z1OoOdo;,
        Lcom/tencent/qgame/animplayer/z1OoOdo$z1OoOif;
    }
.end annotation


# static fields
.field public static final z1OoOif:Lcom/tencent/qgame/animplayer/z1OoOdo$z1OoOif;


# instance fields
.field public z1OoOdo:Lcom/tencent/qgame/animplayer/AnimConfig;

.field private z1OoOfor:Z

.field private final z1OoOint:Lcom/tencent/qgame/animplayer/z1OoOif;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/tencent/qgame/animplayer/z1OoOdo$z1OoOif;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/tencent/qgame/animplayer/z1OoOdo$z1OoOif;-><init>(B)V

    sput-object v0, Lcom/tencent/qgame/animplayer/z1OoOdo;->z1OoOif:Lcom/tencent/qgame/animplayer/z1OoOdo$z1OoOif;

    return-void
.end method

.method public constructor <init>(Lcom/tencent/qgame/animplayer/z1OoOif;)V
    .registers 3

    const-string v0, "player"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/tencent/qgame/animplayer/z1OoOdo;->z1OoOint:Lcom/tencent/qgame/animplayer/z1OoOif;

    return-void
.end method


# virtual methods
.method public final z1OoOdo(Lcom/tencent/qgame/animplayer/z1OoOdo/z1OoOfor;ZII)I
    .registers 26

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move/from16 v2, p2

    move/from16 v3, p4

    const-string v4, "AnimPlayer.AnimConfigManager"

    const-string v5, "fileContainer"

    invoke-static {v0, v5}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v6, 0x1

    const/4 v7, 0x0

    :try_start_11
    iput-boolean v6, v1, Lcom/tencent/qgame/animplayer/z1OoOdo;->z1OoOfor:Z

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    new-instance v10, Lcom/tencent/qgame/animplayer/AnimConfig;

    invoke-direct {v10}, Lcom/tencent/qgame/animplayer/AnimConfig;-><init>()V

    iput-object v10, v1, Lcom/tencent/qgame/animplayer/z1OoOdo;->z1OoOdo:Lcom/tencent/qgame/animplayer/AnimConfig;

    invoke-interface {v0}, Lcom/tencent/qgame/animplayer/z1OoOdo/z1OoOfor;->z1OoOdo()V

    const/16 v11, 0x8

    new-array v12, v11, [B

    const-wide/16 v13, 0x0

    :goto_27
    invoke-interface {v0, v12, v11}, Lcom/tencent/qgame/animplayer/z1OoOdo/z1OoOfor;->z1OoOdo([BI)I

    move-result v15

    if-ne v15, v11, :cond_8b

    new-instance v15, Lcom/tencent/qgame/animplayer/z1OoOdo$z1OoOdo;

    invoke-direct {v15}, Lcom/tencent/qgame/animplayer/z1OoOdo$z1OoOdo;-><init>()V
    :try_end_32
    .catchall {:try_start_11 .. :try_end_32} :catchall_86

    const/16 v16, 0x2715

    :try_start_34
    aget-byte v5, v12, v7

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x18

    move/from16 v17, v11

    aget-byte v11, v12, v6

    and-int/lit16 v11, v11, 0xff

    shl-int/lit8 v11, v11, 0x10

    or-int/2addr v5, v11

    const/4 v11, 0x2

    aget-byte v11, v12, v11

    and-int/lit16 v11, v11, 0xff

    shl-int/lit8 v11, v11, 0x8

    or-int/2addr v5, v11

    const/4 v11, 0x3

    aget-byte v11, v12, v11

    and-int/lit16 v11, v11, 0xff

    or-int/2addr v5, v11

    iput v5, v15, Lcom/tencent/qgame/animplayer/z1OoOdo$z1OoOdo;->z1OoOif:I

    const-string v5, "US-ASCII"

    invoke-static {v5}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v5

    const-string v11, "Charset.forName(\"US-ASCII\")"

    invoke-static {v5, v11}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v11, Ljava/lang/String;

    const/4 v7, 0x4

    invoke-direct {v11, v12, v7, v7, v5}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    iput-object v11, v15, Lcom/tencent/qgame/animplayer/z1OoOdo$z1OoOdo;->z1OoOfor:Ljava/lang/String;

    const-string/jumbo v5, "vapc"

    invoke-static {v5, v11}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_75

    iput-wide v13, v15, Lcom/tencent/qgame/animplayer/z1OoOdo$z1OoOdo;->z1OoOdo:J

    goto :goto_90

    :catchall_72
    move-exception v0

    goto/16 :goto_13d

    :cond_75
    iget v5, v15, Lcom/tencent/qgame/animplayer/z1OoOdo$z1OoOdo;->z1OoOif:I

    int-to-long v6, v5

    add-long/2addr v13, v6

    int-to-long v5, v5

    const-wide/16 v19, 0x8

    sub-long v5, v5, v19

    invoke-interface {v0, v5, v6}, Lcom/tencent/qgame/animplayer/z1OoOdo/z1OoOfor;->z1OoOdo(J)V

    move/from16 v11, v17

    const/4 v6, 0x1

    const/4 v7, 0x0

    goto :goto_27

    :catchall_86
    move-exception v0

    const/16 v16, 0x2715

    goto/16 :goto_13d

    :cond_8b
    move/from16 v17, v11

    const/16 v16, 0x2715

    const/4 v15, 0x0

    :goto_90
    if-nez v15, :cond_b1

    sget-object v0, Lcom/tencent/qgame/animplayer/util/ALog;->INSTANCE:Lcom/tencent/qgame/animplayer/util/ALog;

    const-string/jumbo v5, "vapc box head not found"

    invoke-virtual {v0, v4, v5}, Lcom/tencent/qgame/animplayer/util/ALog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Lcom/tencent/qgame/animplayer/AnimConfig;->setDefaultConfig(Z)V

    move/from16 v0, p3

    invoke-virtual {v10, v0}, Lcom/tencent/qgame/animplayer/AnimConfig;->setDefaultVideoMode(I)V

    invoke-virtual {v10, v3}, Lcom/tencent/qgame/animplayer/AnimConfig;->setFps(I)V

    iget-object v0, v1, Lcom/tencent/qgame/animplayer/z1OoOdo;->z1OoOint:Lcom/tencent/qgame/animplayer/z1OoOif;

    invoke-virtual {v10}, Lcom/tencent/qgame/animplayer/AnimConfig;->getFps()I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/tencent/qgame/animplayer/z1OoOif;->z1OoOdo(I)V

    const/4 v0, 0x1

    goto :goto_e8

    :cond_b1
    iget v5, v15, Lcom/tencent/qgame/animplayer/z1OoOdo$z1OoOdo;->z1OoOif:I

    add-int/lit8 v5, v5, -0x8

    new-array v6, v5, [B

    invoke-interface {v0, v6, v5}, Lcom/tencent/qgame/animplayer/z1OoOdo/z1OoOfor;->z1OoOdo([BI)I

    invoke-interface {v0}, Lcom/tencent/qgame/animplayer/z1OoOdo/z1OoOfor;->z1OoOif()V

    const-string v0, "UTF-8"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    const-string v7, "Charset.forName(\"UTF-8\")"

    invoke-static {v0, v7}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v7, Ljava/lang/String;

    const/4 v12, 0x0

    invoke-direct {v7, v6, v12, v5, v0}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, v7}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v0}, Lcom/tencent/qgame/animplayer/AnimConfig;->setJsonConfig(Lorg/json/JSONObject;)V

    invoke-virtual {v10, v0}, Lcom/tencent/qgame/animplayer/AnimConfig;->parse(Lorg/json/JSONObject;)Z

    move-result v0

    if-lez v3, :cond_df

    invoke-virtual {v10, v3}, Lcom/tencent/qgame/animplayer/AnimConfig;->setFps(I)V

    :cond_df
    iget-object v3, v1, Lcom/tencent/qgame/animplayer/z1OoOdo;->z1OoOint:Lcom/tencent/qgame/animplayer/z1OoOif;

    invoke-virtual {v10}, Lcom/tencent/qgame/animplayer/AnimConfig;->getFps()I

    move-result v5

    invoke-virtual {v3, v5}, Lcom/tencent/qgame/animplayer/z1OoOif;->z1OoOdo(I)V

    :goto_e8
    sget-object v3, Lcom/tencent/qgame/animplayer/util/ALog;->INSTANCE:Lcom/tencent/qgame/animplayer/util/ALog;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "parseConfig cost="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    sub-long/2addr v6, v8

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v6, "ms enableVersion1="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, " result="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/tencent/qgame/animplayer/util/ALog;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v0, :cond_116

    const/4 v12, 0x0

    iput-boolean v12, v1, Lcom/tencent/qgame/animplayer/z1OoOdo;->z1OoOfor:Z

    return v16

    :cond_116
    iget-object v0, v1, Lcom/tencent/qgame/animplayer/z1OoOdo;->z1OoOdo:Lcom/tencent/qgame/animplayer/AnimConfig;

    if-eqz v0, :cond_127

    invoke-virtual {v0}, Lcom/tencent/qgame/animplayer/AnimConfig;->isDefaultConfig()Z

    move-result v0

    const/4 v11, 0x1

    if-ne v0, v11, :cond_127

    if-nez v2, :cond_127

    const/4 v12, 0x0

    iput-boolean v12, v1, Lcom/tencent/qgame/animplayer/z1OoOdo;->z1OoOfor:Z

    return v16

    :cond_127
    iget-object v0, v1, Lcom/tencent/qgame/animplayer/z1OoOdo;->z1OoOdo:Lcom/tencent/qgame/animplayer/AnimConfig;

    if-eqz v0, :cond_137

    iget-object v2, v1, Lcom/tencent/qgame/animplayer/z1OoOdo;->z1OoOint:Lcom/tencent/qgame/animplayer/z1OoOif;

    iget-object v2, v2, Lcom/tencent/qgame/animplayer/z1OoOif;->z1OoOclass:Lcom/tencent/qgame/animplayer/z1OoOif/z1OoOdo;

    invoke-virtual {v2, v0}, Lcom/tencent/qgame/animplayer/z1OoOif/z1OoOdo;->z1OoOdo(Lcom/tencent/qgame/animplayer/AnimConfig;)I

    move-result v0

    move/from16 v18, v0

    :goto_135
    const/4 v12, 0x0

    goto :goto_13a

    :cond_137
    const/16 v18, 0x0

    goto :goto_135

    :goto_13a
    iput-boolean v12, v1, Lcom/tencent/qgame/animplayer/z1OoOdo;->z1OoOfor:Z
    :try_end_13c
    .catchall {:try_start_34 .. :try_end_13c} :catchall_72

    return v18

    :goto_13d
    sget-object v2, Lcom/tencent/qgame/animplayer/util/ALog;->INSTANCE:Lcom/tencent/qgame/animplayer/util/ALog;

    const-string v3, "parseConfig error "

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v4, v3, v0}, Lcom/tencent/qgame/animplayer/util/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v12, 0x0

    iput-boolean v12, v1, Lcom/tencent/qgame/animplayer/z1OoOdo;->z1OoOfor:Z

    return v16
.end method
