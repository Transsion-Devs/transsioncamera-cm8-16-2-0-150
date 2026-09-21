.class final Lcom/google/mediapipe/tasks/vision/poselandmarker/PoseLandmarksConnections;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final POSE_LANDMARKS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/google/mediapipe/tasks/components/containers/Connection;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 38

    .line 27
    new-instance v0, Ljava/util/HashSet;

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 31
    invoke-static {v1, v2}, Lcom/google/mediapipe/tasks/components/containers/Connection;->create(II)Lcom/google/mediapipe/tasks/components/containers/Connection;

    move-result-object v3

    const/4 v4, 0x2

    .line 32
    invoke-static {v2, v4}, Lcom/google/mediapipe/tasks/components/containers/Connection;->create(II)Lcom/google/mediapipe/tasks/components/containers/Connection;

    move-result-object v2

    const/4 v5, 0x3

    .line 33
    invoke-static {v4, v5}, Lcom/google/mediapipe/tasks/components/containers/Connection;->create(II)Lcom/google/mediapipe/tasks/components/containers/Connection;

    move-result-object v4

    const/4 v6, 0x7

    .line 34
    invoke-static {v5, v6}, Lcom/google/mediapipe/tasks/components/containers/Connection;->create(II)Lcom/google/mediapipe/tasks/components/containers/Connection;

    move-result-object v6

    const/4 v5, 0x4

    .line 35
    invoke-static {v1, v5}, Lcom/google/mediapipe/tasks/components/containers/Connection;->create(II)Lcom/google/mediapipe/tasks/components/containers/Connection;

    move-result-object v7

    const/4 v1, 0x5

    .line 36
    invoke-static {v5, v1}, Lcom/google/mediapipe/tasks/components/containers/Connection;->create(II)Lcom/google/mediapipe/tasks/components/containers/Connection;

    move-result-object v8

    const/4 v5, 0x6

    .line 37
    invoke-static {v1, v5}, Lcom/google/mediapipe/tasks/components/containers/Connection;->create(II)Lcom/google/mediapipe/tasks/components/containers/Connection;

    move-result-object v9

    const/16 v1, 0x8

    .line 38
    invoke-static {v5, v1}, Lcom/google/mediapipe/tasks/components/containers/Connection;->create(II)Lcom/google/mediapipe/tasks/components/containers/Connection;

    move-result-object v10

    const/16 v1, 0x9

    const/16 v5, 0xa

    .line 39
    invoke-static {v1, v5}, Lcom/google/mediapipe/tasks/components/containers/Connection;->create(II)Lcom/google/mediapipe/tasks/components/containers/Connection;

    move-result-object v11

    const/16 v1, 0xb

    const/16 v5, 0xc

    .line 40
    invoke-static {v1, v5}, Lcom/google/mediapipe/tasks/components/containers/Connection;->create(II)Lcom/google/mediapipe/tasks/components/containers/Connection;

    move-result-object v12

    const/16 v13, 0xd

    .line 41
    invoke-static {v1, v13}, Lcom/google/mediapipe/tasks/components/containers/Connection;->create(II)Lcom/google/mediapipe/tasks/components/containers/Connection;

    move-result-object v14

    const/16 v15, 0xf

    .line 42
    invoke-static {v13, v15}, Lcom/google/mediapipe/tasks/components/containers/Connection;->create(II)Lcom/google/mediapipe/tasks/components/containers/Connection;

    move-result-object v13

    const/16 v1, 0x11

    .line 43
    invoke-static {v15, v1}, Lcom/google/mediapipe/tasks/components/containers/Connection;->create(II)Lcom/google/mediapipe/tasks/components/containers/Connection;

    move-result-object v17

    const/16 v5, 0x13

    const/16 v19, 0xb

    .line 44
    invoke-static {v15, v5}, Lcom/google/mediapipe/tasks/components/containers/Connection;->create(II)Lcom/google/mediapipe/tasks/components/containers/Connection;

    move-result-object v16

    move-object/from16 v20, v2

    const/16 v2, 0x15

    .line 45
    invoke-static {v15, v2}, Lcom/google/mediapipe/tasks/components/containers/Connection;->create(II)Lcom/google/mediapipe/tasks/components/containers/Connection;

    move-result-object v2

    .line 46
    invoke-static {v1, v5}, Lcom/google/mediapipe/tasks/components/containers/Connection;->create(II)Lcom/google/mediapipe/tasks/components/containers/Connection;

    move-result-object v1

    const/16 v5, 0xe

    move/from16 v21, v19

    const/16 v15, 0xc

    .line 47
    invoke-static {v15, v5}, Lcom/google/mediapipe/tasks/components/containers/Connection;->create(II)Lcom/google/mediapipe/tasks/components/containers/Connection;

    move-result-object v19

    const/16 v15, 0x10

    .line 48
    invoke-static {v5, v15}, Lcom/google/mediapipe/tasks/components/containers/Connection;->create(II)Lcom/google/mediapipe/tasks/components/containers/Connection;

    move-result-object v5

    move-object/from16 v22, v1

    const/16 v1, 0x12

    move/from16 v23, v21

    .line 49
    invoke-static {v15, v1}, Lcom/google/mediapipe/tasks/components/containers/Connection;->create(II)Lcom/google/mediapipe/tasks/components/containers/Connection;

    move-result-object v21

    const/16 v1, 0x14

    move-object/from16 v18, v22

    const/16 v25, 0xc

    .line 50
    invoke-static {v15, v1}, Lcom/google/mediapipe/tasks/components/containers/Connection;->create(II)Lcom/google/mediapipe/tasks/components/containers/Connection;

    move-result-object v22

    move-object/from16 v26, v2

    const/16 v2, 0x16

    .line 51
    invoke-static {v15, v2}, Lcom/google/mediapipe/tasks/components/containers/Connection;->create(II)Lcom/google/mediapipe/tasks/components/containers/Connection;

    move-result-object v2

    const/16 v15, 0x12

    .line 52
    invoke-static {v15, v1}, Lcom/google/mediapipe/tasks/components/containers/Connection;->create(II)Lcom/google/mediapipe/tasks/components/containers/Connection;

    move-result-object v24

    const/16 v1, 0x17

    move/from16 v15, v23

    .line 53
    invoke-static {v15, v1}, Lcom/google/mediapipe/tasks/components/containers/Connection;->create(II)Lcom/google/mediapipe/tasks/components/containers/Connection;

    move-result-object v15

    move-object/from16 v23, v2

    const/16 v2, 0x18

    move-object/from16 v27, v3

    move/from16 v3, v25

    .line 54
    invoke-static {v3, v2}, Lcom/google/mediapipe/tasks/components/containers/Connection;->create(II)Lcom/google/mediapipe/tasks/components/containers/Connection;

    move-result-object v3

    move-object/from16 v25, v15

    move-object/from16 v15, v17

    move-object/from16 v17, v26

    move-object/from16 v26, v3

    move-object/from16 v3, v27

    .line 55
    invoke-static {v1, v2}, Lcom/google/mediapipe/tasks/components/containers/Connection;->create(II)Lcom/google/mediapipe/tasks/components/containers/Connection;

    move-result-object v27

    const/16 v2, 0x19

    .line 56
    invoke-static {v1, v2}, Lcom/google/mediapipe/tasks/components/containers/Connection;->create(II)Lcom/google/mediapipe/tasks/components/containers/Connection;

    move-result-object v1

    const/16 v2, 0x1a

    move-object/from16 v30, v1

    const/16 v1, 0x18

    .line 57
    invoke-static {v1, v2}, Lcom/google/mediapipe/tasks/components/containers/Connection;->create(II)Lcom/google/mediapipe/tasks/components/containers/Connection;

    move-result-object v1

    const/16 v2, 0x1b

    move-object/from16 v28, v1

    const/16 v1, 0x19

    .line 58
    invoke-static {v1, v2}, Lcom/google/mediapipe/tasks/components/containers/Connection;->create(II)Lcom/google/mediapipe/tasks/components/containers/Connection;

    move-result-object v1

    const/16 v2, 0x1a

    move-object/from16 v31, v1

    const/16 v1, 0x1c

    .line 59
    invoke-static {v2, v1}, Lcom/google/mediapipe/tasks/components/containers/Connection;->create(II)Lcom/google/mediapipe/tasks/components/containers/Connection;

    move-result-object v2

    const/16 v1, 0x1d

    move-object/from16 v33, v2

    const/16 v2, 0x1b

    .line 60
    invoke-static {v2, v1}, Lcom/google/mediapipe/tasks/components/containers/Connection;->create(II)Lcom/google/mediapipe/tasks/components/containers/Connection;

    move-result-object v1

    const/16 v2, 0x1e

    move-object/from16 v34, v1

    const/16 v1, 0x1c

    .line 61
    invoke-static {v1, v2}, Lcom/google/mediapipe/tasks/components/containers/Connection;->create(II)Lcom/google/mediapipe/tasks/components/containers/Connection;

    move-result-object v2

    const/16 v1, 0x1d

    move-object/from16 v35, v2

    const/16 v2, 0x1f

    .line 62
    invoke-static {v1, v2}, Lcom/google/mediapipe/tasks/components/containers/Connection;->create(II)Lcom/google/mediapipe/tasks/components/containers/Connection;

    move-result-object v1

    const/16 v2, 0x1e

    move-object/from16 v36, v1

    const/16 v1, 0x20

    .line 63
    invoke-static {v2, v1}, Lcom/google/mediapipe/tasks/components/containers/Connection;->create(II)Lcom/google/mediapipe/tasks/components/containers/Connection;

    move-result-object v1

    const/16 v2, 0x1f

    move-object/from16 v37, v1

    const/16 v1, 0x1b

    .line 64
    invoke-static {v1, v2}, Lcom/google/mediapipe/tasks/components/containers/Connection;->create(II)Lcom/google/mediapipe/tasks/components/containers/Connection;

    move-result-object v1

    const/16 v2, 0x20

    move-object/from16 v29, v1

    const/16 v1, 0x1c

    .line 65
    invoke-static {v1, v2}, Lcom/google/mediapipe/tasks/components/containers/Connection;->create(II)Lcom/google/mediapipe/tasks/components/containers/Connection;

    move-result-object v1

    move-object/from16 v32, v5

    move-object v5, v4

    move-object/from16 v4, v20

    move-object/from16 v20, v32

    move-object/from16 v32, v14

    move-object v14, v13

    move-object/from16 v13, v32

    move-object/from16 v32, v34

    move-object/from16 v34, v36

    move-object/from16 v36, v29

    move-object/from16 v29, v28

    move-object/from16 v28, v30

    move-object/from16 v30, v31

    move-object/from16 v31, v33

    move-object/from16 v33, v35

    move-object/from16 v35, v37

    move-object/from16 v37, v1

    filled-new-array/range {v3 .. v37}, [Lcom/google/mediapipe/tasks/components/containers/Connection;

    move-result-object v1

    .line 30
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 28
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcom/google/mediapipe/tasks/vision/poselandmarker/PoseLandmarksConnections;->POSE_LANDMARKS:Ljava/util/Set;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
