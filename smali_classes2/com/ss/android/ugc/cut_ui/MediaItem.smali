.class public final Lcom/ss/android/ugc/cut_ui/MediaItem;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ss/android/ugc/cut_ui/MediaItem$Companion;
    }
.end annotation

.annotation build Lkotlinx/android/parcel/Parcelize;
.end annotation


# static fields
.field public static final ALIGN_MODE_CANVAS:Ljava/lang/String; = "align_canvas"

.field public static final ALIGN_MODE_VIDEO:Ljava/lang/String; = "align_video"

.field public static final CARTOON_HK:I = 0x2

.field public static final CARTOON_JP:I = 0x1

.field public static final CARTOON_NULL:I = 0x0

.field public static final CARTOON_PAPER:I = 0x8

.field public static final CARTOON_TC:I = 0x4

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/ss/android/ugc/cut_ui/MediaItem;",
            ">;"
        }
    .end annotation
.end field

.field public static final Companion:Lcom/ss/android/ugc/cut_ui/MediaItem$Companion;

.field public static final TYPE_PHOTO:Ljava/lang/String; = "photo"

.field public static final TYPE_VIDEO:Ljava/lang/String; = "video"


# instance fields
.field private alignMode:Ljava/lang/String;

.field private cartoonType:I

.field private clipHeight:I

.field private clipWidth:I

.field private crop:Lcom/ss/android/ugc/cut_ui/ItemCrop;

.field private cropScale:F

.field private duration:J

.field private final gamePlayAlgorithm:Ljava/lang/String;

.field private height:I

.field private isMutable:Z

.field private isReverse:Z

.field private isSubVideo:Z

.field private materialId:Ljava/lang/String;

.field private mediaSrcPath:Ljava/lang/String;

.field private oriDuration:J

.field private final relation_video_group:Ljava/lang/String;

.field private source:Ljava/lang/String;

.field private sourceStartTime:J

.field private final targetEndTime:J

.field private targetStartTime:J

.field private type:Ljava/lang/String;

.field private volume:F

.field private width:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/ss/android/ugc/cut_ui/MediaItem$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/ss/android/ugc/cut_ui/MediaItem$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/ss/android/ugc/cut_ui/MediaItem;->Companion:Lcom/ss/android/ugc/cut_ui/MediaItem$Companion;

    new-instance v0, Lcom/ss/android/ugc/cut_ui/MediaItem$Creator;

    invoke-direct {v0}, Lcom/ss/android/ugc/cut_ui/MediaItem$Creator;-><init>()V

    sput-object v0, Lcom/ss/android/ugc/cut_ui/MediaItem;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;JZLjava/lang/String;ZZILjava/lang/String;IIIIJJLjava/lang/String;JFLcom/ss/android/ugc/cut_ui/ItemCrop;Ljava/lang/String;Ljava/lang/String;JFLjava/lang/String;)V
    .registers 36

    move-object/from16 v0, p9

    move-object/from16 v1, p18

    move-object/from16 v2, p22

    move-object/from16 v3, p23

    move-object/from16 v4, p24

    move-object/from16 v5, p28

    const-string v6, "materialId"

    invoke-static {p1, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v6, "alignMode"

    invoke-static {p5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v6, "gamePlayAlgorithm"

    invoke-static {v0, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v6, "source"

    invoke-static {v1, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v6, "crop"

    invoke-static {v2, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v6, "type"

    invoke-static {v3, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v6, "mediaSrcPath"

    invoke-static {v4, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v6, "relation_video_group"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/ss/android/ugc/cut_ui/MediaItem;->materialId:Ljava/lang/String;

    .line 20
    iput-wide p2, p0, Lcom/ss/android/ugc/cut_ui/MediaItem;->targetStartTime:J

    .line 22
    iput-boolean p4, p0, Lcom/ss/android/ugc/cut_ui/MediaItem;->isMutable:Z

    .line 24
    iput-object p5, p0, Lcom/ss/android/ugc/cut_ui/MediaItem;->alignMode:Ljava/lang/String;

    .line 26
    iput-boolean p6, p0, Lcom/ss/android/ugc/cut_ui/MediaItem;->isSubVideo:Z

    .line 28
    iput-boolean p7, p0, Lcom/ss/android/ugc/cut_ui/MediaItem;->isReverse:Z

    .line 30
    iput p8, p0, Lcom/ss/android/ugc/cut_ui/MediaItem;->cartoonType:I

    .line 32
    iput-object v0, p0, Lcom/ss/android/ugc/cut_ui/MediaItem;->gamePlayAlgorithm:Ljava/lang/String;

    move/from16 p1, p10

    .line 35
    iput p1, p0, Lcom/ss/android/ugc/cut_ui/MediaItem;->width:I

    move/from16 p1, p11

    .line 37
    iput p1, p0, Lcom/ss/android/ugc/cut_ui/MediaItem;->height:I

    move/from16 p1, p12

    .line 39
    iput p1, p0, Lcom/ss/android/ugc/cut_ui/MediaItem;->clipWidth:I

    move/from16 p1, p13

    .line 41
    iput p1, p0, Lcom/ss/android/ugc/cut_ui/MediaItem;->clipHeight:I

    move-wide/from16 p1, p14

    .line 43
    iput-wide p1, p0, Lcom/ss/android/ugc/cut_ui/MediaItem;->duration:J

    move-wide/from16 p1, p16

    .line 45
    iput-wide p1, p0, Lcom/ss/android/ugc/cut_ui/MediaItem;->oriDuration:J

    .line 48
    iput-object v1, p0, Lcom/ss/android/ugc/cut_ui/MediaItem;->source:Ljava/lang/String;

    move-wide/from16 p1, p19

    .line 50
    iput-wide p1, p0, Lcom/ss/android/ugc/cut_ui/MediaItem;->sourceStartTime:J

    move/from16 p1, p21

    .line 52
    iput p1, p0, Lcom/ss/android/ugc/cut_ui/MediaItem;->cropScale:F

    .line 53
    iput-object v2, p0, Lcom/ss/android/ugc/cut_ui/MediaItem;->crop:Lcom/ss/android/ugc/cut_ui/ItemCrop;

    .line 59
    iput-object v3, p0, Lcom/ss/android/ugc/cut_ui/MediaItem;->type:Ljava/lang/String;

    .line 62
    iput-object v4, p0, Lcom/ss/android/ugc/cut_ui/MediaItem;->mediaSrcPath:Ljava/lang/String;

    move-wide/from16 p1, p25

    .line 65
    iput-wide p1, p0, Lcom/ss/android/ugc/cut_ui/MediaItem;->targetEndTime:J

    move/from16 p1, p27

    .line 68
    iput p1, p0, Lcom/ss/android/ugc/cut_ui/MediaItem;->volume:F

    .line 71
    iput-object v5, p0, Lcom/ss/android/ugc/cut_ui/MediaItem;->relation_video_group:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;JZLjava/lang/String;ZZILjava/lang/String;IIIIJJLjava/lang/String;JFLcom/ss/android/ugc/cut_ui/ItemCrop;Ljava/lang/String;Ljava/lang/String;JFLjava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 64

    move/from16 v0, p29

    and-int/lit8 v1, v0, 0x2

    const-wide/16 v2, 0x0

    if-eqz v1, :cond_a

    move-wide v6, v2

    goto :goto_c

    :cond_a
    move-wide/from16 v6, p2

    :goto_c
    and-int/lit8 v1, v0, 0x8

    .line 16
    const-string v4, ""

    if-eqz v1, :cond_14

    move-object v9, v4

    goto :goto_16

    :cond_14
    move-object/from16 v9, p5

    :goto_16
    and-int/lit8 v1, v0, 0x10

    const/4 v5, 0x0

    if-eqz v1, :cond_1d

    move v10, v5

    goto :goto_1f

    :cond_1d
    move/from16 v10, p6

    :goto_1f
    and-int/lit8 v1, v0, 0x20

    if-eqz v1, :cond_25

    move v11, v5

    goto :goto_27

    :cond_25
    move/from16 v11, p7

    :goto_27
    and-int/lit8 v1, v0, 0x40

    if-eqz v1, :cond_2d

    move v12, v5

    goto :goto_2f

    :cond_2d
    move/from16 v12, p8

    :goto_2f
    and-int/lit16 v1, v0, 0x80

    if-eqz v1, :cond_35

    move-object v13, v4

    goto :goto_37

    :cond_35
    move-object/from16 v13, p9

    :goto_37
    and-int/lit16 v1, v0, 0x400

    if-eqz v1, :cond_3e

    move/from16 v16, v5

    goto :goto_40

    :cond_3e
    move/from16 v16, p12

    :goto_40
    and-int/lit16 v1, v0, 0x800

    if-eqz v1, :cond_47

    move/from16 v17, v5

    goto :goto_49

    :cond_47
    move/from16 v17, p13

    :goto_49
    and-int/lit16 v1, v0, 0x2000

    if-eqz v1, :cond_50

    move-wide/from16 v20, v2

    goto :goto_52

    :cond_50
    move-wide/from16 v20, p16

    :goto_52
    and-int/lit16 v1, v0, 0x4000

    if-eqz v1, :cond_59

    move-object/from16 v22, v4

    goto :goto_5b

    :cond_59
    move-object/from16 v22, p18

    :goto_5b
    const v1, 0x8000

    and-int/2addr v1, v0

    if-eqz v1, :cond_64

    move-wide/from16 v23, v2

    goto :goto_66

    :cond_64
    move-wide/from16 v23, p19

    :goto_66
    const/high16 v1, 0x10000

    and-int/2addr v1, v0

    const/4 v5, 0x0

    if-eqz v1, :cond_6f

    move/from16 v25, v5

    goto :goto_71

    :cond_6f
    move/from16 v25, p21

    :goto_71
    const/high16 v1, 0x20000

    and-int/2addr v1, v0

    if-eqz v1, :cond_80

    .line 54
    new-instance v1, Lcom/ss/android/ugc/cut_ui/ItemCrop;

    const/high16 v8, 0x3f800000    # 1.0f

    invoke-direct {v1, v5, v5, v8, v8}, Lcom/ss/android/ugc/cut_ui/ItemCrop;-><init>(FFFF)V

    move-object/from16 v26, v1

    goto :goto_82

    :cond_80
    move-object/from16 v26, p22

    :goto_82
    const/high16 v1, 0x40000

    and-int/2addr v1, v0

    if-eqz v1, :cond_8a

    move-object/from16 v27, v4

    goto :goto_8c

    :cond_8a
    move-object/from16 v27, p23

    :goto_8c
    const/high16 v1, 0x80000

    and-int/2addr v1, v0

    if-eqz v1, :cond_94

    move-object/from16 v28, v4

    goto :goto_96

    :cond_94
    move-object/from16 v28, p24

    :goto_96
    const/high16 v1, 0x100000

    and-int/2addr v1, v0

    if-eqz v1, :cond_9e

    move-wide/from16 v29, v2

    goto :goto_a0

    :cond_9e
    move-wide/from16 v29, p25

    :goto_a0
    const/high16 v1, 0x200000

    and-int/2addr v1, v0

    if-eqz v1, :cond_a8

    move/from16 v31, v5

    goto :goto_aa

    :cond_a8
    move/from16 v31, p27

    :goto_aa
    const/high16 v1, 0x400000

    and-int/2addr v0, v1

    if-eqz v0, :cond_be

    move-object/from16 v32, v4

    move-object/from16 v5, p1

    move/from16 v8, p4

    move/from16 v14, p10

    move/from16 v15, p11

    move-wide/from16 v18, p14

    move-object/from16 v4, p0

    goto :goto_cc

    :cond_be
    move-object/from16 v32, p28

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    move/from16 v8, p4

    move/from16 v14, p10

    move/from16 v15, p11

    move-wide/from16 v18, p14

    .line 16
    :goto_cc
    invoke-direct/range {v4 .. v32}, Lcom/ss/android/ugc/cut_ui/MediaItem;-><init>(Ljava/lang/String;JZLjava/lang/String;ZZILjava/lang/String;IIIIJJLjava/lang/String;JFLcom/ss/android/ugc/cut_ui/ItemCrop;Ljava/lang/String;Ljava/lang/String;JFLjava/lang/String;)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/ss/android/ugc/cut_ui/MediaItem;Ljava/lang/String;JZLjava/lang/String;ZZILjava/lang/String;IIIIJJLjava/lang/String;JFLcom/ss/android/ugc/cut_ui/ItemCrop;Ljava/lang/String;Ljava/lang/String;JFLjava/lang/String;ILjava/lang/Object;)Lcom/ss/android/ugc/cut_ui/MediaItem;
    .registers 49

    move-object/from16 v0, p0

    move/from16 v1, p29

    and-int/lit8 v2, v1, 0x1

    if-eqz v2, :cond_b

    iget-object v2, v0, Lcom/ss/android/ugc/cut_ui/MediaItem;->materialId:Ljava/lang/String;

    goto :goto_d

    :cond_b
    move-object/from16 v2, p1

    :goto_d
    and-int/lit8 v3, v1, 0x2

    if-eqz v3, :cond_14

    iget-wide v3, v0, Lcom/ss/android/ugc/cut_ui/MediaItem;->targetStartTime:J

    goto :goto_16

    :cond_14
    move-wide/from16 v3, p2

    :goto_16
    and-int/lit8 v5, v1, 0x4

    if-eqz v5, :cond_1d

    iget-boolean v5, v0, Lcom/ss/android/ugc/cut_ui/MediaItem;->isMutable:Z

    goto :goto_1f

    :cond_1d
    move/from16 v5, p4

    :goto_1f
    and-int/lit8 v6, v1, 0x8

    if-eqz v6, :cond_26

    iget-object v6, v0, Lcom/ss/android/ugc/cut_ui/MediaItem;->alignMode:Ljava/lang/String;

    goto :goto_28

    :cond_26
    move-object/from16 v6, p5

    :goto_28
    and-int/lit8 v7, v1, 0x10

    if-eqz v7, :cond_2f

    iget-boolean v7, v0, Lcom/ss/android/ugc/cut_ui/MediaItem;->isSubVideo:Z

    goto :goto_31

    :cond_2f
    move/from16 v7, p6

    :goto_31
    and-int/lit8 v8, v1, 0x20

    if-eqz v8, :cond_38

    iget-boolean v8, v0, Lcom/ss/android/ugc/cut_ui/MediaItem;->isReverse:Z

    goto :goto_3a

    :cond_38
    move/from16 v8, p7

    :goto_3a
    and-int/lit8 v9, v1, 0x40

    if-eqz v9, :cond_41

    iget v9, v0, Lcom/ss/android/ugc/cut_ui/MediaItem;->cartoonType:I

    goto :goto_43

    :cond_41
    move/from16 v9, p8

    :goto_43
    and-int/lit16 v10, v1, 0x80

    if-eqz v10, :cond_4a

    iget-object v10, v0, Lcom/ss/android/ugc/cut_ui/MediaItem;->gamePlayAlgorithm:Ljava/lang/String;

    goto :goto_4c

    :cond_4a
    move-object/from16 v10, p9

    :goto_4c
    and-int/lit16 v11, v1, 0x100

    if-eqz v11, :cond_53

    iget v11, v0, Lcom/ss/android/ugc/cut_ui/MediaItem;->width:I

    goto :goto_55

    :cond_53
    move/from16 v11, p10

    :goto_55
    and-int/lit16 v12, v1, 0x200

    if-eqz v12, :cond_5c

    iget v12, v0, Lcom/ss/android/ugc/cut_ui/MediaItem;->height:I

    goto :goto_5e

    :cond_5c
    move/from16 v12, p11

    :goto_5e
    and-int/lit16 v13, v1, 0x400

    if-eqz v13, :cond_65

    iget v13, v0, Lcom/ss/android/ugc/cut_ui/MediaItem;->clipWidth:I

    goto :goto_67

    :cond_65
    move/from16 v13, p12

    :goto_67
    and-int/lit16 v14, v1, 0x800

    if-eqz v14, :cond_6e

    iget v14, v0, Lcom/ss/android/ugc/cut_ui/MediaItem;->clipHeight:I

    goto :goto_70

    :cond_6e
    move/from16 v14, p13

    :goto_70
    and-int/lit16 v15, v1, 0x1000

    move-object/from16 p1, v2

    if-eqz v15, :cond_7a

    move-wide v15, v3

    iget-wide v2, v0, Lcom/ss/android/ugc/cut_ui/MediaItem;->duration:J

    goto :goto_7d

    :cond_7a
    move-wide v15, v3

    move-wide/from16 v2, p14

    :goto_7d
    and-int/lit16 v4, v1, 0x2000

    move-wide/from16 p2, v2

    if-eqz v4, :cond_86

    iget-wide v2, v0, Lcom/ss/android/ugc/cut_ui/MediaItem;->oriDuration:J

    goto :goto_88

    :cond_86
    move-wide/from16 v2, p16

    :goto_88
    and-int/lit16 v4, v1, 0x4000

    if-eqz v4, :cond_8f

    iget-object v4, v0, Lcom/ss/android/ugc/cut_ui/MediaItem;->source:Ljava/lang/String;

    goto :goto_91

    :cond_8f
    move-object/from16 v4, p18

    :goto_91
    const v17, 0x8000

    and-int v17, v1, v17

    move-wide/from16 p4, v2

    if-eqz v17, :cond_9d

    iget-wide v1, v0, Lcom/ss/android/ugc/cut_ui/MediaItem;->sourceStartTime:J

    goto :goto_9f

    :cond_9d
    move-wide/from16 v1, p19

    :goto_9f
    const/high16 v3, 0x10000

    and-int v3, p29, v3

    if-eqz v3, :cond_a8

    iget v3, v0, Lcom/ss/android/ugc/cut_ui/MediaItem;->cropScale:F

    goto :goto_aa

    :cond_a8
    move/from16 v3, p21

    :goto_aa
    const/high16 v17, 0x20000

    and-int v17, p29, v17

    move-wide/from16 p6, v1

    if-eqz v17, :cond_b5

    iget-object v1, v0, Lcom/ss/android/ugc/cut_ui/MediaItem;->crop:Lcom/ss/android/ugc/cut_ui/ItemCrop;

    goto :goto_b7

    :cond_b5
    move-object/from16 v1, p22

    :goto_b7
    const/high16 v2, 0x40000

    and-int v2, p29, v2

    if-eqz v2, :cond_c0

    iget-object v2, v0, Lcom/ss/android/ugc/cut_ui/MediaItem;->type:Ljava/lang/String;

    goto :goto_c2

    :cond_c0
    move-object/from16 v2, p23

    :goto_c2
    const/high16 v17, 0x80000

    and-int v17, p29, v17

    move-object/from16 p8, v1

    if-eqz v17, :cond_cd

    iget-object v1, v0, Lcom/ss/android/ugc/cut_ui/MediaItem;->mediaSrcPath:Ljava/lang/String;

    goto :goto_cf

    :cond_cd
    move-object/from16 v1, p24

    :goto_cf
    const/high16 v17, 0x100000

    and-int v17, p29, v17

    move-object/from16 p10, v1

    move-object/from16 p9, v2

    if-eqz v17, :cond_dc

    iget-wide v1, v0, Lcom/ss/android/ugc/cut_ui/MediaItem;->targetEndTime:J

    goto :goto_de

    :cond_dc
    move-wide/from16 v1, p25

    :goto_de
    const/high16 v17, 0x200000

    and-int v17, p29, v17

    move-wide/from16 p11, v1

    if-eqz v17, :cond_e9

    iget v1, v0, Lcom/ss/android/ugc/cut_ui/MediaItem;->volume:F

    goto :goto_eb

    :cond_e9
    move/from16 v1, p27

    :goto_eb
    const/high16 v2, 0x400000

    and-int v2, p29, v2

    if-eqz v2, :cond_124

    iget-object v2, v0, Lcom/ss/android/ugc/cut_ui/MediaItem;->relation_video_group:Ljava/lang/String;

    move-object/from16 p29, v2

    :goto_f5
    move-wide/from16 p15, p2

    move-wide/from16 p17, p4

    move-wide/from16 p20, p6

    move-object/from16 p23, p8

    move-object/from16 p24, p9

    move-object/from16 p25, p10

    move-wide/from16 p26, p11

    move/from16 p28, v1

    move/from16 p22, v3

    move-object/from16 p19, v4

    move/from16 p5, v5

    move-object/from16 p6, v6

    move/from16 p7, v7

    move/from16 p8, v8

    move/from16 p9, v9

    move-object/from16 p10, v10

    move/from16 p11, v11

    move/from16 p12, v12

    move/from16 p13, v13

    move/from16 p14, v14

    move-wide/from16 p3, v15

    move-object/from16 p2, p1

    move-object/from16 p1, v0

    goto :goto_127

    :cond_124
    move-object/from16 p29, p28

    goto :goto_f5

    :goto_127
    invoke-virtual/range {p1 .. p29}, Lcom/ss/android/ugc/cut_ui/MediaItem;->copy(Ljava/lang/String;JZLjava/lang/String;ZZILjava/lang/String;IIIIJJLjava/lang/String;JFLcom/ss/android/ugc/cut_ui/ItemCrop;Ljava/lang/String;Ljava/lang/String;JFLjava/lang/String;)Lcom/ss/android/ugc/cut_ui/MediaItem;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/ss/android/ugc/cut_ui/MediaItem;->materialId:Ljava/lang/String;

    return-object p0
.end method

.method public final component10()I
    .registers 1

    iget p0, p0, Lcom/ss/android/ugc/cut_ui/MediaItem;->height:I

    return p0
.end method

.method public final component11()I
    .registers 1

    iget p0, p0, Lcom/ss/android/ugc/cut_ui/MediaItem;->clipWidth:I

    return p0
.end method

.method public final component12()I
    .registers 1

    iget p0, p0, Lcom/ss/android/ugc/cut_ui/MediaItem;->clipHeight:I

    return p0
.end method

.method public final component13()J
    .registers 3

    iget-wide v0, p0, Lcom/ss/android/ugc/cut_ui/MediaItem;->duration:J

    return-wide v0
.end method

.method public final component14()J
    .registers 3

    iget-wide v0, p0, Lcom/ss/android/ugc/cut_ui/MediaItem;->oriDuration:J

    return-wide v0
.end method

.method public final component15()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/ss/android/ugc/cut_ui/MediaItem;->source:Ljava/lang/String;

    return-object p0
.end method

.method public final component16()J
    .registers 3

    iget-wide v0, p0, Lcom/ss/android/ugc/cut_ui/MediaItem;->sourceStartTime:J

    return-wide v0
.end method

.method public final component17()F
    .registers 1

    iget p0, p0, Lcom/ss/android/ugc/cut_ui/MediaItem;->cropScale:F

    return p0
.end method

.method public final component18()Lcom/ss/android/ugc/cut_ui/ItemCrop;
    .registers 1

    iget-object p0, p0, Lcom/ss/android/ugc/cut_ui/MediaItem;->crop:Lcom/ss/android/ugc/cut_ui/ItemCrop;

    return-object p0
.end method

.method public final component19()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/ss/android/ugc/cut_ui/MediaItem;->type:Ljava/lang/String;

    return-object p0
.end method

.method public final component2()J
    .registers 3

    iget-wide v0, p0, Lcom/ss/android/ugc/cut_ui/MediaItem;->targetStartTime:J

    return-wide v0
.end method

.method public final component20()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/ss/android/ugc/cut_ui/MediaItem;->mediaSrcPath:Ljava/lang/String;

    return-object p0
.end method

.method public final component21()J
    .registers 3

    iget-wide v0, p0, Lcom/ss/android/ugc/cut_ui/MediaItem;->targetEndTime:J

    return-wide v0
.end method

.method public final component22()F
    .registers 1

    iget p0, p0, Lcom/ss/android/ugc/cut_ui/MediaItem;->volume:F

    return p0
.end method

.method public final component23()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/ss/android/ugc/cut_ui/MediaItem;->relation_video_group:Ljava/lang/String;

    return-object p0
.end method

.method public final component3()Z
    .registers 1

    iget-boolean p0, p0, Lcom/ss/android/ugc/cut_ui/MediaItem;->isMutable:Z

    return p0
.end method

.method public final component4()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/ss/android/ugc/cut_ui/MediaItem;->alignMode:Ljava/lang/String;

    return-object p0
.end method

.method public final component5()Z
    .registers 1

    iget-boolean p0, p0, Lcom/ss/android/ugc/cut_ui/MediaItem;->isSubVideo:Z

    return p0
.end method

.method public final component6()Z
    .registers 1

    iget-boolean p0, p0, Lcom/ss/android/ugc/cut_ui/MediaItem;->isReverse:Z

    return p0
.end method

.method public final component7()I
    .registers 1

    iget p0, p0, Lcom/ss/android/ugc/cut_ui/MediaItem;->cartoonType:I

    return p0
.end method

.method public final component8()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/ss/android/ugc/cut_ui/MediaItem;->gamePlayAlgorithm:Ljava/lang/String;

    return-object p0
.end method

.method public final component9()I
    .registers 1

    iget p0, p0, Lcom/ss/android/ugc/cut_ui/MediaItem;->width:I

    return p0
.end method

.method public final copy(Ljava/lang/String;JZLjava/lang/String;ZZILjava/lang/String;IIIIJJLjava/lang/String;JFLcom/ss/android/ugc/cut_ui/ItemCrop;Ljava/lang/String;Ljava/lang/String;JFLjava/lang/String;)Lcom/ss/android/ugc/cut_ui/MediaItem;
    .registers 59

    const-string v0, "materialId"

    move-object/from16 v2, p1

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "alignMode"

    move-object/from16 v6, p5

    invoke-static {v6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "gamePlayAlgorithm"

    move-object/from16 v10, p9

    invoke-static {v10, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "source"

    move-object/from16 v1, p18

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "crop"

    move-object/from16 v3, p22

    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "type"

    move-object/from16 v4, p23

    invoke-static {v4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "mediaSrcPath"

    move-object/from16 v5, p24

    invoke-static {v5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "relation_video_group"

    move-object/from16 v7, p28

    invoke-static {v7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Lcom/ss/android/ugc/cut_ui/MediaItem;

    move/from16 v8, p7

    move/from16 v9, p8

    move/from16 v11, p10

    move/from16 v12, p11

    move/from16 v13, p12

    move/from16 v14, p13

    move-wide/from16 v15, p14

    move-wide/from16 v17, p16

    move-object/from16 v19, p18

    move-wide/from16 v20, p19

    move/from16 v22, p21

    move-wide/from16 v26, p25

    move/from16 v28, p27

    move-object/from16 v23, v3

    move-object/from16 v24, v4

    move-object/from16 v25, v5

    move-object/from16 v29, v7

    move-wide/from16 v3, p2

    move/from16 v5, p4

    move/from16 v7, p6

    invoke-direct/range {v1 .. v29}, Lcom/ss/android/ugc/cut_ui/MediaItem;-><init>(Ljava/lang/String;JZLjava/lang/String;ZZILjava/lang/String;IIIIJJLjava/lang/String;JFLcom/ss/android/ugc/cut_ui/ItemCrop;Ljava/lang/String;Ljava/lang/String;JFLjava/lang/String;)V

    return-object v1
.end method

.method public describeContents()I
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 9

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Lcom/ss/android/ugc/cut_ui/MediaItem;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    check-cast p1, Lcom/ss/android/ugc/cut_ui/MediaItem;

    iget-object v1, p0, Lcom/ss/android/ugc/cut_ui/MediaItem;->materialId:Ljava/lang/String;

    iget-object v3, p1, Lcom/ss/android/ugc/cut_ui/MediaItem;->materialId:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_17

    return v2

    :cond_17
    iget-wide v3, p0, Lcom/ss/android/ugc/cut_ui/MediaItem;->targetStartTime:J

    iget-wide v5, p1, Lcom/ss/android/ugc/cut_ui/MediaItem;->targetStartTime:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_20

    return v2

    :cond_20
    iget-boolean v1, p0, Lcom/ss/android/ugc/cut_ui/MediaItem;->isMutable:Z

    iget-boolean v3, p1, Lcom/ss/android/ugc/cut_ui/MediaItem;->isMutable:Z

    if-eq v1, v3, :cond_27

    return v2

    :cond_27
    iget-object v1, p0, Lcom/ss/android/ugc/cut_ui/MediaItem;->alignMode:Ljava/lang/String;

    iget-object v3, p1, Lcom/ss/android/ugc/cut_ui/MediaItem;->alignMode:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_32

    return v2

    :cond_32
    iget-boolean v1, p0, Lcom/ss/android/ugc/cut_ui/MediaItem;->isSubVideo:Z

    iget-boolean v3, p1, Lcom/ss/android/ugc/cut_ui/MediaItem;->isSubVideo:Z

    if-eq v1, v3, :cond_39

    return v2

    :cond_39
    iget-boolean v1, p0, Lcom/ss/android/ugc/cut_ui/MediaItem;->isReverse:Z

    iget-boolean v3, p1, Lcom/ss/android/ugc/cut_ui/MediaItem;->isReverse:Z

    if-eq v1, v3, :cond_40

    return v2

    :cond_40
    iget v1, p0, Lcom/ss/android/ugc/cut_ui/MediaItem;->cartoonType:I

    iget v3, p1, Lcom/ss/android/ugc/cut_ui/MediaItem;->cartoonType:I

    if-eq v1, v3, :cond_47

    return v2

    :cond_47
    iget-object v1, p0, Lcom/ss/android/ugc/cut_ui/MediaItem;->gamePlayAlgorithm:Ljava/lang/String;

    iget-object v3, p1, Lcom/ss/android/ugc/cut_ui/MediaItem;->gamePlayAlgorithm:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_52

    return v2

    :cond_52
    iget v1, p0, Lcom/ss/android/ugc/cut_ui/MediaItem;->width:I

    iget v3, p1, Lcom/ss/android/ugc/cut_ui/MediaItem;->width:I

    if-eq v1, v3, :cond_59

    return v2

    :cond_59
    iget v1, p0, Lcom/ss/android/ugc/cut_ui/MediaItem;->height:I

    iget v3, p1, Lcom/ss/android/ugc/cut_ui/MediaItem;->height:I

    if-eq v1, v3, :cond_60

    return v2

    :cond_60
    iget v1, p0, Lcom/ss/android/ugc/cut_ui/MediaItem;->clipWidth:I

    iget v3, p1, Lcom/ss/android/ugc/cut_ui/MediaItem;->clipWidth:I

    if-eq v1, v3, :cond_67

    return v2

    :cond_67
    iget v1, p0, Lcom/ss/android/ugc/cut_ui/MediaItem;->clipHeight:I

    iget v3, p1, Lcom/ss/android/ugc/cut_ui/MediaItem;->clipHeight:I

    if-eq v1, v3, :cond_6e

    return v2

    :cond_6e
    iget-wide v3, p0, Lcom/ss/android/ugc/cut_ui/MediaItem;->duration:J

    iget-wide v5, p1, Lcom/ss/android/ugc/cut_ui/MediaItem;->duration:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_77

    return v2

    :cond_77
    iget-wide v3, p0, Lcom/ss/android/ugc/cut_ui/MediaItem;->oriDuration:J

    iget-wide v5, p1, Lcom/ss/android/ugc/cut_ui/MediaItem;->oriDuration:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_80

    return v2

    :cond_80
    iget-object v1, p0, Lcom/ss/android/ugc/cut_ui/MediaItem;->source:Ljava/lang/String;

    iget-object v3, p1, Lcom/ss/android/ugc/cut_ui/MediaItem;->source:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8b

    return v2

    :cond_8b
    iget-wide v3, p0, Lcom/ss/android/ugc/cut_ui/MediaItem;->sourceStartTime:J

    iget-wide v5, p1, Lcom/ss/android/ugc/cut_ui/MediaItem;->sourceStartTime:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_94

    return v2

    :cond_94
    iget v1, p0, Lcom/ss/android/ugc/cut_ui/MediaItem;->cropScale:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    iget v3, p1, Lcom/ss/android/ugc/cut_ui/MediaItem;->cropScale:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a7

    return v2

    :cond_a7
    iget-object v1, p0, Lcom/ss/android/ugc/cut_ui/MediaItem;->crop:Lcom/ss/android/ugc/cut_ui/ItemCrop;

    iget-object v3, p1, Lcom/ss/android/ugc/cut_ui/MediaItem;->crop:Lcom/ss/android/ugc/cut_ui/ItemCrop;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b2

    return v2

    :cond_b2
    iget-object v1, p0, Lcom/ss/android/ugc/cut_ui/MediaItem;->type:Ljava/lang/String;

    iget-object v3, p1, Lcom/ss/android/ugc/cut_ui/MediaItem;->type:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_bd

    return v2

    :cond_bd
    iget-object v1, p0, Lcom/ss/android/ugc/cut_ui/MediaItem;->mediaSrcPath:Ljava/lang/String;

    iget-object v3, p1, Lcom/ss/android/ugc/cut_ui/MediaItem;->mediaSrcPath:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c8

    return v2

    :cond_c8
    iget-wide v3, p0, Lcom/ss/android/ugc/cut_ui/MediaItem;->targetEndTime:J

    iget-wide v5, p1, Lcom/ss/android/ugc/cut_ui/MediaItem;->targetEndTime:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_d1

    return v2

    :cond_d1
    iget v1, p0, Lcom/ss/android/ugc/cut_ui/MediaItem;->volume:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    iget v3, p1, Lcom/ss/android/ugc/cut_ui/MediaItem;->volume:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_e4

    return v2

    :cond_e4
    iget-object p0, p0, Lcom/ss/android/ugc/cut_ui/MediaItem;->relation_video_group:Ljava/lang/String;

    iget-object p1, p1, Lcom/ss/android/ugc/cut_ui/MediaItem;->relation_video_group:Ljava/lang/String;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_ef

    return v2

    :cond_ef
    return v0
.end method

.method public final getAlignMode()Ljava/lang/String;
    .registers 1

    .line 24
    iget-object p0, p0, Lcom/ss/android/ugc/cut_ui/MediaItem;->alignMode:Ljava/lang/String;

    return-object p0
.end method

.method public final getCartoonType()I
    .registers 1

    .line 30
    iget p0, p0, Lcom/ss/android/ugc/cut_ui/MediaItem;->cartoonType:I

    return p0
.end method

.method public final getClipHeight()I
    .registers 1

    .line 41
    iget p0, p0, Lcom/ss/android/ugc/cut_ui/MediaItem;->clipHeight:I

    return p0
.end method

.method public final getClipWidth()I
    .registers 1

    .line 39
    iget p0, p0, Lcom/ss/android/ugc/cut_ui/MediaItem;->clipWidth:I

    return p0
.end method

.method public final getCrop()Lcom/ss/android/ugc/cut_ui/ItemCrop;
    .registers 1

    .line 53
    iget-object p0, p0, Lcom/ss/android/ugc/cut_ui/MediaItem;->crop:Lcom/ss/android/ugc/cut_ui/ItemCrop;

    return-object p0
.end method

.method public final getCropScale()F
    .registers 1

    .line 52
    iget p0, p0, Lcom/ss/android/ugc/cut_ui/MediaItem;->cropScale:F

    return p0
.end method

.method public final getDuration()J
    .registers 3

    .line 43
    iget-wide v0, p0, Lcom/ss/android/ugc/cut_ui/MediaItem;->duration:J

    return-wide v0
.end method

.method public final getGamePlayAlgorithm()Ljava/lang/String;
    .registers 1

    .line 32
    iget-object p0, p0, Lcom/ss/android/ugc/cut_ui/MediaItem;->gamePlayAlgorithm:Ljava/lang/String;

    return-object p0
.end method

.method public final getGroup()I
    .registers 3

    .line 102
    iget-object v0, p0, Lcom/ss/android/ugc/cut_ui/MediaItem;->relation_video_group:Ljava/lang/String;

    const-string v1, ""

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 p0, 0x0

    return p0

    .line 104
    :cond_c
    iget-object p0, p0, Lcom/ss/android/ugc/cut_ui/MediaItem;->relation_video_group:Ljava/lang/String;

    if-eqz p0, :cond_20

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    const-string v1, "(this as java.lang.String).substring(startIndex)"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 105
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    add-int/2addr p0, v0

    return p0

    .line 104
    :cond_20
    new-instance p0, Ljava/lang/NullPointerException;

    const-string v0, "null cannot be cast to non-null type java.lang.String"

    invoke-direct {p0, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final getHeight()I
    .registers 1

    .line 37
    iget p0, p0, Lcom/ss/android/ugc/cut_ui/MediaItem;->height:I

    return p0
.end method

.method public final getMaterialId()Ljava/lang/String;
    .registers 1

    .line 18
    iget-object p0, p0, Lcom/ss/android/ugc/cut_ui/MediaItem;->materialId:Ljava/lang/String;

    return-object p0
.end method

.method public final getMediaSrcPath()Ljava/lang/String;
    .registers 1

    .line 62
    iget-object p0, p0, Lcom/ss/android/ugc/cut_ui/MediaItem;->mediaSrcPath:Ljava/lang/String;

    return-object p0
.end method

.method public final getOriDuration()J
    .registers 3

    .line 45
    iget-wide v0, p0, Lcom/ss/android/ugc/cut_ui/MediaItem;->oriDuration:J

    return-wide v0
.end method

.method public final getRelation_video_group()Ljava/lang/String;
    .registers 1

    .line 71
    iget-object p0, p0, Lcom/ss/android/ugc/cut_ui/MediaItem;->relation_video_group:Ljava/lang/String;

    return-object p0
.end method

.method public final getSource()Ljava/lang/String;
    .registers 1

    .line 48
    iget-object p0, p0, Lcom/ss/android/ugc/cut_ui/MediaItem;->source:Ljava/lang/String;

    return-object p0
.end method

.method public final getSourceStartTime()J
    .registers 3

    .line 50
    iget-wide v0, p0, Lcom/ss/android/ugc/cut_ui/MediaItem;->sourceStartTime:J

    return-wide v0
.end method

.method public final getTargetEndTime()J
    .registers 3

    .line 65
    iget-wide v0, p0, Lcom/ss/android/ugc/cut_ui/MediaItem;->targetEndTime:J

    return-wide v0
.end method

.method public final getTargetStartTime()J
    .registers 3

    .line 20
    iget-wide v0, p0, Lcom/ss/android/ugc/cut_ui/MediaItem;->targetStartTime:J

    return-wide v0
.end method

.method public final getType()Ljava/lang/String;
    .registers 1

    .line 59
    iget-object p0, p0, Lcom/ss/android/ugc/cut_ui/MediaItem;->type:Ljava/lang/String;

    return-object p0
.end method

.method public final getUri()Landroid/net/Uri;
    .registers 2

    .line 90
    iget-object v0, p0, Lcom/ss/android/ugc/cut_ui/MediaItem;->mediaSrcPath:Ljava/lang/String;

    invoke-static {v0}, Landroid/webkit/URLUtil;->isValidUrl(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 91
    iget-object p0, p0, Lcom/ss/android/ugc/cut_ui/MediaItem;->mediaSrcPath:Ljava/lang/String;

    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    const-string v0, "parse(mediaSrcPath)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0

    .line 93
    :cond_14
    new-instance v0, Ljava/io/File;

    iget-object p0, p0, Lcom/ss/android/ugc/cut_ui/MediaItem;->mediaSrcPath:Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 94
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p0

    if-eqz p0, :cond_31

    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result p0

    if-eqz p0, :cond_31

    .line 95
    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object p0

    const-string v0, "fromFile(file)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0

    .line 98
    :cond_31
    sget-object p0, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    const-string v0, "EMPTY"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final getVolume()F
    .registers 1

    .line 68
    iget p0, p0, Lcom/ss/android/ugc/cut_ui/MediaItem;->volume:F

    return p0
.end method

.method public final getWidth()I
    .registers 1

    .line 35
    iget p0, p0, Lcom/ss/android/ugc/cut_ui/MediaItem;->width:I

    return p0
.end method

.method public hashCode()I
    .registers 4

    iget-object v0, p0, Lcom/ss/android/ugc/cut_ui/MediaItem;->materialId:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Lcom/ss/android/ugc/cut_ui/MediaItem;->targetStartTime:J

    invoke-static {v1, v2}, Ljava/lang/Long;->hashCode(J)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/ss/android/ugc/cut_ui/MediaItem;->isMutable:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_17

    move v1, v2

    :cond_17
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/ss/android/ugc/cut_ui/MediaItem;->alignMode:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/ss/android/ugc/cut_ui/MediaItem;->isSubVideo:Z

    if-eqz v1, :cond_28

    move v1, v2

    :cond_28
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/ss/android/ugc/cut_ui/MediaItem;->isReverse:Z

    if-eqz v1, :cond_30

    goto :goto_31

    :cond_30
    move v2, v1

    :goto_31
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/ss/android/ugc/cut_ui/MediaItem;->cartoonType:I

    invoke-static {v1}, Ljava/lang/Integer;->hashCode(I)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/ss/android/ugc/cut_ui/MediaItem;->gamePlayAlgorithm:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/ss/android/ugc/cut_ui/MediaItem;->width:I

    invoke-static {v1}, Ljava/lang/Integer;->hashCode(I)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/ss/android/ugc/cut_ui/MediaItem;->height:I

    invoke-static {v1}, Ljava/lang/Integer;->hashCode(I)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/ss/android/ugc/cut_ui/MediaItem;->clipWidth:I

    invoke-static {v1}, Ljava/lang/Integer;->hashCode(I)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/ss/android/ugc/cut_ui/MediaItem;->clipHeight:I

    invoke-static {v1}, Ljava/lang/Integer;->hashCode(I)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Lcom/ss/android/ugc/cut_ui/MediaItem;->duration:J

    invoke-static {v1, v2}, Ljava/lang/Long;->hashCode(J)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Lcom/ss/android/ugc/cut_ui/MediaItem;->oriDuration:J

    invoke-static {v1, v2}, Ljava/lang/Long;->hashCode(J)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/ss/android/ugc/cut_ui/MediaItem;->source:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Lcom/ss/android/ugc/cut_ui/MediaItem;->sourceStartTime:J

    invoke-static {v1, v2}, Ljava/lang/Long;->hashCode(J)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/ss/android/ugc/cut_ui/MediaItem;->cropScale:F

    invoke-static {v1}, Ljava/lang/Float;->hashCode(F)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/ss/android/ugc/cut_ui/MediaItem;->crop:Lcom/ss/android/ugc/cut_ui/ItemCrop;

    invoke-virtual {v1}, Lcom/ss/android/ugc/cut_ui/ItemCrop;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/ss/android/ugc/cut_ui/MediaItem;->type:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/ss/android/ugc/cut_ui/MediaItem;->mediaSrcPath:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Lcom/ss/android/ugc/cut_ui/MediaItem;->targetEndTime:J

    invoke-static {v1, v2}, Ljava/lang/Long;->hashCode(J)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/ss/android/ugc/cut_ui/MediaItem;->volume:F

    invoke-static {v1}, Ljava/lang/Float;->hashCode(F)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object p0, p0, Lcom/ss/android/ugc/cut_ui/MediaItem;->relation_video_group:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

.method public final isAlignCanvas()Z
    .registers 2

    .line 112
    iget-object p0, p0, Lcom/ss/android/ugc/cut_ui/MediaItem;->alignMode:Ljava/lang/String;

    const-string v0, "align_canvas"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public final isAlignVideo()Z
    .registers 2

    .line 111
    iget-object p0, p0, Lcom/ss/android/ugc/cut_ui/MediaItem;->alignMode:Ljava/lang/String;

    const-string v0, "align_video"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public final isImage()Z
    .registers 2

    .line 108
    iget-object p0, p0, Lcom/ss/android/ugc/cut_ui/MediaItem;->type:Ljava/lang/String;

    const-string v0, "photo"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public final isMutable()Z
    .registers 1

    .line 22
    iget-boolean p0, p0, Lcom/ss/android/ugc/cut_ui/MediaItem;->isMutable:Z

    return p0
.end method

.method public final isReverse()Z
    .registers 1

    .line 28
    iget-boolean p0, p0, Lcom/ss/android/ugc/cut_ui/MediaItem;->isReverse:Z

    return p0
.end method

.method public final isSubVideo()Z
    .registers 1

    .line 26
    iget-boolean p0, p0, Lcom/ss/android/ugc/cut_ui/MediaItem;->isSubVideo:Z

    return p0
.end method

.method public final isVideo()Z
    .registers 2

    .line 109
    iget-object p0, p0, Lcom/ss/android/ugc/cut_ui/MediaItem;->type:Ljava/lang/String;

    const-string v0, "video"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public final setAlignMode(Ljava/lang/String;)V
    .registers 3

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    iput-object p1, p0, Lcom/ss/android/ugc/cut_ui/MediaItem;->alignMode:Ljava/lang/String;

    return-void
.end method

.method public final setCartoonType(I)V
    .registers 2

    .line 30
    iput p1, p0, Lcom/ss/android/ugc/cut_ui/MediaItem;->cartoonType:I

    return-void
.end method

.method public final setClipHeight(I)V
    .registers 2

    .line 41
    iput p1, p0, Lcom/ss/android/ugc/cut_ui/MediaItem;->clipHeight:I

    return-void
.end method

.method public final setClipWidth(I)V
    .registers 2

    .line 39
    iput p1, p0, Lcom/ss/android/ugc/cut_ui/MediaItem;->clipWidth:I

    return-void
.end method

.method public final setCrop(Lcom/ss/android/ugc/cut_ui/ItemCrop;)V
    .registers 3

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 53
    iput-object p1, p0, Lcom/ss/android/ugc/cut_ui/MediaItem;->crop:Lcom/ss/android/ugc/cut_ui/ItemCrop;

    return-void
.end method

.method public final setCropScale(F)V
    .registers 2

    .line 52
    iput p1, p0, Lcom/ss/android/ugc/cut_ui/MediaItem;->cropScale:F

    return-void
.end method

.method public final setDuration(J)V
    .registers 3

    .line 43
    iput-wide p1, p0, Lcom/ss/android/ugc/cut_ui/MediaItem;->duration:J

    return-void
.end method

.method public final setHeight(I)V
    .registers 2

    .line 37
    iput p1, p0, Lcom/ss/android/ugc/cut_ui/MediaItem;->height:I

    return-void
.end method

.method public final setMaterialId(Ljava/lang/String;)V
    .registers 3

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    iput-object p1, p0, Lcom/ss/android/ugc/cut_ui/MediaItem;->materialId:Ljava/lang/String;

    return-void
.end method

.method public final setMediaSrcPath(Ljava/lang/String;)V
    .registers 3

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 62
    iput-object p1, p0, Lcom/ss/android/ugc/cut_ui/MediaItem;->mediaSrcPath:Ljava/lang/String;

    return-void
.end method

.method public final setMutable(Z)V
    .registers 2

    .line 22
    iput-boolean p1, p0, Lcom/ss/android/ugc/cut_ui/MediaItem;->isMutable:Z

    return-void
.end method

.method public final setOriDuration(J)V
    .registers 3

    .line 45
    iput-wide p1, p0, Lcom/ss/android/ugc/cut_ui/MediaItem;->oriDuration:J

    return-void
.end method

.method public final setReverse(Z)V
    .registers 2

    .line 28
    iput-boolean p1, p0, Lcom/ss/android/ugc/cut_ui/MediaItem;->isReverse:Z

    return-void
.end method

.method public final setSource(Ljava/lang/String;)V
    .registers 3

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 48
    iput-object p1, p0, Lcom/ss/android/ugc/cut_ui/MediaItem;->source:Ljava/lang/String;

    return-void
.end method

.method public final setSourceStartTime(J)V
    .registers 3

    .line 50
    iput-wide p1, p0, Lcom/ss/android/ugc/cut_ui/MediaItem;->sourceStartTime:J

    return-void
.end method

.method public final setSubVideo(Z)V
    .registers 2

    .line 26
    iput-boolean p1, p0, Lcom/ss/android/ugc/cut_ui/MediaItem;->isSubVideo:Z

    return-void
.end method

.method public final setTargetStartTime(J)V
    .registers 3

    .line 20
    iput-wide p1, p0, Lcom/ss/android/ugc/cut_ui/MediaItem;->targetStartTime:J

    return-void
.end method

.method public final setType(Ljava/lang/String;)V
    .registers 3

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 59
    iput-object p1, p0, Lcom/ss/android/ugc/cut_ui/MediaItem;->type:Ljava/lang/String;

    return-void
.end method

.method public final setVolume(F)V
    .registers 2

    .line 68
    iput p1, p0, Lcom/ss/android/ugc/cut_ui/MediaItem;->volume:F

    return-void
.end method

.method public final setWidth(I)V
    .registers 2

    .line 35
    iput p1, p0, Lcom/ss/android/ugc/cut_ui/MediaItem;->width:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 115
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{\"materialId\":\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    iget-object v1, p0, Lcom/ss/android/ugc/cut_ui/MediaItem;->materialId:Ljava/lang/String;

    .line 115
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    const-string v1, "\",\"width\":\""

    .line 115
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 117
    iget v1, p0, Lcom/ss/android/ugc/cut_ui/MediaItem;->width:I

    .line 115
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 117
    const-string v1, "\",\"height\":\""

    .line 115
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 118
    iget v1, p0, Lcom/ss/android/ugc/cut_ui/MediaItem;->height:I

    .line 115
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 118
    const-string v1, "\",\"clipWidth\":\""

    .line 115
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 119
    iget v1, p0, Lcom/ss/android/ugc/cut_ui/MediaItem;->clipWidth:I

    .line 115
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 119
    const-string v1, "\",\"clipHeight\":\""

    .line 115
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 120
    iget v1, p0, Lcom/ss/android/ugc/cut_ui/MediaItem;->clipHeight:I

    .line 115
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 120
    const-string v1, "\",\"targetStartTime\":\""

    .line 115
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 121
    iget-wide v1, p0, Lcom/ss/android/ugc/cut_ui/MediaItem;->targetStartTime:J

    .line 115
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 121
    const-string v1, "\",\"targetEndTime\":\""

    .line 115
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 122
    iget-wide v1, p0, Lcom/ss/android/ugc/cut_ui/MediaItem;->targetEndTime:J

    .line 115
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 122
    const-string v1, "\",\"isMutable\":\""

    .line 115
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 123
    iget-boolean v1, p0, Lcom/ss/android/ugc/cut_ui/MediaItem;->isMutable:Z

    .line 115
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 123
    const-string v1, "\",\"alignMode\":\""

    .line 115
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 124
    iget-object v1, p0, Lcom/ss/android/ugc/cut_ui/MediaItem;->alignMode:Ljava/lang/String;

    .line 115
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 124
    const-string v1, "\",\"isReverse\":\""

    .line 115
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 125
    iget-boolean v1, p0, Lcom/ss/android/ugc/cut_ui/MediaItem;->isReverse:Z

    .line 115
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 125
    const-string v1, "\",\"gamePlayAlgorithm\":\""

    .line 115
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 126
    iget-object v1, p0, Lcom/ss/android/ugc/cut_ui/MediaItem;->gamePlayAlgorithm:Ljava/lang/String;

    .line 115
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 126
    const-string v1, "\",\"crop\":\""

    .line 115
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 127
    iget-object v1, p0, Lcom/ss/android/ugc/cut_ui/MediaItem;->crop:Lcom/ss/android/ugc/cut_ui/ItemCrop;

    .line 115
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 127
    const-string v1, "\",\"cropScale\":\""

    .line 115
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 128
    iget v1, p0, Lcom/ss/android/ugc/cut_ui/MediaItem;->cropScale:F

    .line 115
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 128
    const-string v1, "\",\"source\":\""

    .line 115
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 129
    iget-object v1, p0, Lcom/ss/android/ugc/cut_ui/MediaItem;->source:Ljava/lang/String;

    .line 115
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 129
    const-string v1, "\",\"relation_video_group\":\""

    .line 115
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 130
    iget-object v1, p0, Lcom/ss/android/ugc/cut_ui/MediaItem;->relation_video_group:Ljava/lang/String;

    .line 115
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 130
    const-string v1, "\",\"mediaSrcPath\":\""

    .line 115
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 131
    iget-object v1, p0, Lcom/ss/android/ugc/cut_ui/MediaItem;->mediaSrcPath:Ljava/lang/String;

    .line 115
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 131
    const-string v1, "\",\"sourceStartTime\":\""

    .line 115
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 132
    iget-wide v1, p0, Lcom/ss/android/ugc/cut_ui/MediaItem;->sourceStartTime:J

    .line 115
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 132
    const-string p0, "\"}"

    .line 115
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 5

    const-string v0, "out"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ss/android/ugc/cut_ui/MediaItem;->materialId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/ss/android/ugc/cut_ui/MediaItem;->targetStartTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-boolean v0, p0, Lcom/ss/android/ugc/cut_ui/MediaItem;->isMutable:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/ss/android/ugc/cut_ui/MediaItem;->alignMode:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/ss/android/ugc/cut_ui/MediaItem;->isSubVideo:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v0, p0, Lcom/ss/android/ugc/cut_ui/MediaItem;->isReverse:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/ss/android/ugc/cut_ui/MediaItem;->cartoonType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/ss/android/ugc/cut_ui/MediaItem;->gamePlayAlgorithm:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget v0, p0, Lcom/ss/android/ugc/cut_ui/MediaItem;->width:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/ss/android/ugc/cut_ui/MediaItem;->height:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/ss/android/ugc/cut_ui/MediaItem;->clipWidth:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/ss/android/ugc/cut_ui/MediaItem;->clipHeight:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-wide v0, p0, Lcom/ss/android/ugc/cut_ui/MediaItem;->duration:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v0, p0, Lcom/ss/android/ugc/cut_ui/MediaItem;->oriDuration:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-object v0, p0, Lcom/ss/android/ugc/cut_ui/MediaItem;->source:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/ss/android/ugc/cut_ui/MediaItem;->sourceStartTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget v0, p0, Lcom/ss/android/ugc/cut_ui/MediaItem;->cropScale:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    iget-object v0, p0, Lcom/ss/android/ugc/cut_ui/MediaItem;->crop:Lcom/ss/android/ugc/cut_ui/ItemCrop;

    invoke-virtual {v0, p1, p2}, Lcom/ss/android/ugc/cut_ui/ItemCrop;->writeToParcel(Landroid/os/Parcel;I)V

    iget-object p2, p0, Lcom/ss/android/ugc/cut_ui/MediaItem;->type:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/ss/android/ugc/cut_ui/MediaItem;->mediaSrcPath:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/ss/android/ugc/cut_ui/MediaItem;->targetEndTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget p2, p0, Lcom/ss/android/ugc/cut_ui/MediaItem;->volume:F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    iget-object p0, p0, Lcom/ss/android/ugc/cut_ui/MediaItem;->relation_video_group:Ljava/lang/String;

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
