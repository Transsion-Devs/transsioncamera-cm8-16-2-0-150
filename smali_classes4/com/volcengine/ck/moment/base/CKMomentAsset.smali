.class public final Lcom/volcengine/ck/moment/base/CKMomentAsset;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation build Lkotlinx/parcelize/Parcelize;
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/volcengine/ck/moment/base/CKMomentAsset;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final duration:J

.field private final height:I

.field private final latitude:D

.field private final longitude:D

.field private final md5:Ljava/lang/String;

.field private final mediaId:J

.field private final mime:Ljava/lang/String;

.field private final orientation:I

.field private final path:Ljava/lang/String;

.field private final size:J

.field private final taken:J

.field private final type:I

.field private final width:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/volcengine/ck/moment/base/CKMomentAsset$Creator;

    invoke-direct {v0}, Lcom/volcengine/ck/moment/base/CKMomentAsset$Creator;-><init>()V

    sput-object v0, Lcom/volcengine/ck/moment/base/CKMomentAsset;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(JLjava/lang/String;JJILjava/lang/String;ILjava/lang/String;IIDDJ)V
    .registers 21

    const-string v0, "path"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "mime"

    invoke-static {p11, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    iput-wide p1, p0, Lcom/volcengine/ck/moment/base/CKMomentAsset;->mediaId:J

    .line 9
    iput-object p3, p0, Lcom/volcengine/ck/moment/base/CKMomentAsset;->path:Ljava/lang/String;

    .line 10
    iput-wide p4, p0, Lcom/volcengine/ck/moment/base/CKMomentAsset;->size:J

    .line 11
    iput-wide p6, p0, Lcom/volcengine/ck/moment/base/CKMomentAsset;->taken:J

    .line 12
    iput p8, p0, Lcom/volcengine/ck/moment/base/CKMomentAsset;->type:I

    .line 13
    iput-object p9, p0, Lcom/volcengine/ck/moment/base/CKMomentAsset;->md5:Ljava/lang/String;

    .line 14
    iput p10, p0, Lcom/volcengine/ck/moment/base/CKMomentAsset;->orientation:I

    .line 15
    iput-object p11, p0, Lcom/volcengine/ck/moment/base/CKMomentAsset;->mime:Ljava/lang/String;

    .line 16
    iput p12, p0, Lcom/volcengine/ck/moment/base/CKMomentAsset;->width:I

    .line 17
    iput p13, p0, Lcom/volcengine/ck/moment/base/CKMomentAsset;->height:I

    move-wide p1, p14

    .line 18
    iput-wide p1, p0, Lcom/volcengine/ck/moment/base/CKMomentAsset;->latitude:D

    move-wide/from16 p1, p16

    .line 19
    iput-wide p1, p0, Lcom/volcengine/ck/moment/base/CKMomentAsset;->longitude:D

    move-wide/from16 p1, p18

    .line 20
    iput-wide p1, p0, Lcom/volcengine/ck/moment/base/CKMomentAsset;->duration:J

    return-void
.end method

.method public synthetic constructor <init>(JLjava/lang/String;JJILjava/lang/String;ILjava/lang/String;IIDDJILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 46

    move/from16 v0, p20

    and-int/lit8 v1, v0, 0x4

    const-wide/16 v2, 0x0

    if-eqz v1, :cond_a

    move-wide v8, v2

    goto :goto_c

    :cond_a
    move-wide/from16 v8, p4

    :goto_c
    and-int/lit8 v1, v0, 0x8

    if-eqz v1, :cond_12

    move-wide v10, v2

    goto :goto_14

    :cond_12
    move-wide/from16 v10, p6

    :goto_14
    and-int/lit8 v1, v0, 0x10

    const/4 v4, 0x0

    if-eqz v1, :cond_1b

    move v12, v4

    goto :goto_1d

    :cond_1b
    move/from16 v12, p8

    :goto_1d
    and-int/lit8 v1, v0, 0x20

    if-eqz v1, :cond_24

    const/4 v1, 0x0

    move-object v13, v1

    goto :goto_26

    :cond_24
    move-object/from16 v13, p9

    :goto_26
    and-int/lit8 v1, v0, 0x40

    if-eqz v1, :cond_2c

    move v14, v4

    goto :goto_2e

    :cond_2c
    move/from16 v14, p10

    :goto_2e
    and-int/lit16 v1, v0, 0x80

    if-eqz v1, :cond_36

    .line 15
    const-string v1, ""

    move-object v15, v1

    goto :goto_38

    :cond_36
    move-object/from16 v15, p11

    :goto_38
    and-int/lit16 v1, v0, 0x100

    if-eqz v1, :cond_3f

    move/from16 v16, v4

    goto :goto_41

    :cond_3f
    move/from16 v16, p12

    :goto_41
    and-int/lit16 v1, v0, 0x200

    if-eqz v1, :cond_48

    move/from16 v17, v4

    goto :goto_4a

    :cond_48
    move/from16 v17, p13

    :goto_4a
    and-int/lit16 v1, v0, 0x400

    const-wide/16 v4, 0x0

    if-eqz v1, :cond_53

    move-wide/from16 v18, v4

    goto :goto_55

    :cond_53
    move-wide/from16 v18, p14

    :goto_55
    and-int/lit16 v1, v0, 0x800

    if-eqz v1, :cond_5c

    move-wide/from16 v20, v4

    goto :goto_5e

    :cond_5c
    move-wide/from16 v20, p16

    :goto_5e
    and-int/lit16 v0, v0, 0x1000

    if-eqz v0, :cond_6b

    move-wide/from16 v22, v2

    :goto_64
    move-object/from16 v4, p0

    move-wide/from16 v5, p1

    move-object/from16 v7, p3

    goto :goto_6e

    :cond_6b
    move-wide/from16 v22, p18

    goto :goto_64

    .line 7
    :goto_6e
    invoke-direct/range {v4 .. v23}, Lcom/volcengine/ck/moment/base/CKMomentAsset;-><init>(JLjava/lang/String;JJILjava/lang/String;ILjava/lang/String;IIDDJ)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/volcengine/ck/moment/base/CKMomentAsset;JLjava/lang/String;JJILjava/lang/String;ILjava/lang/String;IIDDJILjava/lang/Object;)Lcom/volcengine/ck/moment/base/CKMomentAsset;
    .registers 39

    move-object/from16 v0, p0

    move/from16 v1, p20

    and-int/lit8 v2, v1, 0x1

    if-eqz v2, :cond_b

    iget-wide v2, v0, Lcom/volcengine/ck/moment/base/CKMomentAsset;->mediaId:J

    goto :goto_d

    :cond_b
    move-wide/from16 v2, p1

    :goto_d
    and-int/lit8 v4, v1, 0x2

    if-eqz v4, :cond_14

    iget-object v4, v0, Lcom/volcengine/ck/moment/base/CKMomentAsset;->path:Ljava/lang/String;

    goto :goto_16

    :cond_14
    move-object/from16 v4, p3

    :goto_16
    and-int/lit8 v5, v1, 0x4

    if-eqz v5, :cond_1d

    iget-wide v5, v0, Lcom/volcengine/ck/moment/base/CKMomentAsset;->size:J

    goto :goto_1f

    :cond_1d
    move-wide/from16 v5, p4

    :goto_1f
    and-int/lit8 v7, v1, 0x8

    if-eqz v7, :cond_26

    iget-wide v7, v0, Lcom/volcengine/ck/moment/base/CKMomentAsset;->taken:J

    goto :goto_28

    :cond_26
    move-wide/from16 v7, p6

    :goto_28
    and-int/lit8 v9, v1, 0x10

    if-eqz v9, :cond_2f

    iget v9, v0, Lcom/volcengine/ck/moment/base/CKMomentAsset;->type:I

    goto :goto_31

    :cond_2f
    move/from16 v9, p8

    :goto_31
    and-int/lit8 v10, v1, 0x20

    if-eqz v10, :cond_38

    iget-object v10, v0, Lcom/volcengine/ck/moment/base/CKMomentAsset;->md5:Ljava/lang/String;

    goto :goto_3a

    :cond_38
    move-object/from16 v10, p9

    :goto_3a
    and-int/lit8 v11, v1, 0x40

    if-eqz v11, :cond_41

    iget v11, v0, Lcom/volcengine/ck/moment/base/CKMomentAsset;->orientation:I

    goto :goto_43

    :cond_41
    move/from16 v11, p10

    :goto_43
    and-int/lit16 v12, v1, 0x80

    if-eqz v12, :cond_4a

    iget-object v12, v0, Lcom/volcengine/ck/moment/base/CKMomentAsset;->mime:Ljava/lang/String;

    goto :goto_4c

    :cond_4a
    move-object/from16 v12, p11

    :goto_4c
    and-int/lit16 v13, v1, 0x100

    if-eqz v13, :cond_53

    iget v13, v0, Lcom/volcengine/ck/moment/base/CKMomentAsset;->width:I

    goto :goto_55

    :cond_53
    move/from16 v13, p12

    :goto_55
    and-int/lit16 v14, v1, 0x200

    if-eqz v14, :cond_5c

    iget v14, v0, Lcom/volcengine/ck/moment/base/CKMomentAsset;->height:I

    goto :goto_5e

    :cond_5c
    move/from16 v14, p13

    :goto_5e
    and-int/lit16 v15, v1, 0x400

    if-eqz v15, :cond_66

    move-wide v15, v2

    iget-wide v2, v0, Lcom/volcengine/ck/moment/base/CKMomentAsset;->latitude:D

    goto :goto_69

    :cond_66
    move-wide v15, v2

    move-wide/from16 v2, p14

    :goto_69
    move-wide/from16 p1, v2

    and-int/lit16 v2, v1, 0x800

    if-eqz v2, :cond_72

    iget-wide v2, v0, Lcom/volcengine/ck/moment/base/CKMomentAsset;->longitude:D

    goto :goto_74

    :cond_72
    move-wide/from16 v2, p16

    :goto_74
    and-int/lit16 v1, v1, 0x1000

    if-eqz v1, :cond_99

    move-wide/from16 p3, v2

    iget-wide v1, v0, Lcom/volcengine/ck/moment/base/CKMomentAsset;->duration:J

    move-wide/from16 p17, p3

    move-wide/from16 p19, v1

    :goto_80
    move-wide/from16 p15, p1

    move-object/from16 p1, v0

    move-object/from16 p4, v4

    move-wide/from16 p5, v5

    move-wide/from16 p7, v7

    move/from16 p9, v9

    move-object/from16 p10, v10

    move/from16 p11, v11

    move-object/from16 p12, v12

    move/from16 p13, v13

    move/from16 p14, v14

    move-wide/from16 p2, v15

    goto :goto_9e

    :cond_99
    move-wide/from16 p19, p18

    move-wide/from16 p17, v2

    goto :goto_80

    :goto_9e
    invoke-virtual/range {p1 .. p20}, Lcom/volcengine/ck/moment/base/CKMomentAsset;->copy(JLjava/lang/String;JJILjava/lang/String;ILjava/lang/String;IIDDJ)Lcom/volcengine/ck/moment/base/CKMomentAsset;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final component1()J
    .registers 3

    iget-wide v0, p0, Lcom/volcengine/ck/moment/base/CKMomentAsset;->mediaId:J

    return-wide v0
.end method

.method public final component10()I
    .registers 1

    iget p0, p0, Lcom/volcengine/ck/moment/base/CKMomentAsset;->height:I

    return p0
.end method

.method public final component11()D
    .registers 3

    iget-wide v0, p0, Lcom/volcengine/ck/moment/base/CKMomentAsset;->latitude:D

    return-wide v0
.end method

.method public final component12()D
    .registers 3

    iget-wide v0, p0, Lcom/volcengine/ck/moment/base/CKMomentAsset;->longitude:D

    return-wide v0
.end method

.method public final component13()J
    .registers 3

    iget-wide v0, p0, Lcom/volcengine/ck/moment/base/CKMomentAsset;->duration:J

    return-wide v0
.end method

.method public final component2()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/volcengine/ck/moment/base/CKMomentAsset;->path:Ljava/lang/String;

    return-object p0
.end method

.method public final component3()J
    .registers 3

    iget-wide v0, p0, Lcom/volcengine/ck/moment/base/CKMomentAsset;->size:J

    return-wide v0
.end method

.method public final component4()J
    .registers 3

    iget-wide v0, p0, Lcom/volcengine/ck/moment/base/CKMomentAsset;->taken:J

    return-wide v0
.end method

.method public final component5()I
    .registers 1

    iget p0, p0, Lcom/volcengine/ck/moment/base/CKMomentAsset;->type:I

    return p0
.end method

.method public final component6()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/volcengine/ck/moment/base/CKMomentAsset;->md5:Ljava/lang/String;

    return-object p0
.end method

.method public final component7()I
    .registers 1

    iget p0, p0, Lcom/volcengine/ck/moment/base/CKMomentAsset;->orientation:I

    return p0
.end method

.method public final component8()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/volcengine/ck/moment/base/CKMomentAsset;->mime:Ljava/lang/String;

    return-object p0
.end method

.method public final component9()I
    .registers 1

    iget p0, p0, Lcom/volcengine/ck/moment/base/CKMomentAsset;->width:I

    return p0
.end method

.method public final copy(JLjava/lang/String;JJILjava/lang/String;ILjava/lang/String;IIDDJ)Lcom/volcengine/ck/moment/base/CKMomentAsset;
    .registers 41

    const-string v0, "path"

    move-object/from16 v4, p3

    invoke-static {v4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "mime"

    move-object/from16 v12, p11

    invoke-static {v12, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Lcom/volcengine/ck/moment/base/CKMomentAsset;

    move-wide/from16 v2, p1

    move-wide/from16 v5, p4

    move-wide/from16 v7, p6

    move/from16 v9, p8

    move-object/from16 v10, p9

    move/from16 v11, p10

    move/from16 v13, p12

    move/from16 v14, p13

    move-wide/from16 v15, p14

    move-wide/from16 v17, p16

    move-wide/from16 v19, p18

    invoke-direct/range {v1 .. v20}, Lcom/volcengine/ck/moment/base/CKMomentAsset;-><init>(JLjava/lang/String;JJILjava/lang/String;ILjava/lang/String;IIDDJ)V

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
    instance-of v1, p1, Lcom/volcengine/ck/moment/base/CKMomentAsset;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    check-cast p1, Lcom/volcengine/ck/moment/base/CKMomentAsset;

    iget-wide v3, p0, Lcom/volcengine/ck/moment/base/CKMomentAsset;->mediaId:J

    iget-wide v5, p1, Lcom/volcengine/ck/moment/base/CKMomentAsset;->mediaId:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_15

    return v2

    :cond_15
    iget-object v1, p0, Lcom/volcengine/ck/moment/base/CKMomentAsset;->path:Ljava/lang/String;

    iget-object v3, p1, Lcom/volcengine/ck/moment/base/CKMomentAsset;->path:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_20

    return v2

    :cond_20
    iget-wide v3, p0, Lcom/volcengine/ck/moment/base/CKMomentAsset;->size:J

    iget-wide v5, p1, Lcom/volcengine/ck/moment/base/CKMomentAsset;->size:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_29

    return v2

    :cond_29
    iget-wide v3, p0, Lcom/volcengine/ck/moment/base/CKMomentAsset;->taken:J

    iget-wide v5, p1, Lcom/volcengine/ck/moment/base/CKMomentAsset;->taken:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_32

    return v2

    :cond_32
    iget v1, p0, Lcom/volcengine/ck/moment/base/CKMomentAsset;->type:I

    iget v3, p1, Lcom/volcengine/ck/moment/base/CKMomentAsset;->type:I

    if-eq v1, v3, :cond_39

    return v2

    :cond_39
    iget-object v1, p0, Lcom/volcengine/ck/moment/base/CKMomentAsset;->md5:Ljava/lang/String;

    iget-object v3, p1, Lcom/volcengine/ck/moment/base/CKMomentAsset;->md5:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_44

    return v2

    :cond_44
    iget v1, p0, Lcom/volcengine/ck/moment/base/CKMomentAsset;->orientation:I

    iget v3, p1, Lcom/volcengine/ck/moment/base/CKMomentAsset;->orientation:I

    if-eq v1, v3, :cond_4b

    return v2

    :cond_4b
    iget-object v1, p0, Lcom/volcengine/ck/moment/base/CKMomentAsset;->mime:Ljava/lang/String;

    iget-object v3, p1, Lcom/volcengine/ck/moment/base/CKMomentAsset;->mime:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_56

    return v2

    :cond_56
    iget v1, p0, Lcom/volcengine/ck/moment/base/CKMomentAsset;->width:I

    iget v3, p1, Lcom/volcengine/ck/moment/base/CKMomentAsset;->width:I

    if-eq v1, v3, :cond_5d

    return v2

    :cond_5d
    iget v1, p0, Lcom/volcengine/ck/moment/base/CKMomentAsset;->height:I

    iget v3, p1, Lcom/volcengine/ck/moment/base/CKMomentAsset;->height:I

    if-eq v1, v3, :cond_64

    return v2

    :cond_64
    iget-wide v3, p0, Lcom/volcengine/ck/moment/base/CKMomentAsset;->latitude:D

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    iget-wide v3, p1, Lcom/volcengine/ck/moment/base/CKMomentAsset;->latitude:D

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_77

    return v2

    :cond_77
    iget-wide v3, p0, Lcom/volcengine/ck/moment/base/CKMomentAsset;->longitude:D

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    iget-wide v3, p1, Lcom/volcengine/ck/moment/base/CKMomentAsset;->longitude:D

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8a

    return v2

    :cond_8a
    iget-wide v3, p0, Lcom/volcengine/ck/moment/base/CKMomentAsset;->duration:J

    iget-wide p0, p1, Lcom/volcengine/ck/moment/base/CKMomentAsset;->duration:J

    cmp-long p0, v3, p0

    if-eqz p0, :cond_93

    return v2

    :cond_93
    return v0
.end method

.method public final getDuration()J
    .registers 3

    .line 20
    iget-wide v0, p0, Lcom/volcengine/ck/moment/base/CKMomentAsset;->duration:J

    return-wide v0
.end method

.method public final getHeight()I
    .registers 1

    .line 17
    iget p0, p0, Lcom/volcengine/ck/moment/base/CKMomentAsset;->height:I

    return p0
.end method

.method public final getLatitude()D
    .registers 3

    .line 18
    iget-wide v0, p0, Lcom/volcengine/ck/moment/base/CKMomentAsset;->latitude:D

    return-wide v0
.end method

.method public final getLongitude()D
    .registers 3

    .line 19
    iget-wide v0, p0, Lcom/volcengine/ck/moment/base/CKMomentAsset;->longitude:D

    return-wide v0
.end method

.method public final getMd5()Ljava/lang/String;
    .registers 1

    .line 13
    iget-object p0, p0, Lcom/volcengine/ck/moment/base/CKMomentAsset;->md5:Ljava/lang/String;

    return-object p0
.end method

.method public final getMediaId()J
    .registers 3

    .line 8
    iget-wide v0, p0, Lcom/volcengine/ck/moment/base/CKMomentAsset;->mediaId:J

    return-wide v0
.end method

.method public final getMime()Ljava/lang/String;
    .registers 1

    .line 15
    iget-object p0, p0, Lcom/volcengine/ck/moment/base/CKMomentAsset;->mime:Ljava/lang/String;

    return-object p0
.end method

.method public final getOrientation()I
    .registers 1

    .line 14
    iget p0, p0, Lcom/volcengine/ck/moment/base/CKMomentAsset;->orientation:I

    return p0
.end method

.method public final getPath()Ljava/lang/String;
    .registers 1

    .line 9
    iget-object p0, p0, Lcom/volcengine/ck/moment/base/CKMomentAsset;->path:Ljava/lang/String;

    return-object p0
.end method

.method public final getSize()J
    .registers 3

    .line 10
    iget-wide v0, p0, Lcom/volcengine/ck/moment/base/CKMomentAsset;->size:J

    return-wide v0
.end method

.method public final getTaken()J
    .registers 3

    .line 11
    iget-wide v0, p0, Lcom/volcengine/ck/moment/base/CKMomentAsset;->taken:J

    return-wide v0
.end method

.method public final getType()I
    .registers 1

    .line 12
    iget p0, p0, Lcom/volcengine/ck/moment/base/CKMomentAsset;->type:I

    return p0
.end method

.method public final getWidth()I
    .registers 1

    .line 16
    iget p0, p0, Lcom/volcengine/ck/moment/base/CKMomentAsset;->width:I

    return p0
.end method

.method public hashCode()I
    .registers 4

    iget-wide v0, p0, Lcom/volcengine/ck/moment/base/CKMomentAsset;->mediaId:J

    invoke-static {v0, v1}, Ljava/lang/Long;->hashCode(J)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/volcengine/ck/moment/base/CKMomentAsset;->path:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Lcom/volcengine/ck/moment/base/CKMomentAsset;->size:J

    invoke-static {v1, v2}, Ljava/lang/Long;->hashCode(J)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Lcom/volcengine/ck/moment/base/CKMomentAsset;->taken:J

    invoke-static {v1, v2}, Ljava/lang/Long;->hashCode(J)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/volcengine/ck/moment/base/CKMomentAsset;->type:I

    invoke-static {v1}, Ljava/lang/Integer;->hashCode(I)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/volcengine/ck/moment/base/CKMomentAsset;->md5:Ljava/lang/String;

    if-nez v1, :cond_32

    const/4 v1, 0x0

    goto :goto_36

    :cond_32
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_36
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/volcengine/ck/moment/base/CKMomentAsset;->orientation:I

    invoke-static {v1}, Ljava/lang/Integer;->hashCode(I)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/volcengine/ck/moment/base/CKMomentAsset;->mime:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/volcengine/ck/moment/base/CKMomentAsset;->width:I

    invoke-static {v1}, Ljava/lang/Integer;->hashCode(I)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/volcengine/ck/moment/base/CKMomentAsset;->height:I

    invoke-static {v1}, Ljava/lang/Integer;->hashCode(I)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Lcom/volcengine/ck/moment/base/CKMomentAsset;->latitude:D

    invoke-static {v1, v2}, Ljava/lang/Double;->hashCode(D)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Lcom/volcengine/ck/moment/base/CKMomentAsset;->longitude:D

    invoke-static {v1, v2}, Ljava/lang/Double;->hashCode(D)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Lcom/volcengine/ck/moment/base/CKMomentAsset;->duration:J

    invoke-static {v1, v2}, Ljava/lang/Long;->hashCode(J)I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CKMomentAsset(mediaId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/volcengine/ck/moment/base/CKMomentAsset;->mediaId:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", path="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/volcengine/ck/moment/base/CKMomentAsset;->path:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", size="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/volcengine/ck/moment/base/CKMomentAsset;->size:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", taken="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/volcengine/ck/moment/base/CKMomentAsset;->taken:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/volcengine/ck/moment/base/CKMomentAsset;->type:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", md5="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/volcengine/ck/moment/base/CKMomentAsset;->md5:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", orientation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/volcengine/ck/moment/base/CKMomentAsset;->orientation:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/volcengine/ck/moment/base/CKMomentAsset;->mime:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", width="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/volcengine/ck/moment/base/CKMomentAsset;->width:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", height="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/volcengine/ck/moment/base/CKMomentAsset;->height:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", latitude="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/volcengine/ck/moment/base/CKMomentAsset;->latitude:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ", longitude="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/volcengine/ck/moment/base/CKMomentAsset;->longitude:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ", duration="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/volcengine/ck/moment/base/CKMomentAsset;->duration:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 5

    const-string p2, "out"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/volcengine/ck/moment/base/CKMomentAsset;->mediaId:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-object p2, p0, Lcom/volcengine/ck/moment/base/CKMomentAsset;->path:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/volcengine/ck/moment/base/CKMomentAsset;->size:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v0, p0, Lcom/volcengine/ck/moment/base/CKMomentAsset;->taken:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget p2, p0, Lcom/volcengine/ck/moment/base/CKMomentAsset;->type:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object p2, p0, Lcom/volcengine/ck/moment/base/CKMomentAsset;->md5:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget p2, p0, Lcom/volcengine/ck/moment/base/CKMomentAsset;->orientation:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object p2, p0, Lcom/volcengine/ck/moment/base/CKMomentAsset;->mime:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget p2, p0, Lcom/volcengine/ck/moment/base/CKMomentAsset;->width:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lcom/volcengine/ck/moment/base/CKMomentAsset;->height:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-wide v0, p0, Lcom/volcengine/ck/moment/base/CKMomentAsset;->latitude:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    iget-wide v0, p0, Lcom/volcengine/ck/moment/base/CKMomentAsset;->longitude:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    iget-wide v0, p0, Lcom/volcengine/ck/moment/base/CKMomentAsset;->duration:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    return-void
.end method
