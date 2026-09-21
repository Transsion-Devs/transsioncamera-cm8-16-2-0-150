.class public final Lcom/bytedance/ies/cutsame/cut_android/VideoFragment;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private cartoonType:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "cartoon_type"
    .end annotation
.end field

.field private final duration:J
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "duration"
    .end annotation
.end field

.field private gamePlayAlgorithm:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "gameplay_algorithm"
    .end annotation
.end field

.field private isCartoon:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "is_cartoon"
    .end annotation
.end field

.field private final materialId:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "material_id"
    .end annotation
.end field

.field private relationVideoGroup:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "relation_video_group"
    .end annotation
.end field

.field private final videoHeight:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "video_height"
    .end annotation
.end field

.field private final videoWidth:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "video_width"
    .end annotation
.end field

.field private volume:F
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "volume"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 14

    .line 0
    const/16 v11, 0x1ff

    const/4 v12, 0x0

    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v12}, Lcom/bytedance/ies/cutsame/cut_android/VideoFragment;-><init>(JLjava/lang/String;IILjava/lang/String;ZILjava/lang/String;FILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(JLjava/lang/String;IILjava/lang/String;ZILjava/lang/String;F)V
    .registers 12

    const-string v0, "materialId"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "relationVideoGroup"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "gamePlayAlgorithm"

    invoke-static {p9, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    iput-wide p1, p0, Lcom/bytedance/ies/cutsame/cut_android/VideoFragment;->duration:J

    .line 86
    iput-object p3, p0, Lcom/bytedance/ies/cutsame/cut_android/VideoFragment;->materialId:Ljava/lang/String;

    .line 88
    iput p4, p0, Lcom/bytedance/ies/cutsame/cut_android/VideoFragment;->videoWidth:I

    .line 90
    iput p5, p0, Lcom/bytedance/ies/cutsame/cut_android/VideoFragment;->videoHeight:I

    .line 92
    iput-object p6, p0, Lcom/bytedance/ies/cutsame/cut_android/VideoFragment;->relationVideoGroup:Ljava/lang/String;

    .line 94
    iput-boolean p7, p0, Lcom/bytedance/ies/cutsame/cut_android/VideoFragment;->isCartoon:Z

    .line 97
    iput p8, p0, Lcom/bytedance/ies/cutsame/cut_android/VideoFragment;->cartoonType:I

    .line 99
    iput-object p9, p0, Lcom/bytedance/ies/cutsame/cut_android/VideoFragment;->gamePlayAlgorithm:Ljava/lang/String;

    .line 101
    iput p10, p0, Lcom/bytedance/ies/cutsame/cut_android/VideoFragment;->volume:F

    return-void
.end method

.method public synthetic constructor <init>(JLjava/lang/String;IILjava/lang/String;ZILjava/lang/String;FILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 24

    move/from16 v0, p11

    and-int/lit8 v1, v0, 0x1

    if-eqz v1, :cond_8

    const-wide/16 p1, 0x0

    :cond_8
    move-wide v1, p1

    and-int/lit8 p1, v0, 0x2

    .line 83
    const-string p2, ""

    if-eqz p1, :cond_11

    move-object v3, p2

    goto :goto_12

    :cond_11
    move-object v3, p3

    :goto_12
    and-int/lit8 p1, v0, 0x4

    const/4 p3, 0x0

    if-eqz p1, :cond_19

    move v4, p3

    goto :goto_1a

    :cond_19
    move v4, p4

    :goto_1a
    and-int/lit8 p1, v0, 0x8

    if-eqz p1, :cond_20

    move v5, p3

    goto :goto_22

    :cond_20
    move/from16 v5, p5

    :goto_22
    and-int/lit8 p1, v0, 0x10

    if-eqz p1, :cond_28

    move-object v6, p2

    goto :goto_2a

    :cond_28
    move-object/from16 v6, p6

    :goto_2a
    and-int/lit8 p1, v0, 0x20

    if-eqz p1, :cond_30

    move v7, p3

    goto :goto_32

    :cond_30
    move/from16 v7, p7

    :goto_32
    and-int/lit8 p1, v0, 0x40

    if-eqz p1, :cond_38

    move v8, p3

    goto :goto_3a

    :cond_38
    move/from16 v8, p8

    :goto_3a
    and-int/lit16 p1, v0, 0x80

    if-eqz p1, :cond_40

    move-object v9, p2

    goto :goto_42

    :cond_40
    move-object/from16 v9, p9

    :goto_42
    and-int/lit16 p1, v0, 0x100

    if-eqz p1, :cond_4a

    const/4 p1, 0x0

    move v10, p1

    :goto_48
    move-object v0, p0

    goto :goto_4d

    :cond_4a
    move/from16 v10, p10

    goto :goto_48

    :goto_4d
    invoke-direct/range {v0 .. v10}, Lcom/bytedance/ies/cutsame/cut_android/VideoFragment;-><init>(JLjava/lang/String;IILjava/lang/String;ZILjava/lang/String;F)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/bytedance/ies/cutsame/cut_android/VideoFragment;JLjava/lang/String;IILjava/lang/String;ZILjava/lang/String;FILjava/lang/Object;)Lcom/bytedance/ies/cutsame/cut_android/VideoFragment;
    .registers 24

    move/from16 v0, p11

    and-int/lit8 v1, v0, 0x1

    if-eqz v1, :cond_8

    iget-wide p1, p0, Lcom/bytedance/ies/cutsame/cut_android/VideoFragment;->duration:J

    :cond_8
    move-wide v1, p1

    and-int/lit8 p1, v0, 0x2

    if-eqz p1, :cond_f

    iget-object p3, p0, Lcom/bytedance/ies/cutsame/cut_android/VideoFragment;->materialId:Ljava/lang/String;

    :cond_f
    move-object v3, p3

    and-int/lit8 p1, v0, 0x4

    if-eqz p1, :cond_16

    iget p4, p0, Lcom/bytedance/ies/cutsame/cut_android/VideoFragment;->videoWidth:I

    :cond_16
    move v4, p4

    and-int/lit8 p1, v0, 0x8

    if-eqz p1, :cond_1f

    iget p1, p0, Lcom/bytedance/ies/cutsame/cut_android/VideoFragment;->videoHeight:I

    move v5, p1

    goto :goto_21

    :cond_1f
    move/from16 v5, p5

    :goto_21
    and-int/lit8 p1, v0, 0x10

    if-eqz p1, :cond_29

    iget-object p1, p0, Lcom/bytedance/ies/cutsame/cut_android/VideoFragment;->relationVideoGroup:Ljava/lang/String;

    move-object v6, p1

    goto :goto_2b

    :cond_29
    move-object/from16 v6, p6

    :goto_2b
    and-int/lit8 p1, v0, 0x20

    if-eqz p1, :cond_33

    iget-boolean p1, p0, Lcom/bytedance/ies/cutsame/cut_android/VideoFragment;->isCartoon:Z

    move v7, p1

    goto :goto_35

    :cond_33
    move/from16 v7, p7

    :goto_35
    and-int/lit8 p1, v0, 0x40

    if-eqz p1, :cond_3d

    iget p1, p0, Lcom/bytedance/ies/cutsame/cut_android/VideoFragment;->cartoonType:I

    move v8, p1

    goto :goto_3f

    :cond_3d
    move/from16 v8, p8

    :goto_3f
    and-int/lit16 p1, v0, 0x80

    if-eqz p1, :cond_47

    iget-object p1, p0, Lcom/bytedance/ies/cutsame/cut_android/VideoFragment;->gamePlayAlgorithm:Ljava/lang/String;

    move-object v9, p1

    goto :goto_49

    :cond_47
    move-object/from16 v9, p9

    :goto_49
    and-int/lit16 p1, v0, 0x100

    if-eqz p1, :cond_52

    iget p1, p0, Lcom/bytedance/ies/cutsame/cut_android/VideoFragment;->volume:F

    move v10, p1

    :goto_50
    move-object v0, p0

    goto :goto_55

    :cond_52
    move/from16 v10, p10

    goto :goto_50

    :goto_55
    invoke-virtual/range {v0 .. v10}, Lcom/bytedance/ies/cutsame/cut_android/VideoFragment;->copy(JLjava/lang/String;IILjava/lang/String;ZILjava/lang/String;F)Lcom/bytedance/ies/cutsame/cut_android/VideoFragment;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic isCartoon$annotations()V
    .registers 0

    return-void
.end method


# virtual methods
.method public final component1()J
    .registers 3

    iget-wide v0, p0, Lcom/bytedance/ies/cutsame/cut_android/VideoFragment;->duration:J

    return-wide v0
.end method

.method public final component2()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/bytedance/ies/cutsame/cut_android/VideoFragment;->materialId:Ljava/lang/String;

    return-object p0
.end method

.method public final component3()I
    .registers 1

    iget p0, p0, Lcom/bytedance/ies/cutsame/cut_android/VideoFragment;->videoWidth:I

    return p0
.end method

.method public final component4()I
    .registers 1

    iget p0, p0, Lcom/bytedance/ies/cutsame/cut_android/VideoFragment;->videoHeight:I

    return p0
.end method

.method public final component5()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/bytedance/ies/cutsame/cut_android/VideoFragment;->relationVideoGroup:Ljava/lang/String;

    return-object p0
.end method

.method public final component6()Z
    .registers 1

    iget-boolean p0, p0, Lcom/bytedance/ies/cutsame/cut_android/VideoFragment;->isCartoon:Z

    return p0
.end method

.method public final component7()I
    .registers 1

    iget p0, p0, Lcom/bytedance/ies/cutsame/cut_android/VideoFragment;->cartoonType:I

    return p0
.end method

.method public final component8()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/bytedance/ies/cutsame/cut_android/VideoFragment;->gamePlayAlgorithm:Ljava/lang/String;

    return-object p0
.end method

.method public final component9()F
    .registers 1

    iget p0, p0, Lcom/bytedance/ies/cutsame/cut_android/VideoFragment;->volume:F

    return p0
.end method

.method public final copy(JLjava/lang/String;IILjava/lang/String;ZILjava/lang/String;F)Lcom/bytedance/ies/cutsame/cut_android/VideoFragment;
    .registers 22

    const-string p0, "materialId"

    invoke-static {p3, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "relationVideoGroup"

    move-object/from16 v6, p6

    invoke-static {v6, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "gamePlayAlgorithm"

    move-object/from16 v9, p9

    invoke-static {v9, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/bytedance/ies/cutsame/cut_android/VideoFragment;

    move-wide v1, p1

    move-object v3, p3

    move v4, p4

    move/from16 v5, p5

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v10, p10

    invoke-direct/range {v0 .. v10}, Lcom/bytedance/ies/cutsame/cut_android/VideoFragment;-><init>(JLjava/lang/String;IILjava/lang/String;ZILjava/lang/String;F)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 9

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Lcom/bytedance/ies/cutsame/cut_android/VideoFragment;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    check-cast p1, Lcom/bytedance/ies/cutsame/cut_android/VideoFragment;

    iget-wide v3, p0, Lcom/bytedance/ies/cutsame/cut_android/VideoFragment;->duration:J

    iget-wide v5, p1, Lcom/bytedance/ies/cutsame/cut_android/VideoFragment;->duration:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_15

    return v2

    :cond_15
    iget-object v1, p0, Lcom/bytedance/ies/cutsame/cut_android/VideoFragment;->materialId:Ljava/lang/String;

    iget-object v3, p1, Lcom/bytedance/ies/cutsame/cut_android/VideoFragment;->materialId:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_20

    return v2

    :cond_20
    iget v1, p0, Lcom/bytedance/ies/cutsame/cut_android/VideoFragment;->videoWidth:I

    iget v3, p1, Lcom/bytedance/ies/cutsame/cut_android/VideoFragment;->videoWidth:I

    if-eq v1, v3, :cond_27

    return v2

    :cond_27
    iget v1, p0, Lcom/bytedance/ies/cutsame/cut_android/VideoFragment;->videoHeight:I

    iget v3, p1, Lcom/bytedance/ies/cutsame/cut_android/VideoFragment;->videoHeight:I

    if-eq v1, v3, :cond_2e

    return v2

    :cond_2e
    iget-object v1, p0, Lcom/bytedance/ies/cutsame/cut_android/VideoFragment;->relationVideoGroup:Ljava/lang/String;

    iget-object v3, p1, Lcom/bytedance/ies/cutsame/cut_android/VideoFragment;->relationVideoGroup:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_39

    return v2

    :cond_39
    iget-boolean v1, p0, Lcom/bytedance/ies/cutsame/cut_android/VideoFragment;->isCartoon:Z

    iget-boolean v3, p1, Lcom/bytedance/ies/cutsame/cut_android/VideoFragment;->isCartoon:Z

    if-eq v1, v3, :cond_40

    return v2

    :cond_40
    iget v1, p0, Lcom/bytedance/ies/cutsame/cut_android/VideoFragment;->cartoonType:I

    iget v3, p1, Lcom/bytedance/ies/cutsame/cut_android/VideoFragment;->cartoonType:I

    if-eq v1, v3, :cond_47

    return v2

    :cond_47
    iget-object v1, p0, Lcom/bytedance/ies/cutsame/cut_android/VideoFragment;->gamePlayAlgorithm:Ljava/lang/String;

    iget-object v3, p1, Lcom/bytedance/ies/cutsame/cut_android/VideoFragment;->gamePlayAlgorithm:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_52

    return v2

    :cond_52
    iget p0, p0, Lcom/bytedance/ies/cutsame/cut_android/VideoFragment;->volume:F

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    iget p1, p1, Lcom/bytedance/ies/cutsame/cut_android/VideoFragment;->volume:F

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_65

    return v2

    :cond_65
    return v0
.end method

.method public final getCartoonType()I
    .registers 1

    .line 98
    iget p0, p0, Lcom/bytedance/ies/cutsame/cut_android/VideoFragment;->cartoonType:I

    return p0
.end method

.method public final getDuration()J
    .registers 3

    .line 85
    iget-wide v0, p0, Lcom/bytedance/ies/cutsame/cut_android/VideoFragment;->duration:J

    return-wide v0
.end method

.method public final getGamePlayAlgorithm()Ljava/lang/String;
    .registers 1

    .line 100
    iget-object p0, p0, Lcom/bytedance/ies/cutsame/cut_android/VideoFragment;->gamePlayAlgorithm:Ljava/lang/String;

    return-object p0
.end method

.method public final getMaterialId()Ljava/lang/String;
    .registers 1

    .line 87
    iget-object p0, p0, Lcom/bytedance/ies/cutsame/cut_android/VideoFragment;->materialId:Ljava/lang/String;

    return-object p0
.end method

.method public final getRelationVideoGroup()Ljava/lang/String;
    .registers 1

    .line 93
    iget-object p0, p0, Lcom/bytedance/ies/cutsame/cut_android/VideoFragment;->relationVideoGroup:Ljava/lang/String;

    return-object p0
.end method

.method public final getVideoHeight()I
    .registers 1

    .line 91
    iget p0, p0, Lcom/bytedance/ies/cutsame/cut_android/VideoFragment;->videoHeight:I

    return p0
.end method

.method public final getVideoWidth()I
    .registers 1

    .line 89
    iget p0, p0, Lcom/bytedance/ies/cutsame/cut_android/VideoFragment;->videoWidth:I

    return p0
.end method

.method public final getVolume()F
    .registers 1

    .line 102
    iget p0, p0, Lcom/bytedance/ies/cutsame/cut_android/VideoFragment;->volume:F

    return p0
.end method

.method public hashCode()I
    .registers 3

    iget-wide v0, p0, Lcom/bytedance/ies/cutsame/cut_android/VideoFragment;->duration:J

    invoke-static {v0, v1}, Ljava/lang/Long;->hashCode(J)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/bytedance/ies/cutsame/cut_android/VideoFragment;->materialId:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/bytedance/ies/cutsame/cut_android/VideoFragment;->videoWidth:I

    invoke-static {v1}, Ljava/lang/Integer;->hashCode(I)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/bytedance/ies/cutsame/cut_android/VideoFragment;->videoHeight:I

    invoke-static {v1}, Ljava/lang/Integer;->hashCode(I)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/bytedance/ies/cutsame/cut_android/VideoFragment;->relationVideoGroup:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/bytedance/ies/cutsame/cut_android/VideoFragment;->isCartoon:Z

    if-eqz v1, :cond_31

    const/4 v1, 0x1

    :cond_31
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/bytedance/ies/cutsame/cut_android/VideoFragment;->cartoonType:I

    invoke-static {v1}, Ljava/lang/Integer;->hashCode(I)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/bytedance/ies/cutsame/cut_android/VideoFragment;->gamePlayAlgorithm:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget p0, p0, Lcom/bytedance/ies/cutsame/cut_android/VideoFragment;->volume:F

    invoke-static {p0}, Ljava/lang/Float;->hashCode(F)I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

.method public final isCartoon()Z
    .registers 1

    .line 96
    iget-boolean p0, p0, Lcom/bytedance/ies/cutsame/cut_android/VideoFragment;->isCartoon:Z

    return p0
.end method

.method public final setCartoon(Z)V
    .registers 2

    .line 96
    iput-boolean p1, p0, Lcom/bytedance/ies/cutsame/cut_android/VideoFragment;->isCartoon:Z

    return-void
.end method

.method public final setCartoonType(I)V
    .registers 2

    .line 98
    iput p1, p0, Lcom/bytedance/ies/cutsame/cut_android/VideoFragment;->cartoonType:I

    return-void
.end method

.method public final setGamePlayAlgorithm(Ljava/lang/String;)V
    .registers 3

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 100
    iput-object p1, p0, Lcom/bytedance/ies/cutsame/cut_android/VideoFragment;->gamePlayAlgorithm:Ljava/lang/String;

    return-void
.end method

.method public final setRelationVideoGroup(Ljava/lang/String;)V
    .registers 3

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 93
    iput-object p1, p0, Lcom/bytedance/ies/cutsame/cut_android/VideoFragment;->relationVideoGroup:Ljava/lang/String;

    return-void
.end method

.method public final setVolume(F)V
    .registers 2

    .line 102
    iput p1, p0, Lcom/bytedance/ies/cutsame/cut_android/VideoFragment;->volume:F

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "VideoFragment(duration="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/bytedance/ies/cutsame/cut_android/VideoFragment;->duration:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", materialId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/bytedance/ies/cutsame/cut_android/VideoFragment;->materialId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", videoWidth="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/bytedance/ies/cutsame/cut_android/VideoFragment;->videoWidth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", videoHeight="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/bytedance/ies/cutsame/cut_android/VideoFragment;->videoHeight:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", relationVideoGroup="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/bytedance/ies/cutsame/cut_android/VideoFragment;->relationVideoGroup:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", isCartoon="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/bytedance/ies/cutsame/cut_android/VideoFragment;->isCartoon:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", cartoonType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/bytedance/ies/cutsame/cut_android/VideoFragment;->cartoonType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", gamePlayAlgorithm="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/bytedance/ies/cutsame/cut_android/VideoFragment;->gamePlayAlgorithm:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", volume="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/bytedance/ies/cutsame/cut_android/VideoFragment;->volume:F

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
