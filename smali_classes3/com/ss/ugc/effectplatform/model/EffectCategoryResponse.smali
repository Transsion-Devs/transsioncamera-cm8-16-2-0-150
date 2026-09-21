.class public Lcom/ss/ugc/effectplatform/model/EffectCategoryResponse;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ss/ugc/effectplatform/model/EffectCategoryResponse$Creator;
    }
.end annotation

.annotation build Lkotlinx/android/parcel/Parcelize;
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field private collection_effect:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "+",
            "Lcom/ss/ugc/effectplatform/model/Effect;",
            ">;"
        }
    .end annotation
.end field

.field private extra:Ljava/lang/String;

.field private front_effect:Lcom/ss/ugc/effectplatform/model/Effect;

.field private icon_normal_url:Ljava/lang/String;

.field private icon_selected_url:Ljava/lang/String;

.field private id:Ljava/lang/String;

.field private is_default:Z

.field private key:Ljava/lang/String;

.field private name:Ljava/lang/String;

.field private rear_effect:Lcom/ss/ugc/effectplatform/model/Effect;

.field private tags:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private tags_update_time:Ljava/lang/String;

.field private total_effects:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "+",
            "Lcom/ss/ugc/effectplatform/model/Effect;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/ss/ugc/effectplatform/model/EffectCategoryResponse$Creator;

    invoke-direct {v0}, Lcom/ss/ugc/effectplatform/model/EffectCategoryResponse$Creator;-><init>()V

    sput-object v0, Lcom/ss/ugc/effectplatform/model/EffectCategoryResponse;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 17

    .line 0
    const/16 v14, 0x1fff

    const/4 v15, 0x0

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

    const/4 v13, 0x0

    move-object/from16 v0, p0

    invoke-direct/range {v0 .. v15}, Lcom/ss/ugc/effectplatform/model/EffectCategoryResponse;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/ss/ugc/effectplatform/model/Effect;Lcom/ss/ugc/effectplatform/model/Effect;Ljava/util/List;Ljava/util/List;Ljava/lang/String;Ljava/util/List;ZLjava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/ss/ugc/effectplatform/model/Effect;Lcom/ss/ugc/effectplatform/model/Effect;Ljava/util/List;Ljava/util/List;Ljava/lang/String;Ljava/util/List;ZLjava/lang/String;)V
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/ss/ugc/effectplatform/model/Effect;",
            "Lcom/ss/ugc/effectplatform/model/Effect;",
            "Ljava/util/List<",
            "+",
            "Lcom/ss/ugc/effectplatform/model/Effect;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "+",
            "Lcom/ss/ugc/effectplatform/model/Effect;",
            ">;Z",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const-string v0, "id"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "name"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "key"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "total_effects"

    invoke-static {p8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "tags"

    invoke-static {p9, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "collection_effect"

    invoke-static {p11, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ss/ugc/effectplatform/model/EffectCategoryResponse;->id:Ljava/lang/String;

    iput-object p2, p0, Lcom/ss/ugc/effectplatform/model/EffectCategoryResponse;->name:Ljava/lang/String;

    iput-object p3, p0, Lcom/ss/ugc/effectplatform/model/EffectCategoryResponse;->key:Ljava/lang/String;

    iput-object p4, p0, Lcom/ss/ugc/effectplatform/model/EffectCategoryResponse;->icon_normal_url:Ljava/lang/String;

    iput-object p5, p0, Lcom/ss/ugc/effectplatform/model/EffectCategoryResponse;->icon_selected_url:Ljava/lang/String;

    iput-object p6, p0, Lcom/ss/ugc/effectplatform/model/EffectCategoryResponse;->front_effect:Lcom/ss/ugc/effectplatform/model/Effect;

    iput-object p7, p0, Lcom/ss/ugc/effectplatform/model/EffectCategoryResponse;->rear_effect:Lcom/ss/ugc/effectplatform/model/Effect;

    iput-object p8, p0, Lcom/ss/ugc/effectplatform/model/EffectCategoryResponse;->total_effects:Ljava/util/List;

    iput-object p9, p0, Lcom/ss/ugc/effectplatform/model/EffectCategoryResponse;->tags:Ljava/util/List;

    iput-object p10, p0, Lcom/ss/ugc/effectplatform/model/EffectCategoryResponse;->tags_update_time:Ljava/lang/String;

    iput-object p11, p0, Lcom/ss/ugc/effectplatform/model/EffectCategoryResponse;->collection_effect:Ljava/util/List;

    iput-boolean p12, p0, Lcom/ss/ugc/effectplatform/model/EffectCategoryResponse;->is_default:Z

    iput-object p13, p0, Lcom/ss/ugc/effectplatform/model/EffectCategoryResponse;->extra:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/ss/ugc/effectplatform/model/Effect;Lcom/ss/ugc/effectplatform/model/Effect;Ljava/util/List;Ljava/util/List;Ljava/lang/String;Ljava/util/List;ZLjava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 29

    move/from16 v0, p14

    and-int/lit8 v1, v0, 0x1

    const-string v2, ""

    if-eqz v1, :cond_9

    move-object p1, v2

    :cond_9
    and-int/lit8 v1, v0, 0x2

    if-eqz v1, :cond_f

    move-object v1, v2

    goto :goto_10

    :cond_f
    move-object v1, p2

    :goto_10
    and-int/lit8 v3, v0, 0x4

    if-eqz v3, :cond_15

    goto :goto_17

    :cond_15
    move-object/from16 v2, p3

    :goto_17
    and-int/lit8 v3, v0, 0x8

    const/4 v4, 0x0

    if-eqz v3, :cond_1e

    move-object v3, v4

    goto :goto_20

    :cond_1e
    move-object/from16 v3, p4

    :goto_20
    and-int/lit8 v5, v0, 0x10

    if-eqz v5, :cond_26

    move-object v5, v4

    goto :goto_28

    :cond_26
    move-object/from16 v5, p5

    :goto_28
    and-int/lit8 v6, v0, 0x20

    if-eqz v6, :cond_2e

    move-object v6, v4

    goto :goto_30

    :cond_2e
    move-object/from16 v6, p6

    :goto_30
    and-int/lit8 v7, v0, 0x40

    if-eqz v7, :cond_36

    move-object v7, v4

    goto :goto_38

    :cond_36
    move-object/from16 v7, p7

    :goto_38
    and-int/lit16 v8, v0, 0x80

    if-eqz v8, :cond_42

    .line 24
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    goto :goto_44

    :cond_42
    move-object/from16 v8, p8

    :goto_44
    and-int/lit16 v9, v0, 0x100

    if-eqz v9, :cond_4e

    .line 25
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    goto :goto_50

    :cond_4e
    move-object/from16 v9, p9

    :goto_50
    and-int/lit16 v10, v0, 0x200

    if-eqz v10, :cond_56

    move-object v10, v4

    goto :goto_58

    :cond_56
    move-object/from16 v10, p10

    :goto_58
    and-int/lit16 v11, v0, 0x400

    if-eqz v11, :cond_62

    .line 27
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    goto :goto_64

    :cond_62
    move-object/from16 v11, p11

    :goto_64
    and-int/lit16 v12, v0, 0x800

    if-eqz v12, :cond_6a

    const/4 v12, 0x0

    goto :goto_6c

    :cond_6a
    move/from16 v12, p12

    :goto_6c
    and-int/lit16 v0, v0, 0x1000

    if-eqz v0, :cond_8b

    move-object/from16 p14, v4

    :goto_72
    move-object p2, p1

    move-object/from16 p3, v1

    move-object/from16 p4, v2

    move-object/from16 p5, v3

    move-object/from16 p6, v5

    move-object/from16 p7, v6

    move-object/from16 p8, v7

    move-object/from16 p9, v8

    move-object/from16 p10, v9

    move-object/from16 p11, v10

    move-object/from16 p12, v11

    move/from16 p13, v12

    move-object p1, p0

    goto :goto_8e

    :cond_8b
    move-object/from16 p14, p13

    goto :goto_72

    .line 33
    :goto_8e
    invoke-direct/range {p1 .. p14}, Lcom/ss/ugc/effectplatform/model/EffectCategoryResponse;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/ss/ugc/effectplatform/model/Effect;Lcom/ss/ugc/effectplatform/model/Effect;Ljava/util/List;Ljava/util/List;Ljava/lang/String;Ljava/util/List;ZLjava/lang/String;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public getCollection_effect()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/ss/ugc/effectplatform/model/Effect;",
            ">;"
        }
    .end annotation

    .line 27
    iget-object p0, p0, Lcom/ss/ugc/effectplatform/model/EffectCategoryResponse;->collection_effect:Ljava/util/List;

    return-object p0
.end method

.method public getExtra()Ljava/lang/String;
    .registers 1

    .line 33
    iget-object p0, p0, Lcom/ss/ugc/effectplatform/model/EffectCategoryResponse;->extra:Ljava/lang/String;

    return-object p0
.end method

.method public getFront_effect()Lcom/ss/ugc/effectplatform/model/Effect;
    .registers 1

    .line 20
    iget-object p0, p0, Lcom/ss/ugc/effectplatform/model/EffectCategoryResponse;->front_effect:Lcom/ss/ugc/effectplatform/model/Effect;

    return-object p0
.end method

.method public getIcon_normal_url()Ljava/lang/String;
    .registers 1

    .line 16
    iget-object p0, p0, Lcom/ss/ugc/effectplatform/model/EffectCategoryResponse;->icon_normal_url:Ljava/lang/String;

    return-object p0
.end method

.method public getIcon_selected_url()Ljava/lang/String;
    .registers 1

    .line 17
    iget-object p0, p0, Lcom/ss/ugc/effectplatform/model/EffectCategoryResponse;->icon_selected_url:Ljava/lang/String;

    return-object p0
.end method

.method public getId()Ljava/lang/String;
    .registers 1

    .line 13
    iget-object p0, p0, Lcom/ss/ugc/effectplatform/model/EffectCategoryResponse;->id:Ljava/lang/String;

    return-object p0
.end method

.method public getKey()Ljava/lang/String;
    .registers 1

    .line 15
    iget-object p0, p0, Lcom/ss/ugc/effectplatform/model/EffectCategoryResponse;->key:Ljava/lang/String;

    return-object p0
.end method

.method public getName()Ljava/lang/String;
    .registers 1

    .line 14
    iget-object p0, p0, Lcom/ss/ugc/effectplatform/model/EffectCategoryResponse;->name:Ljava/lang/String;

    return-object p0
.end method

.method public getRear_effect()Lcom/ss/ugc/effectplatform/model/Effect;
    .registers 1

    .line 23
    iget-object p0, p0, Lcom/ss/ugc/effectplatform/model/EffectCategoryResponse;->rear_effect:Lcom/ss/ugc/effectplatform/model/Effect;

    return-object p0
.end method

.method public getTags()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 25
    iget-object p0, p0, Lcom/ss/ugc/effectplatform/model/EffectCategoryResponse;->tags:Ljava/util/List;

    return-object p0
.end method

.method public getTags_update_time()Ljava/lang/String;
    .registers 1

    .line 26
    iget-object p0, p0, Lcom/ss/ugc/effectplatform/model/EffectCategoryResponse;->tags_update_time:Ljava/lang/String;

    return-object p0
.end method

.method public getTotal_effects()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/ss/ugc/effectplatform/model/Effect;",
            ">;"
        }
    .end annotation

    .line 24
    iget-object p0, p0, Lcom/ss/ugc/effectplatform/model/EffectCategoryResponse;->total_effects:Ljava/util/List;

    return-object p0
.end method

.method public is_default()Z
    .registers 1

    .line 30
    iget-boolean p0, p0, Lcom/ss/ugc/effectplatform/model/EffectCategoryResponse;->is_default:Z

    return p0
.end method

.method public setCollection_effect(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/ss/ugc/effectplatform/model/Effect;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    iput-object p1, p0, Lcom/ss/ugc/effectplatform/model/EffectCategoryResponse;->collection_effect:Ljava/util/List;

    return-void
.end method

.method public setExtra(Ljava/lang/String;)V
    .registers 2

    .line 33
    iput-object p1, p0, Lcom/ss/ugc/effectplatform/model/EffectCategoryResponse;->extra:Ljava/lang/String;

    return-void
.end method

.method public setFront_effect(Lcom/ss/ugc/effectplatform/model/Effect;)V
    .registers 2

    .line 20
    iput-object p1, p0, Lcom/ss/ugc/effectplatform/model/EffectCategoryResponse;->front_effect:Lcom/ss/ugc/effectplatform/model/Effect;

    return-void
.end method

.method public setIcon_normal_url(Ljava/lang/String;)V
    .registers 2

    .line 16
    iput-object p1, p0, Lcom/ss/ugc/effectplatform/model/EffectCategoryResponse;->icon_normal_url:Ljava/lang/String;

    return-void
.end method

.method public setIcon_selected_url(Ljava/lang/String;)V
    .registers 2

    .line 17
    iput-object p1, p0, Lcom/ss/ugc/effectplatform/model/EffectCategoryResponse;->icon_selected_url:Ljava/lang/String;

    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .registers 3

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    iput-object p1, p0, Lcom/ss/ugc/effectplatform/model/EffectCategoryResponse;->id:Ljava/lang/String;

    return-void
.end method

.method public setKey(Ljava/lang/String;)V
    .registers 3

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    iput-object p1, p0, Lcom/ss/ugc/effectplatform/model/EffectCategoryResponse;->key:Ljava/lang/String;

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .registers 3

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    iput-object p1, p0, Lcom/ss/ugc/effectplatform/model/EffectCategoryResponse;->name:Ljava/lang/String;

    return-void
.end method

.method public setRear_effect(Lcom/ss/ugc/effectplatform/model/Effect;)V
    .registers 2

    .line 23
    iput-object p1, p0, Lcom/ss/ugc/effectplatform/model/EffectCategoryResponse;->rear_effect:Lcom/ss/ugc/effectplatform/model/Effect;

    return-void
.end method

.method public setTags(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    iput-object p1, p0, Lcom/ss/ugc/effectplatform/model/EffectCategoryResponse;->tags:Ljava/util/List;

    return-void
.end method

.method public setTags_update_time(Ljava/lang/String;)V
    .registers 2

    .line 26
    iput-object p1, p0, Lcom/ss/ugc/effectplatform/model/EffectCategoryResponse;->tags_update_time:Ljava/lang/String;

    return-void
.end method

.method public setTotal_effects(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/ss/ugc/effectplatform/model/Effect;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    iput-object p1, p0, Lcom/ss/ugc/effectplatform/model/EffectCategoryResponse;->total_effects:Ljava/util/List;

    return-void
.end method

.method public set_default(Z)V
    .registers 2

    .line 30
    iput-boolean p1, p0, Lcom/ss/ugc/effectplatform/model/EffectCategoryResponse;->is_default:Z

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 5

    const-string v0, "parcel"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ss/ugc/effectplatform/model/EffectCategoryResponse;->id:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ss/ugc/effectplatform/model/EffectCategoryResponse;->name:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ss/ugc/effectplatform/model/EffectCategoryResponse;->key:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ss/ugc/effectplatform/model/EffectCategoryResponse;->icon_normal_url:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ss/ugc/effectplatform/model/EffectCategoryResponse;->icon_selected_url:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ss/ugc/effectplatform/model/EffectCategoryResponse;->front_effect:Lcom/ss/ugc/effectplatform/model/Effect;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget-object v0, p0, Lcom/ss/ugc/effectplatform/model/EffectCategoryResponse;->rear_effect:Lcom/ss/ugc/effectplatform/model/Effect;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget-object v0, p0, Lcom/ss/ugc/effectplatform/model/EffectCategoryResponse;->total_effects:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_35
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_45

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ss/ugc/effectplatform/model/Effect;

    invoke-virtual {p1, v1, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    goto :goto_35

    :cond_45
    iget-object v0, p0, Lcom/ss/ugc/effectplatform/model/EffectCategoryResponse;->tags:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    iget-object v0, p0, Lcom/ss/ugc/effectplatform/model/EffectCategoryResponse;->tags_update_time:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ss/ugc/effectplatform/model/EffectCategoryResponse;->collection_effect:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_5c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ss/ugc/effectplatform/model/Effect;

    invoke-virtual {p1, v1, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    goto :goto_5c

    :cond_6c
    iget-boolean p2, p0, Lcom/ss/ugc/effectplatform/model/EffectCategoryResponse;->is_default:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object p0, p0, Lcom/ss/ugc/effectplatform/model/EffectCategoryResponse;->extra:Ljava/lang/String;

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
