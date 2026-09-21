.class public abstract Lcom/apprichtap/haptic/base/a;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method private static a(I)I
    .registers 3

    .line 0
    const/16 v0, 0x64

    const/16 v1, 0x32

    if-le p0, v1, :cond_9

    if-ge p0, v0, :cond_9

    return v1

    :cond_9
    if-le p0, v0, :cond_d

    add-int/lit8 p0, p0, -0x32

    :cond_d
    return p0
.end method

.method public static a(Lb/a;)Ljava/lang/String;
    .registers 15

    .line 0
    const-string v0, "Intensity"

    const-string v1, "Frequency"

    const-string v2, "continuous"

    :try_start_6
    new-instance v3, Lorg/json/JSONStringer;

    invoke-direct {v3}, Lorg/json/JSONStringer;-><init>()V

    invoke-virtual {v3}, Lorg/json/JSONStringer;->object()Lorg/json/JSONStringer;

    const-string v4, "Metadata"

    invoke-virtual {v3, v4}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    move-result-object v4

    invoke-virtual {v4}, Lorg/json/JSONStringer;->object()Lorg/json/JSONStringer;

    move-result-object v4

    const-string v5, "Created"

    invoke-virtual {v4, v5}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    move-result-object v4

    iget-object v5, p0, Lb/a;->a:Lb/b;

    iget-object v5, v5, Lb/b;->b:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lorg/json/JSONStringer;->value(Ljava/lang/Object;)Lorg/json/JSONStringer;

    move-result-object v4

    const-string v5, "Description"

    invoke-virtual {v4, v5}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    move-result-object v4

    iget-object v5, p0, Lb/a;->a:Lb/b;

    iget-object v5, v5, Lb/b;->c:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lorg/json/JSONStringer;->value(Ljava/lang/Object;)Lorg/json/JSONStringer;

    move-result-object v4

    const-string v5, "Version"

    invoke-virtual {v4, v5}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    move-result-object v4

    iget-object v5, p0, Lb/a;->a:Lb/b;

    iget v5, v5, Lb/b;->a:I

    int-to-long v5, v5

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONStringer;->value(J)Lorg/json/JSONStringer;

    move-result-object v4

    invoke-virtual {v4}, Lorg/json/JSONStringer;->endObject()Lorg/json/JSONStringer;

    const-string v4, "Pattern"

    invoke-virtual {v3, v4}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    move-result-object v4

    invoke-virtual {v4}, Lorg/json/JSONStringer;->array()Lorg/json/JSONStringer;

    iget-object p0, p0, Lb/a;->b:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v5, 0x0

    move v6, v5

    :goto_57
    if-ge v6, v4, :cond_12b

    invoke-virtual {p0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    add-int/lit8 v6, v6, 0x1

    check-cast v7, La/e;

    invoke-virtual {v3}, Lorg/json/JSONStringer;->object()Lorg/json/JSONStringer;

    const-string v8, "Event"

    invoke-virtual {v3, v8}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    move-result-object v8

    invoke-virtual {v8}, Lorg/json/JSONStringer;->object()Lorg/json/JSONStringer;

    move-result-object v8

    const-string v9, "Type"

    invoke-virtual {v8, v9}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    move-result-object v8

    iget-object v9, v7, La/e;->a:La/b;

    iget-object v9, v9, La/b;->a:Ljava/lang/String;

    invoke-virtual {v8, v9}, Lorg/json/JSONStringer;->value(Ljava/lang/Object;)Lorg/json/JSONStringer;

    move-result-object v8

    const-string v9, "RelativeTime"

    invoke-virtual {v8, v9}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    move-result-object v8

    iget-object v9, v7, La/e;->a:La/b;

    iget v9, v9, La/b;->b:I

    int-to-long v9, v9

    invoke-virtual {v8, v9, v10}, Lorg/json/JSONStringer;->value(J)Lorg/json/JSONStringer;

    iget-object v8, v7, La/e;->a:La/b;

    iget-object v8, v8, La/b;->a:Ljava/lang/String;

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_a2

    const-string v8, "Duration"

    invoke-virtual {v3, v8}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    move-result-object v8

    iget-object v9, v7, La/e;->a:La/b;

    iget v9, v9, La/b;->c:I

    int-to-long v9, v9

    invoke-virtual {v8, v9, v10}, Lorg/json/JSONStringer;->value(J)Lorg/json/JSONStringer;

    :cond_a2
    const-string v8, "Parameters"

    invoke-virtual {v3, v8}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    move-result-object v8

    invoke-virtual {v8}, Lorg/json/JSONStringer;->object()Lorg/json/JSONStringer;

    move-result-object v8

    invoke-virtual {v8, v1}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    move-result-object v8

    iget-object v9, v7, La/e;->a:La/b;

    iget-object v9, v9, La/b;->e:La/d;

    iget v9, v9, La/d;->b:I

    int-to-long v9, v9

    invoke-virtual {v8, v9, v10}, Lorg/json/JSONStringer;->value(J)Lorg/json/JSONStringer;

    move-result-object v8

    invoke-virtual {v8, v0}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    move-result-object v8

    iget-object v9, v7, La/e;->a:La/b;

    iget-object v9, v9, La/b;->e:La/d;

    iget v9, v9, La/d;->a:I

    int-to-long v9, v9

    invoke-virtual {v8, v9, v10}, Lorg/json/JSONStringer;->value(J)Lorg/json/JSONStringer;

    iget-object v8, v7, La/e;->a:La/b;

    iget-object v8, v8, La/b;->a:Ljava/lang/String;

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_11e

    const-string v8, "Curve"

    invoke-virtual {v3, v8}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    move-result-object v8

    invoke-virtual {v8}, Lorg/json/JSONStringer;->array()Lorg/json/JSONStringer;

    iget-object v7, v7, La/e;->a:La/b;

    iget-object v7, v7, La/b;->e:La/d;

    iget-object v7, v7, La/d;->c:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v8

    move v9, v5

    :goto_e7
    if-ge v9, v8, :cond_11b

    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    add-int/lit8 v9, v9, 0x1

    check-cast v10, La/a;

    invoke-virtual {v3}, Lorg/json/JSONStringer;->object()Lorg/json/JSONStringer;

    move-result-object v11

    invoke-virtual {v11, v1}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    move-result-object v11

    iget v12, v10, La/a;->c:I

    int-to-long v12, v12

    invoke-virtual {v11, v12, v13}, Lorg/json/JSONStringer;->value(J)Lorg/json/JSONStringer;

    move-result-object v11

    invoke-virtual {v11, v0}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    move-result-object v11

    iget-wide v12, v10, La/a;->b:D

    invoke-virtual {v11, v12, v13}, Lorg/json/JSONStringer;->value(D)Lorg/json/JSONStringer;

    move-result-object v11

    const-string v12, "Time"

    invoke-virtual {v11, v12}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    move-result-object v11

    iget v10, v10, La/a;->a:I

    int-to-long v12, v10

    invoke-virtual {v11, v12, v13}, Lorg/json/JSONStringer;->value(J)Lorg/json/JSONStringer;

    move-result-object v10

    invoke-virtual {v10}, Lorg/json/JSONStringer;->endObject()Lorg/json/JSONStringer;

    goto :goto_e7

    :cond_11b
    invoke-virtual {v3}, Lorg/json/JSONStringer;->endArray()Lorg/json/JSONStringer;

    :cond_11e
    invoke-virtual {v3}, Lorg/json/JSONStringer;->endObject()Lorg/json/JSONStringer;

    move-result-object v7

    invoke-virtual {v7}, Lorg/json/JSONStringer;->endObject()Lorg/json/JSONStringer;

    move-result-object v7

    invoke-virtual {v7}, Lorg/json/JSONStringer;->endObject()Lorg/json/JSONStringer;

    goto/16 :goto_57

    :cond_12b
    invoke-virtual {v3}, Lorg/json/JSONStringer;->endArray()Lorg/json/JSONStringer;

    move-result-object p0

    invoke-virtual {p0}, Lorg/json/JSONStringer;->endObject()Lorg/json/JSONStringer;

    invoke-virtual {v3}, Lorg/json/JSONStringer;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_136
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_136} :catch_137

    return-object p0

    :catch_137
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 p0, 0x0

    return-object p0
.end method

.method public static a(Lc/a;)Ljava/lang/String;
    .registers 19

    .line 0
    move-object/from16 v0, p0

    const-string v1, "Intensity"

    const-string v2, "Frequency"

    const-string v3, "continuous"

    :try_start_8
    new-instance v4, Lorg/json/JSONStringer;

    invoke-direct {v4}, Lorg/json/JSONStringer;-><init>()V

    invoke-virtual {v4}, Lorg/json/JSONStringer;->object()Lorg/json/JSONStringer;

    const-string v5, "Metadata"

    invoke-virtual {v4, v5}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    move-result-object v5

    invoke-virtual {v5}, Lorg/json/JSONStringer;->object()Lorg/json/JSONStringer;

    move-result-object v5

    const-string v6, "Created"

    invoke-virtual {v5, v6}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    move-result-object v5

    iget-object v6, v0, Lc/a;->a:Lc/b;

    iget-object v6, v6, Lc/b;->b:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lorg/json/JSONStringer;->value(Ljava/lang/Object;)Lorg/json/JSONStringer;

    move-result-object v5

    const-string v6, "Description"

    invoke-virtual {v5, v6}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    move-result-object v5

    iget-object v6, v0, Lc/a;->a:Lc/b;

    iget-object v6, v6, Lc/b;->c:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lorg/json/JSONStringer;->value(Ljava/lang/Object;)Lorg/json/JSONStringer;

    move-result-object v5

    const-string v6, "Version"

    invoke-virtual {v5, v6}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    move-result-object v5

    iget-object v6, v0, Lc/a;->a:Lc/b;

    iget v6, v6, Lc/b;->a:I

    int-to-long v6, v6

    invoke-virtual {v5, v6, v7}, Lorg/json/JSONStringer;->value(J)Lorg/json/JSONStringer;

    move-result-object v5

    invoke-virtual {v5}, Lorg/json/JSONStringer;->endObject()Lorg/json/JSONStringer;

    const-string v5, "PatternList"

    invoke-virtual {v4, v5}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    move-result-object v5

    invoke-virtual {v5}, Lorg/json/JSONStringer;->array()Lorg/json/JSONStringer;

    iget-object v0, v0, Lc/a;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v5

    const/4 v7, 0x0

    :goto_58
    if-ge v7, v5, :cond_19a

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    add-int/lit8 v7, v7, 0x1

    check-cast v8, Lc/c;

    invoke-virtual {v4}, Lorg/json/JSONStringer;->object()Lorg/json/JSONStringer;

    move-result-object v9

    const-string v10, "AbsoluteTime"

    invoke-virtual {v9, v10}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    move-result-object v9

    iget v10, v8, Lc/c;->a:I

    int-to-long v10, v10

    invoke-virtual {v9, v10, v11}, Lorg/json/JSONStringer;->value(J)Lorg/json/JSONStringer;

    move-result-object v9

    const-string v10, "Pattern"

    invoke-virtual {v9, v10}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    move-result-object v9

    invoke-virtual {v9}, Lorg/json/JSONStringer;->array()Lorg/json/JSONStringer;

    iget-object v8, v8, Lc/c;->b:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v9

    const/4 v10, 0x0

    :goto_83
    if-ge v10, v9, :cond_185

    invoke-virtual {v8, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    add-int/lit8 v10, v10, 0x1

    check-cast v11, La/e;

    invoke-virtual {v4}, Lorg/json/JSONStringer;->object()Lorg/json/JSONStringer;

    const-string v12, "Event"

    invoke-virtual {v4, v12}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    move-result-object v12

    invoke-virtual {v12}, Lorg/json/JSONStringer;->object()Lorg/json/JSONStringer;

    move-result-object v12

    const-string v13, "Index"

    invoke-virtual {v12, v13}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    move-result-object v12

    iget-object v13, v11, La/e;->a:La/b;

    iget v13, v13, La/b;->d:I

    int-to-long v13, v13

    invoke-virtual {v12, v13, v14}, Lorg/json/JSONStringer;->value(J)Lorg/json/JSONStringer;

    move-result-object v12

    const-string v13, "RelativeTime"

    invoke-virtual {v12, v13}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    move-result-object v12

    iget-object v13, v11, La/e;->a:La/b;

    iget v13, v13, La/b;->b:I

    int-to-long v13, v13

    invoke-virtual {v12, v13, v14}, Lorg/json/JSONStringer;->value(J)Lorg/json/JSONStringer;

    move-result-object v12

    const-string v13, "Type"

    invoke-virtual {v12, v13}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    move-result-object v12

    iget-object v13, v11, La/e;->a:La/b;

    iget-object v13, v13, La/b;->a:Ljava/lang/String;

    invoke-virtual {v12, v13}, Lorg/json/JSONStringer;->value(Ljava/lang/Object;)Lorg/json/JSONStringer;

    iget-object v12, v11, La/e;->a:La/b;

    iget-object v12, v12, La/b;->a:Ljava/lang/String;

    invoke-virtual {v3, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_dd

    const-string v12, "Duration"

    invoke-virtual {v4, v12}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    move-result-object v12

    iget-object v13, v11, La/e;->a:La/b;

    iget v13, v13, La/b;->c:I

    int-to-long v13, v13

    invoke-virtual {v12, v13, v14}, Lorg/json/JSONStringer;->value(J)Lorg/json/JSONStringer;

    :cond_dd
    const-string v12, "Parameters"

    invoke-virtual {v4, v12}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    move-result-object v12

    invoke-virtual {v12}, Lorg/json/JSONStringer;->object()Lorg/json/JSONStringer;

    move-result-object v12

    invoke-virtual {v12, v2}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    move-result-object v12

    iget-object v13, v11, La/e;->a:La/b;

    iget-object v13, v13, La/b;->e:La/d;

    iget v13, v13, La/d;->b:I

    int-to-long v13, v13

    invoke-virtual {v12, v13, v14}, Lorg/json/JSONStringer;->value(J)Lorg/json/JSONStringer;

    move-result-object v12

    invoke-virtual {v12, v1}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    move-result-object v12

    iget-object v13, v11, La/e;->a:La/b;

    iget-object v13, v13, La/b;->e:La/d;

    iget v13, v13, La/d;->a:I

    int-to-long v13, v13

    invoke-virtual {v12, v13, v14}, Lorg/json/JSONStringer;->value(J)Lorg/json/JSONStringer;

    iget-object v12, v11, La/e;->a:La/b;

    iget-object v12, v12, La/b;->a:Ljava/lang/String;

    invoke-virtual {v3, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_16c

    const-string v12, "Curve"

    invoke-virtual {v4, v12}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    move-result-object v12

    invoke-virtual {v12}, Lorg/json/JSONStringer;->array()Lorg/json/JSONStringer;

    iget-object v11, v11, La/e;->a:La/b;

    iget-object v11, v11, La/b;->e:La/d;

    iget-object v11, v11, La/d;->c:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v12

    const/4 v13, 0x0

    :goto_122
    if-ge v13, v12, :cond_162

    invoke-virtual {v11, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    add-int/lit8 v13, v13, 0x1

    check-cast v14, La/a;

    invoke-virtual {v4}, Lorg/json/JSONStringer;->object()Lorg/json/JSONStringer;

    move-result-object v15

    invoke-virtual {v15, v2}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    move-result-object v15

    iget v6, v14, La/a;->c:I

    move-object/from16 v16, v2

    move-object/from16 v17, v3

    int-to-long v2, v6

    invoke-virtual {v15, v2, v3}, Lorg/json/JSONStringer;->value(J)Lorg/json/JSONStringer;

    move-result-object v2

    invoke-virtual {v2, v1}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    move-result-object v2

    move-object v6, v0

    move-object v3, v1

    iget-wide v0, v14, La/a;->b:D

    invoke-virtual {v2, v0, v1}, Lorg/json/JSONStringer;->value(D)Lorg/json/JSONStringer;

    move-result-object v0

    const-string v1, "Time"

    invoke-virtual {v0, v1}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    move-result-object v0

    iget v1, v14, La/a;->a:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONStringer;->value(J)Lorg/json/JSONStringer;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONStringer;->endObject()Lorg/json/JSONStringer;

    move-object v1, v3

    move-object v0, v6

    move-object/from16 v2, v16

    move-object/from16 v3, v17

    goto :goto_122

    :cond_162
    move-object v6, v0

    move-object/from16 v16, v2

    move-object/from16 v17, v3

    move-object v3, v1

    invoke-virtual {v4}, Lorg/json/JSONStringer;->endArray()Lorg/json/JSONStringer;

    goto :goto_172

    :cond_16c
    move-object v6, v0

    move-object/from16 v16, v2

    move-object/from16 v17, v3

    move-object v3, v1

    :goto_172
    invoke-virtual {v4}, Lorg/json/JSONStringer;->endObject()Lorg/json/JSONStringer;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONStringer;->endObject()Lorg/json/JSONStringer;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONStringer;->endObject()Lorg/json/JSONStringer;

    move-object v1, v3

    move-object v0, v6

    move-object/from16 v2, v16

    move-object/from16 v3, v17

    goto/16 :goto_83

    :cond_185
    move-object v6, v0

    move-object/from16 v16, v2

    move-object/from16 v17, v3

    move-object v3, v1

    invoke-virtual {v4}, Lorg/json/JSONStringer;->endArray()Lorg/json/JSONStringer;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONStringer;->endObject()Lorg/json/JSONStringer;

    move-object v1, v3

    move-object v0, v6

    move-object/from16 v2, v16

    move-object/from16 v3, v17

    goto/16 :goto_58

    :cond_19a
    invoke-virtual {v4}, Lorg/json/JSONStringer;->endArray()Lorg/json/JSONStringer;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONStringer;->endObject()Lorg/json/JSONStringer;

    invoke-virtual {v4}, Lorg/json/JSONStringer;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_1a5
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_1a5} :catch_1a6

    return-object v0

    :catch_1a6
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 v0, 0x0

    return-object v0
.end method

.method public static a(Lc/c;Z)Ljava/lang/String;
    .registers 4

    .line 0
    new-instance v0, Lc/a;

    invoke-direct {v0}, Lc/a;-><init>()V

    new-instance v1, Lc/b;

    invoke-direct {v1}, Lc/b;-><init>()V

    iput-object v1, v0, Lc/a;->a:Lc/b;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lc/a;->b:Ljava/util/ArrayList;

    if-eqz p1, :cond_27

    new-instance p1, Lc/c;

    invoke-direct {p1}, Lc/c;-><init>()V

    const/4 v1, 0x0

    iput v1, p1, Lc/c;->a:I

    iget-object p0, p0, Lc/c;->b:Ljava/util/ArrayList;

    iput-object p0, p1, Lc/c;->b:Ljava/util/ArrayList;

    iget-object p0, v0, Lc/a;->b:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2a

    :cond_27
    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_2a
    invoke-static {v0}, Lcom/apprichtap/haptic/base/a;->a(Lc/a;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 0
    :try_start_0
    invoke-static {p0}, Lcom/apprichtap/haptic/base/a;->c(Ljava/lang/String;)Lb/a;

    move-result-object p0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_4} :catch_5

    goto :goto_a

    :catch_5
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 p0, 0x0

    :goto_a
    if-eqz p0, :cond_40

    iget-object v0, p0, Lb/a;->b:Ljava/util/ArrayList;

    if-eqz v0, :cond_40

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_17

    goto :goto_40

    :cond_17
    new-instance v0, Lc/a;

    invoke-direct {v0}, Lc/a;-><init>()V

    new-instance v1, Lc/b;

    invoke-direct {v1}, Lc/b;-><init>()V

    iput-object v1, v0, Lc/a;->a:Lc/b;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lc/a;->b:Ljava/util/ArrayList;

    new-instance v1, Lc/c;

    invoke-direct {v1}, Lc/c;-><init>()V

    iget-object p0, p0, Lb/a;->b:Ljava/util/ArrayList;

    iput-object p0, v1, Lc/c;->b:Ljava/util/ArrayList;

    const/4 p0, 0x0

    iput p0, v1, Lc/c;->a:I

    iget-object p0, v0, Lc/a;->b:Ljava/util/ArrayList;

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {v0}, Lcom/apprichtap/haptic/base/a;->a(Lc/a;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_40
    :goto_40
    const-string p0, "HEFileUtils"

    const-string v0, " , convertHe10ToHe20, invalid HE1.0 string!"

    invoke-static {p0, v0}, Lcom/apprichtap/haptic/base/d$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, ""

    return-object p0
.end method

.method public static a(Ljava/lang/String;III)Ljava/lang/String;
    .registers 25

    .line 0
    move/from16 v0, p1

    move/from16 v1, p2

    move/from16 v2, p3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "overwriteBaseFrequencyAndIntensityOfHe20String, deltaFreq:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", deltaIntensity:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", majorCoreVersion:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "HEFileUtils"

    invoke-static {v4, v3}, Lcom/apprichtap/haptic/base/d$a;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v3, 0x100

    const/16 v5, 0xff

    if-nez v1, :cond_3c

    if-eq v5, v0, :cond_36

    if-ne v3, v0, :cond_3c

    :cond_36
    const-string v0, "overwriteBaseFrequencyAndIntensityOfHe20String, do nothing!"

    :goto_38
    invoke-static {v4, v0}, Lcom/apprichtap/haptic/base/d$a;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0

    :cond_3c
    if-eq v5, v0, :cond_4a

    if-ne v3, v0, :cond_41

    goto :goto_4a

    :cond_41
    int-to-double v8, v0

    const-wide v10, 0x406ff00000000000L    # 255.5

    sub-double/2addr v8, v10

    div-double/2addr v8, v10

    goto :goto_4c

    :cond_4a
    :goto_4a
    const-wide/16 v8, 0x0

    :goto_4c
    int-to-double v0, v1

    const-wide/high16 v10, 0x4059000000000000L    # 100.0

    div-double/2addr v0, v10

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "overwriteBaseFrequencyAndIntensityOfHe20String, freqRatio:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v5, ", intensityRatio:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v8, v9}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/apprichtap/haptic/base/d$a;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static/range {p0 .. p0}, Lcom/apprichtap/haptic/base/a;->d(Ljava/lang/String;)Lc/a;

    move-result-object v3

    invoke-static {v3}, Lcom/apprichtap/haptic/player/a;->a(La/c;)Z

    move-result v5

    if-nez v5, :cond_79

    const-string v0, "overwriteBaseFrequencyAndIntensityOfHe20String, do nothing as invalid he20String"

    goto :goto_38

    :cond_79
    iget-object v5, v3, Lc/a;->b:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v10

    const/4 v12, 0x0

    :goto_80
    if-ge v12, v10, :cond_139

    invoke-virtual {v5, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    add-int/lit8 v12, v12, 0x1

    check-cast v13, Lc/c;

    iget-object v13, v13, Lc/c;->b:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v14

    const/4 v15, 0x0

    :goto_91
    if-ge v15, v14, :cond_135

    invoke-virtual {v13, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v16

    add-int/lit8 v15, v15, 0x1

    const-wide/16 v17, 0x0

    move-object/from16 v6, v16

    check-cast v6, La/e;

    iget-object v7, v6, La/e;->a:La/b;

    iget-object v7, v7, La/b;->a:Ljava/lang/String;

    const-string v11, "transient"

    invoke-virtual {v11, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_e7

    iget-object v7, v6, La/e;->a:La/b;

    iget-object v7, v7, La/b;->e:La/d;

    iget v11, v7, La/d;->b:I

    move-wide/from16 p1, v0

    if-nez v11, :cond_c1

    iget v0, v7, La/d;->a:I

    if-nez v0, :cond_c1

    const-string v0, "overwriteBaseFrequencyAndIntensityOfHe20String, ignore placeholder event!"

    invoke-static {v4, v0}, Lcom/apprichtap/haptic/base/d$a;->a(Ljava/lang/String;Ljava/lang/String;)V

    move-wide/from16 v0, p1

    goto :goto_91

    :cond_c1
    const/16 v0, 0x18

    if-lt v2, v0, :cond_dd

    cmpl-double v0, p1, v17

    if-ltz v0, :cond_d4

    int-to-double v0, v11

    rsub-int v11, v11, 0x96

    :goto_cc
    move-wide/from16 v19, v0

    int-to-double v0, v11

    mul-double v0, v0, p1

    add-double v0, v19, v0

    goto :goto_d8

    :cond_d4
    int-to-double v0, v11

    add-int/lit8 v11, v11, 0x32

    goto :goto_cc

    :goto_d8
    double-to-int v0, v0

    iput v0, v7, La/d;->b:I

    :cond_db
    move-object v7, v3

    goto :goto_113

    :cond_dd
    cmpl-double v0, p1, v17

    if-ltz v0, :cond_e5

    int-to-double v0, v11

    rsub-int/lit8 v11, v11, 0x64

    goto :goto_cc

    :cond_e5
    int-to-double v0, v11

    goto :goto_cc

    :cond_e7
    move-wide/from16 p1, v0

    iget-object v0, v6, La/e;->a:La/b;

    iget-object v0, v0, La/b;->a:Ljava/lang/String;

    const-string v1, "continuous"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_db

    iget-object v0, v6, La/e;->a:La/b;

    iget-object v0, v0, La/b;->e:La/d;

    cmpl-double v1, p1, v17

    if-ltz v1, :cond_10b

    iget v1, v0, La/d;->b:I

    move-object v7, v3

    int-to-double v2, v1

    rsub-int/lit8 v1, v1, 0x64

    :goto_103
    move-wide/from16 v19, v2

    int-to-double v1, v1

    mul-double v1, v1, p1

    add-double v2, v19, v1

    goto :goto_110

    :cond_10b
    move-object v7, v3

    iget v1, v0, La/d;->b:I

    int-to-double v2, v1

    goto :goto_103

    :goto_110
    double-to-int v1, v2

    iput v1, v0, La/d;->b:I

    :goto_113
    iget-object v0, v6, La/e;->a:La/b;

    iget-object v0, v0, La/b;->e:La/d;

    cmpl-double v1, v8, v17

    if-ltz v1, :cond_127

    iget v1, v0, La/d;->a:I

    int-to-double v2, v1

    rsub-int/lit8 v1, v1, 0x64

    :goto_120
    move-wide/from16 v19, v2

    int-to-double v1, v1

    mul-double/2addr v1, v8

    add-double v2, v19, v1

    goto :goto_12b

    :cond_127
    iget v1, v0, La/d;->a:I

    int-to-double v2, v1

    goto :goto_120

    :goto_12b
    double-to-int v1, v2

    iput v1, v0, La/d;->a:I

    move-wide/from16 v0, p1

    move/from16 v2, p3

    move-object v3, v7

    goto/16 :goto_91

    :cond_135
    move/from16 v2, p3

    goto/16 :goto_80

    :cond_139
    move-object v7, v3

    invoke-static {v7}, Lcom/apprichtap/haptic/base/a;->a(Lc/a;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "overwriteBaseFrequencyAndIntensityOfHe20String, result:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Lcom/apprichtap/haptic/base/d$a;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static a(Ljava/lang/String;Z)Ljava/lang/String;
    .registers 10

    .line 0
    if-eqz p1, :cond_6

    invoke-static {p0}, Lcom/apprichtap/haptic/base/a;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    :cond_6
    invoke-static {p0}, Lcom/apprichtap/haptic/base/a;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x0

    const-string v0, "HEFileUtils"

    if-eqz p0, :cond_c2

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_17

    goto/16 :goto_c2

    :cond_17
    invoke-static {p0}, Lcom/apprichtap/haptic/base/a;->d(Ljava/lang/String;)Lc/a;

    move-result-object p0

    invoke-static {p0}, La/c;->a(La/c;)Z

    move-result v1

    if-nez v1, :cond_27

    const-string p0, "convertHE20ToHE10, empty HeRoot"

    :goto_23
    invoke-static {v0, p0}, Lcom/apprichtap/haptic/base/d$a;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-object p1

    :cond_27
    iget-object p1, p0, Lc/a;->b:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lc/c;

    iget-object p1, p1, Lc/c;->b:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    move v3, v1

    :goto_37
    if-ge v3, v2, :cond_53

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v3, v3, 0x1

    check-cast v4, La/e;

    iget-object v4, v4, La/e;->a:La/b;

    iget v5, v4, La/b;->b:I

    iget-object v6, p0, Lc/a;->b:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lc/c;

    iget v6, v6, Lc/c;->a:I

    add-int/2addr v5, v6

    iput v5, v4, La/b;->b:I

    goto :goto_37

    :cond_53
    new-instance p1, Lb/a;

    invoke-direct {p1}, Lb/a;-><init>()V

    new-instance v2, Lb/b;

    invoke-direct {v2}, Lb/b;-><init>()V

    iput-object v2, p1, Lb/a;->a:Lb/b;

    iget-object p0, p0, Lc/a;->b:Ljava/util/ArrayList;

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lc/c;

    iget-object p0, p0, Lc/c;->b:Ljava/util/ArrayList;

    iput-object p0, p1, Lb/a;->b:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v2

    move v3, v1

    :cond_70
    if-ge v3, v2, :cond_a9

    invoke-virtual {p0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v3, v3, 0x1

    check-cast v4, La/e;

    iget-object v5, v4, La/e;->a:La/b;

    if-eqz v5, :cond_70

    iget-object v5, v5, La/b;->a:Ljava/lang/String;

    const-string v6, "continuous"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_70

    iget-object v4, v4, La/e;->a:La/b;

    iget-object v4, v4, La/b;->e:La/d;

    iget v5, v4, La/d;->b:I

    const/4 v6, -0x1

    if-ne v6, v5, :cond_70

    const/16 v5, 0x38

    iput v5, v4, La/d;->b:I

    iget-object v4, v4, La/d;->c:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    move v6, v1

    :goto_9c
    if-ge v6, v5, :cond_70

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    add-int/lit8 v6, v6, 0x1

    check-cast v7, La/a;

    iput v1, v7, La/a;->c:I

    goto :goto_9c

    :cond_a9
    invoke-static {p1}, Lcom/apprichtap/haptic/base/a;->a(Lb/a;)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "convertHE20ToHE10 result:"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/apprichtap/haptic/base/d$a;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0

    :cond_c2
    :goto_c2
    const-string p0, "convertHE20ToHE10, null after trim"

    goto/16 :goto_23
.end method

.method private static a(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .registers 14

    .line 0
    if-eqz p0, :cond_db

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_a

    goto/16 :goto_db

    :cond_a
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "trimTo4p size:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "HEFileUtils"

    invoke-static {v3, v1}, Lcom/apprichtap/haptic/base/d$a;->a(Ljava/lang/String;Ljava/lang/String;)V

    if-lez v0, :cond_2a

    const/4 v1, 0x4

    if-gt v0, v1, :cond_2a

    return-object p0

    :cond_2a
    new-instance v1, La/a;

    invoke-direct {v1}, La/a;-><init>()V

    add-int/lit8 v4, v0, -0x2

    div-int/lit8 v5, v4, 0x2

    const/4 v6, 0x1

    move v7, v6

    :goto_35
    if-gt v7, v5, :cond_61

    iget v8, v1, La/a;->a:I

    invoke-virtual {p0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, La/a;

    iget v9, v9, La/a;->a:I

    add-int/2addr v8, v9

    iput v8, v1, La/a;->a:I

    iget-wide v8, v1, La/a;->b:D

    invoke-virtual {p0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, La/a;

    iget-wide v10, v10, La/a;->b:D

    add-double/2addr v8, v10

    iput-wide v8, v1, La/a;->b:D

    iget v8, v1, La/a;->c:I

    invoke-virtual {p0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, La/a;

    iget v9, v9, La/a;->c:I

    add-int/2addr v8, v9

    iput v8, v1, La/a;->c:I

    add-int/lit8 v7, v7, 0x1

    goto :goto_35

    :cond_61
    iget v7, v1, La/a;->a:I

    div-int/2addr v7, v5

    iput v7, v1, La/a;->a:I

    iget-wide v7, v1, La/a;->b:D

    int-to-double v9, v5

    div-double/2addr v7, v9

    iput-wide v7, v1, La/a;->b:D

    iget v7, v1, La/a;->c:I

    div-int/2addr v7, v5

    iput v7, v1, La/a;->c:I

    new-instance v7, La/a;

    invoke-direct {v7}, La/a;-><init>()V

    add-int/lit8 v8, v5, 0x1

    :goto_78
    if-gt v8, v4, :cond_a4

    iget v9, v7, La/a;->a:I

    invoke-virtual {p0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, La/a;

    iget v10, v10, La/a;->a:I

    add-int/2addr v9, v10

    iput v9, v7, La/a;->a:I

    iget-wide v9, v7, La/a;->b:D

    invoke-virtual {p0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, La/a;

    iget-wide v11, v11, La/a;->b:D

    add-double/2addr v9, v11

    iput-wide v9, v7, La/a;->b:D

    iget v9, v7, La/a;->c:I

    invoke-virtual {p0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, La/a;

    iget v10, v10, La/a;->c:I

    add-int/2addr v9, v10

    iput v9, v7, La/a;->c:I

    add-int/lit8 v8, v8, 0x1

    goto :goto_78

    :cond_a4
    iget v8, v7, La/a;->a:I

    sub-int/2addr v4, v5

    div-int/2addr v8, v4

    iput v8, v7, La/a;->a:I

    iget-wide v8, v7, La/a;->b:D

    int-to-double v10, v4

    div-double/2addr v8, v10

    iput-wide v8, v7, La/a;->b:D

    iget v5, v7, La/a;->c:I

    div-int/2addr v5, v4

    iput v5, v7, La/a;->c:I

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/apprichtap/haptic/base/d$a;->a(Ljava/lang/String;Ljava/lang/String;)V

    sub-int/2addr v0, v6

    invoke-virtual {p0, v6, v0}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    invoke-virtual {p0, v6, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    const/4 v0, 0x2

    invoke-virtual {p0, v0, v7}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    return-object p0

    :cond_db
    :goto_db
    const/4 p0, 0x0

    return-object p0
.end method

.method public static a(Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .registers 25

    .line 0
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v5, "HEFileUtils"

    if-eqz v0, :cond_209

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v6

    if-eqz v6, :cond_209

    if-eqz v1, :cond_209

    if-nez v2, :cond_1b

    goto/16 :goto_209

    :cond_1b
    const/4 v6, 0x1

    invoke-static {v0, v6}, Lcom/apprichtap/haptic/base/a;->e(Ljava/lang/String;I)La/c;

    move-result-object v0

    invoke-static {v0}, La/c;->a(La/c;)Z

    move-result v7

    if-nez v7, :cond_2c

    const-string v0, "convertHE10StringToGoogleWaveform, invalid heRoot!"

    invoke-static {v5, v0}, Lcom/apprichtap/haptic/base/d$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_2c
    invoke-interface {v0}, La/c;->a()I

    move-result v7

    if-eq v6, v7, :cond_4b

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "convertHE10StringToGoogleWaveform, invalid HE version:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, La/c;->a()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Lcom/apprichtap/haptic/base/d$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_4b
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    new-instance v7, Ljava/lang/Long;

    const-wide/16 v8, 0x0

    invoke-direct {v7, v8, v9}, Ljava/lang/Long;-><init>(J)V

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    check-cast v0, Lb/a;

    iget-object v0, v0, Lb/a;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v7

    move v10, v3

    :goto_67
    if-ge v10, v7, :cond_17e

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    add-int/lit8 v10, v10, 0x1

    check-cast v11, La/e;

    if-eqz v11, :cond_7b

    iget-object v12, v11, La/e;->a:La/b;

    if-eqz v12, :cond_7b

    iget-object v13, v12, La/b;->e:La/d;

    if-nez v13, :cond_81

    :cond_7b
    move/from16 v19, v6

    move/from16 p0, v7

    goto/16 :goto_100

    :cond_81
    iget-object v12, v12, La/b;->a:Ljava/lang/String;

    const-string v13, "transient"

    invoke-virtual {v13, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    const-wide/high16 v15, 0x4059000000000000L    # 100.0

    const-wide/high16 v17, 0x3ff0000000000000L    # 1.0

    if-eqz v12, :cond_106

    iget-object v12, v11, La/e;->a:La/b;

    iget v12, v12, La/b;->b:I

    move/from16 v19, v6

    move/from16 p0, v7

    int-to-long v6, v12

    cmp-long v12, v6, v8

    if-lez v12, :cond_c1

    new-instance v12, Ljava/lang/Long;

    invoke-direct {v12, v6, v7}, Ljava/lang/Long;-><init>(J)V

    invoke-virtual {v12}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    sub-long/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    add-long/2addr v8, v6

    :cond_c1
    new-instance v6, Ljava/lang/Long;

    iget-object v7, v11, La/e;->a:La/b;

    iget-object v7, v7, La/b;->e:La/d;

    iget v12, v7, La/d;->a:I

    iget v7, v7, La/d;->b:I

    invoke-static {v12, v7}, Lcom/apprichtap/haptic/base/a;->c(II)I

    move-result v7

    const-wide v20, 0x406fe00000000000L    # 255.0

    int-to-long v13, v7

    invoke-direct {v6, v13, v14}, Ljava/lang/Long;-><init>(J)V

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v6, v11, La/e;->a:La/b;

    iget-object v6, v6, La/b;->e:La/d;

    iget v6, v6, La/d;->a:I

    :goto_e1
    int-to-double v6, v6

    mul-double v6, v6, v17

    div-double/2addr v6, v15

    mul-double v6, v6, v20

    double-to-int v6, v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    add-long/2addr v8, v6

    :cond_100
    :goto_100
    move/from16 v7, p0

    move/from16 v6, v19

    goto/16 :goto_67

    :cond_106
    move/from16 v19, v6

    move/from16 p0, v7

    const-wide v20, 0x406fe00000000000L    # 255.0

    iget-object v6, v11, La/e;->a:La/b;

    iget-object v6, v6, La/b;->a:Ljava/lang/String;

    const-string v7, "continuous"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_178

    iget-object v6, v11, La/e;->a:La/b;

    iget-object v6, v6, La/b;->e:La/d;

    iget-object v6, v6, La/d;->c:Ljava/util/ArrayList;

    if-eqz v6, :cond_100

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    const/4 v7, 0x4

    if-eq v7, v6, :cond_12b

    goto :goto_100

    :cond_12b
    iget-object v6, v11, La/e;->a:La/b;

    iget v6, v6, La/b;->b:I

    int-to-long v6, v6

    cmp-long v12, v6, v8

    if-lez v12, :cond_159

    new-instance v12, Ljava/lang/Long;

    invoke-direct {v12, v6, v7}, Ljava/lang/Long;-><init>(J)V

    invoke-virtual {v12}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    sub-long/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    add-long/2addr v8, v6

    :cond_159
    new-instance v6, Ljava/lang/Long;

    iget-object v7, v11, La/e;->a:La/b;

    iget v7, v7, La/b;->c:I

    invoke-static {v7}, Lcom/apprichtap/haptic/base/a;->a(I)I

    move-result v7

    int-to-long v12, v7

    invoke-direct {v6, v12, v13}, Ljava/lang/Long;-><init>(J)V

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v6, v11, La/e;->a:La/b;

    iget-object v6, v6, La/b;->e:La/d;

    iget v7, v6, La/d;->a:I

    iget v6, v6, La/d;->b:I

    invoke-static {v7, v6}, Lcom/apprichtap/haptic/base/a;->b(II)I

    move-result v6

    goto/16 :goto_e1

    :cond_178
    const-string v6, "unknown type!"

    invoke-static {v5, v6}, Lcom/apprichtap/haptic/base/d$a;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_100

    :cond_17e
    invoke-static {}, Lcom/apprichtap/haptic/base/d;->b()Z

    move-result v0

    if-eqz v0, :cond_208

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    const-string v4, ""

    move v7, v3

    move-object v6, v4

    :goto_18c
    const-string v8, ","

    if-ge v7, v0, :cond_1af

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    add-int/lit8 v7, v7, 0x1

    check-cast v9, Ljava/lang/Long;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_18c

    :cond_1af
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_1b3
    if-ge v3, v0, :cond_1d4

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    add-int/lit8 v3, v3, 0x1

    check-cast v7, Ljava/lang/Integer;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_1b3

    :cond_1d4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "timings size:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",amplitudes size:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\n timings:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n amplitudes:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Lcom/apprichtap/haptic/base/d$a;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_208
    return-void

    :cond_209
    :goto_209
    const-string v0, "convertHE10StringToWaveformParams(), invalid parameters."

    invoke-static {v5, v0}, Lcom/apprichtap/haptic/base/d$a;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static a(Ljava/lang/String;IIIIIZ)[I
    .registers 33

    .line 0
    move/from16 v0, p1

    move/from16 v1, p2

    move/from16 v2, p3

    const/16 v3, 0x1000

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/16 v4, 0x1001

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x2

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    const-string v10, "convertHEStringToIntArray, skip unknown type:"

    const-string v12, "continuous"

    const-string v13, "transient"

    const-wide/high16 v16, 0x4059000000000000L    # 100.0

    const/16 v18, 0x0

    const/16 v15, 0x18

    const/16 v19, 0x10

    const-string v14, "HEFileUtils"

    const/4 v11, 0x1

    if-eq v0, v11, :cond_27b

    if-eq v0, v5, :cond_37

    return-object v18

    :cond_37
    if-le v15, v1, :cond_3a

    return-object v18

    :cond_3a
    :try_start_3a
    invoke-static/range {p0 .. p0}, Lcom/apprichtap/haptic/base/a;->d(Ljava/lang/String;)Lc/a;

    move-result-object v0

    iget-object v8, v0, Lc/a;->b:Ljava/util/ArrayList;

    if-eqz v8, :cond_275

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-lez v8, :cond_275

    iget-object v8, v0, Lc/a;->b:Ljava/util/ArrayList;

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lc/c;

    iget-object v8, v8, Lc/c;->b:Ljava/util/ArrayList;

    if-eqz v8, :cond_275

    iget-object v8, v0, Lc/a;->b:Ljava/util/ArrayList;

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lc/c;

    iget-object v8, v8, Lc/c;->b:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-gtz v8, :cond_66

    goto/16 :goto_275

    :cond_66
    iget-object v8, v0, Lc/a;->b:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    const/4 v15, 0x4

    if-le v8, v15, :cond_78

    const-string v15, "convertHEStringToIntArray, HE20 with more than 4 pattern!"

    invoke-static {v14, v15}, Lcom/apprichtap/haptic/base/d$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_78

    :catchall_75
    move-exception v0

    goto/16 :goto_459

    :cond_78
    :goto_78
    invoke-virtual {v9, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v9, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v9, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static/range {p5 .. p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v9, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const v6, 0xffff

    and-int/2addr v6, v8

    shl-int/lit8 v8, v8, 0x10

    const/high16 v15, -0x10000

    and-int/2addr v8, v15

    or-int/2addr v6, v8

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v9, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, v0, Lc/a;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v6

    move v8, v7

    move v15, v8

    :goto_a5
    if-ge v15, v6, :cond_45c

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v20

    add-int/lit8 v15, v15, 0x1

    move-object/from16 v5, v20

    check-cast v5, Lc/c;

    add-int/lit8 v20, v8, 0x1

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget v8, v5, Lc/c;->a:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v8, v5, Lc/c;->b:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    move/from16 v7, v19

    if-gt v8, v7, :cond_d4

    iget-object v7, v5, Lc/c;->b:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    goto :goto_d6

    :cond_d4
    const/16 v7, 0x10

    :goto_d6
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v8, 0x0

    :goto_de
    if-ge v8, v7, :cond_26d

    iget-object v11, v5, Lc/c;->b:Ljava/util/ArrayList;

    invoke-virtual {v11, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, La/e;

    move-object/from16 p0, v0

    iget-object v0, v11, La/e;->a:La/b;

    iget-object v0, v0, La/b;->a:Ljava/lang/String;

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14c

    invoke-virtual {v9, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x5

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, v11, La/e;->a:La/b;

    iget v0, v0, La/b;->d:I

    move-object/from16 p1, v5

    if-eqz p6, :cond_111

    if-nez v0, :cond_10b

    const/4 v0, 0x0

    goto :goto_111

    :cond_10b
    const/4 v5, 0x1

    if-ne v5, v0, :cond_110

    const/4 v0, 0x2

    goto :goto_111

    :cond_110
    const/4 v0, 0x1

    :cond_111
    :goto_111
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, v11, La/e;->a:La/b;

    iget v0, v0, La/b;->b:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, v11, La/e;->a:La/b;

    iget-object v0, v0, La/b;->e:La/d;

    iget v0, v0, La/d;->a:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, v11, La/e;->a:La/b;

    iget-object v0, v0, La/b;->e:La/d;

    iget v0, v0, La/d;->b:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, v11, La/e;->a:La/b;

    iget v0, v0, La/b;->c:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move/from16 p4, v6

    goto/16 :goto_262

    :cond_14c
    move-object/from16 p1, v5

    iget-object v0, v11, La/e;->a:La/b;

    iget-object v0, v0, La/b;->a:Ljava/lang/String;

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_24a

    iget-object v0, v11, La/e;->a:La/b;

    iget-object v0, v0, La/b;->e:La/d;

    iget-object v0, v0, La/d;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v5, 0x4

    if-gt v5, v0, :cond_169

    const/16 v5, 0x10

    if-ge v5, v0, :cond_16d

    :cond_169
    move/from16 p4, v6

    goto/16 :goto_238

    :cond_16d
    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    mul-int/lit8 v5, v0, 0x3

    add-int/lit8 v5, v5, 0x6

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v9, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v5, v11, La/e;->a:La/b;

    iget v5, v5, La/b;->d:I

    move/from16 p4, v6

    if-eqz p6, :cond_18d

    if-nez v5, :cond_187

    const/4 v5, 0x0

    goto :goto_18d

    :cond_187
    const/4 v6, 0x1

    if-ne v6, v5, :cond_18c

    const/4 v5, 0x2

    goto :goto_18d

    :cond_18c
    const/4 v5, 0x1

    :cond_18d
    :goto_18d
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v9, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v5, v11, La/e;->a:La/b;

    iget v5, v5, La/b;->b:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v9, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v5, v11, La/e;->a:La/b;

    iget-object v5, v5, La/b;->e:La/d;

    iget v5, v5, La/d;->a:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v9, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/16 v5, 0x20

    if-gt v1, v5, :cond_1c4

    const/16 v6, 0x10

    if-gt v2, v6, :cond_1c4

    iget-object v6, v11, La/e;->a:La/b;

    iget-object v6, v6, La/b;->e:La/d;

    iget v6, v6, La/d;->b:I

    const/4 v5, -0x1

    if-ne v5, v6, :cond_1bf

    const/16 v6, 0x38

    :cond_1bf
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    goto :goto_1ce

    :cond_1c4
    iget-object v5, v11, La/e;->a:La/b;

    iget-object v5, v5, La/b;->e:La/d;

    iget v5, v5, La/d;->b:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    :goto_1ce
    invoke-virtual {v9, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v5, v11, La/e;->a:La/b;

    iget v5, v5, La/b;->c:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v9, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, v11, La/e;->a:La/b;

    iget-object v0, v0, La/b;->e:La/d;

    iget-object v0, v0, La/d;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v5

    const/4 v6, 0x0

    :goto_1ee
    if-ge v6, v5, :cond_262

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v23

    add-int/lit8 v6, v6, 0x1

    move-object/from16 v24, v0

    move-object/from16 v0, v23

    check-cast v0, La/a;

    move/from16 v23, v5

    iget v5, v0, La/a;->a:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v9, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move/from16 v25, v6

    iget-wide v5, v0, La/a;->b:D

    mul-double v5, v5, v16

    double-to-int v5, v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v9, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/16 v5, 0x20

    if-gt v1, v5, :cond_228

    const/16 v6, 0x10

    if-gt v2, v6, :cond_228

    iget-object v6, v11, La/e;->a:La/b;

    iget-object v6, v6, La/b;->e:La/d;

    iget v6, v6, La/d;->b:I

    const/4 v5, -0x1

    if-ne v5, v6, :cond_228

    const/4 v0, 0x0

    goto :goto_22a

    :cond_228
    iget v0, v0, La/a;->c:I

    :goto_22a
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move/from16 v5, v23

    move-object/from16 v0, v24

    move/from16 v6, v25

    goto :goto_1ee

    :goto_238
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "convertHEStringToIntArray, curvePointCount:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_25f

    :cond_24a
    move/from16 p4, v6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v11, La/e;->a:La/b;

    iget-object v5, v5, La/b;->a:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_25f
    invoke-static {v14, v0}, Lcom/apprichtap/haptic/base/d$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_262
    :goto_262
    add-int/lit8 v8, v8, 0x1

    move-object/from16 v0, p0

    move-object/from16 v5, p1

    move/from16 v6, p4

    const/4 v11, 0x1

    goto/16 :goto_de

    :cond_26d
    move/from16 v8, v20

    const/4 v5, 0x2

    const/4 v7, 0x0

    const/16 v19, 0x10

    goto/16 :goto_a5

    :cond_275
    :goto_275
    const-string v0, "convertHEStringToIntArray, empty HE20!"

    invoke-static {v14, v0}, Lcom/apprichtap/haptic/base/d$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object v18

    :cond_27b
    invoke-static/range {p0 .. p0}, Lcom/apprichtap/haptic/base/a;->c(Ljava/lang/String;)Lb/a;

    move-result-object v0

    iget-object v2, v0, Lb/a;->b:Ljava/util/ArrayList;

    if-nez v2, :cond_28f

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-gtz v2, :cond_28f

    const-string v0, "convertHEStringToIntArray, empty HE10!"

    invoke-static {v14, v0}, Lcom/apprichtap/haptic/base/d$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object v18

    :cond_28f
    const/4 v2, 0x3

    if-le v15, v1, :cond_299

    const/16 v22, 0x1

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    goto :goto_29d

    :cond_299
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    :goto_29d
    invoke-virtual {v9, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v5, v0, Lb/a;->b:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    const/16 v6, 0x10

    if-gt v5, v6, :cond_2b1

    iget-object v5, v0, Lb/a;->b:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v7

    goto :goto_2b3

    :cond_2b1
    const/16 v7, 0x10

    :goto_2b3
    const/4 v5, 0x0

    :goto_2b4
    if-ge v5, v7, :cond_45c

    iget-object v6, v0, Lb/a;->b:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, La/e;

    iget-object v11, v6, La/e;->a:La/b;

    iget-object v11, v11, La/b;->a:Ljava/lang/String;

    invoke-virtual {v13, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_320

    invoke-virtual {v9, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v11, v6, La/e;->a:La/b;

    iget v11, v11, La/b;->b:I

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v11, v6, La/e;->a:La/b;

    iget-object v11, v11, La/b;->e:La/d;

    iget v11, v11, La/d;->a:I

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v11, v6, La/e;->a:La/b;

    iget-object v11, v11, La/b;->e:La/d;

    iget v11, v11, La/d;->b:I

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v6, v6, La/e;->a:La/b;

    iget v6, v6, La/b;->c:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v9, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-le v15, v1, :cond_30f

    const/4 v6, 0x0

    :goto_2fe
    const/16 v11, 0xc

    if-ge v6, v11, :cond_308

    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v6, 0x1

    goto :goto_2fe

    :cond_308
    move-object/from16 p1, v0

    move/from16 p0, v2

    :goto_30c
    const/4 v1, -0x1

    goto/16 :goto_44d

    :cond_30f
    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v6, 0x0

    :goto_316
    const/16 v11, 0x30

    if-ge v6, v11, :cond_308

    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v6, 0x1

    goto :goto_316

    :cond_320
    iget-object v11, v6, La/e;->a:La/b;

    iget-object v11, v11, La/b;->a:Ljava/lang/String;

    invoke-virtual {v12, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_432

    iget-object v11, v6, La/e;->a:La/b;

    iget-object v11, v11, La/b;->e:La/d;

    iget-object v11, v11, La/d;->c:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    move/from16 p0, v2

    const/4 v2, 0x4

    if-le v15, v1, :cond_33f

    if-ne v2, v11, :cond_33c

    goto :goto_33f

    :cond_33c
    :goto_33c
    move-object/from16 p1, v0

    goto :goto_30c

    :cond_33f
    :goto_33f
    if-gt v15, v1, :cond_348

    if-gt v2, v11, :cond_33c

    const/16 v2, 0x10

    if-ge v2, v11, :cond_34a

    goto :goto_33c

    :cond_348
    const/16 v2, 0x10

    :cond_34a
    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v2, v6, La/e;->a:La/b;

    iget v2, v2, La/b;->b:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v2, v6, La/e;->a:La/b;

    iget-object v2, v2, La/b;->e:La/d;

    iget v2, v2, La/d;->a:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v2, v6, La/e;->a:La/b;

    iget-object v2, v2, La/b;->e:La/d;

    iget v2, v2, La/d;->b:I

    const/4 v15, -0x1

    if-ne v15, v2, :cond_370

    const/16 v2, 0x38

    :cond_370
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v2, v6, La/e;->a:La/b;

    iget v2, v2, La/b;->c:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/16 v2, 0x18

    if-le v2, v1, :cond_3d1

    iget-object v11, v6, La/e;->a:La/b;

    iget-object v11, v11, La/b;->e:La/d;

    iget-object v11, v11, La/d;->c:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v15

    const/4 v2, 0x0

    :goto_391
    if-ge v2, v15, :cond_33c

    invoke-virtual {v11, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v21

    add-int/lit8 v2, v2, 0x1

    move-object/from16 p1, v0

    move-object/from16 v0, v21

    check-cast v0, La/a;

    iget v1, v0, La/a;->a:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move/from16 p3, v2

    iget-wide v1, v0, La/a;->b:D

    mul-double v1, v1, v16

    double-to-int v1, v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, v6, La/e;->a:La/b;

    iget-object v1, v1, La/b;->e:La/d;

    iget v1, v1, La/d;->b:I

    const/4 v2, -0x1

    if-ne v2, v1, :cond_3c1

    const/4 v0, 0x0

    goto :goto_3c3

    :cond_3c1
    iget v0, v0, La/a;->c:I

    :goto_3c3
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p1

    move/from16 v1, p2

    move/from16 v2, p3

    goto :goto_391

    :cond_3d1
    move-object/from16 p1, v0

    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, v6, La/e;->a:La/b;

    iget-object v0, v0, La/b;->e:La/d;

    iget-object v0, v0, La/d;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_3e8
    if-ge v2, v1, :cond_424

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    add-int/lit8 v2, v2, 0x1

    check-cast v15, La/a;

    move-object/from16 v21, v0

    iget v0, v15, La/a;->a:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move/from16 p3, v1

    iget-wide v0, v15, La/a;->b:D

    mul-double v0, v0, v16

    double-to-int v0, v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, v6, La/e;->a:La/b;

    iget-object v0, v0, La/b;->e:La/d;

    iget v0, v0, La/d;->b:I

    const/4 v1, -0x1

    if-ne v1, v0, :cond_416

    const/4 v0, 0x0

    goto :goto_418

    :cond_416
    iget v0, v15, La/a;->c:I

    :goto_418
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move/from16 v1, p3

    move-object/from16 v0, v21

    goto :goto_3e8

    :cond_424
    const/4 v1, -0x1

    const/4 v0, 0x0

    :goto_426
    rsub-int/lit8 v2, v11, 0x10

    mul-int/lit8 v2, v2, 0x3

    if-ge v0, v2, :cond_44d

    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_426

    :cond_432
    move-object/from16 p1, v0

    move/from16 p0, v2

    const/4 v1, -0x1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v6, La/e;->a:La/b;

    iget-object v2, v2, La/b;->a:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v14, v0}, Lcom/apprichtap/haptic/base/d$a;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_44d
    .catchall {:try_start_3a .. :try_end_44d} :catchall_75

    :cond_44d
    :goto_44d
    add-int/lit8 v5, v5, 0x1

    const/16 v15, 0x18

    move/from16 v2, p0

    move-object/from16 v0, p1

    move/from16 v1, p2

    goto/16 :goto_2b4

    :goto_459
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_45c
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_463

    return-object v18

    :cond_463
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [I

    const/4 v7, 0x0

    :goto_46a
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v7, v1, :cond_47f

    invoke-virtual {v9, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    aput v1, v0, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_46a

    :cond_47f
    return-object v0
.end method

.method private static b(II)I
    .registers 4

    const/4 v0, -0x1

    const/16 v1, 0x64

    if-ne v0, p1, :cond_6

    goto :goto_f

    :cond_6
    const/16 v0, 0x1e

    if-le v0, p1, :cond_c

    const/4 p0, 0x0

    return p0

    :cond_c
    if-lt v1, p1, :cond_f

    return p0

    :cond_f
    :goto_f
    return v1
.end method

.method private static c(II)I
    .registers 6

    .line 0
    const/16 v0, 0x29

    const/16 v1, 0x64

    const/16 v2, 0xf

    const/16 v3, 0x32

    if-lt p1, v0, :cond_23

    const/16 v0, 0x44

    if-gt p1, v0, :cond_23

    if-lez p0, :cond_13

    if-ge p0, v3, :cond_13

    return v2

    :cond_13
    const/16 p1, 0x4b

    if-lt p0, v3, :cond_1c

    if-ge p0, p1, :cond_1c

    const/16 p0, 0x14

    return p0

    :cond_1c
    if-lt p0, p1, :cond_2f

    if-gt p0, v1, :cond_2f

    const/16 p0, 0x1e

    return p0

    :cond_23
    if-lez p0, :cond_2a

    if-ge p0, v3, :cond_2a

    const/16 p0, 0xa

    return p0

    :cond_2a
    if-lt p0, v3, :cond_2f

    if-gt p0, v1, :cond_2f

    return v2

    :cond_2f
    const/4 p0, 0x0

    return p0
.end method

.method public static c(Ljava/lang/String;)Lb/a;
    .registers 14

    .line 0
    const-string v0, "Intensity"

    const-string v1, "Frequency"

    const-string v2, "continuous"

    :try_start_6
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    new-instance p0, Lb/a;

    invoke-direct {p0}, Lb/a;-><init>()V

    new-instance v4, Lb/b;

    invoke-direct {v4}, Lb/b;-><init>()V

    iput-object v4, p0, Lb/a;->a:Lb/b;

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lb/a;->b:Ljava/util/ArrayList;

    const-string v4, "Pattern"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    const/4 v4, 0x0

    move v5, v4

    :goto_26
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-ge v5, v6, :cond_e5

    invoke-virtual {v3, v5}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/json/JSONObject;

    new-instance v7, La/e;

    invoke-direct {v7}, La/e;-><init>()V

    new-instance v8, La/b;

    invoke-direct {v8}, La/b;-><init>()V

    iput-object v8, v7, La/e;->a:La/b;

    const-string v8, "Event"

    invoke-virtual {v6, v8}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v6

    iget-object v8, v7, La/e;->a:La/b;

    const-string v9, "Type"

    invoke-virtual {v6, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v8, La/b;->a:Ljava/lang/String;

    iget-object v8, v7, La/e;->a:La/b;

    iget-object v8, v8, La/b;->a:Ljava/lang/String;

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_62

    iget-object v8, v7, La/e;->a:La/b;

    const-string v9, "Duration"

    invoke-virtual {v6, v9}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v9

    iput v9, v8, La/b;->c:I

    :cond_62
    iget-object v8, v7, La/e;->a:La/b;

    const-string v9, "RelativeTime"

    invoke-virtual {v6, v9}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v9

    iput v9, v8, La/b;->b:I

    const-string v8, "Parameters"

    invoke-virtual {v6, v8}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v6

    iget-object v8, v7, La/e;->a:La/b;

    new-instance v9, La/d;

    invoke-direct {v9}, La/d;-><init>()V

    iput-object v9, v8, La/b;->e:La/d;

    iget-object v8, v7, La/e;->a:La/b;

    iget-object v8, v8, La/b;->e:La/d;

    invoke-virtual {v6, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v9

    iput v9, v8, La/d;->b:I

    iget-object v8, v7, La/e;->a:La/b;

    iget-object v8, v8, La/b;->e:La/d;

    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v9

    iput v9, v8, La/d;->a:I

    iget-object v8, v7, La/e;->a:La/b;

    iget-object v8, v8, La/b;->e:La/d;

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    iput-object v9, v8, La/d;->c:Ljava/util/ArrayList;

    iget-object v8, v7, La/e;->a:La/b;

    iget-object v8, v8, La/b;->a:Ljava/lang/String;

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_dc

    const-string v8, "Curve"

    invoke-virtual {v6, v8}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v6

    move v8, v4

    :goto_ab
    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v9

    if-ge v8, v9, :cond_dc

    invoke-virtual {v6, v8}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/json/JSONObject;

    new-instance v10, La/a;

    invoke-direct {v10}, La/a;-><init>()V

    invoke-virtual {v9, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v11

    iput v11, v10, La/a;->c:I

    invoke-virtual {v9, v0}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v11

    iput-wide v11, v10, La/a;->b:D

    const-string v11, "Time"

    invoke-virtual {v9, v11}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v9

    iput v9, v10, La/a;->a:I

    iget-object v9, v7, La/e;->a:La/b;

    iget-object v9, v9, La/b;->e:La/d;

    iget-object v9, v9, La/d;->c:Ljava/util/ArrayList;

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v8, v8, 0x1

    goto :goto_ab

    :cond_dc
    iget-object v6, p0, Lb/a;->b:Ljava/util/ArrayList;

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_e1
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_e1} :catch_e6

    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_26

    :cond_e5
    return-object p0

    :catch_e6
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 p0, 0x0

    return-object p0
.end method

.method public static c(Ljava/lang/String;I)Ljava/lang/String;
    .registers 15

    .line 0
    if-nez p1, :cond_3

    return-object p0

    :cond_3
    :try_start_3
    invoke-static {p0}, Lcom/apprichtap/haptic/base/a;->d(Ljava/lang/String;)Lc/a;

    move-result-object p0
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_7} :catch_8

    goto :goto_d

    :catch_8
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 p0, 0x0

    :goto_d
    const-string v0, ""

    const-string v1, "HEFileUtils"

    if-eqz p0, :cond_145

    iget-object v2, p0, Lc/a;->b:Ljava/util/ArrayList;

    if-eqz v2, :cond_145

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_1f

    goto/16 :goto_145

    :cond_1f
    iget-object v2, p0, Lc/a;->b:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x0

    move v5, v4

    :cond_27
    :goto_27
    if-ge v5, v3, :cond_5e

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    add-int/lit8 v5, v5, 0x1

    check-cast v6, Lc/c;

    iget-object v7, v6, Lc/c;->b:Ljava/util/ArrayList;

    if-nez v7, :cond_36

    goto :goto_27

    :cond_36
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v8

    move v9, v4

    :cond_3b
    :goto_3b
    if-ge v9, v8, :cond_27

    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    add-int/lit8 v9, v9, 0x1

    check-cast v10, La/e;

    iget-object v11, v10, La/e;->a:La/b;

    if-nez v11, :cond_4a

    goto :goto_3b

    :cond_4a
    iget v11, v11, La/b;->b:I

    iget v12, v6, Lc/c;->a:I

    add-int/2addr v11, v12

    if-lt v11, p1, :cond_3b

    iget-object v2, v6, Lc/c;->b:Ljava/util/ArrayList;

    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v2

    iget-object v3, p0, Lc/a;->b:Ljava/util/ArrayList;

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v3

    goto :goto_60

    :cond_5e
    const/4 v2, -0x1

    move v3, v2

    :goto_60
    if-ltz v3, :cond_144

    if-gez v2, :cond_66

    goto/16 :goto_144

    :cond_66
    iget-object v0, p0, Lc/a;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, v4, v3}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lc/a;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc/c;

    iget-object v0, v0, Lc/c;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, v4, v2}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  generatePartialHe20String, targetPatternListItemIndex:"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ",targetPatterItemIndex:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", PatternList size:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lc/a;->b:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ",Pattern size:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lc/a;->b:Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lc/c;

    iget-object v3, v3, Lc/c;->b:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/apprichtap/haptic/base/d$a;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lc/a;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    move v3, v4

    :goto_c7
    if-ge v3, v1, :cond_fe

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    add-int/lit8 v3, v3, 0x1

    check-cast v5, Lc/c;

    iget-object v6, v5, Lc/c;->b:Ljava/util/ArrayList;

    if-nez v6, :cond_d6

    goto :goto_c7

    :cond_d6
    iget v7, v5, Lc/c;->a:I

    if-ge v7, p1, :cond_fa

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v7

    move v8, v4

    :goto_df
    if-ge v8, v7, :cond_f7

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    add-int/lit8 v8, v8, 0x1

    check-cast v9, La/e;

    iget-object v9, v9, La/e;->a:La/b;

    if-nez v9, :cond_ee

    goto :goto_df

    :cond_ee
    iget v10, v9, La/b;->b:I

    iget v11, v5, Lc/c;->a:I

    add-int/2addr v10, v11

    sub-int/2addr v10, p1

    iput v10, v9, La/b;->b:I

    goto :goto_df

    :cond_f7
    iput v4, v5, Lc/c;->a:I

    goto :goto_c7

    :cond_fa
    sub-int/2addr v7, p1

    iput v7, v5, Lc/c;->a:I

    goto :goto_c7

    :cond_fe
    if-nez v2, :cond_13f

    iget-object p1, p0, Lc/a;->b:Ljava/util/ArrayList;

    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lc/c;

    iget p1, p1, Lc/c;->a:I

    if-eqz p1, :cond_13f

    new-instance p1, Lc/c;

    invoke-direct {p1}, Lc/c;-><init>()V

    iput v4, p1, Lc/c;->a:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p1, Lc/c;->b:Ljava/util/ArrayList;

    new-instance v0, La/b;

    invoke-direct {v0}, La/b;-><init>()V

    new-instance v1, La/d;

    invoke-direct {v1}, La/d;-><init>()V

    iput-object v1, v0, La/b;->e:La/d;

    iput v4, v1, La/d;->a:I

    iput v4, v1, La/d;->b:I

    const-string v1, "transient"

    iput-object v1, v0, La/b;->a:Ljava/lang/String;

    new-instance v1, La/e;

    invoke-direct {v1}, La/e;-><init>()V

    iput-object v0, v1, La/e;->a:La/b;

    iget-object v0, p1, Lc/c;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lc/a;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, v4, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    :cond_13f
    invoke-static {p0}, Lcom/apprichtap/haptic/base/a;->a(Lc/a;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_144
    :goto_144
    return-object v0

    :cond_145
    :goto_145
    const-string p0, "  generatePartialHe20String, source HE invalid!"

    invoke-static {v1, p0}, Lcom/apprichtap/haptic/base/d$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static d(Ljava/lang/String;I)I
    .registers 4

    .line 0
    const/4 v0, 0x0

    if-eqz p0, :cond_1a

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_a

    goto :goto_1a

    :cond_a
    invoke-static {p0, p1}, Lcom/apprichtap/haptic/base/a;->e(Ljava/lang/String;I)La/c;

    move-result-object p0

    invoke-static {p0}, Lcom/apprichtap/haptic/player/a;->a(La/c;)Z

    move-result p1

    if-nez p1, :cond_15

    return v0

    :cond_15
    invoke-interface {p0}, La/c;->getDuration()I

    move-result p0

    return p0

    :cond_1a
    :goto_1a
    return v0
.end method

.method public static d(Ljava/lang/String;)Lc/a;
    .registers 18

    .line 0
    const-string v0, "Intensity"

    const-string v1, "Frequency"

    const-string v2, "continuous"

    invoke-static/range {p0 .. p0}, Lcom/apprichtap/haptic/base/a;->e(Ljava/lang/String;)I

    move-result v3

    const/4 v4, 0x2

    const/4 v5, 0x0

    if-eq v4, v3, :cond_f

    return-object v5

    :cond_f
    :try_start_f
    new-instance v3, Lorg/json/JSONObject;

    move-object/from16 v4, p0

    invoke-direct {v3, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    new-instance v4, Lc/a;

    invoke-direct {v4}, Lc/a;-><init>()V

    new-instance v6, Lc/b;

    invoke-direct {v6}, Lc/b;-><init>()V

    iput-object v6, v4, Lc/a;->a:Lc/b;

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, v4, Lc/a;->b:Ljava/util/ArrayList;

    const-string v6, "PatternList"

    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    const/4 v7, 0x0

    :goto_30
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v8

    if-ge v7, v8, :cond_154

    invoke-virtual {v3, v7}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/json/JSONObject;

    new-instance v9, Lc/c;

    invoke-direct {v9}, Lc/c;-><init>()V

    const-string v10, "AbsoluteTime"

    invoke-virtual {v8, v10}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v10

    iput v10, v9, Lc/c;->a:I

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    iput-object v10, v9, Lc/c;->b:Ljava/util/ArrayList;

    const-string v10, "Pattern"

    invoke-virtual {v8, v10}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v8

    const/4 v10, 0x0

    :goto_57
    invoke-virtual {v8}, Lorg/json/JSONArray;->length()I

    move-result v11

    if-ge v10, v11, :cond_146

    invoke-virtual {v8, v10}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lorg/json/JSONObject;

    new-instance v12, La/e;

    invoke-direct {v12}, La/e;-><init>()V

    new-instance v13, La/b;

    invoke-direct {v13}, La/b;-><init>()V

    iput-object v13, v12, La/e;->a:La/b;

    const-string v13, "Event"

    invoke-virtual {v11, v13}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v11

    iget-object v13, v12, La/e;->a:La/b;

    const-string v14, "Type"

    invoke-virtual {v11, v14}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    iput-object v14, v13, La/b;->a:Ljava/lang/String;

    iget-object v13, v12, La/e;->a:La/b;

    iget-object v13, v13, La/b;->a:Ljava/lang/String;

    invoke-virtual {v2, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_99

    iget-object v13, v12, La/e;->a:La/b;

    const-string v14, "Duration"

    invoke-virtual {v11, v14}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v14

    iput v14, v13, La/b;->c:I

    goto :goto_ab

    :catch_94
    move-exception v0

    move-object/from16 v16, v5

    goto/16 :goto_155

    :cond_99
    const-string v13, "transient"

    iget-object v14, v12, La/e;->a:La/b;

    iget-object v14, v14, La/b;->a:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_ab

    iget-object v13, v12, La/e;->a:La/b;

    const/16 v14, 0x30

    iput v14, v13, La/b;->c:I

    :cond_ab
    :goto_ab
    iget-object v13, v12, La/e;->a:La/b;

    const-string v14, "RelativeTime"

    invoke-virtual {v11, v14}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v14

    iput v14, v13, La/b;->b:I

    iget-object v13, v12, La/e;->a:La/b;

    const-string v14, "Index"

    invoke-virtual {v11, v14}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v14

    iput v14, v13, La/b;->d:I

    const-string v13, "Parameters"

    invoke-virtual {v11, v13}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v11

    iget-object v13, v12, La/e;->a:La/b;

    new-instance v14, La/d;

    invoke-direct {v14}, La/d;-><init>()V

    iput-object v14, v13, La/b;->e:La/d;

    iget-object v13, v12, La/e;->a:La/b;

    iget-object v13, v13, La/b;->e:La/d;

    invoke-virtual {v11, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v14

    iput v14, v13, La/d;->b:I

    iget-object v13, v12, La/e;->a:La/b;

    iget-object v13, v13, La/b;->e:La/d;

    invoke-virtual {v11, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v14

    iput v14, v13, La/d;->a:I

    iget-object v13, v12, La/e;->a:La/b;

    iget-object v13, v13, La/b;->e:La/d;

    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    iput-object v14, v13, La/d;->c:Ljava/util/ArrayList;

    iget-object v13, v12, La/e;->a:La/b;

    iget-object v13, v13, La/b;->a:Ljava/lang/String;

    invoke-virtual {v2, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_137

    const-string v13, "Curve"

    invoke-virtual {v11, v13}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v11

    const/4 v13, 0x0

    :goto_fe
    invoke-virtual {v11}, Lorg/json/JSONArray;->length()I

    move-result v14

    if-ge v13, v14, :cond_137

    invoke-virtual {v11, v13}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lorg/json/JSONObject;

    new-instance v15, La/a;

    invoke-direct {v15}, La/a;-><init>()V
    :try_end_10f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_10f} :catch_94

    move-object/from16 v16, v5

    :try_start_111
    invoke-virtual {v14, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v5

    iput v5, v15, La/a;->c:I

    move v5, v7

    invoke-virtual {v14, v0}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v6

    iput-wide v6, v15, La/a;->b:D

    const-string v6, "Time"

    invoke-virtual {v14, v6}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v6

    iput v6, v15, La/a;->a:I

    iget-object v6, v12, La/e;->a:La/b;

    iget-object v6, v6, La/b;->e:La/d;

    iget-object v6, v6, La/d;->c:Ljava/util/ArrayList;

    invoke-virtual {v6, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v13, v13, 0x1

    move v7, v5

    move-object/from16 v5, v16

    goto :goto_fe

    :catch_135
    move-exception v0

    goto :goto_155

    :cond_137
    move-object/from16 v16, v5

    move v5, v7

    iget-object v6, v9, Lc/c;->b:Ljava/util/ArrayList;

    invoke-virtual {v6, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v10, v10, 0x1

    move v7, v5

    move-object/from16 v5, v16

    goto/16 :goto_57

    :cond_146
    move-object/from16 v16, v5

    move v5, v7

    iget-object v6, v4, Lc/a;->b:Ljava/util/ArrayList;

    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_14e
    .catch Ljava/lang/Exception; {:try_start_111 .. :try_end_14e} :catch_135

    add-int/lit8 v7, v5, 0x1

    move-object/from16 v5, v16

    goto/16 :goto_30

    :cond_154
    return-object v4

    :goto_155
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    return-object v16
.end method

.method public static e(Ljava/lang/String;)I
    .registers 4

    .line 0
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v1, "Metadata"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "Version"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p0
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_11} :catch_12

    return p0

    :catch_12
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getHeVersion ERROR, heString:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "HEFileUtils"

    invoke-static {v1, p0}, Lcom/apprichtap/haptic/base/d$a;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 p0, 0x0

    return p0
.end method

.method public static e(Ljava/lang/String;I)La/c;
    .registers 4

    .line 0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getHeRootFromHeString, HE version:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "HEFileUtils"

    invoke-static {v1, v0}, Lcom/apprichtap/haptic/base/d$a;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eq p1, v0, :cond_28

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1e

    return-object v1

    :cond_1e
    :try_start_1e
    invoke-static {p0}, Lcom/apprichtap/haptic/base/a;->d(Ljava/lang/String;)Lc/a;

    move-result-object p0
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_22} :catch_23

    return-object p0

    :catch_23
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return-object v1

    :cond_28
    :try_start_28
    invoke-static {p0}, Lcom/apprichtap/haptic/base/a;->c(Ljava/lang/String;)Lb/a;

    move-result-object p0
    :try_end_2c
    .catch Ljava/lang/Exception; {:try_start_28 .. :try_end_2c} :catch_23

    return-object p0
.end method

.method public static f(Ljava/lang/String;)Ljava/lang/String;
    .registers 11

    .line 0
    :try_start_0
    invoke-static {p0}, Lcom/apprichtap/haptic/base/a;->d(Ljava/lang/String;)Lc/a;

    move-result-object p0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_4} :catch_5

    goto :goto_a

    :catch_5
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 p0, 0x0

    :goto_a
    invoke-static {p0}, Lcom/apprichtap/haptic/player/a;->a(La/c;)Z

    move-result v0

    if-nez v0, :cond_1a

    const-string p0, "HEFileUtils"

    const-string v0, " , trim16pTo4p, invalid HE2.0 string!"

    invoke-static {p0, v0}, Lcom/apprichtap/haptic/base/d$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, ""

    return-object p0

    :cond_1a
    iget-object v0, p0, Lc/a;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :cond_22
    if-ge v3, v1, :cond_67

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v3, v3, 0x1

    check-cast v4, Lc/c;

    iget-object v4, v4, Lc/c;->b:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    move v6, v2

    :cond_33
    :goto_33
    if-ge v6, v5, :cond_22

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    add-int/lit8 v6, v6, 0x1

    check-cast v7, La/e;

    iget-object v8, v7, La/e;->a:La/b;

    iget-object v8, v8, La/b;->e:La/d;

    iget-object v9, v8, La/d;->c:Ljava/util/ArrayList;

    invoke-static {v9}, Lcom/apprichtap/haptic/base/a;->a(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v9

    iput-object v9, v8, La/d;->c:Ljava/util/ArrayList;

    iget-object v8, v7, La/e;->a:La/b;

    iget-object v8, v8, La/b;->a:Ljava/lang/String;

    const-string v9, "transient"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_33

    iget-object v7, v7, La/e;->a:La/b;

    iget-object v7, v7, La/b;->e:La/d;

    iget v8, v7, La/d;->b:I

    if-gez v8, :cond_60

    iput v2, v7, La/d;->b:I

    goto :goto_33

    :cond_60
    const/16 v9, 0x64

    if-le v8, v9, :cond_33

    iput v9, v7, La/d;->b:I

    goto :goto_33

    :cond_67
    invoke-static {p0}, Lcom/apprichtap/haptic/base/a;->a(Lc/a;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static f(Ljava/lang/String;I)Ljava/lang/String;
    .registers 11

    .line 0
    :try_start_0
    invoke-static {p0}, Lcom/apprichtap/haptic/base/a;->d(Ljava/lang/String;)Lc/a;

    move-result-object p0

    const/4 v0, 0x0

    move v1, v0

    :goto_6
    iget-object v2, p0, Lc/a;->b:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_11c

    move v2, v0

    :goto_f
    iget-object v3, p0, Lc/a;->b:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lc/c;

    iget-object v3, v3, Lc/c;->b:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_114

    iget-object v3, p0, Lc/a;->b:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lc/c;

    iget v3, v3, Lc/c;->a:I

    if-gt v3, p1, :cond_b9

    iget-object v3, p0, Lc/a;->b:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lc/c;

    iget v3, v3, Lc/c;->a:I

    iget-object v4, p0, Lc/a;->b:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lc/c;

    iget-object v4, v4, Lc/c;->b:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, La/e;

    iget-object v4, v4, La/e;->a:La/b;

    iget v4, v4, La/b;->b:I

    add-int/2addr v3, v4

    if-lt v3, p1, :cond_b9

    new-instance v3, Lc/a;

    invoke-direct {v3}, Lc/a;-><init>()V

    new-instance v4, Lc/b;

    invoke-direct {v4}, Lc/b;-><init>()V

    iput-object v4, v3, Lc/a;->a:Lc/b;

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, v3, Lc/a;->b:Ljava/util/ArrayList;

    new-instance v4, Lc/c;

    invoke-direct {v4}, Lc/c;-><init>()V

    iput v0, v4, Lc/c;->a:I

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, v4, Lc/c;->b:Ljava/util/ArrayList;

    iget-object v6, p0, Lc/a;->b:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lc/c;

    iget-object v6, v6, Lc/c;->b:Ljava/util/ArrayList;

    iget-object v7, p0, Lc/a;->b:Ljava/util/ArrayList;

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lc/c;

    iget-object v7, v7, Lc/c;->b:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    invoke-virtual {v6, v2, v7}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object v2, v4, Lc/c;->b:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v5

    :goto_92
    if-ge v0, v5, :cond_af

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    add-int/lit8 v0, v0, 0x1

    check-cast v6, La/e;

    iget-object v6, v6, La/e;->a:La/b;

    iget v7, v6, La/b;->b:I

    iget-object v8, p0, Lc/a;->b:Ljava/util/ArrayList;

    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lc/c;

    iget v8, v8, Lc/c;->a:I

    add-int/2addr v7, v8

    sub-int/2addr v7, p1

    iput v7, v6, La/b;->b:I

    goto :goto_92

    :cond_af
    iget-object p0, v3, Lc/a;->b:Ljava/util/ArrayList;

    invoke-virtual {p0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {v3}, Lcom/apprichtap/haptic/base/a;->a(Lc/a;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_b9
    iget-object v3, p0, Lc/a;->b:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lc/c;

    iget v3, v3, Lc/c;->a:I

    if-le v3, p1, :cond_110

    new-instance p0, Lc/a;

    invoke-direct {p0}, Lc/a;-><init>()V

    new-instance p1, Lc/b;

    invoke-direct {p1}, Lc/b;-><init>()V

    iput-object p1, p0, Lc/a;->a:Lc/b;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lc/a;->b:Ljava/util/ArrayList;

    new-instance p1, Lc/c;

    invoke-direct {p1}, Lc/c;-><init>()V

    iput v0, p1, Lc/c;->a:I

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p1, Lc/c;->b:Ljava/util/ArrayList;

    new-instance v1, La/b;

    invoke-direct {v1}, La/b;-><init>()V

    new-instance v2, La/d;

    invoke-direct {v2}, La/d;-><init>()V

    iput-object v2, v1, La/b;->e:La/d;

    iput v0, v2, La/d;->a:I

    iput v0, v2, La/d;->b:I

    const-string v0, "transient"

    iput-object v0, v1, La/b;->a:Ljava/lang/String;

    new-instance v0, La/e;

    invoke-direct {v0}, La/e;-><init>()V

    iput-object v1, v0, La/e;->a:La/b;

    iget-object v1, p1, Lc/c;->b:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lc/a;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {p0}, Lcom/apprichtap/haptic/base/a;->a(Lc/a;)Ljava/lang/String;

    move-result-object p0
    :try_end_10f
    .catchall {:try_start_0 .. :try_end_10f} :catchall_118

    return-object p0

    :cond_110
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_f

    :cond_114
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_6

    :catchall_118
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_11c
    const/4 p0, 0x0

    return-object p0
.end method

.method public static g(Ljava/lang/String;)Ljava/lang/String;
    .registers 21

    move-object/from16 v1, p0

    const-string v0, "transient"

    const-string v2, "trimOverlapEvent_in.he"

    invoke-static {v2, v1}, Lcom/apprichtap/haptic/base/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lcom/apprichtap/haptic/base/a;->d(Ljava/lang/String;)Lc/a;

    move-result-object v2

    invoke-static {v2}, Lcom/apprichtap/haptic/player/a;->a(La/c;)Z

    move-result v3

    if-nez v3, :cond_14

    return-object v1

    :cond_14
    :try_start_14
    iget-object v3, v2, Lc/a;->b:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v6, 0x0

    :goto_1b
    if-ge v6, v4, :cond_184

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    add-int/lit8 v6, v6, 0x1

    check-cast v7, Lc/c;

    iget-object v8, v7, Lc/c;->b:Ljava/util/ArrayList;

    if-nez v8, :cond_2a

    goto :goto_1b

    :cond_2a
    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_2e
    :goto_2e
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    const/4 v10, 0x2

    if-eqz v9, :cond_48

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, La/e;

    iget-object v9, v9, La/e;->a:La/b;

    iget v9, v9, La/b;->d:I

    if-ne v10, v9, :cond_2e

    invoke-interface {v8}, Ljava/util/Iterator;->remove()V

    goto :goto_2e

    :catchall_45
    move-exception v0

    goto/16 :goto_190

    :cond_48
    iget-object v8, v7, Lc/c;->b:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    const/4 v9, 0x1

    if-ne v9, v8, :cond_52

    goto :goto_1b

    :cond_52
    iget-object v8, v7, Lc/c;->b:Ljava/util/ArrayList;

    new-instance v11, Lcom/apprichtap/haptic/base/a$a;

    invoke-direct {v11}, Lcom/apprichtap/haptic/base/a$a;-><init>()V

    invoke-static {v8, v11}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    move v11, v9

    const/4 v8, 0x0

    :goto_5e
    iget-object v12, v7, Lc/c;->b:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    sub-int/2addr v12, v9

    if-gt v8, v12, :cond_155

    iget-object v12, v7, Lc/c;->b:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    sub-int/2addr v12, v9

    if-gt v11, v12, :cond_155

    iget-object v12, v7, Lc/c;->b:Ljava/util/ArrayList;

    invoke-virtual {v12, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, La/e;

    iget-object v12, v12, La/e;->a:La/b;

    iget-object v13, v7, Lc/c;->b:Ljava/util/ArrayList;

    invoke-virtual {v13, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, La/e;

    iget-object v13, v13, La/e;->a:La/b;

    iget-object v14, v12, La/b;->a:Ljava/lang/String;

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    const/16 v15, 0x30

    if-eqz v14, :cond_90

    move v14, v15

    goto :goto_92

    :cond_90
    iget v14, v12, La/b;->c:I

    :goto_92
    iget-object v9, v13, La/b;->a:Ljava/lang/String;

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_9e

    move v9, v15

    :goto_9b
    move/from16 v16, v10

    goto :goto_a1

    :cond_9e
    iget v9, v13, La/b;->c:I

    goto :goto_9b

    :goto_a1
    iget v10, v13, La/b;->b:I

    iget v5, v12, La/b;->b:I

    add-int/2addr v5, v14

    if-ge v10, v5, :cond_141

    const-string v5, "continuous"

    iget-object v10, v13, La/b;->a:Ljava/lang/String;

    invoke-virtual {v5, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_ba

    iget v5, v13, La/b;->b:I

    add-int/2addr v5, v9

    iget v9, v12, La/b;->b:I

    add-int/2addr v9, v14

    if-gt v5, v9, :cond_c4

    :cond_ba
    :goto_ba
    move-object/from16 v19, v2

    move-object/from16 v17, v3

    move/from16 v18, v4

    move v15, v11

    const/4 v1, 0x0

    move-object v11, v0

    goto :goto_12c

    :cond_c4
    sub-int/2addr v5, v9

    if-gt v5, v15, :cond_c8

    goto :goto_ba

    :cond_c8
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    new-instance v9, La/a;

    invoke-direct {v9}, La/a;-><init>()V

    const/4 v10, 0x0

    iput v10, v9, La/a;->a:I

    move v15, v11

    const-wide/16 v10, 0x0

    iput-wide v10, v9, La/a;->b:D

    const/4 v10, 0x0

    iput v10, v9, La/a;->c:I

    new-instance v10, La/a;

    invoke-direct {v10}, La/a;-><init>()V

    div-int/lit8 v11, v5, 0x3

    iput v11, v10, La/a;->a:I

    move-object v11, v0

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    iput-wide v0, v10, La/a;->b:D

    const/4 v0, 0x0

    iput v0, v10, La/a;->c:I

    new-instance v0, La/a;

    invoke-direct {v0}, La/a;-><init>()V

    div-int/lit8 v1, v5, 0x3

    mul-int/lit8 v1, v1, 0x2

    iput v1, v0, La/a;->a:I

    move-object/from16 v19, v2

    const-wide/high16 v1, 0x3ff0000000000000L    # 1.0

    iput-wide v1, v0, La/a;->b:D

    const/4 v1, 0x0

    iput v1, v0, La/a;->c:I

    new-instance v2, La/a;

    invoke-direct {v2}, La/a;-><init>()V

    iput v5, v2, La/a;->a:I

    move-object/from16 v17, v3

    move/from16 v18, v4

    const-wide/16 v3, 0x0

    iput-wide v3, v2, La/a;->b:D

    iput v1, v2, La/a;->c:I

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v8, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iput v5, v13, La/b;->c:I

    iget v0, v12, La/b;->b:I

    add-int/2addr v0, v14

    iput v0, v13, La/b;->b:I

    iget-object v0, v13, La/b;->e:La/d;

    iput-object v8, v0, La/d;->c:Ljava/util/ArrayList;

    move v8, v15

    goto :goto_12f

    :goto_12c
    const/4 v0, -0x1

    iput v0, v13, La/b;->d:I

    :goto_12f
    add-int/lit8 v0, v15, 0x1

    move-object v1, v11

    move v11, v0

    move-object v0, v1

    move-object/from16 v1, p0

    move/from16 v10, v16

    move-object/from16 v3, v17

    move/from16 v4, v18

    move-object/from16 v2, v19

    :goto_13e
    const/4 v9, 0x1

    goto/16 :goto_5e

    :cond_141
    move-object/from16 v19, v2

    move-object/from16 v17, v3

    move/from16 v18, v4

    move v15, v11

    const/4 v1, 0x0

    move-object v11, v0

    add-int/lit8 v0, v15, 0x1

    move-object v1, v11

    move v11, v0

    move-object v0, v1

    move-object/from16 v1, p0

    move v8, v15

    move/from16 v10, v16

    goto :goto_13e

    :cond_155
    move-object v11, v0

    move-object/from16 v19, v2

    move-object/from16 v17, v3

    move/from16 v18, v4

    const/4 v1, 0x0

    iget-object v0, v7, Lc/c;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_163
    :goto_163
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_179

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, La/e;

    iget-object v2, v2, La/e;->a:La/b;

    iget v2, v2, La/b;->d:I

    if-gez v2, :cond_163

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_163

    :cond_179
    move-object/from16 v1, p0

    move-object v0, v11

    move-object/from16 v3, v17

    move/from16 v4, v18

    move-object/from16 v2, v19

    goto/16 :goto_1b

    :cond_184
    move-object/from16 v19, v2

    invoke-static/range {v19 .. v19}, Lcom/apprichtap/haptic/base/a;->a(Lc/a;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "trimOverlapEvent_out.he"

    invoke-static {v1, v0}, Lcom/apprichtap/haptic/base/d;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_18f
    .catchall {:try_start_14 .. :try_end_18f} :catchall_45

    return-object v0

    :goto_190
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "trimOverlapEvent "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "HEFileUtils"

    invoke-static {v1, v0}, Lcom/apprichtap/haptic/base/d$a;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method
