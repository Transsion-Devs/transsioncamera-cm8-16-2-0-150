.class public abstract Lcom/ss/ugc/effectplatform/model/AndroidEffectParceler;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlinx/android/parcel/Parceler;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public create(Landroid/os/Parcel;)Lcom/ss/ugc/effectplatform/model/Effect;
    .registers 61

    move-object/from16 v0, p1

    const-string v1, "parcel"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    invoke-virtual {v0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 23
    invoke-virtual {v0}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v2

    .line 24
    invoke-virtual {v0}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v6

    .line 25
    invoke-virtual {v0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 26
    invoke-virtual {v0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 27
    invoke-virtual {v0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 28
    const-class v7, Lcom/ss/ugc/effectplatform/model/Effect;

    invoke-virtual {v7}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v8

    invoke-virtual {v0, v8}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v8

    const-string v9, "null cannot be cast to non-null type com.ss.ugc.effectplatform.model.UrlModel"

    if-eqz v8, :cond_241

    move-object v10, v8

    check-cast v10, Lcom/ss/ugc/effectplatform/model/UrlModel;

    .line 29
    invoke-virtual {v7}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v8

    invoke-virtual {v0, v8}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v8

    if-eqz v8, :cond_23b

    move-object v11, v8

    check-cast v11, Lcom/ss/ugc/effectplatform/model/UrlModel;

    .line 30
    invoke-virtual {v7}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v8

    invoke-virtual {v0, v8}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v8

    if-eqz v8, :cond_235

    move-object v12, v8

    check-cast v12, Lcom/ss/ugc/effectplatform/model/UrlModel;

    .line 31
    invoke-virtual {v7}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v8

    invoke-virtual {v0, v8}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v8

    if-eqz v8, :cond_22f

    move-object v13, v8

    check-cast v13, Lcom/ss/ugc/effectplatform/model/UrlModel;

    .line 32
    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v14

    .line 33
    invoke-virtual {v0}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v8

    .line 34
    invoke-virtual {v0}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v16

    .line 35
    invoke-virtual {v0}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v17

    .line 36
    invoke-virtual {v0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v9

    .line 37
    invoke-virtual {v0}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v19

    .line 38
    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v15

    move-object/from16 p0, v1

    .line 39
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v15}, Ljava/util/ArrayList;-><init>(I)V

    :goto_7a
    if-nez v15, :cond_208

    move-object/from16 v18, v3

    .line 42
    new-instance v3, Lcom/ss/ugc/effectplatform/model/Effect;

    const-string v7, ""

    move-object/from16 v20, v4

    if-eqz p0, :cond_89

    move-object/from16 v4, p0

    goto :goto_8a

    :cond_89
    move-object v4, v7

    :goto_8a
    if-eqz v2, :cond_8d

    goto :goto_92

    :cond_8d
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    :goto_92
    if-eqz v18, :cond_98

    move-object v15, v7

    move-object/from16 v7, v18

    goto :goto_99

    :cond_98
    move-object v15, v7

    :goto_99
    move-object/from16 v21, v8

    if-eqz v20, :cond_a0

    move-object/from16 v8, v20

    goto :goto_a1

    :cond_a0
    move-object v8, v15

    :goto_a1
    if-eqz v5, :cond_a4

    goto :goto_a5

    :cond_a4
    move-object v5, v15

    :goto_a5
    if-eqz v21, :cond_aa

    move-object/from16 v18, v21

    goto :goto_af

    .line 45
    :cond_aa
    new-instance v18, Ljava/util/ArrayList;

    invoke-direct/range {v18 .. v18}, Ljava/util/ArrayList;-><init>()V

    :goto_af
    if-eqz v9, :cond_b2

    goto :goto_b3

    :cond_b2
    move-object v9, v15

    .line 48
    :goto_b3
    invoke-virtual {v0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v21

    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v22

    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v23

    invoke-virtual {v0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v20

    if-eqz v20, :cond_c8

    move-object/from16 v24, v20

    goto :goto_ca

    :cond_c8
    move-object/from16 v24, v15

    .line 50
    :goto_ca
    invoke-virtual {v0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v20

    if-eqz v20, :cond_d3

    move-object/from16 v25, v20

    goto :goto_d5

    :cond_d3
    move-object/from16 v25, v15

    :goto_d5
    invoke-virtual {v0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v20

    if-eqz v20, :cond_de

    move-object/from16 v26, v20

    goto :goto_e0

    :cond_de
    move-object/from16 v26, v15

    :goto_e0
    invoke-virtual {v0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v20

    if-eqz v20, :cond_e9

    move-object/from16 v27, v20

    goto :goto_eb

    :cond_e9
    move-object/from16 v27, v15

    .line 52
    :goto_eb
    invoke-virtual {v0}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v28

    invoke-virtual {v0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v29

    invoke-virtual {v0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v20

    if-eqz v20, :cond_fc

    move-object/from16 v30, v20

    goto :goto_fe

    :cond_fc
    move-object/from16 v30, v15

    .line 54
    :goto_fe
    invoke-virtual {v0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v20

    if-eqz v20, :cond_107

    move-object/from16 v31, v20

    goto :goto_109

    :cond_107
    move-object/from16 v31, v15

    :goto_109
    invoke-virtual {v0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v20

    if-eqz v20, :cond_114

    move-object/from16 v32, v20

    :goto_111
    move-object/from16 v33, v1

    goto :goto_117

    :cond_114
    move-object/from16 v32, v15

    goto :goto_111

    :goto_117
    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    const/16 v20, 0x0

    move-object/from16 p0, v2

    const/4 v2, 0x1

    if-ne v1, v2, :cond_129

    move/from16 v1, v20

    move-object/from16 v20, v33

    move/from16 v33, v2

    goto :goto_12f

    :cond_129
    move/from16 v1, v20

    move-object/from16 v20, v33

    move/from16 v33, v1

    .line 55
    :goto_12f
    invoke-virtual {v0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v34

    if-eqz v34, :cond_136

    goto :goto_138

    :cond_136
    move-object/from16 v34, v15

    :goto_138
    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-ne v1, v2, :cond_142

    move/from16 v35, v2

    :goto_140
    const/4 v1, 0x0

    goto :goto_145

    :cond_142
    const/16 v35, 0x0

    goto :goto_140

    :goto_145
    invoke-virtual {v0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v36

    if-eqz v36, :cond_14c

    goto :goto_14e

    :cond_14c
    move-object/from16 v36, v15

    .line 56
    :goto_14e
    invoke-virtual {v0}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v37

    invoke-virtual {v0}, Landroid/os/Parcel;->readLong()J

    move-result-wide v38

    invoke-virtual {v0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v40

    if-eqz v40, :cond_15d

    goto :goto_15f

    :cond_15d
    move-object/from16 v40, v15

    .line 58
    :goto_15f
    invoke-virtual {v0}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v41

    invoke-virtual {v0}, Landroid/os/Parcel;->readLong()J

    move-result-wide v42

    invoke-virtual {v0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v44

    invoke-virtual {v0}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v45

    invoke-virtual {v0}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v46

    .line 59
    invoke-virtual {v0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v47

    if-eqz v47, :cond_17a

    goto :goto_17c

    :cond_17a
    move-object/from16 v47, v15

    :goto_17c
    invoke-virtual {v0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v48

    if-eqz v48, :cond_183

    goto :goto_185

    :cond_183
    move-object/from16 v48, v15

    :goto_185
    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-ne v1, v2, :cond_18e

    move/from16 v49, v2

    goto :goto_190

    :cond_18e
    const/16 v49, 0x0

    .line 60
    :goto_190
    invoke-virtual {v0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_199

    move-object/from16 v50, v1

    goto :goto_19b

    :cond_199
    move-object/from16 v50, v15

    .line 61
    :goto_19b
    invoke-virtual {v0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1a4

    move-object/from16 v51, v1

    goto :goto_1a6

    :cond_1a4
    move-object/from16 v51, v15

    .line 62
    :goto_1a6
    invoke-virtual {v0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1af

    move-object/from16 v52, v1

    goto :goto_1b1

    :cond_1af
    move-object/from16 v52, v15

    :goto_1b1
    invoke-virtual {v0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v53

    invoke-virtual {v0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v54

    invoke-virtual {v0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v55

    invoke-virtual {v0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v56

    invoke-virtual {v0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v57

    const-class v1, Lcom/ss/ugc/effectplatform/model/AuthorThumbModel;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v1

    instance-of v2, v1, Lcom/ss/ugc/effectplatform/model/AuthorThumbModel;

    if-nez v2, :cond_1d4

    const/4 v1, 0x0

    :cond_1d4
    move-object/from16 v58, v1

    check-cast v58, Lcom/ss/ugc/effectplatform/model/AuthorThumbModel;

    move-object/from16 v15, v18

    move-object/from16 v18, v9

    move-object v9, v5

    move-object/from16 v5, p0

    .line 42
    invoke-direct/range {v3 .. v58}, Lcom/ss/ugc/effectplatform/model/Effect;-><init>(Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/ss/ugc/effectplatform/model/UrlModel;Lcom/ss/ugc/effectplatform/model/UrlModel;Lcom/ss/ugc/effectplatform/model/UrlModel;Lcom/ss/ugc/effectplatform/model/UrlModel;ILjava/util/List;Ljava/util/List;Ljava/util/List;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZLjava/lang/String;Ljava/util/List;JLjava/lang/String;Ljava/util/List;JLjava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/ss/ugc/effectplatform/model/AuthorThumbModel;)V

    .line 63
    invoke-virtual {v0}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v1

    if-eqz v1, :cond_1e9

    goto :goto_1ee

    :cond_1e9
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    :goto_1ee
    invoke-virtual {v3, v1}, Lcom/ss/ugc/effectplatform/model/Effect;->setRequirements(Ljava/util/List;)V

    .line 64
    invoke-virtual {v0}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v1

    if-eqz v1, :cond_1f8

    goto :goto_1fd

    :cond_1f8
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    :goto_1fd
    invoke-virtual {v3, v1}, Lcom/ss/ugc/effectplatform/model/Effect;->setTypes(Ljava/util/List;)V

    .line 65
    invoke-virtual {v0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/ss/ugc/effectplatform/model/Effect;->setModel_names(Ljava/lang/String;)V

    return-object v3

    :cond_208
    move-object/from16 v18, v3

    move-object/from16 v20, v4

    move-object/from16 v21, v8

    .line 68
    invoke-virtual {v7}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v3

    if-eqz v3, :cond_227

    check-cast v3, Lcom/ss/ugc/effectplatform/model/Effect;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v15, v15, -0x1

    move-object/from16 v3, v18

    move-object/from16 v4, v20

    move-object/from16 v8, v21

    goto/16 :goto_7a

    :cond_227
    new-instance v0, Lkotlin/TypeCastException;

    const-string v1, "null cannot be cast to non-null type com.ss.ugc.effectplatform.model.Effect"

    invoke-direct {v0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 31
    :cond_22f
    new-instance v0, Lkotlin/TypeCastException;

    invoke-direct {v0, v9}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 30
    :cond_235
    new-instance v0, Lkotlin/TypeCastException;

    invoke-direct {v0, v9}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 29
    :cond_23b
    new-instance v0, Lkotlin/TypeCastException;

    invoke-direct {v0, v9}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 28
    :cond_241
    new-instance v0, Lkotlin/TypeCastException;

    invoke-direct {v0, v9}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public bridge synthetic create(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 2

    .line 19
    invoke-virtual {p0, p1}, Lcom/ss/ugc/effectplatform/model/AndroidEffectParceler;->create(Landroid/os/Parcel;)Lcom/ss/ugc/effectplatform/model/Effect;

    move-result-object p0

    return-object p0
.end method

.method public write(Lcom/ss/ugc/effectplatform/model/Effect;Landroid/os/Parcel;I)V
    .registers 6

    const-string p0, "$this$write"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "parcel"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 74
    invoke-virtual {p1}, Lcom/ss/ugc/effectplatform/model/Effect;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 75
    invoke-virtual {p1}, Lcom/ss/ugc/effectplatform/model/Effect;->getInternalRequirements$effect_model_release()Ljava/util/List;

    move-result-object p0

    invoke-virtual {p2, p0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 76
    invoke-virtual {p1}, Lcom/ss/ugc/effectplatform/model/Effect;->getRequirements_sec()Ljava/util/List;

    move-result-object p0

    invoke-virtual {p2, p0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 77
    invoke-virtual {p1}, Lcom/ss/ugc/effectplatform/model/Effect;->getHint()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 78
    invoke-virtual {p1}, Lcom/ss/ugc/effectplatform/model/Effect;->getId()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 79
    invoke-virtual {p1}, Lcom/ss/ugc/effectplatform/model/Effect;->getEffect_id()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 80
    invoke-virtual {p1}, Lcom/ss/ugc/effectplatform/model/Effect;->getFile_url()Lcom/ss/ugc/effectplatform/model/UrlModel;

    move-result-object p0

    invoke-virtual {p2, p0, p3}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 81
    invoke-virtual {p1}, Lcom/ss/ugc/effectplatform/model/Effect;->getIcon_url()Lcom/ss/ugc/effectplatform/model/UrlModel;

    move-result-object p0

    invoke-virtual {p2, p0, p3}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 82
    invoke-virtual {p1}, Lcom/ss/ugc/effectplatform/model/Effect;->getHint_icon()Lcom/ss/ugc/effectplatform/model/UrlModel;

    move-result-object p0

    invoke-virtual {p2, p0, p3}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 83
    invoke-virtual {p1}, Lcom/ss/ugc/effectplatform/model/Effect;->getHint_file()Lcom/ss/ugc/effectplatform/model/UrlModel;

    move-result-object p0

    invoke-virtual {p2, p0, p3}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 84
    invoke-virtual {p1}, Lcom/ss/ugc/effectplatform/model/Effect;->getHint_file_format()I

    move-result p0

    invoke-virtual {p2, p0}, Landroid/os/Parcel;->writeInt(I)V

    .line 85
    invoke-virtual {p1}, Lcom/ss/ugc/effectplatform/model/Effect;->getInternalType$effect_model_release()Ljava/util/List;

    move-result-object p0

    invoke-virtual {p2, p0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 86
    invoke-virtual {p1}, Lcom/ss/ugc/effectplatform/model/Effect;->getTypes_sec()Ljava/util/List;

    move-result-object p0

    invoke-virtual {p2, p0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 87
    invoke-virtual {p1}, Lcom/ss/ugc/effectplatform/model/Effect;->getTags()Ljava/util/List;

    move-result-object p0

    invoke-virtual {p2, p0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 88
    invoke-virtual {p1}, Lcom/ss/ugc/effectplatform/model/Effect;->getTags_updated_at()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 89
    invoke-virtual {p1}, Lcom/ss/ugc/effectplatform/model/Effect;->getChildren()Ljava/util/List;

    move-result-object p0

    invoke-virtual {p2, p0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 90
    invoke-virtual {p1}, Lcom/ss/ugc/effectplatform/model/Effect;->getChild_effects()Ljava/util/List;

    move-result-object p0

    .line 91
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 92
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    .line 94
    :goto_89
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_99

    .line 95
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ss/ugc/effectplatform/model/Effect;

    invoke-virtual {p2, v0, p3}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    goto :goto_89

    .line 98
    :cond_99
    invoke-virtual {p1}, Lcom/ss/ugc/effectplatform/model/Effect;->getParent()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 99
    invoke-virtual {p1}, Lcom/ss/ugc/effectplatform/model/Effect;->getEffect_type()I

    move-result p0

    invoke-virtual {p2, p0}, Landroid/os/Parcel;->writeInt(I)V

    .line 100
    invoke-virtual {p1}, Lcom/ss/ugc/effectplatform/model/Effect;->getSource()I

    move-result p0

    invoke-virtual {p2, p0}, Landroid/os/Parcel;->writeInt(I)V

    .line 101
    invoke-virtual {p1}, Lcom/ss/ugc/effectplatform/model/Effect;->getDesigner_id()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 102
    invoke-virtual {p1}, Lcom/ss/ugc/effectplatform/model/Effect;->getDesigner_encrypted_id()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 103
    invoke-virtual {p1}, Lcom/ss/ugc/effectplatform/model/Effect;->getDevice_platform()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 104
    invoke-virtual {p1}, Lcom/ss/ugc/effectplatform/model/Effect;->getSchema()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 105
    invoke-virtual {p1}, Lcom/ss/ugc/effectplatform/model/Effect;->getMusic()Ljava/util/List;

    move-result-object p0

    invoke-virtual {p2, p0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 106
    invoke-virtual {p1}, Lcom/ss/ugc/effectplatform/model/Effect;->getExtra()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 107
    invoke-virtual {p1}, Lcom/ss/ugc/effectplatform/model/Effect;->getSdk_extra()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 108
    invoke-virtual {p1}, Lcom/ss/ugc/effectplatform/model/Effect;->getAd_raw_data()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 109
    invoke-virtual {p1}, Lcom/ss/ugc/effectplatform/model/Effect;->getComposer_params()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 110
    invoke-virtual {p1}, Lcom/ss/ugc/effectplatform/model/Effect;->is_busi()Z

    move-result p0

    invoke-virtual {p2, p0}, Landroid/os/Parcel;->writeInt(I)V

    .line 111
    invoke-virtual {p1}, Lcom/ss/ugc/effectplatform/model/Effect;->getIop_id()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 112
    invoke-virtual {p1}, Lcom/ss/ugc/effectplatform/model/Effect;->is_iop()Z

    move-result p0

    invoke-virtual {p2, p0}, Landroid/os/Parcel;->writeInt(I)V

    .line 113
    invoke-virtual {p1}, Lcom/ss/ugc/effectplatform/model/Effect;->getResource_id()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 114
    invoke-virtual {p1}, Lcom/ss/ugc/effectplatform/model/Effect;->getBind_ids()Ljava/util/List;

    move-result-object p0

    invoke-virtual {p2, p0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 115
    invoke-virtual {p1}, Lcom/ss/ugc/effectplatform/model/Effect;->getPtime()J

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 116
    invoke-virtual {p1}, Lcom/ss/ugc/effectplatform/model/Effect;->getGrade_key()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 117
    invoke-virtual {p1}, Lcom/ss/ugc/effectplatform/model/Effect;->getChallenge()Ljava/util/List;

    move-result-object p0

    invoke-virtual {p2, p0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 118
    invoke-virtual {p1}, Lcom/ss/ugc/effectplatform/model/Effect;->getUse_number()J

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 119
    invoke-virtual {p1}, Lcom/ss/ugc/effectplatform/model/Effect;->getExtra_tag()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 120
    invoke-virtual {p1}, Lcom/ss/ugc/effectplatform/model/Effect;->getVideoPlayURLs()Ljava/util/List;

    move-result-object p0

    invoke-virtual {p2, p0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 121
    invoke-virtual {p1}, Lcom/ss/ugc/effectplatform/model/Effect;->getComposerPath()Ljava/util/List;

    move-result-object p0

    invoke-virtual {p2, p0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 122
    invoke-virtual {p1}, Lcom/ss/ugc/effectplatform/model/Effect;->getZipPath()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 123
    invoke-virtual {p1}, Lcom/ss/ugc/effectplatform/model/Effect;->getUnzipPath()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 124
    invoke-virtual {p1}, Lcom/ss/ugc/effectplatform/model/Effect;->isDownloaded()Z

    move-result p0

    invoke-virtual {p2, p0}, Landroid/os/Parcel;->writeInt(I)V

    .line 125
    invoke-virtual {p1}, Lcom/ss/ugc/effectplatform/model/Effect;->getPanel()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 126
    invoke-virtual {p1}, Lcom/ss/ugc/effectplatform/model/Effect;->getSearchType()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 127
    invoke-virtual {p1}, Lcom/ss/ugc/effectplatform/model/Effect;->getPlatformVersion()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 128
    invoke-virtual {p1}, Lcom/ss/ugc/effectplatform/model/Effect;->getRecId()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 129
    invoke-virtual {p1}, Lcom/ss/ugc/effectplatform/model/Effect;->getInternalModelNames$effect_model_release()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 130
    invoke-virtual {p1}, Lcom/ss/ugc/effectplatform/model/Effect;->getModel_names_sec()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 131
    invoke-virtual {p1}, Lcom/ss/ugc/effectplatform/model/Effect;->getOriginal_effect_id()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 132
    invoke-virtual {p1}, Lcom/ss/ugc/effectplatform/model/Effect;->getNickname()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 133
    invoke-virtual {p1}, Lcom/ss/ugc/effectplatform/model/Effect;->getAvatar_thumb()Lcom/ss/ugc/effectplatform/model/AuthorThumbModel;

    move-result-object p0

    invoke-virtual {p2, p0, p3}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 134
    invoke-virtual {p1}, Lcom/ss/ugc/effectplatform/model/Effect;->getRequirements()Ljava/util/List;

    move-result-object p0

    invoke-virtual {p2, p0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 135
    invoke-virtual {p1}, Lcom/ss/ugc/effectplatform/model/Effect;->getTypes()Ljava/util/List;

    move-result-object p0

    invoke-virtual {p2, p0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 136
    invoke-virtual {p1}, Lcom/ss/ugc/effectplatform/model/Effect;->getModel_names()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
