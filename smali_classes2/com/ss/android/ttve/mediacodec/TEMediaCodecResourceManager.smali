.class public Lcom/ss/android/ttve/mediacodec/TEMediaCodecResourceManager;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "TEMediaCodecResourceManager"

.field public static volatile sHWEncoderStateIsBeforeRunning:Z

.field private static sMaxCodecBlocksSize:I

.field private static sMediaCodecInstance:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static sSafeLimitSize:I

.field private static sUsedCodecBlocksSize:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 28
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/ss/android/ttve/mediacodec/TEMediaCodecResourceManager;->sMediaCodecInstance:Ljava/util/List;

    const v0, 0x232800

    .line 29
    sput v0, Lcom/ss/android/ttve/mediacodec/TEMediaCodecResourceManager;->sSafeLimitSize:I

    const/4 v0, 0x0

    .line 31
    sput-boolean v0, Lcom/ss/android/ttve/mediacodec/TEMediaCodecResourceManager;->sHWEncoderStateIsBeforeRunning:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized canUseHardwareDecoder(I)Z
    .registers 6

    const-class v0, Lcom/ss/android/ttve/mediacodec/TEMediaCodecResourceManager;

    monitor-enter v0

    .line 115
    :try_start_3
    invoke-static {}, Lcom/ss/android/vesdk/VEConfigCenter;->getInstance()Lcom/ss/android/vesdk/VEConfigCenter;

    move-result-object v1

    const-string v2, "ve_mediacodec_resource_reasonable_distribute"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/ss/android/vesdk/VEConfigCenter;->getValue(Ljava/lang/String;Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_73

    .line 116
    sget v1, Lcom/ss/android/ttve/mediacodec/TEMediaCodecResourceManager;->sMaxCodecBlocksSize:I

    if-nez v1, :cond_39

    .line 117
    invoke-static {}, Lcom/ss/android/ttve/mediacodec/TEMediaCodecDecoder;->getMaxBlocksSizePerSecond()I

    move-result v1

    sput v1, Lcom/ss/android/ttve/mediacodec/TEMediaCodecResourceManager;->sMaxCodecBlocksSize:I

    .line 118
    const-string v1, "TEMediaCodecResourceManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sMaxCodecBlocksSize: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v4, Lcom/ss/android/ttve/mediacodec/TEMediaCodecResourceManager;->sMaxCodecBlocksSize:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_39

    :catchall_37
    move-exception p0

    goto :goto_75

    .line 120
    :cond_39
    :goto_39
    sget v1, Lcom/ss/android/ttve/mediacodec/TEMediaCodecResourceManager;->sMaxCodecBlocksSize:I
    :try_end_3b
    .catchall {:try_start_3 .. :try_end_3b} :catchall_37

    if-gtz v1, :cond_3f

    .line 121
    monitor-exit v0

    return v3

    .line 123
    :cond_3f
    :try_start_3f
    sget v2, Lcom/ss/android/ttve/mediacodec/TEMediaCodecResourceManager;->sUsedCodecBlocksSize:I

    add-int/2addr v2, p0

    if-gt v2, v1, :cond_45

    const/4 v3, 0x1

    :cond_45
    if-nez v3, :cond_71

    .line 125
    const-string v1, "TEMediaCodecResourceManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "can\'t use hw decoder, sMaxCodecBlocksSize:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v4, Lcom/ss/android/ttve/mediacodec/TEMediaCodecResourceManager;->sMaxCodecBlocksSize:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", sUsedCodecBlocksSize:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v4, Lcom/ss/android/ttve/mediacodec/TEMediaCodecResourceManager;->sUsedCodecBlocksSize:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", blocksSize:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/ss/android/vesdk/VELogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_71
    .catchall {:try_start_3f .. :try_end_71} :catchall_37

    .line 127
    :cond_71
    monitor-exit v0

    return v3

    .line 129
    :cond_73
    monitor-exit v0

    return v3

    :goto_75
    :try_start_75
    monitor-exit v0
    :try_end_76
    .catchall {:try_start_75 .. :try_end_76} :catchall_37

    throw p0
.end method

.method public static declared-synchronized checkCanFastImport(III)Z
    .registers 11

    const-class v0, Lcom/ss/android/ttve/mediacodec/TEMediaCodecResourceManager;

    monitor-enter v0

    .line 80
    :try_start_3
    sget v1, Lcom/ss/android/ttve/mediacodec/TEMediaCodecResourceManager;->sMaxCodecBlocksSize:I

    if-nez v1, :cond_29

    .line 81
    invoke-static {}, Lcom/ss/android/ttve/mediacodec/TEMediaCodecDecoder;->getMaxBlocksSizePerSecond()I

    move-result v1

    sput v1, Lcom/ss/android/ttve/mediacodec/TEMediaCodecResourceManager;->sMaxCodecBlocksSize:I

    .line 82
    const-string v1, "TEMediaCodecResourceManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sMaxCodecBlocksSize: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v3, Lcom/ss/android/ttve/mediacodec/TEMediaCodecResourceManager;->sMaxCodecBlocksSize:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_29

    :catchall_26
    move-exception p0

    goto/16 :goto_b4

    .line 85
    :cond_29
    :goto_29
    sget v1, Lcom/ss/android/ttve/mediacodec/TEMediaCodecResourceManager;->sMaxCodecBlocksSize:I
    :try_end_2b
    .catchall {:try_start_3 .. :try_end_2b} :catchall_26

    const/4 v2, -0x1

    const/4 v3, 0x1

    if-ne v1, v2, :cond_31

    .line 86
    monitor-exit v0

    return v3

    .line 88
    :cond_31
    :try_start_31
    sget v2, Lcom/ss/android/ttve/mediacodec/TEMediaCodecResourceManager;->sUsedCodecBlocksSize:I

    mul-int v4, p0, p1

    mul-int/2addr v4, p2

    add-int v5, v2, v4

    const/4 v6, 0x0

    if-le v5, v1, :cond_6d

    .line 89
    const-string v1, "TEMediaCodecResourceManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "checkCanFastImport is false, sUsedCodecBlocksSize: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v3, Lcom/ss/android/ttve/mediacodec/TEMediaCodecResourceManager;->sUsedCodecBlocksSize:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", width: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ", height: "

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ", fps: "

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/ss/android/vesdk/VELogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6b
    .catchall {:try_start_31 .. :try_end_6b} :catchall_26

    .line 90
    monitor-exit v0

    return v6

    :cond_6d
    if-lez v2, :cond_ab

    .line 92
    :try_start_6f
    sget v5, Lcom/ss/android/ttve/mediacodec/TEMediaCodecResourceManager;->sSafeLimitSize:I

    sub-int v7, v1, v5

    if-lez v7, :cond_ab

    add-int/2addr v2, v4

    sub-int/2addr v1, v5

    if-le v2, v1, :cond_ab

    .line 93
    const-string v1, "TEMediaCodecResourceManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "checkCanFastImport is false, sUsedCodecBlocksSize: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v3, Lcom/ss/android/ttve/mediacodec/TEMediaCodecResourceManager;->sUsedCodecBlocksSize:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", width: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ", height: "

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ", fps: "

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/ss/android/vesdk/VELogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_a9
    .catchall {:try_start_6f .. :try_end_a9} :catchall_26

    .line 94
    monitor-exit v0

    return v6

    .line 96
    :cond_ab
    :try_start_ab
    const-string p0, "TEMediaCodecResourceManager"

    const-string p1, "checkCanFastImport is true"

    invoke-static {p0, p1}, Lcom/ss/android/vesdk/VELogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_b2
    .catchall {:try_start_ab .. :try_end_b2} :catchall_26

    .line 97
    monitor-exit v0

    return v3

    :goto_b4
    :try_start_b4
    monitor-exit v0
    :try_end_b5
    .catchall {:try_start_b4 .. :try_end_b5} :catchall_26

    throw p0
.end method

.method public static declared-synchronized freeCodecBlocksSize(II)V
    .registers 6

    const-class v0, Lcom/ss/android/ttve/mediacodec/TEMediaCodecResourceManager;

    monitor-enter v0

    .line 60
    :try_start_3
    sget-object v1, Lcom/ss/android/ttve/mediacodec/TEMediaCodecResourceManager;->sMediaCodecInstance:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_56

    if-nez v1, :cond_11

    .line 61
    monitor-exit v0

    return-void

    .line 63
    :cond_11
    :try_start_11
    sget v1, Lcom/ss/android/ttve/mediacodec/TEMediaCodecResourceManager;->sUsedCodecBlocksSize:I

    sub-int/2addr v1, p0

    sput v1, Lcom/ss/android/ttve/mediacodec/TEMediaCodecResourceManager;->sUsedCodecBlocksSize:I

    .line 64
    sget-object v1, Lcom/ss/android/ttve/mediacodec/TEMediaCodecResourceManager;->sMediaCodecInstance:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 65
    const-string v1, "TEMediaCodecResourceManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "freeCodecBlocksSize blocksSize: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ", sUsedCodecBlocksSize: "

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget p0, Lcom/ss/android/ttve/mediacodec/TEMediaCodecResourceManager;->sUsedCodecBlocksSize:I

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ", "

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/ss/android/vesdk/VELogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    sget p0, Lcom/ss/android/ttve/mediacodec/TEMediaCodecResourceManager;->sUsedCodecBlocksSize:I

    if-gez p0, :cond_58

    .line 67
    const-string p0, "TEMediaCodecResourceManager"

    const-string p1, "freeCodecBlocksSize sUsedCodecBlocksSize < 0"

    invoke-static {p0, p1}, Lcom/ss/android/vesdk/VELogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    .line 68
    sput p0, Lcom/ss/android/ttve/mediacodec/TEMediaCodecResourceManager;->sUsedCodecBlocksSize:I
    :try_end_55
    .catchall {:try_start_11 .. :try_end_55} :catchall_56

    goto :goto_58

    :catchall_56
    move-exception p0

    goto :goto_5a

    .line 70
    :cond_58
    :goto_58
    monitor-exit v0

    return-void

    :goto_5a
    :try_start_5a
    monitor-exit v0
    :try_end_5b
    .catchall {:try_start_5a .. :try_end_5b} :catchall_56

    throw p0
.end method

.method public static declared-synchronized getMaxCodecBlocksSize()I
    .registers 4

    const-class v0, Lcom/ss/android/ttve/mediacodec/TEMediaCodecResourceManager;

    monitor-enter v0

    .line 102
    :try_start_3
    sget v1, Lcom/ss/android/ttve/mediacodec/TEMediaCodecResourceManager;->sMaxCodecBlocksSize:I

    if-nez v1, :cond_28

    .line 103
    invoke-static {}, Lcom/ss/android/ttve/mediacodec/TEMediaCodecDecoder;->getMaxBlocksSizePerSecond()I

    move-result v1

    sput v1, Lcom/ss/android/ttve/mediacodec/TEMediaCodecResourceManager;->sMaxCodecBlocksSize:I

    .line 104
    const-string v1, "TEMediaCodecResourceManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sMaxCodecBlocksSize: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v3, Lcom/ss/android/ttve/mediacodec/TEMediaCodecResourceManager;->sMaxCodecBlocksSize:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_28

    :catchall_26
    move-exception v1

    goto :goto_2c

    .line 106
    :cond_28
    :goto_28
    sget v1, Lcom/ss/android/ttve/mediacodec/TEMediaCodecResourceManager;->sMaxCodecBlocksSize:I
    :try_end_2a
    .catchall {:try_start_3 .. :try_end_2a} :catchall_26

    monitor-exit v0

    return v1

    :goto_2c
    :try_start_2c
    monitor-exit v0
    :try_end_2d
    .catchall {:try_start_2c .. :try_end_2d} :catchall_26

    throw v1
.end method

.method public static declared-synchronized getUsedCodecBlocksSize()I
    .registers 2

    const-class v0, Lcom/ss/android/ttve/mediacodec/TEMediaCodecResourceManager;

    monitor-enter v0

    .line 110
    :try_start_3
    sget v1, Lcom/ss/android/ttve/mediacodec/TEMediaCodecResourceManager;->sUsedCodecBlocksSize:I
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_7

    monitor-exit v0

    return v1

    :catchall_7
    move-exception v1

    :try_start_8
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_8 .. :try_end_9} :catchall_7

    throw v1
.end method

.method public static declared-synchronized resetCodecBlocksSize()V
    .registers 3

    const-class v0, Lcom/ss/android/ttve/mediacodec/TEMediaCodecResourceManager;

    monitor-enter v0

    const/4 v1, 0x0

    .line 73
    :try_start_4
    sput v1, Lcom/ss/android/ttve/mediacodec/TEMediaCodecResourceManager;->sUsedCodecBlocksSize:I

    .line 74
    sput v1, Lcom/ss/android/ttve/mediacodec/TEMediaCodecResourceManager;->sMaxCodecBlocksSize:I

    .line 75
    sget-object v1, Lcom/ss/android/ttve/mediacodec/TEMediaCodecResourceManager;->sMediaCodecInstance:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 76
    const-string v1, "TEMediaCodecResourceManager"

    const-string v2, "resetCodecBlocksSize"

    invoke-static {v1, v2}, Lcom/ss/android/vesdk/VELogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_14
    .catchall {:try_start_4 .. :try_end_14} :catchall_16

    .line 77
    monitor-exit v0

    return-void

    :catchall_16
    move-exception v1

    :try_start_17
    monitor-exit v0
    :try_end_18
    .catchall {:try_start_17 .. :try_end_18} :catchall_16

    throw v1
.end method

.method public static declared-synchronized tryUseCodecBlocksSize(II)Z
    .registers 7

    const-class v0, Lcom/ss/android/ttve/mediacodec/TEMediaCodecResourceManager;

    monitor-enter v0

    .line 34
    :try_start_3
    sget v1, Lcom/ss/android/ttve/mediacodec/TEMediaCodecResourceManager;->sMaxCodecBlocksSize:I

    if-nez v1, :cond_28

    .line 35
    invoke-static {}, Lcom/ss/android/ttve/mediacodec/TEMediaCodecDecoder;->getMaxBlocksSizePerSecond()I

    move-result v1

    sput v1, Lcom/ss/android/ttve/mediacodec/TEMediaCodecResourceManager;->sMaxCodecBlocksSize:I

    .line 36
    const-string v1, "TEMediaCodecResourceManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sMaxCodecBlocksSize: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v3, Lcom/ss/android/ttve/mediacodec/TEMediaCodecResourceManager;->sMaxCodecBlocksSize:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_28

    :catchall_26
    move-exception p0

    goto :goto_9f

    .line 40
    :cond_28
    :goto_28
    sget v1, Lcom/ss/android/ttve/mediacodec/TEMediaCodecResourceManager;->sMaxCodecBlocksSize:I
    :try_end_2a
    .catchall {:try_start_3 .. :try_end_2a} :catchall_26

    const/4 v2, -0x1

    const/4 v3, 0x1

    if-ne v1, v2, :cond_30

    .line 41
    monitor-exit v0

    return v3

    .line 44
    :cond_30
    :try_start_30
    sget-object v1, Lcom/ss/android/ttve/mediacodec/TEMediaCodecResourceManager;->sMediaCodecInstance:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1
    :try_end_3a
    .catchall {:try_start_30 .. :try_end_3a} :catchall_26

    if-eqz v1, :cond_3e

    .line 45
    monitor-exit v0

    return v3

    .line 48
    :cond_3e
    :try_start_3e
    sget v1, Lcom/ss/android/ttve/mediacodec/TEMediaCodecResourceManager;->sUsedCodecBlocksSize:I

    add-int v2, v1, p0

    sget v4, Lcom/ss/android/ttve/mediacodec/TEMediaCodecResourceManager;->sMaxCodecBlocksSize:I

    if-le v2, v4, :cond_69

    .line 49
    const-string p1, "TEMediaCodecResourceManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sUsedCodecBlocksSize + blocksSize > sMaxCodecBlocksSize, sUsedCodecBlocksSize: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lcom/ss/android/ttve/mediacodec/TEMediaCodecResourceManager;->sUsedCodecBlocksSize:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", blocksSize:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/ss/android/vesdk/VELogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_66
    .catchall {:try_start_3e .. :try_end_66} :catchall_26

    .line 50
    monitor-exit v0

    const/4 p0, 0x0

    return p0

    :cond_69
    add-int/2addr v1, p0

    .line 52
    :try_start_6a
    sput v1, Lcom/ss/android/ttve/mediacodec/TEMediaCodecResourceManager;->sUsedCodecBlocksSize:I

    .line 53
    sget-object v1, Lcom/ss/android/ttve/mediacodec/TEMediaCodecResourceManager;->sMediaCodecInstance:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 54
    const-string v1, "TEMediaCodecResourceManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "tryUseCodecBlocksSize success blocksSize: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ", sUsedCodecBlocksSize: "

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget p0, Lcom/ss/android/ttve/mediacodec/TEMediaCodecResourceManager;->sUsedCodecBlocksSize:I

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ", "

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/ss/android/vesdk/VELogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_9d
    .catchall {:try_start_6a .. :try_end_9d} :catchall_26

    .line 55
    monitor-exit v0

    return v3

    :goto_9f
    :try_start_9f
    monitor-exit v0
    :try_end_a0
    .catchall {:try_start_9f .. :try_end_a0} :catchall_26

    throw p0
.end method
