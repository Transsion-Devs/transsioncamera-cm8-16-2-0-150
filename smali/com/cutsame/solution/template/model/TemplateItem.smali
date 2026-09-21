.class public final Lcom/cutsame/solution/template/model/TemplateItem;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation build Lkotlinx/android/parcel/Parcelize;
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/cutsame/solution/template/model/TemplateItem;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final a:J
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "id"
    .end annotation
.end field

.field public final b:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "short_title"
    .end annotation
.end field

.field public final c:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "title"
    .end annotation
.end field

.field public final d:J
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "duration"
    .end annotation
.end field

.field public final e:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "fragment_count"
    .end annotation
.end field

.field public final f:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "template_url"
    .end annotation
.end field

.field public final g:J
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "create_time"
    .end annotation
.end field

.field public final h:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "md5"
    .end annotation
.end field

.field public final i:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "extra"
    .end annotation
.end field

.field public final j:Lcom/cutsame/solution/template/model/Cover;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "cover"
    .end annotation
.end field

.field public final k:Lcom/cutsame/solution/template/model/UrlModel;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "video_info"
    .end annotation
.end field

.field public final l:Lcom/cutsame/solution/template/model/UrlModel;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "origin_video_info"
    .end annotation
.end field

.field public final m:Lcom/cutsame/solution/template/model/CounterData;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "counter_data"
    .end annotation
.end field

.field public final n:Lcom/cutsame/solution/template/model/Author;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "author"
    .end annotation
.end field

.field public final o:Lcom/cutsame/solution/template/model/Limit;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "limit"
    .end annotation
.end field

.field public final p:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "template_tags"
    .end annotation
.end field

.field public final q:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "status"
    .end annotation
.end field

.field public final r:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "template_type"
    .end annotation
.end field

.field public final s:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "provider_media_id"
    .end annotation
.end field

.field public final t:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "category"
    .end annotation
.end field

.field public u:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "zip_path"
    .end annotation
.end field

.field public v:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "unzip_path"
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/cutsame/solution/template/model/TemplateItem$Creator;

    invoke-direct {v0}, Lcom/cutsame/solution/template/model/TemplateItem$Creator;-><init>()V

    sput-object v0, Lcom/cutsame/solution/template/model/TemplateItem;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 29

    .line 0
    const v26, 0x3fffff

    const/16 v27, 0x0

    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-wide/16 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-wide/16 v9, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    move-object/from16 v0, p0

    invoke-direct/range {v0 .. v27}, Lcom/cutsame/solution/template/model/TemplateItem;-><init>(JLjava/lang/String;Ljava/lang/String;JILjava/lang/String;JLjava/lang/String;Ljava/lang/String;Lcom/cutsame/solution/template/model/Cover;Lcom/cutsame/solution/template/model/UrlModel;Lcom/cutsame/solution/template/model/UrlModel;Lcom/cutsame/solution/template/model/CounterData;Lcom/cutsame/solution/template/model/Author;Lcom/cutsame/solution/template/model/Limit;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(JLjava/lang/String;Ljava/lang/String;JILjava/lang/String;JLjava/lang/String;Ljava/lang/String;Lcom/cutsame/solution/template/model/Cover;Lcom/cutsame/solution/template/model/UrlModel;Lcom/cutsame/solution/template/model/UrlModel;Lcom/cutsame/solution/template/model/CounterData;Lcom/cutsame/solution/template/model/Author;Lcom/cutsame/solution/template/model/Limit;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 35

    move-object/from16 v0, p8

    move-object/from16 v1, p11

    move-object/from16 v2, p12

    move-object/from16 v3, p19

    move-object/from16 v4, p22

    move-object/from16 v5, p23

    move-object/from16 v6, p24

    move-object/from16 v7, p25

    const-string v8, "shortTitle"

    invoke-static {p3, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v8, "title"

    invoke-static {p4, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v8, "templateUrl"

    invoke-static {v0, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v8, "md5"

    invoke-static {v1, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v8, "extra"

    invoke-static {v2, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v8, "templateTags"

    invoke-static {v3, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v8, "providerMediaId"

    invoke-static {v4, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v8, "category"

    invoke-static {v5, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v8, "zipPath"

    invoke-static {v6, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v8, "unZipPath"

    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-wide p1, p0, Lcom/cutsame/solution/template/model/TemplateItem;->a:J

    .line 4
    iput-object p3, p0, Lcom/cutsame/solution/template/model/TemplateItem;->b:Ljava/lang/String;

    .line 5
    iput-object p4, p0, Lcom/cutsame/solution/template/model/TemplateItem;->c:Ljava/lang/String;

    .line 6
    iput-wide p5, p0, Lcom/cutsame/solution/template/model/TemplateItem;->d:J

    move/from16 p1, p7

    .line 7
    iput p1, p0, Lcom/cutsame/solution/template/model/TemplateItem;->e:I

    .line 8
    iput-object v0, p0, Lcom/cutsame/solution/template/model/TemplateItem;->f:Ljava/lang/String;

    move-wide/from16 p1, p9

    .line 9
    iput-wide p1, p0, Lcom/cutsame/solution/template/model/TemplateItem;->g:J

    .line 10
    iput-object v1, p0, Lcom/cutsame/solution/template/model/TemplateItem;->h:Ljava/lang/String;

    .line 11
    iput-object v2, p0, Lcom/cutsame/solution/template/model/TemplateItem;->i:Ljava/lang/String;

    move-object/from16 p1, p13

    .line 12
    iput-object p1, p0, Lcom/cutsame/solution/template/model/TemplateItem;->j:Lcom/cutsame/solution/template/model/Cover;

    move-object/from16 p1, p14

    .line 13
    iput-object p1, p0, Lcom/cutsame/solution/template/model/TemplateItem;->k:Lcom/cutsame/solution/template/model/UrlModel;

    move-object/from16 p1, p15

    .line 14
    iput-object p1, p0, Lcom/cutsame/solution/template/model/TemplateItem;->l:Lcom/cutsame/solution/template/model/UrlModel;

    move-object/from16 p1, p16

    .line 15
    iput-object p1, p0, Lcom/cutsame/solution/template/model/TemplateItem;->m:Lcom/cutsame/solution/template/model/CounterData;

    move-object/from16 p1, p17

    .line 16
    iput-object p1, p0, Lcom/cutsame/solution/template/model/TemplateItem;->n:Lcom/cutsame/solution/template/model/Author;

    move-object/from16 p1, p18

    .line 17
    iput-object p1, p0, Lcom/cutsame/solution/template/model/TemplateItem;->o:Lcom/cutsame/solution/template/model/Limit;

    .line 18
    iput-object v3, p0, Lcom/cutsame/solution/template/model/TemplateItem;->p:Ljava/lang/String;

    move/from16 p1, p20

    .line 19
    iput p1, p0, Lcom/cutsame/solution/template/model/TemplateItem;->q:I

    move/from16 p1, p21

    .line 20
    iput p1, p0, Lcom/cutsame/solution/template/model/TemplateItem;->r:I

    .line 21
    iput-object v4, p0, Lcom/cutsame/solution/template/model/TemplateItem;->s:Ljava/lang/String;

    .line 22
    iput-object v5, p0, Lcom/cutsame/solution/template/model/TemplateItem;->t:Ljava/lang/String;

    .line 23
    iput-object v6, p0, Lcom/cutsame/solution/template/model/TemplateItem;->u:Ljava/lang/String;

    .line 24
    iput-object v7, p0, Lcom/cutsame/solution/template/model/TemplateItem;->v:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(JLjava/lang/String;Ljava/lang/String;JILjava/lang/String;JLjava/lang/String;Ljava/lang/String;Lcom/cutsame/solution/template/model/Cover;Lcom/cutsame/solution/template/model/UrlModel;Lcom/cutsame/solution/template/model/UrlModel;Lcom/cutsame/solution/template/model/CounterData;Lcom/cutsame/solution/template/model/Author;Lcom/cutsame/solution/template/model/Limit;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 53

    move/from16 v0, p26

    and-int/lit8 v1, v0, 0x1

    if-eqz v1, :cond_9

    const-wide/16 v1, -0x1

    goto :goto_b

    :cond_9
    move-wide/from16 v1, p1

    :goto_b
    and-int/lit8 v3, v0, 0x2

    const-string v4, ""

    if-eqz v3, :cond_13

    move-object v3, v4

    goto :goto_15

    :cond_13
    move-object/from16 v3, p3

    :goto_15
    and-int/lit8 v5, v0, 0x4

    if-eqz v5, :cond_1b

    move-object v5, v4

    goto :goto_1d

    :cond_1b
    move-object/from16 v5, p4

    :goto_1d
    and-int/lit8 v6, v0, 0x8

    const-wide/16 v7, 0x0

    if-eqz v6, :cond_25

    move-wide v9, v7

    goto :goto_27

    :cond_25
    move-wide/from16 v9, p5

    :goto_27
    and-int/lit8 v6, v0, 0x10

    if-eqz v6, :cond_2d

    const/4 v6, 0x0

    goto :goto_2f

    :cond_2d
    move/from16 v6, p7

    :goto_2f
    and-int/lit8 v12, v0, 0x20

    if-eqz v12, :cond_35

    move-object v12, v4

    goto :goto_37

    :cond_35
    move-object/from16 v12, p8

    :goto_37
    and-int/lit8 v13, v0, 0x40

    if-eqz v13, :cond_3c

    goto :goto_3e

    :cond_3c
    move-wide/from16 v7, p9

    :goto_3e
    and-int/lit16 v13, v0, 0x80

    if-eqz v13, :cond_44

    move-object v13, v4

    goto :goto_46

    :cond_44
    move-object/from16 v13, p11

    :goto_46
    and-int/lit16 v14, v0, 0x100

    if-eqz v14, :cond_4c

    move-object v14, v4

    goto :goto_4e

    :cond_4c
    move-object/from16 v14, p12

    :goto_4e
    and-int/lit16 v15, v0, 0x200

    const/16 v16, 0x0

    if-eqz v15, :cond_57

    move-object/from16 v15, v16

    goto :goto_59

    :cond_57
    move-object/from16 v15, p13

    :goto_59
    and-int/lit16 v11, v0, 0x400

    if-eqz v11, :cond_60

    move-object/from16 v11, v16

    goto :goto_62

    :cond_60
    move-object/from16 v11, p14

    :goto_62
    move-wide/from16 v17, v1

    and-int/lit16 v1, v0, 0x800

    if-eqz v1, :cond_6b

    move-object/from16 v1, v16

    goto :goto_6d

    :cond_6b
    move-object/from16 v1, p15

    :goto_6d
    and-int/lit16 v2, v0, 0x1000

    if-eqz v2, :cond_74

    move-object/from16 v2, v16

    goto :goto_76

    :cond_74
    move-object/from16 v2, p16

    :goto_76
    move-object/from16 p2, v1

    and-int/lit16 v1, v0, 0x2000

    if-eqz v1, :cond_7f

    move-object/from16 v1, v16

    goto :goto_81

    :cond_7f
    move-object/from16 v1, p17

    :goto_81
    move-object/from16 p3, v1

    and-int/lit16 v1, v0, 0x4000

    if-eqz v1, :cond_88

    goto :goto_8a

    :cond_88
    move-object/from16 v16, p18

    :goto_8a
    const v1, 0x8000

    and-int/2addr v1, v0

    if-eqz v1, :cond_92

    move-object v1, v4

    goto :goto_94

    :cond_92
    move-object/from16 v1, p19

    :goto_94
    const/high16 v19, 0x10000

    and-int v19, v0, v19

    if-eqz v19, :cond_9d

    const/16 v19, -0x1

    goto :goto_9f

    :cond_9d
    move/from16 v19, p20

    :goto_9f
    const/high16 v20, 0x20000

    and-int v20, v0, v20

    if-eqz v20, :cond_a8

    const/16 v20, 0x0

    goto :goto_aa

    :cond_a8
    move/from16 v20, p21

    :goto_aa
    const/high16 v21, 0x40000

    and-int v21, v0, v21

    if-eqz v21, :cond_b3

    move-object/from16 v21, v4

    goto :goto_b5

    :cond_b3
    move-object/from16 v21, p22

    :goto_b5
    const/high16 v22, 0x80000

    and-int v22, v0, v22

    if-eqz v22, :cond_be

    move-object/from16 v22, v4

    goto :goto_c0

    :cond_be
    move-object/from16 v22, p23

    :goto_c0
    const/high16 v23, 0x100000

    and-int v23, v0, v23

    if-eqz v23, :cond_c9

    move-object/from16 v23, v4

    goto :goto_cb

    :cond_c9
    move-object/from16 v23, p24

    :goto_cb
    const/high16 v24, 0x200000

    and-int v0, v0, v24

    if-eqz v0, :cond_100

    move-object/from16 p26, v4

    :goto_d3
    move-object/from16 p1, p0

    move-object/from16 p16, p2

    move-object/from16 p18, p3

    move-object/from16 p20, v1

    move-object/from16 p17, v2

    move-object/from16 p4, v3

    move-object/from16 p5, v5

    move/from16 p8, v6

    move-wide/from16 p10, v7

    move-wide/from16 p6, v9

    move-object/from16 p15, v11

    move-object/from16 p9, v12

    move-object/from16 p12, v13

    move-object/from16 p13, v14

    move-object/from16 p14, v15

    move-object/from16 p19, v16

    move-wide/from16 p2, v17

    move/from16 p21, v19

    move/from16 p22, v20

    move-object/from16 p23, v21

    move-object/from16 p24, v22

    move-object/from16 p25, v23

    goto :goto_103

    :cond_100
    move-object/from16 p26, p25

    goto :goto_d3

    .line 25
    :goto_103
    invoke-direct/range {p1 .. p26}, Lcom/cutsame/solution/template/model/TemplateItem;-><init>(JLjava/lang/String;Ljava/lang/String;JILjava/lang/String;JLjava/lang/String;Ljava/lang/String;Lcom/cutsame/solution/template/model/Cover;Lcom/cutsame/solution/template/model/UrlModel;Lcom/cutsame/solution/template/model/UrlModel;Lcom/cutsame/solution/template/model/CounterData;Lcom/cutsame/solution/template/model/Author;Lcom/cutsame/solution/template/model/Limit;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/cutsame/solution/template/model/TemplateItem;JLjava/lang/String;Ljava/lang/String;JILjava/lang/String;JLjava/lang/String;Ljava/lang/String;Lcom/cutsame/solution/template/model/Cover;Lcom/cutsame/solution/template/model/UrlModel;Lcom/cutsame/solution/template/model/UrlModel;Lcom/cutsame/solution/template/model/CounterData;Lcom/cutsame/solution/template/model/Author;Lcom/cutsame/solution/template/model/Limit;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Lcom/cutsame/solution/template/model/TemplateItem;
    .registers 47

    move-object/from16 v0, p0

    move/from16 v1, p26

    and-int/lit8 v2, v1, 0x1

    if-eqz v2, :cond_b

    iget-wide v2, v0, Lcom/cutsame/solution/template/model/TemplateItem;->a:J

    goto :goto_d

    :cond_b
    move-wide/from16 v2, p1

    :goto_d
    and-int/lit8 v4, v1, 0x2

    if-eqz v4, :cond_14

    iget-object v4, v0, Lcom/cutsame/solution/template/model/TemplateItem;->b:Ljava/lang/String;

    goto :goto_16

    :cond_14
    move-object/from16 v4, p3

    :goto_16
    and-int/lit8 v5, v1, 0x4

    if-eqz v5, :cond_1d

    iget-object v5, v0, Lcom/cutsame/solution/template/model/TemplateItem;->c:Ljava/lang/String;

    goto :goto_1f

    :cond_1d
    move-object/from16 v5, p4

    :goto_1f
    and-int/lit8 v6, v1, 0x8

    if-eqz v6, :cond_26

    iget-wide v6, v0, Lcom/cutsame/solution/template/model/TemplateItem;->d:J

    goto :goto_28

    :cond_26
    move-wide/from16 v6, p5

    :goto_28
    and-int/lit8 v8, v1, 0x10

    if-eqz v8, :cond_2f

    iget v8, v0, Lcom/cutsame/solution/template/model/TemplateItem;->e:I

    goto :goto_31

    :cond_2f
    move/from16 v8, p7

    :goto_31
    and-int/lit8 v9, v1, 0x20

    if-eqz v9, :cond_38

    iget-object v9, v0, Lcom/cutsame/solution/template/model/TemplateItem;->f:Ljava/lang/String;

    goto :goto_3a

    :cond_38
    move-object/from16 v9, p8

    :goto_3a
    and-int/lit8 v10, v1, 0x40

    if-eqz v10, :cond_41

    iget-wide v10, v0, Lcom/cutsame/solution/template/model/TemplateItem;->g:J

    goto :goto_43

    :cond_41
    move-wide/from16 v10, p9

    :goto_43
    and-int/lit16 v12, v1, 0x80

    if-eqz v12, :cond_4a

    iget-object v12, v0, Lcom/cutsame/solution/template/model/TemplateItem;->h:Ljava/lang/String;

    goto :goto_4c

    :cond_4a
    move-object/from16 v12, p11

    :goto_4c
    and-int/lit16 v13, v1, 0x100

    if-eqz v13, :cond_53

    iget-object v13, v0, Lcom/cutsame/solution/template/model/TemplateItem;->i:Ljava/lang/String;

    goto :goto_55

    :cond_53
    move-object/from16 v13, p12

    :goto_55
    and-int/lit16 v14, v1, 0x200

    if-eqz v14, :cond_5c

    iget-object v14, v0, Lcom/cutsame/solution/template/model/TemplateItem;->j:Lcom/cutsame/solution/template/model/Cover;

    goto :goto_5e

    :cond_5c
    move-object/from16 v14, p13

    :goto_5e
    and-int/lit16 v15, v1, 0x400

    if-eqz v15, :cond_65

    iget-object v15, v0, Lcom/cutsame/solution/template/model/TemplateItem;->k:Lcom/cutsame/solution/template/model/UrlModel;

    goto :goto_67

    :cond_65
    move-object/from16 v15, p14

    :goto_67
    move-wide/from16 v16, v2

    and-int/lit16 v2, v1, 0x800

    if-eqz v2, :cond_70

    iget-object v2, v0, Lcom/cutsame/solution/template/model/TemplateItem;->l:Lcom/cutsame/solution/template/model/UrlModel;

    goto :goto_72

    :cond_70
    move-object/from16 v2, p15

    :goto_72
    and-int/lit16 v3, v1, 0x1000

    if-eqz v3, :cond_79

    iget-object v3, v0, Lcom/cutsame/solution/template/model/TemplateItem;->m:Lcom/cutsame/solution/template/model/CounterData;

    goto :goto_7b

    :cond_79
    move-object/from16 v3, p16

    :goto_7b
    move-object/from16 p1, v2

    and-int/lit16 v2, v1, 0x2000

    if-eqz v2, :cond_84

    iget-object v2, v0, Lcom/cutsame/solution/template/model/TemplateItem;->n:Lcom/cutsame/solution/template/model/Author;

    goto :goto_86

    :cond_84
    move-object/from16 v2, p17

    :goto_86
    move-object/from16 p2, v2

    and-int/lit16 v2, v1, 0x4000

    if-eqz v2, :cond_8f

    iget-object v2, v0, Lcom/cutsame/solution/template/model/TemplateItem;->o:Lcom/cutsame/solution/template/model/Limit;

    goto :goto_91

    :cond_8f
    move-object/from16 v2, p18

    :goto_91
    const v18, 0x8000

    and-int v18, v1, v18

    if-eqz v18, :cond_9b

    iget-object v1, v0, Lcom/cutsame/solution/template/model/TemplateItem;->p:Ljava/lang/String;

    goto :goto_9d

    :cond_9b
    move-object/from16 v1, p19

    :goto_9d
    const/high16 v18, 0x10000

    and-int v18, p26, v18

    move-object/from16 p3, v1

    if-eqz v18, :cond_a8

    iget v1, v0, Lcom/cutsame/solution/template/model/TemplateItem;->q:I

    goto :goto_aa

    :cond_a8
    move/from16 v1, p20

    :goto_aa
    const/high16 v18, 0x20000

    and-int v18, p26, v18

    move/from16 p4, v1

    if-eqz v18, :cond_b5

    iget v1, v0, Lcom/cutsame/solution/template/model/TemplateItem;->r:I

    goto :goto_b7

    :cond_b5
    move/from16 v1, p21

    :goto_b7
    const/high16 v18, 0x40000

    and-int v18, p26, v18

    move/from16 p5, v1

    if-eqz v18, :cond_c2

    iget-object v1, v0, Lcom/cutsame/solution/template/model/TemplateItem;->s:Ljava/lang/String;

    goto :goto_c4

    :cond_c2
    move-object/from16 v1, p22

    :goto_c4
    const/high16 v18, 0x80000

    and-int v18, p26, v18

    move-object/from16 p6, v1

    if-eqz v18, :cond_cf

    iget-object v1, v0, Lcom/cutsame/solution/template/model/TemplateItem;->t:Ljava/lang/String;

    goto :goto_d1

    :cond_cf
    move-object/from16 v1, p23

    :goto_d1
    const/high16 v18, 0x100000

    and-int v18, p26, v18

    move-object/from16 p7, v1

    if-eqz v18, :cond_dc

    iget-object v1, v0, Lcom/cutsame/solution/template/model/TemplateItem;->u:Ljava/lang/String;

    goto :goto_de

    :cond_dc
    move-object/from16 v1, p24

    :goto_de
    const/high16 v18, 0x200000

    and-int v18, p26, v18

    if-eqz v18, :cond_117

    move-object/from16 p8, v1

    iget-object v1, v0, Lcom/cutsame/solution/template/model/TemplateItem;->v:Ljava/lang/String;

    move-object/from16 p25, p8

    move-object/from16 p26, v1

    :goto_ec
    move-object/from16 p16, p1

    move-object/from16 p18, p2

    move-object/from16 p20, p3

    move/from16 p21, p4

    move/from16 p22, p5

    move-object/from16 p23, p6

    move-object/from16 p24, p7

    move-object/from16 p1, v0

    move-object/from16 p19, v2

    move-object/from16 p17, v3

    move-object/from16 p4, v4

    move-object/from16 p5, v5

    move-wide/from16 p6, v6

    move/from16 p8, v8

    move-object/from16 p9, v9

    move-wide/from16 p10, v10

    move-object/from16 p12, v12

    move-object/from16 p13, v13

    move-object/from16 p14, v14

    move-object/from16 p15, v15

    move-wide/from16 p2, v16

    goto :goto_11c

    :cond_117
    move-object/from16 p26, p25

    move-object/from16 p25, v1

    goto :goto_ec

    :goto_11c
    invoke-virtual/range {p1 .. p26}, Lcom/cutsame/solution/template/model/TemplateItem;->copy(JLjava/lang/String;Ljava/lang/String;JILjava/lang/String;JLjava/lang/String;Ljava/lang/String;Lcom/cutsame/solution/template/model/Cover;Lcom/cutsame/solution/template/model/UrlModel;Lcom/cutsame/solution/template/model/UrlModel;Lcom/cutsame/solution/template/model/CounterData;Lcom/cutsame/solution/template/model/Author;Lcom/cutsame/solution/template/model/Limit;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/cutsame/solution/template/model/TemplateItem;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final component1()J
    .registers 3

    iget-wide v0, p0, Lcom/cutsame/solution/template/model/TemplateItem;->a:J

    return-wide v0
.end method

.method public final component10()Lcom/cutsame/solution/template/model/Cover;
    .registers 1

    iget-object p0, p0, Lcom/cutsame/solution/template/model/TemplateItem;->j:Lcom/cutsame/solution/template/model/Cover;

    return-object p0
.end method

.method public final component11()Lcom/cutsame/solution/template/model/UrlModel;
    .registers 1

    iget-object p0, p0, Lcom/cutsame/solution/template/model/TemplateItem;->k:Lcom/cutsame/solution/template/model/UrlModel;

    return-object p0
.end method

.method public final component12()Lcom/cutsame/solution/template/model/UrlModel;
    .registers 1

    iget-object p0, p0, Lcom/cutsame/solution/template/model/TemplateItem;->l:Lcom/cutsame/solution/template/model/UrlModel;

    return-object p0
.end method

.method public final component13()Lcom/cutsame/solution/template/model/CounterData;
    .registers 1

    iget-object p0, p0, Lcom/cutsame/solution/template/model/TemplateItem;->m:Lcom/cutsame/solution/template/model/CounterData;

    return-object p0
.end method

.method public final component14()Lcom/cutsame/solution/template/model/Author;
    .registers 1

    iget-object p0, p0, Lcom/cutsame/solution/template/model/TemplateItem;->n:Lcom/cutsame/solution/template/model/Author;

    return-object p0
.end method

.method public final component15()Lcom/cutsame/solution/template/model/Limit;
    .registers 1

    iget-object p0, p0, Lcom/cutsame/solution/template/model/TemplateItem;->o:Lcom/cutsame/solution/template/model/Limit;

    return-object p0
.end method

.method public final component16()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/cutsame/solution/template/model/TemplateItem;->p:Ljava/lang/String;

    return-object p0
.end method

.method public final component17()I
    .registers 1

    iget p0, p0, Lcom/cutsame/solution/template/model/TemplateItem;->q:I

    return p0
.end method

.method public final component18()I
    .registers 1

    iget p0, p0, Lcom/cutsame/solution/template/model/TemplateItem;->r:I

    return p0
.end method

.method public final component19()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/cutsame/solution/template/model/TemplateItem;->s:Ljava/lang/String;

    return-object p0
.end method

.method public final component2()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/cutsame/solution/template/model/TemplateItem;->b:Ljava/lang/String;

    return-object p0
.end method

.method public final component20()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/cutsame/solution/template/model/TemplateItem;->t:Ljava/lang/String;

    return-object p0
.end method

.method public final component21()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/cutsame/solution/template/model/TemplateItem;->u:Ljava/lang/String;

    return-object p0
.end method

.method public final component22()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/cutsame/solution/template/model/TemplateItem;->v:Ljava/lang/String;

    return-object p0
.end method

.method public final component3()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/cutsame/solution/template/model/TemplateItem;->c:Ljava/lang/String;

    return-object p0
.end method

.method public final component4()J
    .registers 3

    iget-wide v0, p0, Lcom/cutsame/solution/template/model/TemplateItem;->d:J

    return-wide v0
.end method

.method public final component5()I
    .registers 1

    iget p0, p0, Lcom/cutsame/solution/template/model/TemplateItem;->e:I

    return p0
.end method

.method public final component6()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/cutsame/solution/template/model/TemplateItem;->f:Ljava/lang/String;

    return-object p0
.end method

.method public final component7()J
    .registers 3

    iget-wide v0, p0, Lcom/cutsame/solution/template/model/TemplateItem;->g:J

    return-wide v0
.end method

.method public final component8()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/cutsame/solution/template/model/TemplateItem;->h:Ljava/lang/String;

    return-object p0
.end method

.method public final component9()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/cutsame/solution/template/model/TemplateItem;->i:Ljava/lang/String;

    return-object p0
.end method

.method public final copy(JLjava/lang/String;Ljava/lang/String;JILjava/lang/String;JLjava/lang/String;Ljava/lang/String;Lcom/cutsame/solution/template/model/Cover;Lcom/cutsame/solution/template/model/UrlModel;Lcom/cutsame/solution/template/model/UrlModel;Lcom/cutsame/solution/template/model/CounterData;Lcom/cutsame/solution/template/model/Author;Lcom/cutsame/solution/template/model/Limit;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/cutsame/solution/template/model/TemplateItem;
    .registers 53

    const-string v0, "shortTitle"

    move-object/from16 v4, p3

    invoke-static {v4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "title"

    move-object/from16 v5, p4

    invoke-static {v5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "templateUrl"

    move-object/from16 v9, p8

    invoke-static {v9, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "md5"

    move-object/from16 v12, p11

    invoke-static {v12, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "extra"

    move-object/from16 v13, p12

    invoke-static {v13, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "templateTags"

    move-object/from16 v1, p19

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "providerMediaId"

    move-object/from16 v2, p22

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "category"

    move-object/from16 v3, p23

    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "zipPath"

    move-object/from16 v6, p24

    invoke-static {v6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "unZipPath"

    move-object/from16 v7, p25

    invoke-static {v7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Lcom/cutsame/solution/template/model/TemplateItem;

    move/from16 v8, p7

    move-wide/from16 v10, p9

    move-object/from16 v14, p13

    move-object/from16 v15, p14

    move-object/from16 v16, p15

    move-object/from16 v17, p16

    move-object/from16 v18, p17

    move-object/from16 v19, p18

    move-object/from16 v20, p19

    move/from16 v21, p20

    move/from16 v22, p21

    move-object/from16 v23, v2

    move-object/from16 v24, v3

    move-object/from16 v25, v6

    move-object/from16 v26, v7

    move-wide/from16 v2, p1

    move-wide/from16 v6, p5

    invoke-direct/range {v1 .. v26}, Lcom/cutsame/solution/template/model/TemplateItem;-><init>(JLjava/lang/String;Ljava/lang/String;JILjava/lang/String;JLjava/lang/String;Ljava/lang/String;Lcom/cutsame/solution/template/model/Cover;Lcom/cutsame/solution/template/model/UrlModel;Lcom/cutsame/solution/template/model/UrlModel;Lcom/cutsame/solution/template/model/CounterData;Lcom/cutsame/solution/template/model/Author;Lcom/cutsame/solution/template/model/Limit;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

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
    instance-of v1, p1, Lcom/cutsame/solution/template/model/TemplateItem;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    check-cast p1, Lcom/cutsame/solution/template/model/TemplateItem;

    iget-wide v3, p0, Lcom/cutsame/solution/template/model/TemplateItem;->a:J

    iget-wide v5, p1, Lcom/cutsame/solution/template/model/TemplateItem;->a:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_15

    return v2

    :cond_15
    iget-object v1, p0, Lcom/cutsame/solution/template/model/TemplateItem;->b:Ljava/lang/String;

    iget-object v3, p1, Lcom/cutsame/solution/template/model/TemplateItem;->b:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_20

    return v2

    :cond_20
    iget-object v1, p0, Lcom/cutsame/solution/template/model/TemplateItem;->c:Ljava/lang/String;

    iget-object v3, p1, Lcom/cutsame/solution/template/model/TemplateItem;->c:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2b

    return v2

    :cond_2b
    iget-wide v3, p0, Lcom/cutsame/solution/template/model/TemplateItem;->d:J

    iget-wide v5, p1, Lcom/cutsame/solution/template/model/TemplateItem;->d:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_34

    return v2

    :cond_34
    iget v1, p0, Lcom/cutsame/solution/template/model/TemplateItem;->e:I

    iget v3, p1, Lcom/cutsame/solution/template/model/TemplateItem;->e:I

    if-eq v1, v3, :cond_3b

    return v2

    :cond_3b
    iget-object v1, p0, Lcom/cutsame/solution/template/model/TemplateItem;->f:Ljava/lang/String;

    iget-object v3, p1, Lcom/cutsame/solution/template/model/TemplateItem;->f:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_46

    return v2

    :cond_46
    iget-wide v3, p0, Lcom/cutsame/solution/template/model/TemplateItem;->g:J

    iget-wide v5, p1, Lcom/cutsame/solution/template/model/TemplateItem;->g:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_4f

    return v2

    :cond_4f
    iget-object v1, p0, Lcom/cutsame/solution/template/model/TemplateItem;->h:Ljava/lang/String;

    iget-object v3, p1, Lcom/cutsame/solution/template/model/TemplateItem;->h:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5a

    return v2

    :cond_5a
    iget-object v1, p0, Lcom/cutsame/solution/template/model/TemplateItem;->i:Ljava/lang/String;

    iget-object v3, p1, Lcom/cutsame/solution/template/model/TemplateItem;->i:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_65

    return v2

    :cond_65
    iget-object v1, p0, Lcom/cutsame/solution/template/model/TemplateItem;->j:Lcom/cutsame/solution/template/model/Cover;

    iget-object v3, p1, Lcom/cutsame/solution/template/model/TemplateItem;->j:Lcom/cutsame/solution/template/model/Cover;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_70

    return v2

    :cond_70
    iget-object v1, p0, Lcom/cutsame/solution/template/model/TemplateItem;->k:Lcom/cutsame/solution/template/model/UrlModel;

    iget-object v3, p1, Lcom/cutsame/solution/template/model/TemplateItem;->k:Lcom/cutsame/solution/template/model/UrlModel;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7b

    return v2

    :cond_7b
    iget-object v1, p0, Lcom/cutsame/solution/template/model/TemplateItem;->l:Lcom/cutsame/solution/template/model/UrlModel;

    iget-object v3, p1, Lcom/cutsame/solution/template/model/TemplateItem;->l:Lcom/cutsame/solution/template/model/UrlModel;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_86

    return v2

    :cond_86
    iget-object v1, p0, Lcom/cutsame/solution/template/model/TemplateItem;->m:Lcom/cutsame/solution/template/model/CounterData;

    iget-object v3, p1, Lcom/cutsame/solution/template/model/TemplateItem;->m:Lcom/cutsame/solution/template/model/CounterData;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_91

    return v2

    :cond_91
    iget-object v1, p0, Lcom/cutsame/solution/template/model/TemplateItem;->n:Lcom/cutsame/solution/template/model/Author;

    iget-object v3, p1, Lcom/cutsame/solution/template/model/TemplateItem;->n:Lcom/cutsame/solution/template/model/Author;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9c

    return v2

    :cond_9c
    iget-object v1, p0, Lcom/cutsame/solution/template/model/TemplateItem;->o:Lcom/cutsame/solution/template/model/Limit;

    iget-object v3, p1, Lcom/cutsame/solution/template/model/TemplateItem;->o:Lcom/cutsame/solution/template/model/Limit;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a7

    return v2

    :cond_a7
    iget-object v1, p0, Lcom/cutsame/solution/template/model/TemplateItem;->p:Ljava/lang/String;

    iget-object v3, p1, Lcom/cutsame/solution/template/model/TemplateItem;->p:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b2

    return v2

    :cond_b2
    iget v1, p0, Lcom/cutsame/solution/template/model/TemplateItem;->q:I

    iget v3, p1, Lcom/cutsame/solution/template/model/TemplateItem;->q:I

    if-eq v1, v3, :cond_b9

    return v2

    :cond_b9
    iget v1, p0, Lcom/cutsame/solution/template/model/TemplateItem;->r:I

    iget v3, p1, Lcom/cutsame/solution/template/model/TemplateItem;->r:I

    if-eq v1, v3, :cond_c0

    return v2

    :cond_c0
    iget-object v1, p0, Lcom/cutsame/solution/template/model/TemplateItem;->s:Ljava/lang/String;

    iget-object v3, p1, Lcom/cutsame/solution/template/model/TemplateItem;->s:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_cb

    return v2

    :cond_cb
    iget-object v1, p0, Lcom/cutsame/solution/template/model/TemplateItem;->t:Ljava/lang/String;

    iget-object v3, p1, Lcom/cutsame/solution/template/model/TemplateItem;->t:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_d6

    return v2

    :cond_d6
    iget-object v1, p0, Lcom/cutsame/solution/template/model/TemplateItem;->u:Ljava/lang/String;

    iget-object v3, p1, Lcom/cutsame/solution/template/model/TemplateItem;->u:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_e1

    return v2

    :cond_e1
    iget-object p0, p0, Lcom/cutsame/solution/template/model/TemplateItem;->v:Ljava/lang/String;

    iget-object p1, p1, Lcom/cutsame/solution/template/model/TemplateItem;->v:Ljava/lang/String;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_ec

    return v2

    :cond_ec
    return v0
.end method

.method public final getAuthor()Lcom/cutsame/solution/template/model/Author;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/cutsame/solution/template/model/TemplateItem;->n:Lcom/cutsame/solution/template/model/Author;

    return-object p0
.end method

.method public final getCategory()Ljava/lang/String;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/cutsame/solution/template/model/TemplateItem;->t:Ljava/lang/String;

    return-object p0
.end method

.method public final getCounterData()Lcom/cutsame/solution/template/model/CounterData;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/cutsame/solution/template/model/TemplateItem;->m:Lcom/cutsame/solution/template/model/CounterData;

    return-object p0
.end method

.method public final getCover()Lcom/cutsame/solution/template/model/Cover;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/cutsame/solution/template/model/TemplateItem;->j:Lcom/cutsame/solution/template/model/Cover;

    return-object p0
.end method

.method public final getCreateTime()J
    .registers 3

    .line 1
    iget-wide v0, p0, Lcom/cutsame/solution/template/model/TemplateItem;->g:J

    return-wide v0
.end method

.method public final getDuration()J
    .registers 3

    .line 1
    iget-wide v0, p0, Lcom/cutsame/solution/template/model/TemplateItem;->d:J

    return-wide v0
.end method

.method public final getExtra()Ljava/lang/String;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/cutsame/solution/template/model/TemplateItem;->i:Ljava/lang/String;

    return-object p0
.end method

.method public final getFragmentCount()I
    .registers 1

    .line 1
    iget p0, p0, Lcom/cutsame/solution/template/model/TemplateItem;->e:I

    return p0
.end method

.method public final getId()J
    .registers 3

    .line 1
    iget-wide v0, p0, Lcom/cutsame/solution/template/model/TemplateItem;->a:J

    return-wide v0
.end method

.method public final getLimit()Lcom/cutsame/solution/template/model/Limit;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/cutsame/solution/template/model/TemplateItem;->o:Lcom/cutsame/solution/template/model/Limit;

    return-object p0
.end method

.method public final getMd5()Ljava/lang/String;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/cutsame/solution/template/model/TemplateItem;->h:Ljava/lang/String;

    return-object p0
.end method

.method public final getOriVideoInfo()Lcom/cutsame/solution/template/model/UrlModel;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/cutsame/solution/template/model/TemplateItem;->l:Lcom/cutsame/solution/template/model/UrlModel;

    return-object p0
.end method

.method public final getProviderMediaId()Ljava/lang/String;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/cutsame/solution/template/model/TemplateItem;->s:Ljava/lang/String;

    return-object p0
.end method

.method public final getShortTitle()Ljava/lang/String;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/cutsame/solution/template/model/TemplateItem;->b:Ljava/lang/String;

    return-object p0
.end method

.method public final getStatus()I
    .registers 1

    .line 1
    iget p0, p0, Lcom/cutsame/solution/template/model/TemplateItem;->q:I

    return p0
.end method

.method public final getTemplateTags()Ljava/lang/String;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/cutsame/solution/template/model/TemplateItem;->p:Ljava/lang/String;

    return-object p0
.end method

.method public final getTemplateType()I
    .registers 1

    .line 1
    iget p0, p0, Lcom/cutsame/solution/template/model/TemplateItem;->r:I

    return p0
.end method

.method public final getTemplateUrl()Ljava/lang/String;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/cutsame/solution/template/model/TemplateItem;->f:Ljava/lang/String;

    return-object p0
.end method

.method public final getTitle()Ljava/lang/String;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/cutsame/solution/template/model/TemplateItem;->c:Ljava/lang/String;

    return-object p0
.end method

.method public final getUnZipPath()Ljava/lang/String;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/cutsame/solution/template/model/TemplateItem;->v:Ljava/lang/String;

    return-object p0
.end method

.method public final getVideoInfo()Lcom/cutsame/solution/template/model/UrlModel;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/cutsame/solution/template/model/TemplateItem;->k:Lcom/cutsame/solution/template/model/UrlModel;

    return-object p0
.end method

.method public final getZipPath()Ljava/lang/String;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/cutsame/solution/template/model/TemplateItem;->u:Ljava/lang/String;

    return-object p0
.end method

.method public hashCode()I
    .registers 5

    iget-wide v0, p0, Lcom/cutsame/solution/template/model/TemplateItem;->a:J

    invoke-static {v0, v1}, Ljava/lang/Long;->hashCode(J)I

    move-result v0

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    iget-object v2, p0, Lcom/cutsame/solution/template/model/TemplateItem;->b:Ljava/lang/String;

    invoke-static {v2, v0, v1}, La/a/a/a/a;->a(Ljava/lang/String;II)I

    move-result v0

    iget-object v2, p0, Lcom/cutsame/solution/template/model/TemplateItem;->c:Ljava/lang/String;

    invoke-static {v2, v0, v1}, La/a/a/a/a;->a(Ljava/lang/String;II)I

    move-result v0

    iget-wide v2, p0, Lcom/cutsame/solution/template/model/TemplateItem;->d:J

    invoke-static {v2, v3}, Ljava/lang/Long;->hashCode(J)I

    move-result v2

    add-int/2addr v2, v0

    mul-int/2addr v2, v1

    iget v0, p0, Lcom/cutsame/solution/template/model/TemplateItem;->e:I

    invoke-static {v0}, Ljava/lang/Integer;->hashCode(I)I

    move-result v0

    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget-object v2, p0, Lcom/cutsame/solution/template/model/TemplateItem;->f:Ljava/lang/String;

    invoke-static {v2, v0, v1}, La/a/a/a/a;->a(Ljava/lang/String;II)I

    move-result v0

    iget-wide v2, p0, Lcom/cutsame/solution/template/model/TemplateItem;->g:J

    invoke-static {v2, v3}, Ljava/lang/Long;->hashCode(J)I

    move-result v2

    add-int/2addr v2, v0

    mul-int/2addr v2, v1

    iget-object v0, p0, Lcom/cutsame/solution/template/model/TemplateItem;->h:Ljava/lang/String;

    invoke-static {v0, v2, v1}, La/a/a/a/a;->a(Ljava/lang/String;II)I

    move-result v0

    iget-object v2, p0, Lcom/cutsame/solution/template/model/TemplateItem;->i:Ljava/lang/String;

    invoke-static {v2, v0, v1}, La/a/a/a/a;->a(Ljava/lang/String;II)I

    move-result v0

    iget-object v2, p0, Lcom/cutsame/solution/template/model/TemplateItem;->j:Lcom/cutsame/solution/template/model/Cover;

    const/4 v3, 0x0

    if-nez v2, :cond_46

    move v2, v3

    goto :goto_4a

    :cond_46
    invoke-virtual {v2}, Lcom/cutsame/solution/template/model/Cover;->hashCode()I

    move-result v2

    :goto_4a
    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget-object v2, p0, Lcom/cutsame/solution/template/model/TemplateItem;->k:Lcom/cutsame/solution/template/model/UrlModel;

    if-nez v2, :cond_52

    move v2, v3

    goto :goto_56

    :cond_52
    invoke-virtual {v2}, Lcom/cutsame/solution/template/model/UrlModel;->hashCode()I

    move-result v2

    :goto_56
    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget-object v2, p0, Lcom/cutsame/solution/template/model/TemplateItem;->l:Lcom/cutsame/solution/template/model/UrlModel;

    if-nez v2, :cond_5e

    move v2, v3

    goto :goto_62

    :cond_5e
    invoke-virtual {v2}, Lcom/cutsame/solution/template/model/UrlModel;->hashCode()I

    move-result v2

    :goto_62
    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget-object v2, p0, Lcom/cutsame/solution/template/model/TemplateItem;->m:Lcom/cutsame/solution/template/model/CounterData;

    if-nez v2, :cond_6a

    move v2, v3

    goto :goto_6e

    :cond_6a
    invoke-virtual {v2}, Lcom/cutsame/solution/template/model/CounterData;->hashCode()I

    move-result v2

    :goto_6e
    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget-object v2, p0, Lcom/cutsame/solution/template/model/TemplateItem;->n:Lcom/cutsame/solution/template/model/Author;

    if-nez v2, :cond_76

    move v2, v3

    goto :goto_7a

    :cond_76
    invoke-virtual {v2}, Lcom/cutsame/solution/template/model/Author;->hashCode()I

    move-result v2

    :goto_7a
    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget-object v2, p0, Lcom/cutsame/solution/template/model/TemplateItem;->o:Lcom/cutsame/solution/template/model/Limit;

    if-nez v2, :cond_81

    goto :goto_85

    :cond_81
    invoke-virtual {v2}, Lcom/cutsame/solution/template/model/Limit;->hashCode()I

    move-result v3

    :goto_85
    add-int/2addr v0, v3

    mul-int/2addr v0, v1

    iget-object v2, p0, Lcom/cutsame/solution/template/model/TemplateItem;->p:Ljava/lang/String;

    invoke-static {v2, v0, v1}, La/a/a/a/a;->a(Ljava/lang/String;II)I

    move-result v0

    iget v2, p0, Lcom/cutsame/solution/template/model/TemplateItem;->q:I

    invoke-static {v2}, Ljava/lang/Integer;->hashCode(I)I

    move-result v2

    add-int/2addr v2, v0

    mul-int/2addr v2, v1

    iget v0, p0, Lcom/cutsame/solution/template/model/TemplateItem;->r:I

    invoke-static {v0}, Ljava/lang/Integer;->hashCode(I)I

    move-result v0

    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget-object v2, p0, Lcom/cutsame/solution/template/model/TemplateItem;->s:Ljava/lang/String;

    invoke-static {v2, v0, v1}, La/a/a/a/a;->a(Ljava/lang/String;II)I

    move-result v0

    iget-object v2, p0, Lcom/cutsame/solution/template/model/TemplateItem;->t:Ljava/lang/String;

    invoke-static {v2, v0, v1}, La/a/a/a/a;->a(Ljava/lang/String;II)I

    move-result v0

    iget-object v2, p0, Lcom/cutsame/solution/template/model/TemplateItem;->u:Ljava/lang/String;

    invoke-static {v2, v0, v1}, La/a/a/a/a;->a(Ljava/lang/String;II)I

    move-result v0

    iget-object p0, p0, Lcom/cutsame/solution/template/model/TemplateItem;->v:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public final setUnZipPath(Ljava/lang/String;)V
    .registers 3

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Lcom/cutsame/solution/template/model/TemplateItem;->v:Ljava/lang/String;

    return-void
.end method

.method public final setZipPath(Ljava/lang/String;)V
    .registers 3

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Lcom/cutsame/solution/template/model/TemplateItem;->u:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TemplateItem(id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/cutsame/solution/template/model/TemplateItem;->a:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", shortTitle="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/cutsame/solution/template/model/TemplateItem;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", title="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/cutsame/solution/template/model/TemplateItem;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", duration="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/cutsame/solution/template/model/TemplateItem;->d:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", fragmentCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/cutsame/solution/template/model/TemplateItem;->e:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", templateUrl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/cutsame/solution/template/model/TemplateItem;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", createTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/cutsame/solution/template/model/TemplateItem;->g:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", md5="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/cutsame/solution/template/model/TemplateItem;->h:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", extra="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/cutsame/solution/template/model/TemplateItem;->i:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", cover="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/cutsame/solution/template/model/TemplateItem;->j:Lcom/cutsame/solution/template/model/Cover;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", videoInfo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/cutsame/solution/template/model/TemplateItem;->k:Lcom/cutsame/solution/template/model/UrlModel;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", oriVideoInfo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/cutsame/solution/template/model/TemplateItem;->l:Lcom/cutsame/solution/template/model/UrlModel;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", counterData="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/cutsame/solution/template/model/TemplateItem;->m:Lcom/cutsame/solution/template/model/CounterData;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", author="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/cutsame/solution/template/model/TemplateItem;->n:Lcom/cutsame/solution/template/model/Author;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", limit="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/cutsame/solution/template/model/TemplateItem;->o:Lcom/cutsame/solution/template/model/Limit;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", templateTags="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/cutsame/solution/template/model/TemplateItem;->p:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", status="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/cutsame/solution/template/model/TemplateItem;->q:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", templateType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/cutsame/solution/template/model/TemplateItem;->r:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", providerMediaId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/cutsame/solution/template/model/TemplateItem;->s:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", category="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/cutsame/solution/template/model/TemplateItem;->t:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", zipPath="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/cutsame/solution/template/model/TemplateItem;->u:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", unZipPath="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/cutsame/solution/template/model/TemplateItem;->v:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 6

    const-string v0, "out"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/cutsame/solution/template/model/TemplateItem;->a:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-object v0, p0, Lcom/cutsame/solution/template/model/TemplateItem;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/cutsame/solution/template/model/TemplateItem;->c:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/cutsame/solution/template/model/TemplateItem;->d:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget v0, p0, Lcom/cutsame/solution/template/model/TemplateItem;->e:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/cutsame/solution/template/model/TemplateItem;->f:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/cutsame/solution/template/model/TemplateItem;->g:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-object v0, p0, Lcom/cutsame/solution/template/model/TemplateItem;->h:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/cutsame/solution/template/model/TemplateItem;->i:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/cutsame/solution/template/model/TemplateItem;->j:Lcom/cutsame/solution/template/model/Cover;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_3c

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_42

    :cond_3c
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v0, p1, p2}, Lcom/cutsame/solution/template/model/Cover;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_42
    iget-object v0, p0, Lcom/cutsame/solution/template/model/TemplateItem;->k:Lcom/cutsame/solution/template/model/UrlModel;

    if-nez v0, :cond_4a

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_50

    :cond_4a
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v0, p1, p2}, Lcom/cutsame/solution/template/model/UrlModel;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_50
    iget-object v0, p0, Lcom/cutsame/solution/template/model/TemplateItem;->l:Lcom/cutsame/solution/template/model/UrlModel;

    if-nez v0, :cond_58

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_5e

    :cond_58
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v0, p1, p2}, Lcom/cutsame/solution/template/model/UrlModel;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_5e
    iget-object v0, p0, Lcom/cutsame/solution/template/model/TemplateItem;->m:Lcom/cutsame/solution/template/model/CounterData;

    if-nez v0, :cond_66

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_6c

    :cond_66
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v0, p1, p2}, Lcom/cutsame/solution/template/model/CounterData;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_6c
    iget-object v0, p0, Lcom/cutsame/solution/template/model/TemplateItem;->n:Lcom/cutsame/solution/template/model/Author;

    if-nez v0, :cond_74

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_7a

    :cond_74
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v0, p1, p2}, Lcom/cutsame/solution/template/model/Author;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_7a
    iget-object v0, p0, Lcom/cutsame/solution/template/model/TemplateItem;->o:Lcom/cutsame/solution/template/model/Limit;

    if-nez v0, :cond_82

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_88

    :cond_82
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v0, p1, p2}, Lcom/cutsame/solution/template/model/Limit;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_88
    iget-object p2, p0, Lcom/cutsame/solution/template/model/TemplateItem;->p:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget p2, p0, Lcom/cutsame/solution/template/model/TemplateItem;->q:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lcom/cutsame/solution/template/model/TemplateItem;->r:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object p2, p0, Lcom/cutsame/solution/template/model/TemplateItem;->s:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/cutsame/solution/template/model/TemplateItem;->t:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/cutsame/solution/template/model/TemplateItem;->u:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/cutsame/solution/template/model/TemplateItem;->v:Ljava/lang/String;

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
