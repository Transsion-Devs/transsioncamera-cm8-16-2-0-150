.class final Lcom/google/mediapipe/tasks/vision/handlandmarker/HandLandmarksConnections;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final HAND_CONNECTIONS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/google/mediapipe/tasks/components/containers/Connection;",
            ">;"
        }
    .end annotation
.end field

.field static final HAND_INDEX_FINGER_CONNECTIONS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/google/mediapipe/tasks/components/containers/Connection;",
            ">;"
        }
    .end annotation
.end field

.field static final HAND_MIDDLE_FINGER_CONNECTIONS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/google/mediapipe/tasks/components/containers/Connection;",
            ">;"
        }
    .end annotation
.end field

.field static final HAND_PALM_CONNECTIONS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/google/mediapipe/tasks/components/containers/Connection;",
            ">;"
        }
    .end annotation
.end field

.field static final HAND_PINKY_FINGER_CONNECTIONS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/google/mediapipe/tasks/components/containers/Connection;",
            ">;"
        }
    .end annotation
.end field

.field static final HAND_RING_FINGER_CONNECTIONS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/google/mediapipe/tasks/components/containers/Connection;",
            ">;"
        }
    .end annotation
.end field

.field static final HAND_THUMB_CONNECTIONS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/google/mediapipe/tasks/components/containers/Connection;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$QErZggluP-6pSVZ3i7wrmnp9L7M(Ljava/util/stream/Stream;)Ljava/util/stream/Stream;
    .registers 1

    .line 0
    return-object p0
.end method

.method static constructor <clinit>()V
    .registers 17

    .line 29
    new-instance v0, Ljava/util/HashSet;

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 33
    invoke-static {v1, v2}, Lcom/google/mediapipe/tasks/components/containers/Connection;->create(II)Lcom/google/mediapipe/tasks/components/containers/Connection;

    move-result-object v3

    const/4 v9, 0x5

    .line 34
    invoke-static {v1, v9}, Lcom/google/mediapipe/tasks/components/containers/Connection;->create(II)Lcom/google/mediapipe/tasks/components/containers/Connection;

    move-result-object v4

    const/16 v10, 0x9

    const/16 v11, 0xd

    .line 35
    invoke-static {v10, v11}, Lcom/google/mediapipe/tasks/components/containers/Connection;->create(II)Lcom/google/mediapipe/tasks/components/containers/Connection;

    move-result-object v5

    const/16 v12, 0x11

    .line 36
    invoke-static {v11, v12}, Lcom/google/mediapipe/tasks/components/containers/Connection;->create(II)Lcom/google/mediapipe/tasks/components/containers/Connection;

    move-result-object v6

    .line 37
    invoke-static {v9, v10}, Lcom/google/mediapipe/tasks/components/containers/Connection;->create(II)Lcom/google/mediapipe/tasks/components/containers/Connection;

    move-result-object v7

    .line 38
    invoke-static {v1, v12}, Lcom/google/mediapipe/tasks/components/containers/Connection;->create(II)Lcom/google/mediapipe/tasks/components/containers/Connection;

    move-result-object v8

    filled-new-array/range {v3 .. v8}, [Lcom/google/mediapipe/tasks/components/containers/Connection;

    move-result-object v3

    .line 32
    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 30
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcom/google/mediapipe/tasks/vision/handlandmarker/HandLandmarksConnections;->HAND_PALM_CONNECTIONS:Ljava/util/Set;

    .line 41
    new-instance v3, Ljava/util/HashSet;

    const/4 v4, 0x2

    .line 45
    invoke-static {v2, v4}, Lcom/google/mediapipe/tasks/components/containers/Connection;->create(II)Lcom/google/mediapipe/tasks/components/containers/Connection;

    move-result-object v5

    const/4 v6, 0x3

    invoke-static {v4, v6}, Lcom/google/mediapipe/tasks/components/containers/Connection;->create(II)Lcom/google/mediapipe/tasks/components/containers/Connection;

    move-result-object v7

    const/4 v8, 0x4

    invoke-static {v6, v8}, Lcom/google/mediapipe/tasks/components/containers/Connection;->create(II)Lcom/google/mediapipe/tasks/components/containers/Connection;

    move-result-object v13

    filled-new-array {v5, v7, v13}, [Lcom/google/mediapipe/tasks/components/containers/Connection;

    move-result-object v5

    .line 44
    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    invoke-direct {v3, v5}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 42
    invoke-static {v3}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v3

    sput-object v3, Lcom/google/mediapipe/tasks/vision/handlandmarker/HandLandmarksConnections;->HAND_THUMB_CONNECTIONS:Ljava/util/Set;

    .line 48
    new-instance v5, Ljava/util/HashSet;

    const/4 v7, 0x6

    .line 52
    invoke-static {v9, v7}, Lcom/google/mediapipe/tasks/components/containers/Connection;->create(II)Lcom/google/mediapipe/tasks/components/containers/Connection;

    move-result-object v13

    const/4 v14, 0x7

    invoke-static {v7, v14}, Lcom/google/mediapipe/tasks/components/containers/Connection;->create(II)Lcom/google/mediapipe/tasks/components/containers/Connection;

    move-result-object v15

    move/from16 v16, v1

    const/16 v1, 0x8

    invoke-static {v14, v1}, Lcom/google/mediapipe/tasks/components/containers/Connection;->create(II)Lcom/google/mediapipe/tasks/components/containers/Connection;

    move-result-object v1

    filled-new-array {v13, v15, v1}, [Lcom/google/mediapipe/tasks/components/containers/Connection;

    move-result-object v1

    .line 51
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v5, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 49
    invoke-static {v5}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v1

    sput-object v1, Lcom/google/mediapipe/tasks/vision/handlandmarker/HandLandmarksConnections;->HAND_INDEX_FINGER_CONNECTIONS:Ljava/util/Set;

    .line 55
    new-instance v5, Ljava/util/HashSet;

    const/16 v13, 0xa

    .line 59
    invoke-static {v10, v13}, Lcom/google/mediapipe/tasks/components/containers/Connection;->create(II)Lcom/google/mediapipe/tasks/components/containers/Connection;

    move-result-object v10

    const/16 v14, 0xb

    invoke-static {v13, v14}, Lcom/google/mediapipe/tasks/components/containers/Connection;->create(II)Lcom/google/mediapipe/tasks/components/containers/Connection;

    move-result-object v13

    const/16 v15, 0xc

    invoke-static {v14, v15}, Lcom/google/mediapipe/tasks/components/containers/Connection;->create(II)Lcom/google/mediapipe/tasks/components/containers/Connection;

    move-result-object v14

    filled-new-array {v10, v13, v14}, [Lcom/google/mediapipe/tasks/components/containers/Connection;

    move-result-object v10

    .line 58
    invoke-static {v10}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v10

    invoke-direct {v5, v10}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 56
    invoke-static {v5}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v5

    sput-object v5, Lcom/google/mediapipe/tasks/vision/handlandmarker/HandLandmarksConnections;->HAND_MIDDLE_FINGER_CONNECTIONS:Ljava/util/Set;

    .line 62
    new-instance v10, Ljava/util/HashSet;

    const/16 v13, 0xe

    .line 66
    invoke-static {v11, v13}, Lcom/google/mediapipe/tasks/components/containers/Connection;->create(II)Lcom/google/mediapipe/tasks/components/containers/Connection;

    move-result-object v11

    const/16 v14, 0xf

    .line 67
    invoke-static {v13, v14}, Lcom/google/mediapipe/tasks/components/containers/Connection;->create(II)Lcom/google/mediapipe/tasks/components/containers/Connection;

    move-result-object v13

    const/16 v15, 0x10

    .line 68
    invoke-static {v14, v15}, Lcom/google/mediapipe/tasks/components/containers/Connection;->create(II)Lcom/google/mediapipe/tasks/components/containers/Connection;

    move-result-object v14

    filled-new-array {v11, v13, v14}, [Lcom/google/mediapipe/tasks/components/containers/Connection;

    move-result-object v11

    .line 65
    invoke-static {v11}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 63
    invoke-static {v10}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v10

    sput-object v10, Lcom/google/mediapipe/tasks/vision/handlandmarker/HandLandmarksConnections;->HAND_RING_FINGER_CONNECTIONS:Ljava/util/Set;

    .line 71
    new-instance v11, Ljava/util/HashSet;

    const/16 v13, 0x12

    .line 75
    invoke-static {v12, v13}, Lcom/google/mediapipe/tasks/components/containers/Connection;->create(II)Lcom/google/mediapipe/tasks/components/containers/Connection;

    move-result-object v12

    const/16 v14, 0x13

    .line 76
    invoke-static {v13, v14}, Lcom/google/mediapipe/tasks/components/containers/Connection;->create(II)Lcom/google/mediapipe/tasks/components/containers/Connection;

    move-result-object v13

    const/16 v15, 0x14

    .line 77
    invoke-static {v14, v15}, Lcom/google/mediapipe/tasks/components/containers/Connection;->create(II)Lcom/google/mediapipe/tasks/components/containers/Connection;

    move-result-object v14

    filled-new-array {v12, v13, v14}, [Lcom/google/mediapipe/tasks/components/containers/Connection;

    move-result-object v12

    .line 74
    invoke-static {v12}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 72
    invoke-static {v11}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v11

    sput-object v11, Lcom/google/mediapipe/tasks/vision/handlandmarker/HandLandmarksConnections;->HAND_PINKY_FINGER_CONNECTIONS:Ljava/util/Set;

    .line 83
    invoke-interface {v0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    .line 84
    invoke-interface {v3}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v3

    .line 85
    invoke-interface {v1}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    .line 86
    invoke-interface {v5}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v5

    .line 87
    invoke-interface {v10}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v10

    .line 88
    invoke-interface {v11}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v11

    new-array v7, v7, [Ljava/util/stream/Stream;

    aput-object v0, v7, v16

    aput-object v3, v7, v2

    aput-object v1, v7, v4

    aput-object v5, v7, v6

    aput-object v10, v7, v8

    aput-object v11, v7, v9

    .line 82
    invoke-static {v7}, Ljava/util/stream/Stream;->of([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/google/mediapipe/tasks/vision/handlandmarker/HandLandmarksConnections$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lcom/google/mediapipe/tasks/vision/handlandmarker/HandLandmarksConnections$$ExternalSyntheticLambda0;-><init>()V

    .line 89
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->flatMap(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    .line 90
    invoke-static {}, Ljava/util/stream/Collectors;->toSet()Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    .line 81
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcom/google/mediapipe/tasks/vision/handlandmarker/HandLandmarksConnections;->HAND_CONNECTIONS:Ljava/util/Set;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
