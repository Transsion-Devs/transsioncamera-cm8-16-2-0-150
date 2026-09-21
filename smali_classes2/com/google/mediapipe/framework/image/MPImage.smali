.class public Lcom/google/mediapipe/framework/image/MPImage;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/mediapipe/framework/image/MPImage$Internal;,
        Lcom/google/mediapipe/framework/image/MPImage$StorageType;,
        Lcom/google/mediapipe/framework/image/MPImage$MPImageFormat;
    }
.end annotation


# static fields
.field public static final IMAGE_FORMAT_ALPHA:I = 0x8

.field public static final IMAGE_FORMAT_JPEG:I = 0x9

.field public static final IMAGE_FORMAT_NV12:I = 0x3

.field public static final IMAGE_FORMAT_NV21:I = 0x4

.field public static final IMAGE_FORMAT_RGB:I = 0x2

.field public static final IMAGE_FORMAT_RGBA:I = 0x1

.field public static final IMAGE_FORMAT_UNKNOWN:I = 0x0

.field public static final IMAGE_FORMAT_VEC32F1:I = 0xa

.field public static final IMAGE_FORMAT_VEC32F2:I = 0xb

.field public static final IMAGE_FORMAT_YUV_420_888:I = 0x7

.field public static final IMAGE_FORMAT_YV12:I = 0x5

.field public static final IMAGE_FORMAT_YV21:I = 0x6

.field public static final STORAGE_TYPE_BITMAP:I = 0x1

.field public static final STORAGE_TYPE_BYTEBUFFER:I = 0x2

.field public static final STORAGE_TYPE_IMAGE_PROXY:I = 0x4

.field public static final STORAGE_TYPE_MEDIA_IMAGE:I = 0x3


# instance fields
.field private final containerMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/google/mediapipe/framework/image/MPImageProperties;",
            "Lcom/google/mediapipe/framework/image/MPImageContainer;",
            ">;"
        }
    .end annotation
.end field

.field private final height:I

.field private referenceCount:I

.field private final timestamp:J

.field private final width:I


# direct methods
.method constructor <init>(Lcom/google/mediapipe/framework/image/MPImageContainer;JII)V
    .registers 8

    .line 194
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 195
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/mediapipe/framework/image/MPImage;->containerMap:Ljava/util/Map;

    .line 196
    invoke-interface {p1}, Lcom/google/mediapipe/framework/image/MPImageContainer;->getImageProperties()Lcom/google/mediapipe/framework/image/MPImageProperties;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 197
    iput-wide p2, p0, Lcom/google/mediapipe/framework/image/MPImage;->timestamp:J

    .line 198
    iput p4, p0, Lcom/google/mediapipe/framework/image/MPImage;->width:I

    .line 199
    iput p5, p0, Lcom/google/mediapipe/framework/image/MPImage;->height:I

    const/4 p1, 0x1

    .line 200
    iput p1, p0, Lcom/google/mediapipe/framework/image/MPImage;->referenceCount:I

    return-void
.end method

.method static synthetic access$000(Lcom/google/mediapipe/framework/image/MPImage;)V
    .registers 1

    .line 56
    invoke-direct {p0}, Lcom/google/mediapipe/framework/image/MPImage;->acquire()V

    return-void
.end method

.method private declared-synchronized acquire()V
    .registers 2

    monitor-enter p0

    .line 133
    :try_start_1
    iget v0, p0, Lcom/google/mediapipe/framework/image/MPImage;->referenceCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/mediapipe/framework/image/MPImage;->referenceCount:I
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_9

    .line 134
    monitor-exit p0

    return-void

    :catchall_9
    move-exception v0

    :try_start_a
    monitor-exit p0
    :try_end_b
    .catchall {:try_start_a .. :try_end_b} :catchall_9

    throw v0
.end method


# virtual methods
.method addContainer(Lcom/google/mediapipe/framework/image/MPImageContainer;)Z
    .registers 4

    .line 238
    invoke-interface {p1}, Lcom/google/mediapipe/framework/image/MPImageContainer;->getImageProperties()Lcom/google/mediapipe/framework/image/MPImageProperties;

    move-result-object v0

    .line 239
    iget-object v1, p0, Lcom/google/mediapipe/framework/image/MPImage;->containerMap:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    const/4 p0, 0x0

    return p0

    .line 242
    :cond_e
    iget-object p0, p0, Lcom/google/mediapipe/framework/image/MPImage;->containerMap:Ljava/util/Map;

    invoke-interface {p0, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p0, 0x1

    return p0
.end method

.method public declared-synchronized close()V
    .registers 3

    monitor-enter p0

    .line 146
    :try_start_1
    iget v0, p0, Lcom/google/mediapipe/framework/image/MPImage;->referenceCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/mediapipe/framework/image/MPImage;->referenceCount:I

    if-nez v0, :cond_25

    .line 148
    iget-object v0, p0, Lcom/google/mediapipe/framework/image/MPImage;->containerMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_13
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_25

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/mediapipe/framework/image/MPImageContainer;

    .line 149
    invoke-interface {v1}, Lcom/google/mediapipe/framework/image/MPImageContainer;->close()V
    :try_end_22
    .catchall {:try_start_1 .. :try_end_22} :catchall_23

    goto :goto_13

    :catchall_23
    move-exception v0

    goto :goto_27

    .line 152
    :cond_25
    monitor-exit p0

    return-void

    :goto_27
    :try_start_27
    monitor-exit p0
    :try_end_28
    .catchall {:try_start_27 .. :try_end_28} :catchall_23

    throw v0
.end method

.method public getContainedImageProperties()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/mediapipe/framework/image/MPImageProperties;",
            ">;"
        }
    .end annotation

    .line 113
    invoke-virtual {p0}, Lcom/google/mediapipe/framework/image/MPImage;->getContainer()Lcom/google/mediapipe/framework/image/MPImageContainer;

    move-result-object p0

    invoke-interface {p0}, Lcom/google/mediapipe/framework/image/MPImageContainer;->getImageProperties()Lcom/google/mediapipe/framework/image/MPImageProperties;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method getContainer()Lcom/google/mediapipe/framework/image/MPImageContainer;
    .registers 1

    .line 212
    iget-object p0, p0, Lcom/google/mediapipe/framework/image/MPImage;->containerMap:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/framework/image/MPImageContainer;

    return-object p0
.end method

.method getContainer(I)Lcom/google/mediapipe/framework/image/MPImageContainer;
    .registers 4

    .line 222
    iget-object p0, p0, Lcom/google/mediapipe/framework/image/MPImage;->containerMap:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_a
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_29

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 223
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/mediapipe/framework/image/MPImageProperties;

    invoke-virtual {v1}, Lcom/google/mediapipe/framework/image/MPImageProperties;->getStorageType()I

    move-result v1

    if-ne v1, p1, :cond_a

    .line 224
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/framework/image/MPImageContainer;

    return-object p0

    :cond_29
    const/4 p0, 0x0

    return-object p0
.end method

.method getContainer(Lcom/google/mediapipe/framework/image/MPImageProperties;)Lcom/google/mediapipe/framework/image/MPImageContainer;
    .registers 2

    .line 233
    iget-object p0, p0, Lcom/google/mediapipe/framework/image/MPImage;->containerMap:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/framework/image/MPImageContainer;

    return-object p0
.end method

.method public getHeight()I
    .registers 1

    .line 128
    iget p0, p0, Lcom/google/mediapipe/framework/image/MPImage;->height:I

    return p0
.end method

.method getInternal()Lcom/google/mediapipe/framework/image/MPImage$Internal;
    .registers 3

    .line 183
    new-instance v0, Lcom/google/mediapipe/framework/image/MPImage$Internal;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/mediapipe/framework/image/MPImage$Internal;-><init>(Lcom/google/mediapipe/framework/image/MPImage;Lcom/google/mediapipe/framework/image/MPImage$1;)V

    return-object v0
.end method

.method getTimestamp()J
    .registers 3

    .line 118
    iget-wide v0, p0, Lcom/google/mediapipe/framework/image/MPImage;->timestamp:J

    return-wide v0
.end method

.method public getWidth()I
    .registers 1

    .line 123
    iget p0, p0, Lcom/google/mediapipe/framework/image/MPImage;->width:I

    return p0
.end method
