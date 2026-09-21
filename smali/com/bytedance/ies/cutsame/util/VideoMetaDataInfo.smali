.class public final Lcom/bytedance/ies/cutsame/util/VideoMetaDataInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/ies/cutsame/util/VideoMetaDataInfo$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/bytedance/ies/cutsame/util/VideoMetaDataInfo$Companion;

.field public static final MAP_KEY_BITRATE:Ljava/lang/String; = "bitrate"

.field public static final MAP_KEY_CODEC:Ljava/lang/String; = "codec"

.field public static final MAP_KEY_CODEC_INFO:Ljava/lang/String; = "codec_info"

.field public static final MAP_KEY_DURATION:Ljava/lang/String; = "duration"

.field public static final MAP_KEY_FPS:Ljava/lang/String; = "fps"

.field public static final MAP_KEY_HEIGHT:Ljava/lang/String; = "height"

.field public static final MAP_KEY_LATITUDE:Ljava/lang/String; = "latitude"

.field public static final MAP_KEY_LONGITUDE:Ljava/lang/String; = "longitude"

.field public static final MAP_KEY_PATH:Ljava/lang/String; = "path"

.field public static final MAP_KEY_ROTATION:Ljava/lang/String; = "rotation"

.field public static final MAP_KEY_VIDEO_DURATION:Ljava/lang/String; = "video_duration"

.field public static final MAP_KEY_VIDEO_SIZE:Ljava/lang/String; = "video_size"

.field public static final MAP_KEY_WIDTH:Ljava/lang/String; = "width"


# instance fields
.field private final bitrate:I

.field private final codecId:I

.field private final codecInfo:Ljava/lang/String;

.field private final duration:I

.field private final fps:I

.field private final height:I

.field private final latitude:I

.field private final longitude:I

.field private final mapInfo:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final path:Ljava/lang/String;

.field private final rotation:I

.field private final videoDuration:I

.field private final width:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/bytedance/ies/cutsame/util/VideoMetaDataInfo$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/bytedance/ies/cutsame/util/VideoMetaDataInfo$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/bytedance/ies/cutsame/util/VideoMetaDataInfo;->Companion:Lcom/bytedance/ies/cutsame/util/VideoMetaDataInfo$Companion;

    return-void
.end method

.method public constructor <init>()V
    .registers 16

    .line 0
    const/16 v13, 0xfff

    const/4 v14, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v14}, Lcom/bytedance/ies/cutsame/util/VideoMetaDataInfo;-><init>(Ljava/lang/String;IIIIIIIIIILjava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IIIIIIIIIILjava/lang/String;)V
    .registers 15

    const-string v0, "path"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "codecInfo"

    invoke-static {p12, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput-object p1, p0, Lcom/bytedance/ies/cutsame/util/VideoMetaDataInfo;->path:Ljava/lang/String;

    .line 11
    iput p2, p0, Lcom/bytedance/ies/cutsame/util/VideoMetaDataInfo;->width:I

    .line 12
    iput p3, p0, Lcom/bytedance/ies/cutsame/util/VideoMetaDataInfo;->height:I

    .line 13
    iput p4, p0, Lcom/bytedance/ies/cutsame/util/VideoMetaDataInfo;->rotation:I

    .line 14
    iput p5, p0, Lcom/bytedance/ies/cutsame/util/VideoMetaDataInfo;->duration:I

    .line 15
    iput p6, p0, Lcom/bytedance/ies/cutsame/util/VideoMetaDataInfo;->longitude:I

    .line 16
    iput p7, p0, Lcom/bytedance/ies/cutsame/util/VideoMetaDataInfo;->latitude:I

    .line 17
    iput p8, p0, Lcom/bytedance/ies/cutsame/util/VideoMetaDataInfo;->bitrate:I

    .line 18
    iput p9, p0, Lcom/bytedance/ies/cutsame/util/VideoMetaDataInfo;->fps:I

    .line 19
    iput p10, p0, Lcom/bytedance/ies/cutsame/util/VideoMetaDataInfo;->codecId:I

    .line 20
    iput p11, p0, Lcom/bytedance/ies/cutsame/util/VideoMetaDataInfo;->videoDuration:I

    .line 21
    iput-object p12, p0, Lcom/bytedance/ies/cutsame/util/VideoMetaDataInfo;->codecInfo:Ljava/lang/String;

    .line 40
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/bytedance/ies/cutsame/util/VideoMetaDataInfo;->mapInfo:Ljava/util/HashMap;

    .line 43
    invoke-interface {v1, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    const-string p0, "width"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v1, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    const-string p0, "height"

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v1, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    const-string p0, "rotation"

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v1, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    const-string p0, "duration"

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v1, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    const-string p0, "longitude"

    invoke-static {p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v1, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    const-string p0, "latitude"

    invoke-static {p7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v1, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    mul-int/lit16 p8, p8, 0x3e8

    .line 50
    invoke-static {p8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const-string p1, "bitrate"

    invoke-interface {v1, p1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    const-string p0, "fps"

    invoke-static {p9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v1, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    const-string p0, "codec"

    invoke-static {p10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v1, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    const-string p0, "video_duration"

    invoke-static {p11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v1, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    const-string p0, "codec_info"

    invoke-interface {v1, p0, p12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 p1, 0x78

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "video_size"

    invoke-interface {v1, p1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;IIIIIIIIIILjava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 16

    and-int/lit8 p14, p13, 0x1

    if-eqz p14, :cond_6

    .line 10
    const-string p1, ""

    :cond_6
    and-int/lit8 p14, p13, 0x2

    const/4 v0, 0x0

    if-eqz p14, :cond_c

    move p2, v0

    :cond_c
    and-int/lit8 p14, p13, 0x4

    if-eqz p14, :cond_11

    move p3, v0

    :cond_11
    and-int/lit8 p14, p13, 0x8

    if-eqz p14, :cond_16

    move p4, v0

    :cond_16
    and-int/lit8 p14, p13, 0x10

    if-eqz p14, :cond_1c

    const/16 p5, 0xfa0

    :cond_1c
    and-int/lit8 p14, p13, 0x20

    if-eqz p14, :cond_21

    move p6, v0

    :cond_21
    and-int/lit8 p14, p13, 0x40

    if-eqz p14, :cond_26

    move p7, v0

    :cond_26
    and-int/lit16 p14, p13, 0x80

    if-eqz p14, :cond_2b

    move p8, v0

    :cond_2b
    and-int/lit16 p14, p13, 0x100

    if-eqz p14, :cond_30

    move p9, v0

    :cond_30
    and-int/lit16 p14, p13, 0x200

    if-eqz p14, :cond_35

    move p10, v0

    :cond_35
    and-int/lit16 p14, p13, 0x400

    if-eqz p14, :cond_3a

    move p11, v0

    :cond_3a
    and-int/lit16 p13, p13, 0x800

    if-eqz p13, :cond_40

    .line 21
    const-string p12, "unknown"

    :cond_40
    move p13, p11

    move-object p14, p12

    move p11, p9

    move p12, p10

    move p9, p7

    move p10, p8

    move p7, p5

    move p8, p6

    move p5, p3

    move p6, p4

    move-object p3, p1

    move p4, p2

    move-object p2, p0

    .line 9
    invoke-direct/range {p2 .. p14}, Lcom/bytedance/ies/cutsame/util/VideoMetaDataInfo;-><init>(Ljava/lang/String;IIIIIIIIIILjava/lang/String;)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/bytedance/ies/cutsame/util/VideoMetaDataInfo;Ljava/lang/String;IIIIIIIIIILjava/lang/String;ILjava/lang/Object;)Lcom/bytedance/ies/cutsame/util/VideoMetaDataInfo;
    .registers 15

    and-int/lit8 p14, p13, 0x1

    if-eqz p14, :cond_6

    iget-object p1, p0, Lcom/bytedance/ies/cutsame/util/VideoMetaDataInfo;->path:Ljava/lang/String;

    :cond_6
    and-int/lit8 p14, p13, 0x2

    if-eqz p14, :cond_c

    iget p2, p0, Lcom/bytedance/ies/cutsame/util/VideoMetaDataInfo;->width:I

    :cond_c
    and-int/lit8 p14, p13, 0x4

    if-eqz p14, :cond_12

    iget p3, p0, Lcom/bytedance/ies/cutsame/util/VideoMetaDataInfo;->height:I

    :cond_12
    and-int/lit8 p14, p13, 0x8

    if-eqz p14, :cond_18

    iget p4, p0, Lcom/bytedance/ies/cutsame/util/VideoMetaDataInfo;->rotation:I

    :cond_18
    and-int/lit8 p14, p13, 0x10

    if-eqz p14, :cond_1e

    iget p5, p0, Lcom/bytedance/ies/cutsame/util/VideoMetaDataInfo;->duration:I

    :cond_1e
    and-int/lit8 p14, p13, 0x20

    if-eqz p14, :cond_24

    iget p6, p0, Lcom/bytedance/ies/cutsame/util/VideoMetaDataInfo;->longitude:I

    :cond_24
    and-int/lit8 p14, p13, 0x40

    if-eqz p14, :cond_2a

    iget p7, p0, Lcom/bytedance/ies/cutsame/util/VideoMetaDataInfo;->latitude:I

    :cond_2a
    and-int/lit16 p14, p13, 0x80

    if-eqz p14, :cond_30

    iget p8, p0, Lcom/bytedance/ies/cutsame/util/VideoMetaDataInfo;->bitrate:I

    :cond_30
    and-int/lit16 p14, p13, 0x100

    if-eqz p14, :cond_36

    iget p9, p0, Lcom/bytedance/ies/cutsame/util/VideoMetaDataInfo;->fps:I

    :cond_36
    and-int/lit16 p14, p13, 0x200

    if-eqz p14, :cond_3c

    iget p10, p0, Lcom/bytedance/ies/cutsame/util/VideoMetaDataInfo;->codecId:I

    :cond_3c
    and-int/lit16 p14, p13, 0x400

    if-eqz p14, :cond_42

    iget p11, p0, Lcom/bytedance/ies/cutsame/util/VideoMetaDataInfo;->videoDuration:I

    :cond_42
    and-int/lit16 p13, p13, 0x800

    if-eqz p13, :cond_48

    iget-object p12, p0, Lcom/bytedance/ies/cutsame/util/VideoMetaDataInfo;->codecInfo:Ljava/lang/String;

    :cond_48
    move p13, p11

    move-object p14, p12

    move p11, p9

    move p12, p10

    move p9, p7

    move p10, p8

    move p7, p5

    move p8, p6

    move p5, p3

    move p6, p4

    move-object p3, p1

    move p4, p2

    move-object p2, p0

    invoke-virtual/range {p2 .. p14}, Lcom/bytedance/ies/cutsame/util/VideoMetaDataInfo;->copy(Ljava/lang/String;IIIIIIIIIILjava/lang/String;)Lcom/bytedance/ies/cutsame/util/VideoMetaDataInfo;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/bytedance/ies/cutsame/util/VideoMetaDataInfo;->path:Ljava/lang/String;

    return-object p0
.end method

.method public final component10()I
    .registers 1

    iget p0, p0, Lcom/bytedance/ies/cutsame/util/VideoMetaDataInfo;->codecId:I

    return p0
.end method

.method public final component11()I
    .registers 1

    iget p0, p0, Lcom/bytedance/ies/cutsame/util/VideoMetaDataInfo;->videoDuration:I

    return p0
.end method

.method public final component12()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/bytedance/ies/cutsame/util/VideoMetaDataInfo;->codecInfo:Ljava/lang/String;

    return-object p0
.end method

.method public final component2()I
    .registers 1

    iget p0, p0, Lcom/bytedance/ies/cutsame/util/VideoMetaDataInfo;->width:I

    return p0
.end method

.method public final component3()I
    .registers 1

    iget p0, p0, Lcom/bytedance/ies/cutsame/util/VideoMetaDataInfo;->height:I

    return p0
.end method

.method public final component4()I
    .registers 1

    iget p0, p0, Lcom/bytedance/ies/cutsame/util/VideoMetaDataInfo;->rotation:I

    return p0
.end method

.method public final component5()I
    .registers 1

    iget p0, p0, Lcom/bytedance/ies/cutsame/util/VideoMetaDataInfo;->duration:I

    return p0
.end method

.method public final component6()I
    .registers 1

    iget p0, p0, Lcom/bytedance/ies/cutsame/util/VideoMetaDataInfo;->longitude:I

    return p0
.end method

.method public final component7()I
    .registers 1

    iget p0, p0, Lcom/bytedance/ies/cutsame/util/VideoMetaDataInfo;->latitude:I

    return p0
.end method

.method public final component8()I
    .registers 1

    iget p0, p0, Lcom/bytedance/ies/cutsame/util/VideoMetaDataInfo;->bitrate:I

    return p0
.end method

.method public final component9()I
    .registers 1

    iget p0, p0, Lcom/bytedance/ies/cutsame/util/VideoMetaDataInfo;->fps:I

    return p0
.end method

.method public final copy(Ljava/lang/String;IIIIIIIIIILjava/lang/String;)Lcom/bytedance/ies/cutsame/util/VideoMetaDataInfo;
    .registers 26

    const-string p0, "path"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "codecInfo"

    move-object/from16 v12, p12

    invoke-static {v12, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/bytedance/ies/cutsame/util/VideoMetaDataInfo;

    move-object v1, p1

    move v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    move/from16 v10, p10

    move/from16 v11, p11

    invoke-direct/range {v0 .. v12}, Lcom/bytedance/ies/cutsame/util/VideoMetaDataInfo;-><init>(Ljava/lang/String;IIIIIIIIIILjava/lang/String;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Lcom/bytedance/ies/cutsame/util/VideoMetaDataInfo;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    check-cast p1, Lcom/bytedance/ies/cutsame/util/VideoMetaDataInfo;

    iget-object v1, p0, Lcom/bytedance/ies/cutsame/util/VideoMetaDataInfo;->path:Ljava/lang/String;

    iget-object v3, p1, Lcom/bytedance/ies/cutsame/util/VideoMetaDataInfo;->path:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_17

    return v2

    :cond_17
    iget v1, p0, Lcom/bytedance/ies/cutsame/util/VideoMetaDataInfo;->width:I

    iget v3, p1, Lcom/bytedance/ies/cutsame/util/VideoMetaDataInfo;->width:I

    if-eq v1, v3, :cond_1e

    return v2

    :cond_1e
    iget v1, p0, Lcom/bytedance/ies/cutsame/util/VideoMetaDataInfo;->height:I

    iget v3, p1, Lcom/bytedance/ies/cutsame/util/VideoMetaDataInfo;->height:I

    if-eq v1, v3, :cond_25

    return v2

    :cond_25
    iget v1, p0, Lcom/bytedance/ies/cutsame/util/VideoMetaDataInfo;->rotation:I

    iget v3, p1, Lcom/bytedance/ies/cutsame/util/VideoMetaDataInfo;->rotation:I

    if-eq v1, v3, :cond_2c

    return v2

    :cond_2c
    iget v1, p0, Lcom/bytedance/ies/cutsame/util/VideoMetaDataInfo;->duration:I

    iget v3, p1, Lcom/bytedance/ies/cutsame/util/VideoMetaDataInfo;->duration:I

    if-eq v1, v3, :cond_33

    return v2

    :cond_33
    iget v1, p0, Lcom/bytedance/ies/cutsame/util/VideoMetaDataInfo;->longitude:I

    iget v3, p1, Lcom/bytedance/ies/cutsame/util/VideoMetaDataInfo;->longitude:I

    if-eq v1, v3, :cond_3a

    return v2

    :cond_3a
    iget v1, p0, Lcom/bytedance/ies/cutsame/util/VideoMetaDataInfo;->latitude:I

    iget v3, p1, Lcom/bytedance/ies/cutsame/util/VideoMetaDataInfo;->latitude:I

    if-eq v1, v3, :cond_41

    return v2

    :cond_41
    iget v1, p0, Lcom/bytedance/ies/cutsame/util/VideoMetaDataInfo;->bitrate:I

    iget v3, p1, Lcom/bytedance/ies/cutsame/util/VideoMetaDataInfo;->bitrate:I

    if-eq v1, v3, :cond_48

    return v2

    :cond_48
    iget v1, p0, Lcom/bytedance/ies/cutsame/util/VideoMetaDataInfo;->fps:I

    iget v3, p1, Lcom/bytedance/ies/cutsame/util/VideoMetaDataInfo;->fps:I

    if-eq v1, v3, :cond_4f

    return v2

    :cond_4f
    iget v1, p0, Lcom/bytedance/ies/cutsame/util/VideoMetaDataInfo;->codecId:I

    iget v3, p1, Lcom/bytedance/ies/cutsame/util/VideoMetaDataInfo;->codecId:I

    if-eq v1, v3, :cond_56

    return v2

    :cond_56
    iget v1, p0, Lcom/bytedance/ies/cutsame/util/VideoMetaDataInfo;->videoDuration:I

    iget v3, p1, Lcom/bytedance/ies/cutsame/util/VideoMetaDataInfo;->videoDuration:I

    if-eq v1, v3, :cond_5d

    return v2

    :cond_5d
    iget-object p0, p0, Lcom/bytedance/ies/cutsame/util/VideoMetaDataInfo;->codecInfo:Ljava/lang/String;

    iget-object p1, p1, Lcom/bytedance/ies/cutsame/util/VideoMetaDataInfo;->codecInfo:Ljava/lang/String;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_68

    return v2

    :cond_68
    return v0
.end method

.method public final getBitrate()I
    .registers 1

    .line 17
    iget p0, p0, Lcom/bytedance/ies/cutsame/util/VideoMetaDataInfo;->bitrate:I

    return p0
.end method

.method public final getCodecId()I
    .registers 1

    .line 19
    iget p0, p0, Lcom/bytedance/ies/cutsame/util/VideoMetaDataInfo;->codecId:I

    return p0
.end method

.method public final getCodecInfo()Ljava/lang/String;
    .registers 1

    .line 21
    iget-object p0, p0, Lcom/bytedance/ies/cutsame/util/VideoMetaDataInfo;->codecInfo:Ljava/lang/String;

    return-object p0
.end method

.method public final getDuration()I
    .registers 1

    .line 14
    iget p0, p0, Lcom/bytedance/ies/cutsame/util/VideoMetaDataInfo;->duration:I

    return p0
.end method

.method public final getFps()I
    .registers 1

    .line 18
    iget p0, p0, Lcom/bytedance/ies/cutsame/util/VideoMetaDataInfo;->fps:I

    return p0
.end method

.method public final getHeight()I
    .registers 1

    .line 12
    iget p0, p0, Lcom/bytedance/ies/cutsame/util/VideoMetaDataInfo;->height:I

    return p0
.end method

.method public final getLatitude()I
    .registers 1

    .line 16
    iget p0, p0, Lcom/bytedance/ies/cutsame/util/VideoMetaDataInfo;->latitude:I

    return p0
.end method

.method public final getLongitude()I
    .registers 1

    .line 15
    iget p0, p0, Lcom/bytedance/ies/cutsame/util/VideoMetaDataInfo;->longitude:I

    return p0
.end method

.method public final getPath()Ljava/lang/String;
    .registers 1

    .line 10
    iget-object p0, p0, Lcom/bytedance/ies/cutsame/util/VideoMetaDataInfo;->path:Ljava/lang/String;

    return-object p0
.end method

.method public final getRotation()I
    .registers 1

    .line 13
    iget p0, p0, Lcom/bytedance/ies/cutsame/util/VideoMetaDataInfo;->rotation:I

    return p0
.end method

.method public final getVideoDuration()I
    .registers 1

    .line 20
    iget p0, p0, Lcom/bytedance/ies/cutsame/util/VideoMetaDataInfo;->videoDuration:I

    return p0
.end method

.method public final getWidth()I
    .registers 1

    .line 11
    iget p0, p0, Lcom/bytedance/ies/cutsame/util/VideoMetaDataInfo;->width:I

    return p0
.end method

.method public hashCode()I
    .registers 3

    iget-object v0, p0, Lcom/bytedance/ies/cutsame/util/VideoMetaDataInfo;->path:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/bytedance/ies/cutsame/util/VideoMetaDataInfo;->width:I

    invoke-static {v1}, Ljava/lang/Integer;->hashCode(I)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/bytedance/ies/cutsame/util/VideoMetaDataInfo;->height:I

    invoke-static {v1}, Ljava/lang/Integer;->hashCode(I)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/bytedance/ies/cutsame/util/VideoMetaDataInfo;->rotation:I

    invoke-static {v1}, Ljava/lang/Integer;->hashCode(I)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/bytedance/ies/cutsame/util/VideoMetaDataInfo;->duration:I

    invoke-static {v1}, Ljava/lang/Integer;->hashCode(I)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/bytedance/ies/cutsame/util/VideoMetaDataInfo;->longitude:I

    invoke-static {v1}, Ljava/lang/Integer;->hashCode(I)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/bytedance/ies/cutsame/util/VideoMetaDataInfo;->latitude:I

    invoke-static {v1}, Ljava/lang/Integer;->hashCode(I)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/bytedance/ies/cutsame/util/VideoMetaDataInfo;->bitrate:I

    invoke-static {v1}, Ljava/lang/Integer;->hashCode(I)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/bytedance/ies/cutsame/util/VideoMetaDataInfo;->fps:I

    invoke-static {v1}, Ljava/lang/Integer;->hashCode(I)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/bytedance/ies/cutsame/util/VideoMetaDataInfo;->codecId:I

    invoke-static {v1}, Ljava/lang/Integer;->hashCode(I)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/bytedance/ies/cutsame/util/VideoMetaDataInfo;->videoDuration:I

    invoke-static {v1}, Ljava/lang/Integer;->hashCode(I)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object p0, p0, Lcom/bytedance/ies/cutsame/util/VideoMetaDataInfo;->codecInfo:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

.method public final toArrayInfo()[I
    .registers 4

    .line 61
    iget v0, p0, Lcom/bytedance/ies/cutsame/util/VideoMetaDataInfo;->duration:I

    iget v1, p0, Lcom/bytedance/ies/cutsame/util/VideoMetaDataInfo;->width:I

    iget v2, p0, Lcom/bytedance/ies/cutsame/util/VideoMetaDataInfo;->height:I

    iget p0, p0, Lcom/bytedance/ies/cutsame/util/VideoMetaDataInfo;->rotation:I

    filled-new-array {v0, v1, v2, p0}, [I

    move-result-object p0

    return-object p0
.end method

.method public final toMap()Ljava/util/HashMap;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 63
    new-instance v0, Ljava/util/HashMap;

    iget-object p0, p0, Lcom/bytedance/ies/cutsame/util/VideoMetaDataInfo;->mapInfo:Ljava/util/HashMap;

    invoke-direct {v0, p0}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "VideoMetaDataInfo(path="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/bytedance/ies/cutsame/util/VideoMetaDataInfo;->path:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", width="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/bytedance/ies/cutsame/util/VideoMetaDataInfo;->width:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", height="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/bytedance/ies/cutsame/util/VideoMetaDataInfo;->height:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", rotation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/bytedance/ies/cutsame/util/VideoMetaDataInfo;->rotation:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", duration="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/bytedance/ies/cutsame/util/VideoMetaDataInfo;->duration:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", longitude="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/bytedance/ies/cutsame/util/VideoMetaDataInfo;->longitude:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", latitude="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/bytedance/ies/cutsame/util/VideoMetaDataInfo;->latitude:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", bitrate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/bytedance/ies/cutsame/util/VideoMetaDataInfo;->bitrate:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", fps="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/bytedance/ies/cutsame/util/VideoMetaDataInfo;->fps:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", codecId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/bytedance/ies/cutsame/util/VideoMetaDataInfo;->codecId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", videoDuration="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/bytedance/ies/cutsame/util/VideoMetaDataInfo;->videoDuration:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", codecInfo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/bytedance/ies/cutsame/util/VideoMetaDataInfo;->codecInfo:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
