.class public Lcom/ss/android/vesdk/runtime/VETimeEffectManager;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ss/android/vesdk/runtime/VETimeEffectManager$Clip;,
        Lcom/ss/android/vesdk/runtime/VETimeEffectManager$Track;
    }
.end annotation


# static fields
.field public static TAG:Ljava/lang/String; = "VETimeEffectManager"

.field private static TYPE_REPEAT:I = 0x1

.field private static TYPE_SLOWACTION:I = 0x2

.field private static TYPE_SRC:I


# instance fields
.field private mTrack:Lcom/ss/android/vesdk/runtime/VETimeEffectManager$Track;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    new-instance v0, Lcom/ss/android/vesdk/runtime/VETimeEffectManager$Track;

    invoke-direct {v0}, Lcom/ss/android/vesdk/runtime/VETimeEffectManager$Track;-><init>()V

    iput-object v0, p0, Lcom/ss/android/vesdk/runtime/VETimeEffectManager;->mTrack:Lcom/ss/android/vesdk/runtime/VETimeEffectManager$Track;

    .line 86
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lcom/ss/android/vesdk/runtime/VETimeEffectManager$Track;->videoClips:Ljava/util/List;

    .line 87
    iget-object v0, p0, Lcom/ss/android/vesdk/runtime/VETimeEffectManager;->mTrack:Lcom/ss/android/vesdk/runtime/VETimeEffectManager$Track;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lcom/ss/android/vesdk/runtime/VETimeEffectManager$Track;->audioClips:Ljava/util/List;

    .line 88
    iget-object v0, p0, Lcom/ss/android/vesdk/runtime/VETimeEffectManager;->mTrack:Lcom/ss/android/vesdk/runtime/VETimeEffectManager$Track;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lcom/ss/android/vesdk/runtime/VETimeEffectManager$Track;->timeEffectClips:Ljava/util/List;

    .line 89
    iget-object v0, p0, Lcom/ss/android/vesdk/runtime/VETimeEffectManager;->mTrack:Lcom/ss/android/vesdk/runtime/VETimeEffectManager$Track;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lcom/ss/android/vesdk/runtime/VETimeEffectManager$Track;->audioTimeEffectClips:Ljava/util/List;

    .line 90
    iget-object p0, p0, Lcom/ss/android/vesdk/runtime/VETimeEffectManager;->mTrack:Lcom/ss/android/vesdk/runtime/VETimeEffectManager$Track;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ss/android/vesdk/runtime/VETimeEffectManager$Track;->timeFilterParam:Lcom/ss/android/vesdk/filterparam/VEBaseFilterParam;

    const/4 v0, -0x1

    .line 91
    iput v0, p0, Lcom/ss/android/vesdk/runtime/VETimeEffectManager$Track;->videoFilterIndex:I

    .line 92
    iput v0, p0, Lcom/ss/android/vesdk/runtime/VETimeEffectManager$Track;->audioFilterIndex:I

    return-void
.end method

.method private computeAddOptClips(Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/ss/android/vesdk/runtime/VETimeEffectManager$Clip;",
            ">;",
            "Ljava/util/List<",
            "Lcom/ss/android/vesdk/runtime/VETimeEffectManager$Clip;",
            ">;",
            "Ljava/util/List<",
            "Lcom/ss/android/vesdk/clipparam/VEClipParam;",
            ">;",
            "Ljava/util/List<",
            "Lcom/ss/android/vesdk/clipparam/VEClipParam;",
            ">;)V"
        }
    .end annotation

    .line 523
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p0

    if-lez p0, :cond_71

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p0

    if-gtz p0, :cond_d

    goto :goto_71

    .line 526
    :cond_d
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p0

    new-array p0, p0, [Z

    const/4 p1, 0x0

    .line 527
    :goto_14
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_71

    .line 528
    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ss/android/vesdk/runtime/VETimeEffectManager$Clip;

    .line 529
    iget v1, v0, Lcom/ss/android/vesdk/runtime/VETimeEffectManager$Clip;->index:I

    aget-boolean v2, p0, v1

    if-nez v2, :cond_2a

    const/4 v2, 0x1

    .line 530
    aput-boolean v2, p0, v1

    goto :goto_4c

    .line 533
    :cond_2a
    new-instance v1, Lcom/ss/android/vesdk/clipparam/VEClipParam;

    invoke-direct {v1}, Lcom/ss/android/vesdk/clipparam/VEClipParam;-><init>()V

    .line 534
    iget v2, v0, Lcom/ss/android/vesdk/runtime/VETimeEffectManager$Clip;->clipType:I

    iput v2, v1, Lcom/ss/android/vesdk/clipparam/VEClipParam;->clipType:I

    .line 535
    iget-object v2, v0, Lcom/ss/android/vesdk/runtime/VETimeEffectManager$Clip;->path:Ljava/lang/String;

    iput-object v2, v1, Lcom/ss/android/vesdk/clipparam/VEClipParam;->path:Ljava/lang/String;

    .line 536
    iget v2, v0, Lcom/ss/android/vesdk/runtime/VETimeEffectManager$Clip;->vTrimIn:I

    iput v2, v1, Lcom/ss/android/vesdk/clipparam/VEClipParam;->trimIn:I

    .line 537
    iget v2, v0, Lcom/ss/android/vesdk/runtime/VETimeEffectManager$Clip;->vTrimOut:I

    iput v2, v1, Lcom/ss/android/vesdk/clipparam/VEClipParam;->trimOut:I

    .line 538
    iget-wide v2, v0, Lcom/ss/android/vesdk/runtime/VETimeEffectManager$Clip;->speed:D

    iput-wide v2, v1, Lcom/ss/android/vesdk/clipparam/VEClipParam;->speed:D

    .line 539
    iget v2, v0, Lcom/ss/android/vesdk/runtime/VETimeEffectManager$Clip;->clipRotate:I

    iput v2, v1, Lcom/ss/android/vesdk/clipparam/VEClipParam;->clipRotate:I

    .line 540
    iput p1, v1, Lcom/ss/android/vesdk/clipparam/VEClipParam;->clipIndex:I

    .line 541
    invoke-interface {p3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 545
    :goto_4c
    new-instance v1, Lcom/ss/android/vesdk/clipparam/VEClipParam;

    invoke-direct {v1}, Lcom/ss/android/vesdk/clipparam/VEClipParam;-><init>()V

    .line 546
    iget v2, v0, Lcom/ss/android/vesdk/runtime/VETimeEffectManager$Clip;->clipType:I

    iput v2, v1, Lcom/ss/android/vesdk/clipparam/VEClipParam;->clipType:I

    .line 547
    iget-object v2, v0, Lcom/ss/android/vesdk/runtime/VETimeEffectManager$Clip;->path:Ljava/lang/String;

    iput-object v2, v1, Lcom/ss/android/vesdk/clipparam/VEClipParam;->path:Ljava/lang/String;

    .line 548
    iget v2, v0, Lcom/ss/android/vesdk/runtime/VETimeEffectManager$Clip;->vTrimIn:I

    iput v2, v1, Lcom/ss/android/vesdk/clipparam/VEClipParam;->trimIn:I

    .line 549
    iget v2, v0, Lcom/ss/android/vesdk/runtime/VETimeEffectManager$Clip;->vTrimOut:I

    iput v2, v1, Lcom/ss/android/vesdk/clipparam/VEClipParam;->trimOut:I

    .line 550
    iget-wide v2, v0, Lcom/ss/android/vesdk/runtime/VETimeEffectManager$Clip;->speed:D

    iput-wide v2, v1, Lcom/ss/android/vesdk/clipparam/VEClipParam;->speed:D

    .line 551
    iget v0, v0, Lcom/ss/android/vesdk/runtime/VETimeEffectManager$Clip;->clipRotate:I

    iput v0, v1, Lcom/ss/android/vesdk/clipparam/VEClipParam;->clipRotate:I

    .line 552
    iput p1, v1, Lcom/ss/android/vesdk/clipparam/VEClipParam;->clipIndex:I

    .line 553
    invoke-interface {p4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 p1, p1, 0x1

    goto :goto_14

    :cond_71
    :goto_71
    return-void
.end method

.method private computeDeleteOptClips(Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/ss/android/vesdk/runtime/VETimeEffectManager$Clip;",
            ">;",
            "Ljava/util/List<",
            "Lcom/ss/android/vesdk/runtime/VETimeEffectManager$Clip;",
            ">;",
            "Ljava/util/List<",
            "Lcom/ss/android/vesdk/clipparam/VEClipParam;",
            ">;",
            "Ljava/util/List<",
            "Lcom/ss/android/vesdk/clipparam/VEClipParam;",
            ">;)V"
        }
    .end annotation

    .line 566
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p0

    new-array p0, p0, [Z

    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    .line 570
    :goto_9
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_44

    .line 571
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/ss/android/vesdk/runtime/VETimeEffectManager$Clip;

    .line 572
    iget v4, v3, Lcom/ss/android/vesdk/runtime/VETimeEffectManager$Clip;->index:I

    aget-boolean v5, p0, v4

    if-nez v5, :cond_1f

    const/4 v3, 0x1

    .line 573
    aput-boolean v3, p0, v4

    goto :goto_41

    .line 575
    :cond_1f
    new-instance v4, Lcom/ss/android/vesdk/clipparam/VEClipParam;

    invoke-direct {v4}, Lcom/ss/android/vesdk/clipparam/VEClipParam;-><init>()V

    .line 576
    iget-object v5, v3, Lcom/ss/android/vesdk/runtime/VETimeEffectManager$Clip;->path:Ljava/lang/String;

    iput-object v5, v4, Lcom/ss/android/vesdk/clipparam/VEClipParam;->path:Ljava/lang/String;

    .line 577
    iget v5, v3, Lcom/ss/android/vesdk/runtime/VETimeEffectManager$Clip;->vTrimIn:I

    iput v5, v4, Lcom/ss/android/vesdk/clipparam/VEClipParam;->trimIn:I

    .line 578
    iget v5, v3, Lcom/ss/android/vesdk/runtime/VETimeEffectManager$Clip;->vTrimOut:I

    iput v5, v4, Lcom/ss/android/vesdk/clipparam/VEClipParam;->trimOut:I

    .line 579
    iget-wide v5, v3, Lcom/ss/android/vesdk/runtime/VETimeEffectManager$Clip;->speed:D

    iput-wide v5, v4, Lcom/ss/android/vesdk/clipparam/VEClipParam;->speed:D

    .line 580
    iget v3, v3, Lcom/ss/android/vesdk/runtime/VETimeEffectManager$Clip;->clipRotate:I

    iput v3, v4, Lcom/ss/android/vesdk/clipparam/VEClipParam;->clipRotate:I

    sub-int v3, v1, v2

    .line 581
    iput v3, v4, Lcom/ss/android/vesdk/clipparam/VEClipParam;->clipIndex:I

    add-int/lit8 v2, v2, 0x1

    .line 583
    invoke-interface {p3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_41
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    .line 588
    :cond_44
    :goto_44
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p0

    if-ge v0, p0, :cond_89

    .line 589
    new-instance p0, Lcom/ss/android/vesdk/clipparam/VEClipParam;

    invoke-direct {p0}, Lcom/ss/android/vesdk/clipparam/VEClipParam;-><init>()V

    .line 590
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/ss/android/vesdk/runtime/VETimeEffectManager$Clip;

    iget-object p2, p2, Lcom/ss/android/vesdk/runtime/VETimeEffectManager$Clip;->path:Ljava/lang/String;

    iput-object p2, p0, Lcom/ss/android/vesdk/clipparam/VEClipParam;->path:Ljava/lang/String;

    .line 591
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/ss/android/vesdk/runtime/VETimeEffectManager$Clip;

    iget p2, p2, Lcom/ss/android/vesdk/runtime/VETimeEffectManager$Clip;->vTrimIn:I

    iput p2, p0, Lcom/ss/android/vesdk/clipparam/VEClipParam;->trimIn:I

    .line 592
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/ss/android/vesdk/runtime/VETimeEffectManager$Clip;

    iget p2, p2, Lcom/ss/android/vesdk/runtime/VETimeEffectManager$Clip;->vTrimOut:I

    iput p2, p0, Lcom/ss/android/vesdk/clipparam/VEClipParam;->trimOut:I

    .line 593
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/ss/android/vesdk/runtime/VETimeEffectManager$Clip;

    iget-wide p2, p2, Lcom/ss/android/vesdk/runtime/VETimeEffectManager$Clip;->speed:D

    iput-wide p2, p0, Lcom/ss/android/vesdk/clipparam/VEClipParam;->speed:D

    .line 594
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/ss/android/vesdk/runtime/VETimeEffectManager$Clip;

    iget p2, p2, Lcom/ss/android/vesdk/runtime/VETimeEffectManager$Clip;->clipRotate:I

    iput p2, p0, Lcom/ss/android/vesdk/clipparam/VEClipParam;->clipRotate:I

    .line 595
    iput v0, p0, Lcom/ss/android/vesdk/clipparam/VEClipParam;->clipIndex:I

    .line 596
    invoke-interface {p4, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_44

    :cond_89
    return-void
.end method

.method private getSeparateClips(Lcom/ss/android/vesdk/filterparam/VEBaseFilterParam;Ljava/util/List;)Ljava/util/List;
    .registers 24
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ss/android/vesdk/filterparam/VEBaseFilterParam;",
            "Ljava/util/List<",
            "Lcom/ss/android/vesdk/runtime/VETimeEffectManager$Clip;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/ss/android/vesdk/runtime/VETimeEffectManager$Clip;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p1

    .line 363
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 365
    instance-of v2, v0, Lcom/ss/android/vesdk/filterparam/VERepeatFilterParam;

    if-eqz v2, :cond_26b

    .line 366
    check-cast v0, Lcom/ss/android/vesdk/filterparam/VERepeatFilterParam;

    .line 367
    iget v2, v0, Lcom/ss/android/vesdk/filterparam/VERepeatFilterParam;->seqIn:I

    .line 368
    iget v4, v0, Lcom/ss/android/vesdk/filterparam/VERepeatFilterParam;->repeatDuration:I

    add-int/2addr v4, v2

    .line 369
    iget v0, v0, Lcom/ss/android/vesdk/filterparam/VERepeatFilterParam;->repeatTime:I

    int-to-float v0, v0

    .line 371
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 373
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    const/4 v11, 0x0

    :goto_1f
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_22d

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/ss/android/vesdk/runtime/VETimeEffectManager$Clip;

    .line 374
    iget v12, v7, Lcom/ss/android/vesdk/runtime/VETimeEffectManager$Clip;->vSeqIn:I

    if-ge v12, v4, :cond_33

    iget v13, v7, Lcom/ss/android/vesdk/runtime/VETimeEffectManager$Clip;->vSeqOut:I

    if-gt v13, v2, :cond_3b

    :cond_33
    move/from16 p1, v0

    move-object/from16 p2, v6

    move-object v0, v7

    move v6, v2

    goto/16 :goto_208

    :cond_3b
    if-lt v12, v2, :cond_6d

    if-gt v13, v4, :cond_6d

    .line 379
    new-instance v8, Lcom/ss/android/vesdk/runtime/VETimeEffectManager$Clip;

    move-object v9, v8

    sget v8, Lcom/ss/android/vesdk/runtime/VETimeEffectManager;->TYPE_REPEAT:I

    move-object v10, v9

    iget v9, v7, Lcom/ss/android/vesdk/runtime/VETimeEffectManager$Clip;->clipType:I

    move-object v14, v10

    iget-object v10, v7, Lcom/ss/android/vesdk/runtime/VETimeEffectManager$Clip;->path:Ljava/lang/String;

    move-object v15, v14

    iget v14, v7, Lcom/ss/android/vesdk/runtime/VETimeEffectManager$Clip;->vTrimIn:I

    move-object/from16 v16, v15

    iget v15, v7, Lcom/ss/android/vesdk/runtime/VETimeEffectManager$Clip;->vTrimOut:I

    move/from16 p1, v4

    iget-wide v3, v7, Lcom/ss/android/vesdk/runtime/VETimeEffectManager$Clip;->speed:D

    iget v7, v7, Lcom/ss/android/vesdk/runtime/VETimeEffectManager$Clip;->clipRotate:I

    move/from16 v18, v7

    move-object/from16 v7, v16

    move-wide/from16 v16, v3

    invoke-direct/range {v7 .. v18}, Lcom/ss/android/vesdk/runtime/VETimeEffectManager$Clip;-><init>(IILjava/lang/String;IIIIIDI)V

    move-object v14, v7

    .line 380
    invoke-interface {v5, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move/from16 v4, p1

    move/from16 p1, v0

    move-object/from16 p2, v6

    :cond_6a
    :goto_6a
    move v6, v2

    goto/16 :goto_224

    :cond_6d
    move/from16 p1, v4

    move/from16 v4, p1

    if-ge v12, v2, :cond_f1

    if-le v13, v4, :cond_f1

    .line 383
    iget v14, v7, Lcom/ss/android/vesdk/runtime/VETimeEffectManager$Clip;->vTrimIn:I

    sub-int v3, v2, v12

    int-to-double v8, v3

    move-wide v15, v8

    iget-wide v8, v7, Lcom/ss/android/vesdk/runtime/VETimeEffectManager$Clip;->speed:D

    move-wide/from16 v17, v8

    mul-double v8, v15, v17

    double-to-int v3, v8

    add-int v15, v14, v3

    sub-int v3, v4, v12

    int-to-double v8, v3

    mul-double v8, v8, v17

    double-to-int v3, v8

    add-int/2addr v3, v14

    .line 386
    new-instance v8, Lcom/ss/android/vesdk/runtime/VETimeEffectManager$Clip;

    move-object v9, v8

    sget v8, Lcom/ss/android/vesdk/runtime/VETimeEffectManager;->TYPE_SRC:I

    move-object v10, v9

    iget v9, v7, Lcom/ss/android/vesdk/runtime/VETimeEffectManager$Clip;->clipType:I

    move-object/from16 v16, v10

    iget-object v10, v7, Lcom/ss/android/vesdk/runtime/VETimeEffectManager$Clip;->path:Ljava/lang/String;

    move/from16 p1, v0

    iget v0, v7, Lcom/ss/android/vesdk/runtime/VETimeEffectManager$Clip;->clipRotate:I

    move-wide/from16 v19, v17

    move/from16 v18, v0

    move-object v0, v7

    move-object/from16 v7, v16

    move-wide/from16 v16, v19

    invoke-direct/range {v7 .. v18}, Lcom/ss/android/vesdk/runtime/VETimeEffectManager$Clip;-><init>(IILjava/lang/String;IIIIIDI)V

    move v14, v15

    .line 387
    invoke-interface {v5, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 388
    new-instance v7, Lcom/ss/android/vesdk/runtime/VETimeEffectManager$Clip;

    sget v8, Lcom/ss/android/vesdk/runtime/VETimeEffectManager;->TYPE_REPEAT:I

    iget v9, v0, Lcom/ss/android/vesdk/runtime/VETimeEffectManager$Clip;->clipType:I

    iget-object v10, v0, Lcom/ss/android/vesdk/runtime/VETimeEffectManager$Clip;->path:Ljava/lang/String;

    iget v12, v0, Lcom/ss/android/vesdk/runtime/VETimeEffectManager$Clip;->vSeqIn:I

    iget v13, v0, Lcom/ss/android/vesdk/runtime/VETimeEffectManager$Clip;->vSeqOut:I

    move-object/from16 p2, v6

    move-object v15, v7

    iget-wide v6, v0, Lcom/ss/android/vesdk/runtime/VETimeEffectManager$Clip;->speed:D

    move/from16 v16, v3

    iget v3, v0, Lcom/ss/android/vesdk/runtime/VETimeEffectManager$Clip;->clipRotate:I

    move-wide/from16 v19, v6

    move-object v7, v15

    move/from16 v15, v16

    move-wide/from16 v16, v19

    move/from16 v18, v3

    invoke-direct/range {v7 .. v18}, Lcom/ss/android/vesdk/runtime/VETimeEffectManager$Clip;-><init>(IILjava/lang/String;IIIIIDI)V

    move v14, v15

    move-object v15, v7

    .line 389
    invoke-interface {v5, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 390
    new-instance v7, Lcom/ss/android/vesdk/runtime/VETimeEffectManager$Clip;

    sget v8, Lcom/ss/android/vesdk/runtime/VETimeEffectManager;->TYPE_SRC:I

    iget v9, v0, Lcom/ss/android/vesdk/runtime/VETimeEffectManager$Clip;->clipType:I

    iget-object v10, v0, Lcom/ss/android/vesdk/runtime/VETimeEffectManager$Clip;->path:Ljava/lang/String;

    iget v12, v0, Lcom/ss/android/vesdk/runtime/VETimeEffectManager$Clip;->vSeqIn:I

    iget v13, v0, Lcom/ss/android/vesdk/runtime/VETimeEffectManager$Clip;->vSeqOut:I

    iget v15, v0, Lcom/ss/android/vesdk/runtime/VETimeEffectManager$Clip;->vTrimOut:I

    move-object v3, v7

    iget-wide v6, v0, Lcom/ss/android/vesdk/runtime/VETimeEffectManager$Clip;->speed:D

    iget v0, v0, Lcom/ss/android/vesdk/runtime/VETimeEffectManager$Clip;->clipRotate:I

    move/from16 v18, v0

    move-wide/from16 v16, v6

    move-object v7, v3

    invoke-direct/range {v7 .. v18}, Lcom/ss/android/vesdk/runtime/VETimeEffectManager$Clip;-><init>(IILjava/lang/String;IIIIIDI)V

    .line 391
    invoke-interface {v5, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_6a

    :cond_f1
    move/from16 p1, v0

    move-object/from16 p2, v6

    move-object v0, v7

    if-ne v12, v2, :cond_13a

    if-le v13, v4, :cond_13a

    .line 394
    iget v14, v0, Lcom/ss/android/vesdk/runtime/VETimeEffectManager$Clip;->vTrimIn:I

    sub-int v3, v4, v12

    int-to-double v6, v3

    iget-wide v8, v0, Lcom/ss/android/vesdk/runtime/VETimeEffectManager$Clip;->speed:D

    mul-double/2addr v6, v8

    double-to-int v3, v6

    add-int v15, v14, v3

    .line 396
    new-instance v7, Lcom/ss/android/vesdk/runtime/VETimeEffectManager$Clip;

    move-wide/from16 v16, v8

    sget v8, Lcom/ss/android/vesdk/runtime/VETimeEffectManager;->TYPE_REPEAT:I

    iget v9, v0, Lcom/ss/android/vesdk/runtime/VETimeEffectManager$Clip;->clipType:I

    iget-object v10, v0, Lcom/ss/android/vesdk/runtime/VETimeEffectManager$Clip;->path:Ljava/lang/String;

    iget v3, v0, Lcom/ss/android/vesdk/runtime/VETimeEffectManager$Clip;->clipRotate:I

    move/from16 v18, v3

    invoke-direct/range {v7 .. v18}, Lcom/ss/android/vesdk/runtime/VETimeEffectManager$Clip;-><init>(IILjava/lang/String;IIIIIDI)V

    move v14, v15

    .line 397
    invoke-interface {v5, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 398
    new-instance v7, Lcom/ss/android/vesdk/runtime/VETimeEffectManager$Clip;

    sget v8, Lcom/ss/android/vesdk/runtime/VETimeEffectManager;->TYPE_SRC:I

    iget v9, v0, Lcom/ss/android/vesdk/runtime/VETimeEffectManager$Clip;->clipType:I

    iget-object v10, v0, Lcom/ss/android/vesdk/runtime/VETimeEffectManager$Clip;->path:Ljava/lang/String;

    iget v12, v0, Lcom/ss/android/vesdk/runtime/VETimeEffectManager$Clip;->vSeqIn:I

    iget v13, v0, Lcom/ss/android/vesdk/runtime/VETimeEffectManager$Clip;->vSeqOut:I

    iget v15, v0, Lcom/ss/android/vesdk/runtime/VETimeEffectManager$Clip;->vTrimOut:I

    move-object v3, v7

    iget-wide v6, v0, Lcom/ss/android/vesdk/runtime/VETimeEffectManager$Clip;->speed:D

    iget v0, v0, Lcom/ss/android/vesdk/runtime/VETimeEffectManager$Clip;->clipRotate:I

    move/from16 v18, v0

    move-wide/from16 v16, v6

    move-object v7, v3

    invoke-direct/range {v7 .. v18}, Lcom/ss/android/vesdk/runtime/VETimeEffectManager$Clip;-><init>(IILjava/lang/String;IIIIIDI)V

    .line 399
    invoke-interface {v5, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_6a

    :cond_13a
    if-ge v12, v2, :cond_17e

    if-ne v13, v4, :cond_17e

    .line 403
    iget v14, v0, Lcom/ss/android/vesdk/runtime/VETimeEffectManager$Clip;->vTrimIn:I

    sub-int v3, v2, v12

    int-to-double v6, v3

    iget-wide v8, v0, Lcom/ss/android/vesdk/runtime/VETimeEffectManager$Clip;->speed:D

    mul-double/2addr v6, v8

    double-to-int v3, v6

    add-int v15, v14, v3

    .line 404
    new-instance v7, Lcom/ss/android/vesdk/runtime/VETimeEffectManager$Clip;

    move-wide/from16 v16, v8

    sget v8, Lcom/ss/android/vesdk/runtime/VETimeEffectManager;->TYPE_SRC:I

    iget v9, v0, Lcom/ss/android/vesdk/runtime/VETimeEffectManager$Clip;->clipType:I

    iget-object v10, v0, Lcom/ss/android/vesdk/runtime/VETimeEffectManager$Clip;->path:Ljava/lang/String;

    iget v3, v0, Lcom/ss/android/vesdk/runtime/VETimeEffectManager$Clip;->clipRotate:I

    move/from16 v18, v3

    invoke-direct/range {v7 .. v18}, Lcom/ss/android/vesdk/runtime/VETimeEffectManager$Clip;-><init>(IILjava/lang/String;IIIIIDI)V

    move v14, v15

    .line 405
    invoke-interface {v5, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 406
    new-instance v7, Lcom/ss/android/vesdk/runtime/VETimeEffectManager$Clip;

    sget v8, Lcom/ss/android/vesdk/runtime/VETimeEffectManager;->TYPE_REPEAT:I

    iget v9, v0, Lcom/ss/android/vesdk/runtime/VETimeEffectManager$Clip;->clipType:I

    iget-object v10, v0, Lcom/ss/android/vesdk/runtime/VETimeEffectManager$Clip;->path:Ljava/lang/String;

    iget v12, v0, Lcom/ss/android/vesdk/runtime/VETimeEffectManager$Clip;->vSeqIn:I

    iget v13, v0, Lcom/ss/android/vesdk/runtime/VETimeEffectManager$Clip;->vSeqOut:I

    iget v15, v0, Lcom/ss/android/vesdk/runtime/VETimeEffectManager$Clip;->vTrimOut:I

    move-object v3, v7

    iget-wide v6, v0, Lcom/ss/android/vesdk/runtime/VETimeEffectManager$Clip;->speed:D

    iget v0, v0, Lcom/ss/android/vesdk/runtime/VETimeEffectManager$Clip;->clipRotate:I

    move/from16 v18, v0

    move-wide/from16 v16, v6

    move-object v7, v3

    invoke-direct/range {v7 .. v18}, Lcom/ss/android/vesdk/runtime/VETimeEffectManager$Clip;-><init>(IILjava/lang/String;IIIIIDI)V

    .line 407
    invoke-interface {v5, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_6a

    :cond_17e
    if-ge v12, v2, :cond_1c4

    if-le v13, v2, :cond_1c4

    if-ge v13, v4, :cond_1c4

    .line 411
    iget v14, v0, Lcom/ss/android/vesdk/runtime/VETimeEffectManager$Clip;->vTrimIn:I

    sub-int v3, v2, v12

    int-to-double v6, v3

    iget-wide v8, v0, Lcom/ss/android/vesdk/runtime/VETimeEffectManager$Clip;->speed:D

    mul-double/2addr v6, v8

    double-to-int v3, v6

    add-int v15, v14, v3

    .line 412
    new-instance v7, Lcom/ss/android/vesdk/runtime/VETimeEffectManager$Clip;

    move-wide/from16 v16, v8

    sget v8, Lcom/ss/android/vesdk/runtime/VETimeEffectManager;->TYPE_SRC:I

    iget v9, v0, Lcom/ss/android/vesdk/runtime/VETimeEffectManager$Clip;->clipType:I

    iget-object v10, v0, Lcom/ss/android/vesdk/runtime/VETimeEffectManager$Clip;->path:Ljava/lang/String;

    iget v3, v0, Lcom/ss/android/vesdk/runtime/VETimeEffectManager$Clip;->clipRotate:I

    move/from16 v18, v3

    invoke-direct/range {v7 .. v18}, Lcom/ss/android/vesdk/runtime/VETimeEffectManager$Clip;-><init>(IILjava/lang/String;IIIIIDI)V

    move v14, v15

    .line 413
    invoke-interface {v5, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 414
    new-instance v7, Lcom/ss/android/vesdk/runtime/VETimeEffectManager$Clip;

    sget v8, Lcom/ss/android/vesdk/runtime/VETimeEffectManager;->TYPE_REPEAT:I

    iget v9, v0, Lcom/ss/android/vesdk/runtime/VETimeEffectManager$Clip;->clipType:I

    iget-object v10, v0, Lcom/ss/android/vesdk/runtime/VETimeEffectManager$Clip;->path:Ljava/lang/String;

    iget v12, v0, Lcom/ss/android/vesdk/runtime/VETimeEffectManager$Clip;->vSeqIn:I

    iget v13, v0, Lcom/ss/android/vesdk/runtime/VETimeEffectManager$Clip;->vSeqOut:I

    iget v15, v0, Lcom/ss/android/vesdk/runtime/VETimeEffectManager$Clip;->vTrimOut:I

    move-object v3, v7

    iget-wide v6, v0, Lcom/ss/android/vesdk/runtime/VETimeEffectManager$Clip;->speed:D

    iget v0, v0, Lcom/ss/android/vesdk/runtime/VETimeEffectManager$Clip;->clipRotate:I

    move/from16 v18, v0

    move-wide/from16 v16, v6

    move-object v7, v3

    invoke-direct/range {v7 .. v18}, Lcom/ss/android/vesdk/runtime/VETimeEffectManager$Clip;-><init>(IILjava/lang/String;IIIIIDI)V

    .line 415
    invoke-interface {v5, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_6a

    :cond_1c4
    if-ge v12, v4, :cond_6a

    if-le v13, v4, :cond_6a

    if-le v12, v2, :cond_6a

    .line 419
    iget v14, v0, Lcom/ss/android/vesdk/runtime/VETimeEffectManager$Clip;->vTrimIn:I

    sub-int v3, v4, v12

    int-to-double v6, v3

    iget-wide v8, v0, Lcom/ss/android/vesdk/runtime/VETimeEffectManager$Clip;->speed:D

    mul-double/2addr v6, v8

    double-to-int v3, v6

    add-int v15, v14, v3

    .line 420
    new-instance v7, Lcom/ss/android/vesdk/runtime/VETimeEffectManager$Clip;

    move-wide/from16 v16, v8

    sget v8, Lcom/ss/android/vesdk/runtime/VETimeEffectManager;->TYPE_REPEAT:I

    iget v9, v0, Lcom/ss/android/vesdk/runtime/VETimeEffectManager$Clip;->clipType:I

    iget-object v10, v0, Lcom/ss/android/vesdk/runtime/VETimeEffectManager$Clip;->path:Ljava/lang/String;

    iget v3, v0, Lcom/ss/android/vesdk/runtime/VETimeEffectManager$Clip;->clipRotate:I

    move/from16 v18, v3

    invoke-direct/range {v7 .. v18}, Lcom/ss/android/vesdk/runtime/VETimeEffectManager$Clip;-><init>(IILjava/lang/String;IIIIIDI)V

    move v14, v15

    .line 421
    invoke-interface {v5, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 422
    new-instance v7, Lcom/ss/android/vesdk/runtime/VETimeEffectManager$Clip;

    sget v8, Lcom/ss/android/vesdk/runtime/VETimeEffectManager;->TYPE_SRC:I

    iget v9, v0, Lcom/ss/android/vesdk/runtime/VETimeEffectManager$Clip;->clipType:I

    iget-object v10, v0, Lcom/ss/android/vesdk/runtime/VETimeEffectManager$Clip;->path:Ljava/lang/String;

    iget v12, v0, Lcom/ss/android/vesdk/runtime/VETimeEffectManager$Clip;->vSeqIn:I

    iget v13, v0, Lcom/ss/android/vesdk/runtime/VETimeEffectManager$Clip;->vSeqOut:I

    iget v15, v0, Lcom/ss/android/vesdk/runtime/VETimeEffectManager$Clip;->vTrimOut:I

    move v6, v2

    iget-wide v2, v0, Lcom/ss/android/vesdk/runtime/VETimeEffectManager$Clip;->speed:D

    iget v0, v0, Lcom/ss/android/vesdk/runtime/VETimeEffectManager$Clip;->clipRotate:I

    move/from16 v18, v0

    move-wide/from16 v16, v2

    invoke-direct/range {v7 .. v18}, Lcom/ss/android/vesdk/runtime/VETimeEffectManager$Clip;-><init>(IILjava/lang/String;IIIIIDI)V

    .line 423
    invoke-interface {v5, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_224

    .line 375
    :goto_208
    new-instance v7, Lcom/ss/android/vesdk/runtime/VETimeEffectManager$Clip;

    sget v8, Lcom/ss/android/vesdk/runtime/VETimeEffectManager;->TYPE_SRC:I

    iget v9, v0, Lcom/ss/android/vesdk/runtime/VETimeEffectManager$Clip;->clipType:I

    iget-object v10, v0, Lcom/ss/android/vesdk/runtime/VETimeEffectManager$Clip;->path:Ljava/lang/String;

    iget v13, v0, Lcom/ss/android/vesdk/runtime/VETimeEffectManager$Clip;->vSeqOut:I

    iget v14, v0, Lcom/ss/android/vesdk/runtime/VETimeEffectManager$Clip;->vTrimIn:I

    iget v15, v0, Lcom/ss/android/vesdk/runtime/VETimeEffectManager$Clip;->vTrimOut:I

    iget-wide v2, v0, Lcom/ss/android/vesdk/runtime/VETimeEffectManager$Clip;->speed:D

    iget v0, v0, Lcom/ss/android/vesdk/runtime/VETimeEffectManager$Clip;->clipRotate:I

    move/from16 v18, v0

    move-wide/from16 v16, v2

    invoke-direct/range {v7 .. v18}, Lcom/ss/android/vesdk/runtime/VETimeEffectManager$Clip;-><init>(IILjava/lang/String;IIIIIDI)V

    .line 376
    invoke-interface {v5, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_224
    add-int/lit8 v11, v11, 0x1

    move/from16 v0, p1

    move v2, v6

    move-object/from16 v6, p2

    goto/16 :goto_1f

    :cond_22d
    move/from16 p1, v0

    .line 429
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 432
    :goto_237
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    if-ge v2, v6, :cond_257

    .line 433
    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/ss/android/vesdk/runtime/VETimeEffectManager$Clip;

    iget v6, v6, Lcom/ss/android/vesdk/runtime/VETimeEffectManager$Clip;->type:I

    sget v7, Lcom/ss/android/vesdk/runtime/VETimeEffectManager;->TYPE_REPEAT:I

    if-ne v6, v7, :cond_254

    .line 434
    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-nez v3, :cond_254

    const/4 v3, 0x1

    move v4, v2

    :cond_254
    add-int/lit8 v2, v2, 0x1

    goto :goto_237

    :cond_257
    const/4 v3, 0x0

    :goto_258
    int-to-float v2, v3

    const/high16 v6, 0x3f800000    # 1.0f

    sub-float v6, p1, v6

    cmpg-float v2, v2, v6

    if-gez v2, :cond_267

    .line 442
    invoke-interface {v5, v4, v0}, Ljava/util/List;->addAll(ILjava/util/Collection;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_258

    .line 445
    :cond_267
    invoke-interface {v1, v5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-object v1

    .line 447
    :cond_26b
    instance-of v2, v0, Lcom/ss/android/vesdk/filterparam/VESlowMotionFilterParam;

    if-eqz v2, :cond_4bf

    .line 448
    check-cast v0, Lcom/ss/android/vesdk/filterparam/VESlowMotionFilterParam;

    .line 449
    iget v2, v0, Lcom/ss/android/vesdk/filterparam/VESlowMotionFilterParam;->seqIn:I

    .line 450
    iget v3, v0, Lcom/ss/android/vesdk/filterparam/VESlowMotionFilterParam;->slowMotionDuration:I

    add-int/2addr v3, v2

    .line 451
    iget v0, v0, Lcom/ss/android/vesdk/filterparam/VESlowMotionFilterParam;->slowMotionSpeed:F

    .line 453
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 455
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    const/4 v10, 0x0

    :goto_282
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4bc

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/ss/android/vesdk/runtime/VETimeEffectManager$Clip;

    .line 456
    iget v11, v6, Lcom/ss/android/vesdk/runtime/VETimeEffectManager$Clip;->vSeqIn:I

    if-ge v11, v3, :cond_296

    iget v12, v6, Lcom/ss/android/vesdk/runtime/VETimeEffectManager$Clip;->vSeqOut:I

    if-gt v12, v2, :cond_29f

    :cond_296
    move/from16 v18, v2

    move/from16 p1, v3

    move-object/from16 p0, v5

    move-object v5, v6

    goto/16 :goto_497

    :cond_29f
    if-lt v11, v2, :cond_2db

    if-gt v12, v3, :cond_2db

    .line 461
    new-instance v7, Lcom/ss/android/vesdk/runtime/VETimeEffectManager$Clip;

    move-object v8, v7

    sget v7, Lcom/ss/android/vesdk/runtime/VETimeEffectManager;->TYPE_SLOWACTION:I

    move-object v9, v8

    iget v8, v6, Lcom/ss/android/vesdk/runtime/VETimeEffectManager$Clip;->clipType:I

    move-object v13, v9

    iget-object v9, v6, Lcom/ss/android/vesdk/runtime/VETimeEffectManager$Clip;->path:Ljava/lang/String;

    move-object v14, v13

    iget v13, v6, Lcom/ss/android/vesdk/runtime/VETimeEffectManager$Clip;->vTrimIn:I

    move-object v15, v14

    iget v14, v6, Lcom/ss/android/vesdk/runtime/VETimeEffectManager$Clip;->vTrimOut:I

    move/from16 p0, v7

    move/from16 v16, v8

    iget-wide v7, v6, Lcom/ss/android/vesdk/runtime/VETimeEffectManager$Clip;->speed:D

    move-wide/from16 v17, v7

    float-to-double v7, v0

    mul-double v7, v7, v17

    iget v6, v6, Lcom/ss/android/vesdk/runtime/VETimeEffectManager$Clip;->clipRotate:I

    move/from16 v17, v6

    move-object v6, v15

    move-wide/from16 v19, v7

    move/from16 v7, p0

    move/from16 v8, v16

    move-wide/from16 v15, v19

    invoke-direct/range {v6 .. v17}, Lcom/ss/android/vesdk/runtime/VETimeEffectManager$Clip;-><init>(IILjava/lang/String;IIIIIDI)V

    move-object v13, v6

    .line 462
    invoke-interface {v4, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move/from16 v18, v2

    move/from16 p1, v3

    move-object/from16 p0, v5

    goto/16 :goto_4b2

    :cond_2db
    if-ge v11, v2, :cond_35e

    if-le v12, v3, :cond_35e

    .line 465
    iget v13, v6, Lcom/ss/android/vesdk/runtime/VETimeEffectManager$Clip;->vTrimIn:I

    sub-int v7, v2, v11

    int-to-double v7, v7

    iget-wide v14, v6, Lcom/ss/android/vesdk/runtime/VETimeEffectManager$Clip;->speed:D

    mul-double/2addr v7, v14

    double-to-int v7, v7

    add-int/2addr v7, v13

    sub-int v8, v3, v11

    int-to-double v8, v8

    mul-double/2addr v8, v14

    double-to-int v8, v8

    add-int v18, v13, v8

    .line 468
    new-instance v8, Lcom/ss/android/vesdk/runtime/VETimeEffectManager$Clip;

    move-wide v15, v14

    move v14, v7

    sget v7, Lcom/ss/android/vesdk/runtime/VETimeEffectManager;->TYPE_SRC:I

    move-object v9, v8

    iget v8, v6, Lcom/ss/android/vesdk/runtime/VETimeEffectManager$Clip;->clipType:I

    move-object/from16 v17, v9

    iget-object v9, v6, Lcom/ss/android/vesdk/runtime/VETimeEffectManager$Clip;->path:Ljava/lang/String;

    move-object/from16 p0, v5

    iget v5, v6, Lcom/ss/android/vesdk/runtime/VETimeEffectManager$Clip;->clipRotate:I

    move-object/from16 v19, v17

    move/from16 v17, v5

    move-object v5, v6

    move-object/from16 v6, v19

    invoke-direct/range {v6 .. v17}, Lcom/ss/android/vesdk/runtime/VETimeEffectManager$Clip;-><init>(IILjava/lang/String;IIIIIDI)V

    .line 469
    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 470
    new-instance v6, Lcom/ss/android/vesdk/runtime/VETimeEffectManager$Clip;

    sget v7, Lcom/ss/android/vesdk/runtime/VETimeEffectManager;->TYPE_SLOWACTION:I

    iget v8, v5, Lcom/ss/android/vesdk/runtime/VETimeEffectManager$Clip;->clipType:I

    iget-object v9, v5, Lcom/ss/android/vesdk/runtime/VETimeEffectManager$Clip;->path:Ljava/lang/String;

    iget v11, v5, Lcom/ss/android/vesdk/runtime/VETimeEffectManager$Clip;->vSeqIn:I

    iget v12, v5, Lcom/ss/android/vesdk/runtime/VETimeEffectManager$Clip;->vSeqOut:I

    move-object/from16 p1, v6

    move/from16 p2, v7

    iget-wide v6, v5, Lcom/ss/android/vesdk/runtime/VETimeEffectManager$Clip;->speed:D

    move-wide v15, v6

    float-to-double v6, v0

    mul-double/2addr v15, v6

    iget v6, v5, Lcom/ss/android/vesdk/runtime/VETimeEffectManager$Clip;->clipRotate:I

    move/from16 v7, p2

    move/from16 v17, v6

    move v13, v14

    move/from16 v14, v18

    move-object/from16 v6, p1

    invoke-direct/range {v6 .. v17}, Lcom/ss/android/vesdk/runtime/VETimeEffectManager$Clip;-><init>(IILjava/lang/String;IIIIIDI)V

    move v13, v14

    .line 471
    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 472
    new-instance v6, Lcom/ss/android/vesdk/runtime/VETimeEffectManager$Clip;

    sget v7, Lcom/ss/android/vesdk/runtime/VETimeEffectManager;->TYPE_SRC:I

    iget v8, v5, Lcom/ss/android/vesdk/runtime/VETimeEffectManager$Clip;->clipType:I

    iget-object v9, v5, Lcom/ss/android/vesdk/runtime/VETimeEffectManager$Clip;->path:Ljava/lang/String;

    iget v11, v5, Lcom/ss/android/vesdk/runtime/VETimeEffectManager$Clip;->vSeqIn:I

    iget v12, v5, Lcom/ss/android/vesdk/runtime/VETimeEffectManager$Clip;->vSeqOut:I

    iget v14, v5, Lcom/ss/android/vesdk/runtime/VETimeEffectManager$Clip;->vTrimOut:I

    move-object/from16 p1, v6

    move/from16 p2, v7

    iget-wide v6, v5, Lcom/ss/android/vesdk/runtime/VETimeEffectManager$Clip;->speed:D

    iget v5, v5, Lcom/ss/android/vesdk/runtime/VETimeEffectManager$Clip;->clipRotate:I

    move/from16 v17, v5

    move-wide v15, v6

    move-object/from16 v6, p1

    move/from16 v7, p2

    invoke-direct/range {v6 .. v17}, Lcom/ss/android/vesdk/runtime/VETimeEffectManager$Clip;-><init>(IILjava/lang/String;IIIIIDI)V

    .line 473
    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_358
    :goto_358
    move/from16 v18, v2

    move/from16 p1, v3

    goto/16 :goto_4b2

    :cond_35e
    move-object/from16 p0, v5

    move-object v5, v6

    if-ne v11, v2, :cond_3b2

    if-le v12, v3, :cond_3b2

    .line 476
    iget v13, v5, Lcom/ss/android/vesdk/runtime/VETimeEffectManager$Clip;->vTrimIn:I

    sub-int v6, v3, v11

    int-to-double v6, v6

    iget-wide v8, v5, Lcom/ss/android/vesdk/runtime/VETimeEffectManager$Clip;->speed:D

    mul-double/2addr v6, v8

    double-to-int v6, v6

    add-int v14, v13, v6

    .line 478
    new-instance v6, Lcom/ss/android/vesdk/runtime/VETimeEffectManager$Clip;

    sget v7, Lcom/ss/android/vesdk/runtime/VETimeEffectManager;->TYPE_SLOWACTION:I

    move-wide v15, v8

    iget v8, v5, Lcom/ss/android/vesdk/runtime/VETimeEffectManager$Clip;->clipType:I

    iget-object v9, v5, Lcom/ss/android/vesdk/runtime/VETimeEffectManager$Clip;->path:Ljava/lang/String;

    move-object/from16 p1, v6

    move/from16 p2, v7

    float-to-double v6, v0

    mul-double/2addr v15, v6

    iget v6, v5, Lcom/ss/android/vesdk/runtime/VETimeEffectManager$Clip;->clipRotate:I

    move/from16 v7, p2

    move/from16 v17, v6

    move-object/from16 v6, p1

    invoke-direct/range {v6 .. v17}, Lcom/ss/android/vesdk/runtime/VETimeEffectManager$Clip;-><init>(IILjava/lang/String;IIIIIDI)V

    move v13, v14

    .line 479
    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 480
    new-instance v6, Lcom/ss/android/vesdk/runtime/VETimeEffectManager$Clip;

    sget v7, Lcom/ss/android/vesdk/runtime/VETimeEffectManager;->TYPE_SRC:I

    iget v8, v5, Lcom/ss/android/vesdk/runtime/VETimeEffectManager$Clip;->clipType:I

    iget-object v9, v5, Lcom/ss/android/vesdk/runtime/VETimeEffectManager$Clip;->path:Ljava/lang/String;

    iget v11, v5, Lcom/ss/android/vesdk/runtime/VETimeEffectManager$Clip;->vSeqIn:I

    iget v12, v5, Lcom/ss/android/vesdk/runtime/VETimeEffectManager$Clip;->vSeqOut:I

    iget v14, v5, Lcom/ss/android/vesdk/runtime/VETimeEffectManager$Clip;->vTrimOut:I

    move-object/from16 p1, v6

    move/from16 p2, v7

    iget-wide v6, v5, Lcom/ss/android/vesdk/runtime/VETimeEffectManager$Clip;->speed:D

    iget v5, v5, Lcom/ss/android/vesdk/runtime/VETimeEffectManager$Clip;->clipRotate:I

    move/from16 v17, v5

    move-wide v15, v6

    move-object/from16 v6, p1

    move/from16 v7, p2

    invoke-direct/range {v6 .. v17}, Lcom/ss/android/vesdk/runtime/VETimeEffectManager$Clip;-><init>(IILjava/lang/String;IIIIIDI)V

    .line 481
    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_358

    :cond_3b2
    if-ge v11, v2, :cond_400

    if-ne v12, v3, :cond_400

    .line 485
    iget v13, v5, Lcom/ss/android/vesdk/runtime/VETimeEffectManager$Clip;->vTrimIn:I

    sub-int v6, v2, v11

    int-to-double v6, v6

    iget-wide v8, v5, Lcom/ss/android/vesdk/runtime/VETimeEffectManager$Clip;->speed:D

    mul-double/2addr v6, v8

    double-to-int v6, v6

    add-int v14, v13, v6

    .line 486
    new-instance v6, Lcom/ss/android/vesdk/runtime/VETimeEffectManager$Clip;

    sget v7, Lcom/ss/android/vesdk/runtime/VETimeEffectManager;->TYPE_SRC:I

    move-wide v15, v8

    iget v8, v5, Lcom/ss/android/vesdk/runtime/VETimeEffectManager$Clip;->clipType:I

    iget-object v9, v5, Lcom/ss/android/vesdk/runtime/VETimeEffectManager$Clip;->path:Ljava/lang/String;

    move-object/from16 p1, v6

    iget v6, v5, Lcom/ss/android/vesdk/runtime/VETimeEffectManager$Clip;->clipRotate:I

    move/from16 v17, v6

    move-object/from16 v6, p1

    invoke-direct/range {v6 .. v17}, Lcom/ss/android/vesdk/runtime/VETimeEffectManager$Clip;-><init>(IILjava/lang/String;IIIIIDI)V

    move v13, v14

    .line 487
    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 488
    new-instance v6, Lcom/ss/android/vesdk/runtime/VETimeEffectManager$Clip;

    sget v7, Lcom/ss/android/vesdk/runtime/VETimeEffectManager;->TYPE_SLOWACTION:I

    iget v8, v5, Lcom/ss/android/vesdk/runtime/VETimeEffectManager$Clip;->clipType:I

    iget-object v9, v5, Lcom/ss/android/vesdk/runtime/VETimeEffectManager$Clip;->path:Ljava/lang/String;

    iget v11, v5, Lcom/ss/android/vesdk/runtime/VETimeEffectManager$Clip;->vSeqIn:I

    iget v12, v5, Lcom/ss/android/vesdk/runtime/VETimeEffectManager$Clip;->vSeqOut:I

    iget v14, v5, Lcom/ss/android/vesdk/runtime/VETimeEffectManager$Clip;->vTrimOut:I

    move-object/from16 p1, v6

    move/from16 p2, v7

    iget-wide v6, v5, Lcom/ss/android/vesdk/runtime/VETimeEffectManager$Clip;->speed:D

    move-wide v15, v6

    float-to-double v6, v0

    mul-double/2addr v15, v6

    iget v5, v5, Lcom/ss/android/vesdk/runtime/VETimeEffectManager$Clip;->clipRotate:I

    move-object/from16 v6, p1

    move/from16 v7, p2

    move/from16 v17, v5

    invoke-direct/range {v6 .. v17}, Lcom/ss/android/vesdk/runtime/VETimeEffectManager$Clip;-><init>(IILjava/lang/String;IIIIIDI)V

    .line 489
    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_358

    :cond_400
    if-ge v11, v2, :cond_450

    if-le v12, v2, :cond_450

    if-ge v12, v3, :cond_450

    .line 493
    iget v13, v5, Lcom/ss/android/vesdk/runtime/VETimeEffectManager$Clip;->vTrimIn:I

    sub-int v6, v2, v11

    int-to-double v6, v6

    iget-wide v8, v5, Lcom/ss/android/vesdk/runtime/VETimeEffectManager$Clip;->speed:D

    mul-double/2addr v6, v8

    double-to-int v6, v6

    add-int v14, v13, v6

    .line 494
    new-instance v6, Lcom/ss/android/vesdk/runtime/VETimeEffectManager$Clip;

    sget v7, Lcom/ss/android/vesdk/runtime/VETimeEffectManager;->TYPE_SRC:I

    move-wide v15, v8

    iget v8, v5, Lcom/ss/android/vesdk/runtime/VETimeEffectManager$Clip;->clipType:I

    iget-object v9, v5, Lcom/ss/android/vesdk/runtime/VETimeEffectManager$Clip;->path:Ljava/lang/String;

    move-object/from16 p1, v6

    iget v6, v5, Lcom/ss/android/vesdk/runtime/VETimeEffectManager$Clip;->clipRotate:I

    move/from16 v17, v6

    move-object/from16 v6, p1

    invoke-direct/range {v6 .. v17}, Lcom/ss/android/vesdk/runtime/VETimeEffectManager$Clip;-><init>(IILjava/lang/String;IIIIIDI)V

    move v13, v14

    .line 495
    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 496
    new-instance v6, Lcom/ss/android/vesdk/runtime/VETimeEffectManager$Clip;

    sget v7, Lcom/ss/android/vesdk/runtime/VETimeEffectManager;->TYPE_SLOWACTION:I

    iget v8, v5, Lcom/ss/android/vesdk/runtime/VETimeEffectManager$Clip;->clipType:I

    iget-object v9, v5, Lcom/ss/android/vesdk/runtime/VETimeEffectManager$Clip;->path:Ljava/lang/String;

    iget v11, v5, Lcom/ss/android/vesdk/runtime/VETimeEffectManager$Clip;->vSeqIn:I

    iget v12, v5, Lcom/ss/android/vesdk/runtime/VETimeEffectManager$Clip;->vSeqOut:I

    iget v14, v5, Lcom/ss/android/vesdk/runtime/VETimeEffectManager$Clip;->vTrimOut:I

    move-object/from16 p1, v6

    move/from16 p2, v7

    iget-wide v6, v5, Lcom/ss/android/vesdk/runtime/VETimeEffectManager$Clip;->speed:D

    move-wide v15, v6

    float-to-double v6, v0

    mul-double/2addr v15, v6

    iget v5, v5, Lcom/ss/android/vesdk/runtime/VETimeEffectManager$Clip;->clipRotate:I

    move-object/from16 v6, p1

    move/from16 v7, p2

    move/from16 v17, v5

    invoke-direct/range {v6 .. v17}, Lcom/ss/android/vesdk/runtime/VETimeEffectManager$Clip;-><init>(IILjava/lang/String;IIIIIDI)V

    .line 497
    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_358

    :cond_450
    if-ge v11, v3, :cond_358

    if-le v12, v3, :cond_358

    if-le v11, v2, :cond_358

    .line 501
    iget v13, v5, Lcom/ss/android/vesdk/runtime/VETimeEffectManager$Clip;->vTrimIn:I

    sub-int v6, v3, v11

    int-to-double v6, v6

    iget-wide v8, v5, Lcom/ss/android/vesdk/runtime/VETimeEffectManager$Clip;->speed:D

    mul-double/2addr v6, v8

    double-to-int v6, v6

    add-int v14, v13, v6

    .line 502
    new-instance v6, Lcom/ss/android/vesdk/runtime/VETimeEffectManager$Clip;

    sget v7, Lcom/ss/android/vesdk/runtime/VETimeEffectManager;->TYPE_SLOWACTION:I

    move-wide v15, v8

    iget v8, v5, Lcom/ss/android/vesdk/runtime/VETimeEffectManager$Clip;->clipType:I

    iget-object v9, v5, Lcom/ss/android/vesdk/runtime/VETimeEffectManager$Clip;->path:Ljava/lang/String;

    move/from16 v18, v2

    move/from16 p1, v3

    float-to-double v2, v0

    mul-double/2addr v15, v2

    iget v2, v5, Lcom/ss/android/vesdk/runtime/VETimeEffectManager$Clip;->clipRotate:I

    move/from16 v17, v2

    invoke-direct/range {v6 .. v17}, Lcom/ss/android/vesdk/runtime/VETimeEffectManager$Clip;-><init>(IILjava/lang/String;IIIIIDI)V

    move v13, v14

    .line 503
    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 504
    new-instance v6, Lcom/ss/android/vesdk/runtime/VETimeEffectManager$Clip;

    sget v7, Lcom/ss/android/vesdk/runtime/VETimeEffectManager;->TYPE_SRC:I

    iget v8, v5, Lcom/ss/android/vesdk/runtime/VETimeEffectManager$Clip;->clipType:I

    iget-object v9, v5, Lcom/ss/android/vesdk/runtime/VETimeEffectManager$Clip;->path:Ljava/lang/String;

    iget v11, v5, Lcom/ss/android/vesdk/runtime/VETimeEffectManager$Clip;->vSeqIn:I

    iget v12, v5, Lcom/ss/android/vesdk/runtime/VETimeEffectManager$Clip;->vSeqOut:I

    iget v14, v5, Lcom/ss/android/vesdk/runtime/VETimeEffectManager$Clip;->vTrimOut:I

    iget-wide v2, v5, Lcom/ss/android/vesdk/runtime/VETimeEffectManager$Clip;->speed:D

    iget v5, v5, Lcom/ss/android/vesdk/runtime/VETimeEffectManager$Clip;->clipRotate:I

    move-wide v15, v2

    move/from16 v17, v5

    invoke-direct/range {v6 .. v17}, Lcom/ss/android/vesdk/runtime/VETimeEffectManager$Clip;-><init>(IILjava/lang/String;IIIIIDI)V

    .line 505
    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4b2

    .line 457
    :goto_497
    new-instance v6, Lcom/ss/android/vesdk/runtime/VETimeEffectManager$Clip;

    sget v7, Lcom/ss/android/vesdk/runtime/VETimeEffectManager;->TYPE_SRC:I

    iget v8, v5, Lcom/ss/android/vesdk/runtime/VETimeEffectManager$Clip;->clipType:I

    iget-object v9, v5, Lcom/ss/android/vesdk/runtime/VETimeEffectManager$Clip;->path:Ljava/lang/String;

    iget v12, v5, Lcom/ss/android/vesdk/runtime/VETimeEffectManager$Clip;->vSeqOut:I

    iget v13, v5, Lcom/ss/android/vesdk/runtime/VETimeEffectManager$Clip;->vTrimIn:I

    iget v14, v5, Lcom/ss/android/vesdk/runtime/VETimeEffectManager$Clip;->vTrimOut:I

    iget-wide v2, v5, Lcom/ss/android/vesdk/runtime/VETimeEffectManager$Clip;->speed:D

    iget v5, v5, Lcom/ss/android/vesdk/runtime/VETimeEffectManager$Clip;->clipRotate:I

    move-wide v15, v2

    move/from16 v17, v5

    invoke-direct/range {v6 .. v17}, Lcom/ss/android/vesdk/runtime/VETimeEffectManager$Clip;-><init>(IILjava/lang/String;IIIIIDI)V

    .line 458
    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_4b2
    add-int/lit8 v10, v10, 0x1

    move-object/from16 v5, p0

    move/from16 v3, p1

    move/from16 v2, v18

    goto/16 :goto_282

    .line 509
    :cond_4bc
    invoke-interface {v1, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_4bf
    return-object v1
.end method


# virtual methods
.method public addTimeEffect(IILjava/util/List;Ljava/util/List;Lcom/ss/android/vesdk/filterparam/VEBaseFilterParam;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    .registers 32
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/List<",
            "Lcom/ss/android/vesdk/clipparam/VEClipParam;",
            ">;",
            "Ljava/util/List<",
            "Lcom/ss/android/vesdk/clipparam/VEClipParam;",
            ">;",
            "Lcom/ss/android/vesdk/filterparam/VEBaseFilterParam;",
            "Ljava/util/List<",
            "Lcom/ss/android/vesdk/clipparam/VEClipParam;",
            ">;",
            "Ljava/util/List<",
            "Lcom/ss/android/vesdk/clipparam/VEClipParam;",
            ">;",
            "Ljava/util/List<",
            "Lcom/ss/android/vesdk/clipparam/VEClipParam;",
            ">;",
            "Ljava/util/List<",
            "Lcom/ss/android/vesdk/clipparam/VEClipParam;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move-object/from16 v2, p5

    .line 135
    invoke-virtual {v0}, Lcom/ss/android/vesdk/runtime/VETimeEffectManager;->reset()V

    if-eqz v1, :cond_13d

    .line 137
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_13

    goto/16 :goto_13d

    .line 142
    :cond_13
    iget-object v3, v0, Lcom/ss/android/vesdk/runtime/VETimeEffectManager;->mTrack:Lcom/ss/android/vesdk/runtime/VETimeEffectManager$Track;

    move/from16 v4, p1

    iput v4, v3, Lcom/ss/android/vesdk/runtime/VETimeEffectManager$Track;->videoFilterIndex:I

    move/from16 v4, p2

    .line 143
    iput v4, v3, Lcom/ss/android/vesdk/runtime/VETimeEffectManager$Track;->audioFilterIndex:I

    const/4 v3, 0x0

    move v8, v3

    .line 147
    :goto_1f
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v8, v4, :cond_5a

    .line 148
    invoke-interface {v1, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/ss/android/vesdk/clipparam/VEClipParam;

    .line 149
    new-instance v5, Lcom/ss/android/vesdk/runtime/VETimeEffectManager$Clip;

    move-object v6, v5

    sget v5, Lcom/ss/android/vesdk/runtime/VETimeEffectManager;->TYPE_SRC:I

    move-object v7, v6

    iget v6, v4, Lcom/ss/android/vesdk/clipparam/VEClipParam;->clipType:I

    move-object v9, v7

    iget-object v7, v4, Lcom/ss/android/vesdk/clipparam/VEClipParam;->path:Ljava/lang/String;

    move-object v10, v9

    iget v9, v4, Lcom/ss/android/vesdk/clipparam/VEClipParam;->seqIn:I

    move-object v11, v10

    iget v10, v4, Lcom/ss/android/vesdk/clipparam/VEClipParam;->seqOut:I

    move-object v12, v11

    iget v11, v4, Lcom/ss/android/vesdk/clipparam/VEClipParam;->trimIn:I

    move-object v13, v12

    iget v12, v4, Lcom/ss/android/vesdk/clipparam/VEClipParam;->trimOut:I

    move-object v15, v13

    iget-wide v13, v4, Lcom/ss/android/vesdk/clipparam/VEClipParam;->speed:D

    iget v4, v4, Lcom/ss/android/vesdk/clipparam/VEClipParam;->clipRotate:I

    move-object/from16 v21, v15

    move v15, v4

    move-object/from16 v4, v21

    invoke-direct/range {v4 .. v15}, Lcom/ss/android/vesdk/runtime/VETimeEffectManager$Clip;-><init>(IILjava/lang/String;IIIIIDI)V

    move-object v6, v4

    .line 151
    iget-object v4, v0, Lcom/ss/android/vesdk/runtime/VETimeEffectManager;->mTrack:Lcom/ss/android/vesdk/runtime/VETimeEffectManager$Track;

    iget-object v4, v4, Lcom/ss/android/vesdk/runtime/VETimeEffectManager$Track;->videoClips:Ljava/util/List;

    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v8, v8, 0x1

    goto :goto_1f

    :cond_5a
    move v13, v3

    .line 154
    :goto_5b
    invoke-interface/range {p4 .. p4}, Ljava/util/List;->size()I

    move-result v1

    if-ge v13, v1, :cond_92

    move-object/from16 v1, p4

    .line 155
    invoke-interface {v1, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/ss/android/vesdk/clipparam/VEClipParam;

    .line 156
    new-instance v9, Lcom/ss/android/vesdk/runtime/VETimeEffectManager$Clip;

    sget v10, Lcom/ss/android/vesdk/runtime/VETimeEffectManager;->TYPE_SRC:I

    iget v11, v3, Lcom/ss/android/vesdk/clipparam/VEClipParam;->clipType:I

    iget-object v12, v3, Lcom/ss/android/vesdk/clipparam/VEClipParam;->path:Ljava/lang/String;

    iget v14, v3, Lcom/ss/android/vesdk/clipparam/VEClipParam;->seqIn:I

    iget v15, v3, Lcom/ss/android/vesdk/clipparam/VEClipParam;->seqOut:I

    iget v4, v3, Lcom/ss/android/vesdk/clipparam/VEClipParam;->trimIn:I

    iget v5, v3, Lcom/ss/android/vesdk/clipparam/VEClipParam;->trimOut:I

    iget-wide v6, v3, Lcom/ss/android/vesdk/clipparam/VEClipParam;->speed:D

    iget v3, v3, Lcom/ss/android/vesdk/clipparam/VEClipParam;->clipRotate:I

    move/from16 v20, v3

    move/from16 v16, v4

    move/from16 v17, v5

    move-wide/from16 v18, v6

    invoke-direct/range {v9 .. v20}, Lcom/ss/android/vesdk/runtime/VETimeEffectManager$Clip;-><init>(IILjava/lang/String;IIIIIDI)V

    .line 158
    iget-object v3, v0, Lcom/ss/android/vesdk/runtime/VETimeEffectManager;->mTrack:Lcom/ss/android/vesdk/runtime/VETimeEffectManager$Track;

    iget-object v3, v3, Lcom/ss/android/vesdk/runtime/VETimeEffectManager$Track;->audioClips:Ljava/util/List;

    invoke-interface {v3, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v13, v13, 0x1

    goto :goto_5b

    .line 161
    :cond_92
    iget-object v1, v0, Lcom/ss/android/vesdk/runtime/VETimeEffectManager;->mTrack:Lcom/ss/android/vesdk/runtime/VETimeEffectManager$Track;

    iput-object v2, v1, Lcom/ss/android/vesdk/runtime/VETimeEffectManager$Track;->timeFilterParam:Lcom/ss/android/vesdk/filterparam/VEBaseFilterParam;

    .line 164
    iget-object v1, v1, Lcom/ss/android/vesdk/runtime/VETimeEffectManager$Track;->timeEffectClips:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 165
    iget-object v1, v0, Lcom/ss/android/vesdk/runtime/VETimeEffectManager;->mTrack:Lcom/ss/android/vesdk/runtime/VETimeEffectManager$Track;

    iget-object v3, v1, Lcom/ss/android/vesdk/runtime/VETimeEffectManager$Track;->timeEffectClips:Ljava/util/List;

    iget-object v1, v1, Lcom/ss/android/vesdk/runtime/VETimeEffectManager$Track;->videoClips:Ljava/util/List;

    invoke-direct {v0, v2, v1}, Lcom/ss/android/vesdk/runtime/VETimeEffectManager;->getSeparateClips(Lcom/ss/android/vesdk/filterparam/VEBaseFilterParam;Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v3, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 166
    sget-object v1, Lcom/ss/android/vesdk/runtime/VETimeEffectManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "addTimeEffect  mTrack.videoClips="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v0, Lcom/ss/android/vesdk/runtime/VETimeEffectManager;->mTrack:Lcom/ss/android/vesdk/runtime/VETimeEffectManager$Track;

    iget-object v4, v4, Lcom/ss/android/vesdk/runtime/VETimeEffectManager$Track;->videoClips:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " mTrack.timeEffectClips="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v0, Lcom/ss/android/vesdk/runtime/VETimeEffectManager;->mTrack:Lcom/ss/android/vesdk/runtime/VETimeEffectManager$Track;

    iget-object v4, v4, Lcom/ss/android/vesdk/runtime/VETimeEffectManager$Track;->timeEffectClips:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    iget-object v1, v0, Lcom/ss/android/vesdk/runtime/VETimeEffectManager;->mTrack:Lcom/ss/android/vesdk/runtime/VETimeEffectManager$Track;

    iget-object v3, v1, Lcom/ss/android/vesdk/runtime/VETimeEffectManager$Track;->videoClips:Ljava/util/List;

    iget-object v1, v1, Lcom/ss/android/vesdk/runtime/VETimeEffectManager$Track;->timeEffectClips:Ljava/util/List;

    move-object/from16 v4, p6

    move-object/from16 v5, p7

    invoke-direct {v0, v3, v1, v4, v5}, Lcom/ss/android/vesdk/runtime/VETimeEffectManager;->computeAddOptClips(Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    .line 178
    iget-object v1, v0, Lcom/ss/android/vesdk/runtime/VETimeEffectManager;->mTrack:Lcom/ss/android/vesdk/runtime/VETimeEffectManager$Track;

    iget-object v1, v1, Lcom/ss/android/vesdk/runtime/VETimeEffectManager$Track;->audioTimeEffectClips:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 179
    iget-object v1, v0, Lcom/ss/android/vesdk/runtime/VETimeEffectManager;->mTrack:Lcom/ss/android/vesdk/runtime/VETimeEffectManager$Track;

    iget-object v1, v1, Lcom/ss/android/vesdk/runtime/VETimeEffectManager$Track;->audioClips:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_13c

    .line 180
    iget-object v1, v0, Lcom/ss/android/vesdk/runtime/VETimeEffectManager;->mTrack:Lcom/ss/android/vesdk/runtime/VETimeEffectManager$Track;

    iget-object v3, v1, Lcom/ss/android/vesdk/runtime/VETimeEffectManager$Track;->audioTimeEffectClips:Ljava/util/List;

    iget-object v1, v1, Lcom/ss/android/vesdk/runtime/VETimeEffectManager$Track;->audioClips:Ljava/util/List;

    invoke-direct {v0, v2, v1}, Lcom/ss/android/vesdk/runtime/VETimeEffectManager;->getSeparateClips(Lcom/ss/android/vesdk/filterparam/VEBaseFilterParam;Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v3, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 181
    sget-object v1, Lcom/ss/android/vesdk/runtime/VETimeEffectManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "addTimeEffect  mTrack.audioClips="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/ss/android/vesdk/runtime/VETimeEffectManager;->mTrack:Lcom/ss/android/vesdk/runtime/VETimeEffectManager$Track;

    iget-object v3, v3, Lcom/ss/android/vesdk/runtime/VETimeEffectManager$Track;->audioClips:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " mTrack.audioTimeEffectClips="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/ss/android/vesdk/runtime/VETimeEffectManager;->mTrack:Lcom/ss/android/vesdk/runtime/VETimeEffectManager$Track;

    iget-object v3, v3, Lcom/ss/android/vesdk/runtime/VETimeEffectManager$Track;->audioTimeEffectClips:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 188
    iget-object v1, v0, Lcom/ss/android/vesdk/runtime/VETimeEffectManager;->mTrack:Lcom/ss/android/vesdk/runtime/VETimeEffectManager$Track;

    iget-object v2, v1, Lcom/ss/android/vesdk/runtime/VETimeEffectManager$Track;->audioClips:Ljava/util/List;

    iget-object v1, v1, Lcom/ss/android/vesdk/runtime/VETimeEffectManager$Track;->audioTimeEffectClips:Ljava/util/List;

    move-object/from16 v3, p8

    move-object/from16 v4, p9

    invoke-direct {v0, v2, v1, v3, v4}, Lcom/ss/android/vesdk/runtime/VETimeEffectManager;->computeAddOptClips(Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    :cond_13c
    return-void

    .line 138
    :cond_13d
    :goto_13d
    sget-object v0, Lcom/ss/android/vesdk/runtime/VETimeEffectManager;->TAG:Ljava/lang/String;

    const-string v1, "addTimeEffect init param error"

    invoke-static {v0, v1}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public deleteTimeEffect(Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/ss/android/vesdk/clipparam/VEClipParam;",
            ">;",
            "Ljava/util/List<",
            "Lcom/ss/android/vesdk/clipparam/VEClipParam;",
            ">;",
            "Ljava/util/List<",
            "Lcom/ss/android/vesdk/clipparam/VEClipParam;",
            ">;",
            "Ljava/util/List<",
            "Lcom/ss/android/vesdk/clipparam/VEClipParam;",
            ">;)V"
        }
    .end annotation

    .line 201
    sget-object v0, Lcom/ss/android/vesdk/runtime/VETimeEffectManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "deleteTimeEffect  mTrack.videoClips="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/ss/android/vesdk/runtime/VETimeEffectManager;->mTrack:Lcom/ss/android/vesdk/runtime/VETimeEffectManager$Track;

    iget-object v2, v2, Lcom/ss/android/vesdk/runtime/VETimeEffectManager$Track;->videoClips:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "mTrack.videoTimeEffectClips="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/ss/android/vesdk/runtime/VETimeEffectManager;->mTrack:Lcom/ss/android/vesdk/runtime/VETimeEffectManager$Track;

    iget-object v2, v2, Lcom/ss/android/vesdk/runtime/VETimeEffectManager$Track;->timeEffectClips:Ljava/util/List;

    .line 202
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "mTrack.audioClips="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/ss/android/vesdk/runtime/VETimeEffectManager;->mTrack:Lcom/ss/android/vesdk/runtime/VETimeEffectManager$Track;

    iget-object v2, v2, Lcom/ss/android/vesdk/runtime/VETimeEffectManager$Track;->audioClips:Ljava/util/List;

    .line 203
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "mTrack.audioTimeEffectClips="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/ss/android/vesdk/runtime/VETimeEffectManager;->mTrack:Lcom/ss/android/vesdk/runtime/VETimeEffectManager$Track;

    iget-object v2, v2, Lcom/ss/android/vesdk/runtime/VETimeEffectManager$Track;->audioTimeEffectClips:Ljava/util/List;

    .line 204
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 201
    invoke-static {v0, v1}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 206
    iget-object v0, p0, Lcom/ss/android/vesdk/runtime/VETimeEffectManager;->mTrack:Lcom/ss/android/vesdk/runtime/VETimeEffectManager$Track;

    iget-object v0, v0, Lcom/ss/android/vesdk/runtime/VETimeEffectManager$Track;->videoClips:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_61

    .line 207
    iget-object v0, p0, Lcom/ss/android/vesdk/runtime/VETimeEffectManager;->mTrack:Lcom/ss/android/vesdk/runtime/VETimeEffectManager$Track;

    iget-object v1, v0, Lcom/ss/android/vesdk/runtime/VETimeEffectManager$Track;->videoClips:Ljava/util/List;

    iget-object v0, v0, Lcom/ss/android/vesdk/runtime/VETimeEffectManager$Track;->timeEffectClips:Ljava/util/List;

    invoke-direct {p0, v1, v0, p1, p2}, Lcom/ss/android/vesdk/runtime/VETimeEffectManager;->computeDeleteOptClips(Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    .line 220
    :cond_61
    iget-object p1, p0, Lcom/ss/android/vesdk/runtime/VETimeEffectManager;->mTrack:Lcom/ss/android/vesdk/runtime/VETimeEffectManager$Track;

    iget-object p1, p1, Lcom/ss/android/vesdk/runtime/VETimeEffectManager$Track;->audioClips:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_74

    .line 221
    iget-object p1, p0, Lcom/ss/android/vesdk/runtime/VETimeEffectManager;->mTrack:Lcom/ss/android/vesdk/runtime/VETimeEffectManager$Track;

    iget-object p2, p1, Lcom/ss/android/vesdk/runtime/VETimeEffectManager$Track;->audioClips:Ljava/util/List;

    iget-object p1, p1, Lcom/ss/android/vesdk/runtime/VETimeEffectManager$Track;->audioTimeEffectClips:Ljava/util/List;

    invoke-direct {p0, p2, p1, p3, p4}, Lcom/ss/android/vesdk/runtime/VETimeEffectManager;->computeDeleteOptClips(Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    .line 232
    :cond_74
    invoke-virtual {p0}, Lcom/ss/android/vesdk/runtime/VETimeEffectManager;->reset()V

    return-void
.end method

.method public getAudioFilterIndex()I
    .registers 1

    .line 119
    iget-object p0, p0, Lcom/ss/android/vesdk/runtime/VETimeEffectManager;->mTrack:Lcom/ss/android/vesdk/runtime/VETimeEffectManager$Track;

    iget p0, p0, Lcom/ss/android/vesdk/runtime/VETimeEffectManager$Track;->audioFilterIndex:I

    return p0
.end method

.method public getTimeEffectType()I
    .registers 2

    .line 240
    iget-object p0, p0, Lcom/ss/android/vesdk/runtime/VETimeEffectManager;->mTrack:Lcom/ss/android/vesdk/runtime/VETimeEffectManager$Track;

    iget-object p0, p0, Lcom/ss/android/vesdk/runtime/VETimeEffectManager$Track;->timeFilterParam:Lcom/ss/android/vesdk/filterparam/VEBaseFilterParam;

    if-nez p0, :cond_9

    .line 241
    sget p0, Lcom/ss/android/vesdk/runtime/VETimeEffectManager;->TYPE_SRC:I

    return p0

    .line 244
    :cond_9
    instance-of v0, p0, Lcom/ss/android/vesdk/filterparam/VERepeatFilterParam;

    if-eqz v0, :cond_10

    .line 245
    sget p0, Lcom/ss/android/vesdk/runtime/VETimeEffectManager;->TYPE_REPEAT:I

    return p0

    .line 248
    :cond_10
    instance-of p0, p0, Lcom/ss/android/vesdk/filterparam/VESlowMotionFilterParam;

    if-eqz p0, :cond_17

    .line 249
    sget p0, Lcom/ss/android/vesdk/runtime/VETimeEffectManager;->TYPE_SLOWACTION:I

    return p0

    .line 252
    :cond_17
    sget p0, Lcom/ss/android/vesdk/runtime/VETimeEffectManager;->TYPE_SRC:I

    return p0
.end method

.method public getVideoFilterIndex()I
    .registers 1

    .line 112
    iget-object p0, p0, Lcom/ss/android/vesdk/runtime/VETimeEffectManager;->mTrack:Lcom/ss/android/vesdk/runtime/VETimeEffectManager$Track;

    iget p0, p0, Lcom/ss/android/vesdk/runtime/VETimeEffectManager$Track;->videoFilterIndex:I

    return p0
.end method

.method public hasTimeEffect()Z
    .registers 2

    .line 260
    invoke-virtual {p0}, Lcom/ss/android/vesdk/runtime/VETimeEffectManager;->getTimeEffectType()I

    move-result p0

    sget v0, Lcom/ss/android/vesdk/runtime/VETimeEffectManager;->TYPE_SRC:I

    if-ne p0, v0, :cond_a

    const/4 p0, 0x0

    return p0

    :cond_a
    const/4 p0, 0x1

    return p0
.end method

.method public mapCurrentDurationToTimeEffect(I)I
    .registers 4

    .line 341
    invoke-virtual {p0}, Lcom/ss/android/vesdk/runtime/VETimeEffectManager;->getTimeEffectType()I

    move-result v0

    .line 342
    sget v1, Lcom/ss/android/vesdk/runtime/VETimeEffectManager;->TYPE_REPEAT:I

    if-ne v0, v1, :cond_17

    .line 343
    iget-object p0, p0, Lcom/ss/android/vesdk/runtime/VETimeEffectManager;->mTrack:Lcom/ss/android/vesdk/runtime/VETimeEffectManager$Track;

    iget-object p0, p0, Lcom/ss/android/vesdk/runtime/VETimeEffectManager$Track;->timeFilterParam:Lcom/ss/android/vesdk/filterparam/VEBaseFilterParam;

    check-cast p0, Lcom/ss/android/vesdk/filterparam/VERepeatFilterParam;

    .line 344
    iget v0, p0, Lcom/ss/android/vesdk/filterparam/VERepeatFilterParam;->repeatDuration:I

    iget p0, p0, Lcom/ss/android/vesdk/filterparam/VERepeatFilterParam;->repeatTime:I

    add-int/lit8 p0, p0, -0x1

    mul-int/2addr v0, p0

    sub-int/2addr p1, v0

    return p1

    .line 346
    :cond_17
    sget v1, Lcom/ss/android/vesdk/runtime/VETimeEffectManager;->TYPE_SLOWACTION:I

    if-ne v0, v1, :cond_2a

    .line 347
    iget-object p0, p0, Lcom/ss/android/vesdk/runtime/VETimeEffectManager;->mTrack:Lcom/ss/android/vesdk/runtime/VETimeEffectManager$Track;

    iget-object p0, p0, Lcom/ss/android/vesdk/runtime/VETimeEffectManager$Track;->timeFilterParam:Lcom/ss/android/vesdk/filterparam/VEBaseFilterParam;

    check-cast p0, Lcom/ss/android/vesdk/filterparam/VESlowMotionFilterParam;

    .line 349
    iget v0, p0, Lcom/ss/android/vesdk/filterparam/VESlowMotionFilterParam;->slowMotionDuration:I

    int-to-float v1, v0

    iget p0, p0, Lcom/ss/android/vesdk/filterparam/VESlowMotionFilterParam;->slowMotionSpeed:F

    div-float/2addr v1, p0

    float-to-int p0, v1

    sub-int/2addr p0, v0

    sub-int/2addr p1, p0

    :cond_2a
    return p1
.end method

.method public mapOriginalPositionToTimeEffectPosition(I)I
    .registers 6

    .line 309
    invoke-virtual {p0}, Lcom/ss/android/vesdk/runtime/VETimeEffectManager;->getTimeEffectType()I

    move-result v0

    .line 310
    sget v1, Lcom/ss/android/vesdk/runtime/VETimeEffectManager;->TYPE_REPEAT:I

    if-ne v0, v1, :cond_1d

    .line 311
    iget-object v1, p0, Lcom/ss/android/vesdk/runtime/VETimeEffectManager;->mTrack:Lcom/ss/android/vesdk/runtime/VETimeEffectManager$Track;

    iget-object v1, v1, Lcom/ss/android/vesdk/runtime/VETimeEffectManager$Track;->timeFilterParam:Lcom/ss/android/vesdk/filterparam/VEBaseFilterParam;

    check-cast v1, Lcom/ss/android/vesdk/filterparam/VERepeatFilterParam;

    .line 312
    iget v2, v1, Lcom/ss/android/vesdk/filterparam/VERepeatFilterParam;->seqIn:I

    .line 313
    iget v3, v1, Lcom/ss/android/vesdk/filterparam/VERepeatFilterParam;->repeatDuration:I

    add-int/2addr v2, v3

    if-ge p1, v2, :cond_16

    goto :goto_1d

    .line 317
    :cond_16
    iget v1, v1, Lcom/ss/android/vesdk/filterparam/VERepeatFilterParam;->repeatTime:I

    add-int/lit8 v1, v1, -0x1

    mul-int/2addr v3, v1

    add-int/2addr v3, p1

    goto :goto_1e

    :cond_1d
    :goto_1d
    move v3, p1

    .line 320
    :goto_1e
    sget v1, Lcom/ss/android/vesdk/runtime/VETimeEffectManager;->TYPE_SLOWACTION:I

    if-ne v0, v1, :cond_46

    .line 321
    iget-object p0, p0, Lcom/ss/android/vesdk/runtime/VETimeEffectManager;->mTrack:Lcom/ss/android/vesdk/runtime/VETimeEffectManager$Track;

    iget-object p0, p0, Lcom/ss/android/vesdk/runtime/VETimeEffectManager$Track;->timeFilterParam:Lcom/ss/android/vesdk/filterparam/VEBaseFilterParam;

    check-cast p0, Lcom/ss/android/vesdk/filterparam/VESlowMotionFilterParam;

    .line 322
    iget v0, p0, Lcom/ss/android/vesdk/filterparam/VESlowMotionFilterParam;->seqIn:I

    .line 323
    iget v1, p0, Lcom/ss/android/vesdk/filterparam/VESlowMotionFilterParam;->slowMotionDuration:I

    add-int v2, v0, v1

    if-ge p1, v0, :cond_31

    return p1

    :cond_31
    if-lt p1, v0, :cond_3d

    if-ge p1, v2, :cond_3d

    sub-int/2addr p1, v0

    int-to-float p1, p1

    .line 327
    iget p0, p0, Lcom/ss/android/vesdk/filterparam/VESlowMotionFilterParam;->slowMotionSpeed:F

    div-float/2addr p1, p0

    float-to-int p0, p1

    add-int/2addr v0, p0

    return v0

    :cond_3d
    int-to-float v0, v1

    .line 329
    iget p0, p0, Lcom/ss/android/vesdk/filterparam/VESlowMotionFilterParam;->slowMotionSpeed:F

    div-float/2addr v0, p0

    int-to-float p0, v1

    sub-float/2addr v0, p0

    float-to-int p0, v0

    add-int/2addr p1, p0

    return p1

    :cond_46
    return v3
.end method

.method public mapTimeEffectPositionToOriginalPosition(I)I
    .registers 7

    .line 273
    invoke-virtual {p0}, Lcom/ss/android/vesdk/runtime/VETimeEffectManager;->getTimeEffectType()I

    move-result v0

    .line 274
    sget v1, Lcom/ss/android/vesdk/runtime/VETimeEffectManager;->TYPE_REPEAT:I

    if-ne v0, v1, :cond_29

    .line 275
    iget-object v1, p0, Lcom/ss/android/vesdk/runtime/VETimeEffectManager;->mTrack:Lcom/ss/android/vesdk/runtime/VETimeEffectManager$Track;

    iget-object v1, v1, Lcom/ss/android/vesdk/runtime/VETimeEffectManager$Track;->timeFilterParam:Lcom/ss/android/vesdk/filterparam/VEBaseFilterParam;

    check-cast v1, Lcom/ss/android/vesdk/filterparam/VERepeatFilterParam;

    .line 276
    iget v2, v1, Lcom/ss/android/vesdk/filterparam/VERepeatFilterParam;->seqIn:I

    .line 277
    iget v3, v1, Lcom/ss/android/vesdk/filterparam/VERepeatFilterParam;->repeatDuration:I

    iget v1, v1, Lcom/ss/android/vesdk/filterparam/VERepeatFilterParam;->repeatTime:I

    mul-int v4, v3, v1

    add-int/2addr v4, v2

    if-ge p1, v2, :cond_1a

    goto :goto_29

    :cond_1a
    if-lt p1, v2, :cond_23

    if-ge p1, v4, :cond_23

    sub-int v1, p1, v2

    .line 281
    rem-int/2addr v1, v3

    add-int/2addr v1, v2

    goto :goto_2a

    :cond_23
    add-int/lit8 v1, v1, -0x1

    mul-int/2addr v3, v1

    sub-int v1, p1, v3

    goto :goto_2a

    :cond_29
    :goto_29
    move v1, p1

    .line 286
    :goto_2a
    sget v2, Lcom/ss/android/vesdk/runtime/VETimeEffectManager;->TYPE_SLOWACTION:I

    if-ne v0, v2, :cond_53

    .line 287
    iget-object p0, p0, Lcom/ss/android/vesdk/runtime/VETimeEffectManager;->mTrack:Lcom/ss/android/vesdk/runtime/VETimeEffectManager$Track;

    iget-object p0, p0, Lcom/ss/android/vesdk/runtime/VETimeEffectManager$Track;->timeFilterParam:Lcom/ss/android/vesdk/filterparam/VEBaseFilterParam;

    check-cast p0, Lcom/ss/android/vesdk/filterparam/VESlowMotionFilterParam;

    .line 288
    iget v0, p0, Lcom/ss/android/vesdk/filterparam/VESlowMotionFilterParam;->seqIn:I

    int-to-float v1, v0

    .line 289
    iget v2, p0, Lcom/ss/android/vesdk/filterparam/VESlowMotionFilterParam;->slowMotionDuration:I

    int-to-float v3, v2

    iget p0, p0, Lcom/ss/android/vesdk/filterparam/VESlowMotionFilterParam;->slowMotionSpeed:F

    div-float/2addr v3, p0

    add-float/2addr v1, v3

    float-to-int v1, v1

    if-ge p1, v0, :cond_42

    return p1

    :cond_42
    if-lt p1, v0, :cond_4c

    if-ge p1, v1, :cond_4c

    sub-int/2addr p1, v0

    int-to-float p1, p1

    mul-float/2addr p1, p0

    float-to-int p0, p1

    add-int/2addr v0, p0

    return v0

    :cond_4c
    int-to-float v0, v2

    div-float/2addr v0, p0

    int-to-float p0, v2

    sub-float/2addr v0, p0

    float-to-int p0, v0

    sub-int/2addr p1, p0

    return p1

    :cond_53
    return v1
.end method

.method public reset()V
    .registers 2

    .line 99
    iget-object v0, p0, Lcom/ss/android/vesdk/runtime/VETimeEffectManager;->mTrack:Lcom/ss/android/vesdk/runtime/VETimeEffectManager$Track;

    iget-object v0, v0, Lcom/ss/android/vesdk/runtime/VETimeEffectManager$Track;->videoClips:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 100
    iget-object v0, p0, Lcom/ss/android/vesdk/runtime/VETimeEffectManager;->mTrack:Lcom/ss/android/vesdk/runtime/VETimeEffectManager$Track;

    iget-object v0, v0, Lcom/ss/android/vesdk/runtime/VETimeEffectManager$Track;->audioClips:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 101
    iget-object v0, p0, Lcom/ss/android/vesdk/runtime/VETimeEffectManager;->mTrack:Lcom/ss/android/vesdk/runtime/VETimeEffectManager$Track;

    iget-object v0, v0, Lcom/ss/android/vesdk/runtime/VETimeEffectManager$Track;->timeEffectClips:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 102
    iget-object v0, p0, Lcom/ss/android/vesdk/runtime/VETimeEffectManager;->mTrack:Lcom/ss/android/vesdk/runtime/VETimeEffectManager$Track;

    iget-object v0, v0, Lcom/ss/android/vesdk/runtime/VETimeEffectManager$Track;->audioTimeEffectClips:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 103
    iget-object p0, p0, Lcom/ss/android/vesdk/runtime/VETimeEffectManager;->mTrack:Lcom/ss/android/vesdk/runtime/VETimeEffectManager$Track;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ss/android/vesdk/runtime/VETimeEffectManager$Track;->timeFilterParam:Lcom/ss/android/vesdk/filterparam/VEBaseFilterParam;

    const/4 v0, -0x1

    .line 104
    iput v0, p0, Lcom/ss/android/vesdk/runtime/VETimeEffectManager$Track;->videoFilterIndex:I

    .line 105
    iput v0, p0, Lcom/ss/android/vesdk/runtime/VETimeEffectManager$Track;->audioFilterIndex:I

    return-void
.end method
